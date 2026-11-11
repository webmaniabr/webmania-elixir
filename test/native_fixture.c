/* Synthetic process fixture; no network or fiscal API. */
#include <errno.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
extern char **environ;
static int exact(void*buf,size_t n){unsigned char*p=buf;while(n){ssize_t got=read(0,p,n);if(got<=0)return 0;p+=got;n-=(size_t)got;}return 1;}
int main(void){
#if MODE == 1
 signal(SIGTERM,SIG_IGN);for(;;)pause();
#elif MODE == 2
 const unsigned char frame[]={0,0,0,2,'{','}',0,0,0,2,'{','}'};write(1,frame,sizeof frame);return 0;
#elif MODE == 3
 const unsigned char frame[]={2,128,0,1};write(1,frame,sizeof frame);return 0;
#else
 unsigned char prefix[4],buf[65536];int complete=exact(prefix,4);size_t left=complete?((size_t)prefix[0]<<24)|((size_t)prefix[1]<<16)|((size_t)prefix[2]<<8)|prefix[3]:0;
 while(complete&&left){size_t n=left>sizeof buf?sizeof buf:left;complete=exact(buf,n);left-=n;}
 if(complete){unsigned char c;while(read(0,&c,1)<0&&errno==EINTR){}}
 int env=0,fds=0;while(environ[env])env++;for(int fd=3;fd<128;fd++)if(fcntl(fd,F_GETFD)>=0)fds++;
 char text[256];int n=snprintf(text,sizeof text,"{\"env\":%d,\"extra_fds\":%d,\"complete\":%s,\"pid\":%ld}",env,fds,complete?"true":"false",(long)getpid());
 unsigned char head[]={(unsigned char)((unsigned)n>>24),(unsigned char)((unsigned)n>>16),(unsigned char)((unsigned)n>>8),(unsigned char)n};write(1,head,4);write(1,text,(size_t)n);return 0;
#endif
}
