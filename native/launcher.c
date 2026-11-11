/* Copyright (c) 2026 Webmania. Subject to the Webmania Terms of Use.
 * Minimal Linux process/pipe supervisor. No HTTP, JSON or fiscal engine.
 * Parent protocol: D + BE32 chunk length (1..65536) + bytes; C cancels.
 * Worker sees only the original BE32+JSON bytes and stdin EOF on cancellation.
 */
#define _GNU_SOURCE
#include <errno.h>
#include <fcntl.h>
#include <poll.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/prctl.h>
#include <sys/resource.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#define INPUT_MAX (32U*1024U*1024U+4U)
#define OUTPUT_MAX (40U*1024U*1024U+4U)
static volatile sig_atomic_t stopped;
static void stop_signal(int sig) { (void)sig; stopped=1; }
static int64_t now_ms(void) { struct timespec t; if(clock_gettime(CLOCK_MONOTONIC,&t))_exit(90);return (int64_t)t.tv_sec*1000+t.tv_nsec/1000000; }
static uint32_t be32(const unsigned char*p) {return ((uint32_t)p[0]<<24)|((uint32_t)p[1]<<16)|((uint32_t)p[2]<<8)|p[3];}
static void nonblock(int fd) {int flags=fcntl(fd,F_GETFL);if(flags<0||fcntl(fd,F_SETFL,flags|O_NONBLOCK)<0)_exit(91);}

/* SHA-256 as specified in FIPS 180-4; all bytes are hashed on every launch. */
typedef struct {uint32_t h[8];uint64_t n;size_t used;unsigned char block[64];} sha256;
static uint32_t rotr(uint32_t x,unsigned n){return(x>>n)|(x<<(32-n));}
static void transform(sha256*s,const unsigned char*b){
 static const uint32_t k[64]={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2};
 uint32_t w[64];for(unsigned i=0;i<16;i++)w[i]=be32(b+4*i);
 for(unsigned i=16;i<64;i++){uint32_t a=w[i-15],z=w[i-2];w[i]=w[i-16]+(rotr(a,7)^rotr(a,18)^(a>>3))+w[i-7]+(rotr(z,17)^rotr(z,19)^(z>>10));}
 uint32_t a=s->h[0],c=s->h[2],b0=s->h[1],d=s->h[3],e=s->h[4],f=s->h[5],g=s->h[6],h=s->h[7];
 for(unsigned i=0;i<64;i++){uint32_t x=h+(rotr(e,6)^rotr(e,11)^rotr(e,25))+((e&f)^((~e)&g))+k[i]+w[i];uint32_t y=(rotr(a,2)^rotr(a,13)^rotr(a,22))+((a&b0)^(a&c)^(b0&c));h=g;g=f;f=e;e=d+x;d=c;c=b0;b0=a;a=x+y;}
 s->h[0]+=a;s->h[1]+=b0;s->h[2]+=c;s->h[3]+=d;s->h[4]+=e;s->h[5]+=f;s->h[6]+=g;s->h[7]+=h;
}
static void hash_init(sha256*s){static const uint32_t h[8]={0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19};memcpy(s->h,h,sizeof h);s->n=0;s->used=0;}
static void hash_add(sha256*s,const unsigned char*p,size_t n){s->n+=n;while(n){size_t k=64-s->used;if(k>n)k=n;memcpy(s->block+s->used,p,k);s->used+=k;p+=k;n-=k;if(s->used==64){transform(s,s->block);s->used=0;}}}
static void hash_finish(sha256*s,char*out){uint64_t bits=s->n*8;unsigned char one=0x80,zero=0;hash_add(s,&one,1);while(s->used!=56)hash_add(s,&zero,1);unsigned char tail[8];for(unsigned i=0;i<8;i++)tail[i]=(unsigned char)(bits>>(56-8*i));hash_add(s,tail,8);static const char hex[]="0123456789abcdef";for(unsigned i=0;i<32;i++){unsigned char b=(unsigned char)(s->h[i/4]>>(24-8*(i%4)));out[2*i]=hex[b>>4];out[2*i+1]=hex[b&15];}out[64]=0;}
static int verified_fd(const char*path,const char*expected,int64_t deadline){
 if(strlen(expected)!=64)return-1;int fd=open(path,O_RDONLY|O_CLOEXEC|O_NOFOLLOW);if(fd<0)return-1;
 struct stat st;if(fstat(fd,&st)||!S_ISREG(st.st_mode)||st.st_size<1||st.st_size>256*1024*1024){close(fd);return-1;}
 sha256 hash;hash_init(&hash);unsigned char b[65536];ssize_t n;
 while((n=read(fd,b,sizeof b))>0){if(stopped||now_ms()>=deadline){close(fd);return-1;}hash_add(&hash,b,(size_t)n);}
 char hex[65];hash_finish(&hash,hex);if(n<0||strcmp(hex,expected)||lseek(fd,0,SEEK_SET)<0){close(fd);return-1;}return fd;
}
static int close_fd(int*fd){if(*fd>=0){int x=close(*fd);*fd=-1;return x;}return 0;}

