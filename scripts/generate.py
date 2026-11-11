#!/usr/bin/env python3
"""Generate nominal Elixir API from the pinned shared native public API metadata."""
import json, pathlib, re, hashlib
ROOT = pathlib.Path(__file__).resolve().parents[1]
metadata_bytes=(ROOT/'api-metadata.json').read_bytes()
if hashlib.sha256(metadata_bytes).hexdigest()!='12c59c586019661a80ef15af99afe152283e8c927cbd47dd1b2a740d313c87ec':raise ValueError('Pinned metadata differs')
data = json.loads(metadata_bytes)
wire_bytes=(ROOT/'wire-name-audit.json').read_bytes()
if hashlib.sha256(wire_bytes).hexdigest()!='acaf25a4ccf20ad509b60abc15b6a593045f62fde04031db473048d1eb3633e2':raise ValueError('Pinned wire-name audit differs')
wire_audit=json.loads(wire_bytes)
if wire_audit['metadata_sha256']!=hashlib.sha256((ROOT/'api-metadata.json').read_bytes()).hexdigest():raise ValueError('Wire audit metadata differs')
wire_aliases={(a['module'],a['model'],a['identifier']):a['wire'] for a in wire_audit['aliases']}
def wire(mod,name,identifier):return wire_aliases.get((mod,name,identifier),identifier)
def atom(s): return ':' + s if re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*[?!]?',s) else ':' + json.dumps(s, ensure_ascii=False)
def source(lines): return ('\n'.join(lines)+'\n').replace(chr(92)+' ', chr(92)*2+' ')
def module(s): return ''.join(p[:1].upper()+p[1:] for p in s.split('_'))
def model(mod, name): return 'Webmania.Models.' + module(mod) + '.' + name
def desc(t, mod):
    for outer, tag in [('Option','optional'),('Nullable','nullable'),('Vec','array')]:
        if t.startswith(outer+'<'): return '{:'+tag+', '+desc(t[len(outer)+1:-1],mod)+'}'
    return {'String':':string','i64':':i64','bool':':boolean','Number':':number','Scalar':':scalar','Null':':null','Value':':value','Map':':map'}.get(t, model(mod,t))
def typ(t, mod):
    for outer, tag in [('Option', ' | :unset'), ('Nullable', ' | nil')]:
        if t.startswith(outer+'<'): return '('+typ(t[len(outer)+1:-1],mod)+tag+')'
    if t.startswith('Vec<'): return '['+typ(t[4:-1],mod)+']'
    return {'String':'String.t()','i64':'integer()','bool':'boolean()','Number':'Webmania.Number.t() | integer()','Scalar':'nil | boolean() | String.t() | integer() | Webmania.Number.t()','Null':'nil','Value':'Webmania.JSON.value()','Map':'%{String.t() => Webmania.JSON.value()}'}.get(t,model(mod,t)+'.t()')
out=['# Generated. Run scripts/generate.py in the pinned Docker toolchain.']
for m in data['models']:
    mod=m['module']; name=model(mod,m['name']); fields=m['fields']
    if m['kind']=='enum' and len(fields)>256:raise ValueError('Variant count exceeds protocol bound')
    if any(f['name']=='__extra__' for f in fields):raise ValueError('Reserved field collision')
    out += ['defmodule '+name+' do', '  @moduledoc "Nominal model from the pinned '+mod+' contract. Inspect hides all fields."', '  @derive {Inspect, only: []}']
    if m['kind']=='struct':
        out += ['  defstruct ['+', '.join('{'+atom(f['name'])+', :unset}' for f in fields)+', {:__extra__, %{}}]',
                '  @type t :: %__MODULE__{'+', '.join(atom(f['name'])+' => '+typ(f['type'],mod) for f in fields)+', :__extra__ => %{String.t() => Webmania.JSON.value()}}',
                '  @doc false', '  def __fields__, do: ['+', '.join('{'+json.dumps(wire(mod,m['name'],f['name']))+', '+atom(f['name'])+', '+desc(f['type'],mod)+'}' for f in fields)+']',
                '  @spec new(map(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}',
                '  def new(attrs, opts \\ []), do: Webmania.Model.new(__MODULE__, attrs, opts)']
    else:
        out += ['  defstruct [:variant, :value]',
                '  @type t :: '+' | '.join('%__MODULE__{variant: '+atom(f['name'])+', value: '+typ(f['type'],mod)+'}' for f in fields),
                '  @doc false', '  def __variants__, do: ['+', '.join('{'+atom(f['name'])+', '+desc(f['type'],mod)+'}' for f in fields)+']',
                '  @spec new(atom(), term(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}',
                '  def new(variant, value, opts \\ []), do: Webmania.Model.new_union(__MODULE__, variant, value, opts)']
    out += ['  @doc false', '  def __model__, do: '+json.dumps(mod+'::'+m['name']),
            '  @spec from_value(Webmania.JSON.value(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}',
            '  def from_value(value, opts \\ []), do: Webmania.Model.from_value(__MODULE__, value, opts)',
            '  @spec from_json(binary(), keyword()) :: {:ok, t()} | {:error, Webmania.Error.t()}',
            '  def from_json(json, opts \\ []), do: Webmania.Model.from_json(__MODULE__, json, opts)',
            '  @spec validate(t(), keyword()) :: :ok | {:error, Webmania.Error.t()}',
            '  def validate(value, opts \\ []), do: Webmania.Model.validate(value, opts)',
            '  @spec to_value(t()) :: {:ok, Webmania.JSON.value()} | {:error, Webmania.Error.t()}',
            '  def to_value(value), do: Webmania.Model.to_value(value)',
            '  @spec to_json(t(), keyword()) :: {:ok, binary()} | {:error, Webmania.Error.t()}',
            '  def to_json(value, opts \\ []), do: Webmania.Model.to_json(value, opts)', 'end']
