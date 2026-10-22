# Called by update-highlighting.sh. Inputs are pinned upstream snapshots, not local paths.
import json,re,sys
from pathlib import Path
if len(sys.argv) != 4:
 raise SystemExit('Usage: python3 build-language-catalog.py PRISM_COMPONENTS LINGUIST_JSON OUTPUT')
prism=json.load(open(sys.argv[1]))['languages']
linguist=json.load(open(sys.argv[2]))
def normal(s): return re.sub(r'[^a-z0-9+#]','',s.lower())
lookup={}
for key,meta in prism.items():
 if key=='meta': continue
 if isinstance(meta,str): meta={'title':meta}
 aliases=meta.get('alias',[])
 if isinstance(aliases,str): aliases=[aliases]
 for s in [key,meta.get('title',key)]+aliases: lookup.setdefault(normal(s),key)
overrides={'ANTLR':'antlr4','1C Enterprise':'bsl','reStructuredText':'rest','Gettext Catalog':'gettext','Cloud Firestore Security Rules':'firestore-security-rules','C++':'cpp','C#':'csharp','F#':'fsharp','Objective-C':'objectivec','Objective-C++':'objectivec','HTML':'markup','XML':'markup','SVG':'markup','Shell':'bash','Makefile':'makefile','Dockerfile':'docker','Assembly':'nasm','Vim Script':'vim','Common Lisp':'lisp','Emacs Lisp':'lisp','Racket':'racket','TeX':'latex','TSX':'tsx','JSX':'jsx','Vue':'markup','Svelte':'markup','MDX':'markdown','Nginx':'nginx','ApacheConf':'apacheconf','PowerShell':'powershell','Text':'plain','GCC Machine Description':'clike'}
entries=[]
for name,meta in linguist.items():
 candidates=[name]+meta.get('aliases',[])+[meta.get('ace_mode',''),meta.get('codemirror_mode','')]
 grammar=overrides.get(name)
 if grammar is None:
  # The generic text mode does not identify a language-specific grammar.
  grammar=next((lookup[normal(c)] for c in candidates if c not in ('text','') and normal(c) in lookup),None)
 if grammar not in prism: grammar=None
 entry={'id':name,'name':name,'extensions':meta.get('extensions',[]),'filenames':meta.get('filenames',[]),'interpreters':meta.get('interpreters',[])}
 if grammar: entry['grammar']=grammar
 entries.append(entry)
entries.append({'id':'JSX','name':'JSX','grammar':'jsx','extensions':['.jsx'],'filenames':[],'interpreters':[]})
used={e.get('grammar') for e in entries}
helpers={'css-extras','js-extras','js-templates','php-extras','xml-doc','markup-templating'}
for key,meta in prism.items():
 if key=='meta' or key in used or key in helpers: continue
 if isinstance(meta,str): meta={'title':meta}
 aliases=meta.get('alias',[])
 if isinstance(aliases,str): aliases=[aliases]
 aliases=[a for a in aliases if a not in {'xlsx','xls','url'}]
 extensions=['.icn'] if key=='icon' else [] if key=='git' else ['.'+key]+['.'+a for a in aliases]
 entries.append({'id':'prism:'+key,'name':meta.get('title',key),'grammar':key,'extensions':extensions,'filenames':[],'interpreters':[]})
# Exact filename and extension preferences resolve common ambiguous catalog entries.
preferences={'.h':'C','.m':'Objective-C','.mm':'Objective-C++','.pl':'Perl','.pm':'Perl','.r':'R','.R':'R','.ts':'TypeScript','.tsx':'TSX','.js':'JavaScript','.jsx':'JSX','.py':'Python','.pyw':'Python','.rb':'Ruby','.sh':'Shell','.c':'C','.C':'C++','.cpp':'C++','.hpp':'C++','.v':'Verilog','.cs':'C#','.fs':'F#','.swift':'Swift','.kt':'Kotlin','.kts':'Kotlin','.rs':'Rust','.go':'Go','.md':'Markdown','.html':'HTML','.xml':'XML','.json':'JSON','.yaml':'YAML','.yml':'YAML','.php':'PHP','.sql':'SQL','.css':'CSS','.toml':'TOML','.ini':'INI','.ex':'Elixir','.exs':'Elixir','.clj':'Clojure','.dart':'Dart','.bas':'BASIC','.bf':'Brainfuck','.e':'Eiffel','.gd':'GDScript','.odin':'Odin','.pp':'Puppet','.rpy':"Ren'Py",'.tpl':'Smarty','.sol':'Solidity','.scd':'SuperCollider','.jq':'jq','.q':'q','.mata':'prism:mata','.rego':'prism:rego','.icn':'prism:icon','.ino':'prism:arduino','.vue':'Vue','.svelte':'Svelte'}
result={'sources':{'prism':'https://github.com/PrismJS/prism/tree/v1.30.0','linguist':'https://github.com/github-linguist/linguist/tree/73ee9a3b277f398c37ca4ab0dea0193849de6460'},'preferences':preferences,'languages':entries}
Path(sys.argv[3]).write_text(json.dumps(result,ensure_ascii=False,separators=(',',':'))+'\n')
print(len(linguist),'Linguist languages,',len(entries),'catalog entries,',len({e.get('grammar') for e in entries}-{None}),'grammars')
print('Linguist grammar mappings',len([e for e in entries[:len(linguist)] if e.get('grammar')]))