int main(int argc,char**argv){
 signal(SIGPIPE,SIG_IGN);signal(SIGTERM,stop_signal);signal(SIGINT,stop_signal);signal(SIGHUP,stop_signal);
 if(argc!=4)return 92;char*end=NULL;errno=0;long timeout=strtol(argv[3],&end,10);if(errno||*end||timeout<1||timeout>300000)return 92;
 int64_t deadline=now_ms()+timeout;int worker=verified_fd(argv[1],argv[2],deadline);if(worker<0)return 93;
 unsigned char*input=malloc(INPUT_MAX),*output=malloc(OUTPUT_MAX);if(!input||!output){close(worker);free(input);free(output);return 94;}
 int inpipe[2]={-1,-1},outpipe[2]={-1,-1};if(pipe2(inpipe,O_CLOEXEC)||pipe2(outpipe,O_CLOEXEC)){close_fd(&inpipe[0]);close_fd(&inpipe[1]);close_fd(&outpipe[0]);close_fd(&outpipe[1]);close(worker);free(input);free(output);return 94;}
 pid_t supervisor=getpid();pid_t pid=fork();if(pid<0){close_fd(&inpipe[0]);close_fd(&inpipe[1]);close_fd(&outpipe[0]);close_fd(&outpipe[1]);close(worker);free(input);free(output);return 94;}
 if(pid==0){
   if(prctl(PR_SET_PDEATHSIG,SIGKILL)||getppid()!=supervisor)_exit(95);setpgid(0,0);
   if(dup2(inpipe[0],0)<0||dup2(outpipe[1],1)<0)_exit(95);int null=open("/dev/null",O_WRONLY|O_CLOEXEC);if(null<0||dup2(null,2)<0)_exit(95);
   int executable=fcntl(worker,F_DUPFD,3);if(executable<0)_exit(95);int flags=fcntl(executable,F_GETFD);if(flags<0||fcntl(executable,F_SETFD,flags&~FD_CLOEXEC)<0)_exit(95);
   /* Only stdio and the verified executable descriptor survive into exec. */
   if(executable>3&&syscall(SYS_close_range,3U,(unsigned)executable-1U,0U)<0)_exit(95);if(syscall(SYS_close_range,(unsigned)executable+1U,~0U,0U)<0)_exit(95);
   char*args[]={"webmania-native-worker",NULL};char*env[]={NULL};fexecve(executable,args,env);_exit(95);
 }
 setpgid(pid,pid);close(worker);close(inpipe[0]);close(outpipe[1]);int childin=inpipe[1],childout=outpipe[0];nonblock(0);nonblock(1);nonblock(childin);nonblock(childout);
 size_t insize=0,written=0,outsize=0;unsigned char head[5];size_t hsize=0,chunk=0;int cancelled=0,bad=0,reaped=0,status=0;int64_t kill_at=0;
 while(!reaped||childout>=0){
   int64_t now=now_ms();if(!cancelled&&(stopped||now>=deadline)){cancelled=1;kill_at=now+2000;close_fd(&childin);}
   if(cancelled&&now>=kill_at&&!reaped){kill(-pid,SIGKILL);kill_at=now+2000;}
   struct pollfd fds[3]={{0,cancelled?0:POLLIN,0},{childin,(!cancelled&&written<insize)?POLLOUT:0,0},{childout,POLLIN,0}};
   int polled=poll(fds,3,10);if(polled<0&&errno!=EINTR){bad=1;cancelled=1;kill_at=now_ms()+2000;close_fd(&childin);}
   if(!cancelled&&(fds[0].revents&(POLLIN|POLLHUP|POLLERR))){
     unsigned char buf[65536];ssize_t got=read(0,buf,sizeof buf);
     if(got==0||(got<0&&errno!=EAGAIN&&errno!=EINTR)){cancelled=1;kill_at=now_ms()+2000;close_fd(&childin);}
     else if(got>0){size_t off=0;while(off<(size_t)got&&!cancelled){
       if(chunk){size_t n=(size_t)got-off;if(n>chunk)n=chunk;if(n>INPUT_MAX-insize){bad=1;cancelled=1;break;}memcpy(input+insize,buf+off,n);insize+=n;off+=n;chunk-=n;
         if(insize>=4&&(be32(input)==0||be32(input)>INPUT_MAX-4||insize>(size_t)be32(input)+4)){bad=1;cancelled=1;break;}
       }else{
         unsigned char c=buf[off++];if(hsize==0&&c=='C'){cancelled=1;break;}head[hsize++]=c;
         if(hsize==5){if(head[0]!='D'||be32(head+1)==0||be32(head+1)>65536){bad=1;cancelled=1;break;}chunk=be32(head+1);hsize=0;}
       }
     }if(cancelled){kill_at=now_ms()+2000;close_fd(&childin);}}
   }
   if(childin>=0&&(fds[1].revents&(POLLOUT|POLLERR|POLLHUP))){ssize_t n=write(childin,input+written,insize-written);if(n>0)written+=(size_t)n;else if(n<0&&errno!=EAGAIN&&errno!=EINTR)close_fd(&childin);}
   if(childout>=0&&(fds[2].revents&(POLLIN|POLLHUP|POLLERR))){
     unsigned char buf[65536];ssize_t n=read(childout,buf,sizeof buf);if(n>0){if((size_t)n>OUTPUT_MAX-outsize){bad=1;cancelled=1;kill_at=now_ms()+2000;close_fd(&childin);close_fd(&childout);}else{memcpy(output+outsize,buf,(size_t)n);outsize+=(size_t)n;if(outsize>=4&&(be32(output)==0||be32(output)>OUTPUT_MAX-4||outsize>(size_t)be32(output)+4)){bad=1;cancelled=1;kill_at=now_ms()+2000;close_fd(&childin);close_fd(&childout);}}}
     else if(n==0||(n<0&&errno!=EAGAIN&&errno!=EINTR))close_fd(&childout);
   }
   if(!reaped){pid_t result=waitpid(pid,&status,WNOHANG);if(result==pid){reaped=1;close_fd(&childin);}else if(result<0&&errno!=EINTR){reaped=1;bad=1;}}
 }
 close_fd(&childin);close_fd(&childout);
 int valid=!bad&&WIFEXITED(status)&&WEXITSTATUS(status)==0&&outsize>=4&&outsize==(size_t)be32(output)+4;
 size_t sent=0;int64_t flush_deadline=now_ms()+2000;
 while(valid&&sent<outsize&&now_ms()<flush_deadline){struct pollfd p={1,POLLOUT,0};if(poll(&p,1,10)>0){ssize_t n=write(1,output+sent,outsize-sent);if(n>0)sent+=(size_t)n;else if(n<0&&errno!=EAGAIN&&errno!=EINTR){valid=0;break;}}}
 free(input);free(output);return valid&&sent==outsize?0:96;
}
