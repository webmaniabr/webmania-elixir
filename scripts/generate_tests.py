import json,pathlib,base64
R=pathlib.Path(__file__).resolve().parents[1]
exec((R/'scripts/generate.py').read_text().split("out=['# Generated")[0])
meta=json.loads((R/'api-metadata.json').read_text())
cases={c['operation']:c for c in json.loads((R/'test/fixtures/operations.json').read_text())['cases']}
def lit(v):return 'Base.decode64!("'+base64.b64encode(json.dumps(v,ensure_ascii=False,separators=(',',':')).encode()).decode()+'")'
lines=['defmodule Webmania.TestMatrix do','  alias Webmania.TestSupport, as: T']
for i,op in enumerate(meta['operations']):
 c=cases[op['id']];scope=op['scope'];client='Webmania.'+scope+'Client'
 lines+=['  def invoke('+str(i)+', config) do']
 if not op['enabled']:
  lines+=['    '+client+'.'+op['method']+'('+', '.join([':invalid']*(len(op['params'])+1))+')','  end'];continue
 credentials={'Nfe':'Webmania.Credentials.company("synthetic-company-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!()', 'Reseller':'Webmania.Credentials.reseller("synthetic-reseller-key", "synthetic-secret", "synthetic-token", "synthetic-secret2") |> T.ok!()', 'Emitter':'Webmania.Credentials.issuer("synthetic-issuer") |> T.ok!()', 'Monitor':'Webmania.Credentials.monitor("synthetic-monitor") |> T.ok!()'}
 credentials['NfeFiles']=credentials['Nfe'];credentials['EmitterFiles']=credentials['Emitter']
 lines+=['    client = '+client+'.new('+credentials[scope]+', config) |> T.ok!()']
 args=['client']
 for p in op['params']:
  name,t=p['name'],p['type']
  if name in ('body','query'):
   m=model(op['module'],t.split('::')[-1]);v=c['query'] if name=='query' else c['request']
   lines+=['    '+name+' = '+m+'.from_json('+lit(v)+') |> T.ok!()'];args+=[name]
  elif name=='auth':args+=['Webmania.FileAuth.public_report()' if op['id']=='fiscalDownloadReport' else ('Webmania.FileAuth.company()' if scope=='NfeFiles' else 'Webmania.FileAuth.issuer()')]
  else:args+=[json.dumps(c['path_params'][name])]
 lines+=['    '+client+'.'+op['method']+'('+', '.join(args)+')','  end']
lines+=['end']
(R/'test/generated_matrix.exs').write_text('\n'.join(lines)+'\n')
print('Generated',len(cases),'typed matrix invocations')