(ROOT/'lib/webmania/models').mkdir(parents=True,exist_ok=True)
# Split compilation units to avoid one giant compiler process.
for mod in sorted({m['module'] for m in data['models']}):
    blocks=[]; current=[]
    for line in out[1:]:
        current.append(line)
        if line=='end':
            if current[0].startswith('defmodule Webmania.Models.'+module(mod)+'.'): blocks+=current
            current=[]
    (ROOT/'lib/webmania/models'/f'{mod}.ex').write_text(source([out[0]]+blocks))
clients=[]
for scope in ['Nfe','Reseller','Emitter','Monitor','NfeFiles','EmitterFiles']:
    lines=['defmodule Webmania.'+scope+'Client do', '  @moduledoc "'+scope+' credential scope. Named operations use the pinned native backend."', '  @derive {Inspect, only: []}', '  defstruct [:credentials, :config]', '  @opaque t :: %__MODULE__{credentials: Webmania.Credentials.t() | nil, config: Webmania.Config.t()}', '  @spec new(Webmania.Credentials.t() | nil, Webmania.Config.t()) :: {:ok, t()} | {:error, Webmania.Error.t()}', '  def new(credentials, config \\ %Webmania.Config{}), do: Webmania.Client.new(__MODULE__, '+json.dumps(scope)+', credentials, config)']
    for op in data['operations']:
        if op['scope']!=scope: continue
        params=op['params']; names=['client']+[p['name'] for p in params]+['opts \\ []']
        types=['t()']; entries=[]
        for p in params:
            n,t=p['name'],p['type']
            if n in ('query','body'):
                mn=t.split('::')[-1]; types.append(model(op['module'],mn)+'.t()'); entries.append('{'+json.dumps(n)+', '+n+', '+model(op['module'],mn)+'}')
            elif n=='auth': types.append('Webmania.FileAuth.t()'); entries.append('{"file_auth", auth, :auth}')
            else:
                types.append('String.t()' if t=='&str' else 'integer()'); entries.append('{'+json.dumps(n)+', '+n+', '+(':string' if t=='&str' else ':i64')+'}')
        ret=op['returns']
        rt={'crate::FileResponse':'Webmania.FileResponse.t()','crate::FileOrRedirect':'Webmania.FileResult.t()'}.get(ret)
        clean_ret=ret.replace('crate::models::'+op['module']+'::','')
        rd=(':file_result' if ret=='crate::FileOrRedirect' else ':file') if rt else desc(clean_ret,op['module'])
        if not rt:rt=typ(clean_ret,op['module'])
        doc=op['id']+'; '+op['verb']+' '+op['path']+'.'
        if not op['enabled']:doc+=' Blocked before inspecting client, arguments or configuration.'
        lines+=['  @doc '+json.dumps(doc), '  @spec '+op['method']+'('+', '.join(types+['keyword()'])+') :: {:ok, '+rt+'} | {:error, Webmania.Error.t()}', '  def '+op['method']+'('+', '.join(names)+') do']
        if not op['enabled']:
            # Keep exact signature while intentionally never accessing any argument.
            lines[-1]='  def '+op['method']+'('+', '.join('_'+n for n in ['client']+[p['name'] for p in params])+', _opts \\ []) do'
            lines+=['    {:error, Webmania.Error.new("capability", "Operation not available in this SDK release; no request was sent.")}']
        else:
            lines+=['    Webmania.Client.invoke(client, __MODULE__, '+json.dumps(scope)+', '+json.dumps(op['id'])+', ['+', '.join(entries)+'], '+rd+', opts)']
        lines+=['  end']
    lines+=['end']; clients+=lines
(ROOT/'lib/webmania/clients.ex').write_text(source(clients))
registry=['defmodule Webmania.Generated do','  @moduledoc false',
          '  def metadata_sha256, do: '+json.dumps(hashlib.sha256((ROOT/'api-metadata.json').read_bytes()).hexdigest()),
          '  def models, do: ['+', '.join(model(m['module'],m['name']) for m in data['models'])+']']
registry+=['  def operations, do: ['+', '.join('{'+json.dumps(o['id'])+', Webmania.'+o['scope']+'Client, :'+o['method']+', '+str(len(o['params'])+2)+', '+str(o['enabled']).lower()+'}' for o in data['operations'])+']',
           '  def may_mutate?(operation), do: operation in ['+', '.join(json.dumps(o['id']) for o in data['operations'] if o['enabled'] and (o['id']=='fiscalDownloadReport' or o['verb'] not in ('GET','HEAD') or o.get('effects')))+']','end']
(ROOT/'lib/webmania/generated.ex').write_text('\n'.join(registry)+'\n')
print('Generated',len(data['models']),'nominal models and',len(data['operations']),'named operations')
