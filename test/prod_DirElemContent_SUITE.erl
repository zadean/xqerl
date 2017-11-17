-module('prod_DirElemContent_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Constr-cont-invalid-1'/1]).
-export(['Constr-cont-invalid-2'/1]).
-export(['Constr-cont-invalid-3'/1]).
-export(['Constr-cont-invalid-4'/1]).
-export(['Constr-cont-eol-1'/1]).
-export(['Constr-cont-eol-2'/1]).
-export(['Constr-cont-eol-3'/1]).
-export(['Constr-cont-eol-4'/1]).
-export(['Constr-cont-entref-1'/1]).
-export(['Constr-cont-entref-2'/1]).
-export(['Constr-cont-entref-3'/1]).
-export(['Constr-cont-entref-4'/1]).
-export(['Constr-cont-entref-5'/1]).
-export(['Constr-cont-charref-1'/1]).
-export(['Constr-cont-charref-2'/1]).
-export(['Constr-cont-cdata-1'/1]).
-export(['Constr-cont-text-1'/1]).
-export(['Constr-cont-text-2'/1]).
-export(['Constr-cont-nested-1'/1]).
-export(['Constr-cont-nested-2'/1]).
-export(['Constr-cont-nested-3'/1]).
-export(['Constr-cont-nested-4'/1]).
-export(['Constr-cont-enclexpr-1'/1]).
-export(['Constr-cont-enclexpr-2'/1]).
-export(['Constr-cont-enclexpr-3'/1]).
-export(['Constr-cont-enclexpr-4'/1]).
-export(['Constr-cont-enclexpr-5'/1]).
-export(['Constr-cont-nested-5'/1]).
-export(['Constr-cont-nodeid-1'/1]).
-export(['Constr-cont-nodeid-2'/1]).
-export(['Constr-cont-nodeid-3'/1]).
-export(['Constr-cont-nodeid-4'/1]).
-export(['Constr-cont-nodeid-5'/1]).
-export(['Constr-cont-constrmod-1'/1]).
-export(['Constr-cont-constrmod-2'/1]).
-export(['Constr-cont-constrmod-3'/1]).
-export(['Constr-cont-constrmod-4'/1]).
-export(['Constr-cont-constrmod-5'/1]).
-export(['Constr-cont-constrmod-6'/1]).
-export(['Constr-cont-constrmod-7'/1]).
-export(['Constr-cont-constrmod-8'/1]).
-export(['Constr-cont-nsmode-1'/1]).
-export(['Constr-cont-nsmode-2'/1]).
-export(['Constr-cont-nsmode-3'/1]).
-export(['Constr-cont-nsmode-4'/1]).
-export(['Constr-cont-nsmode-5'/1]).
-export(['Constr-cont-nsmode-6'/1]).
-export(['Constr-cont-nsmode-7'/1]).
-export(['Constr-cont-nsmode-8'/1]).
-export(['Constr-cont-nsmode-9'/1]).
-export(['Constr-cont-nsmode-10'/1]).
-export(['Constr-cont-nsmode-11'/1]).
-export(['Constr-cont-uripres-1'/1]).
-export(['Constr-cont-adjtext-1'/1]).
-export(['Constr-cont-adjtext-2'/1]).
-export(['Constr-cont-adjtext-3'/1]).
-export(['Constr-cont-adjtext-4'/1]).
-export(['Constr-cont-doc-1'/1]).
-export(['Constr-cont-attr-1'/1]).
-export(['Constr-cont-attr-2'/1]).
-export(['Constr-cont-attr-3'/1]).
-export(['Constr-cont-attr-4'/1]).
-export(['Constr-cont-baseuri-1'/1]).
-export(['Constr-cont-baseuri-2'/1]).
-export(['Constr-cont-baseuri-3'/1]).
-export(['Constr-cont-parent-1'/1]).
-export(['Constr-cont-attr-5'/1]).
-export(['Constr-cont-attr-6'/1]).
-export(['Constr-cont-attr-7'/1]).
-export(['Constr-cont-attr-8'/1]).
-export(['Constr-cont-attr-9'/1]).
-export(['Constr-cont-string-1'/1]).
-export(['Constr-cont-data-1'/1]).
-export(['Constr-cont-document-1'/1]).
-export(['Constr-cont-document-2'/1]).
-export(['Constr-cont-document-3'/1]).
-export(['Constr-cont-document-4'/1]).
-export(['Constr-cont-document-5'/1]).
-export(['K2-DirectConElemContent-1'/1]).
-export(['K2-DirectConElemContent-2'/1]).
-export(['K2-DirectConElemContent-3'/1]).
-export(['K2-DirectConElemContent-4'/1]).
-export(['K2-DirectConElemContent-5'/1]).
-export(['K2-DirectConElemContent-6'/1]).
-export(['K2-DirectConElemContent-7'/1]).
-export(['K2-DirectConElemContent-8'/1]).
-export(['K2-DirectConElemContent-9'/1]).
-export(['K2-DirectConElemContent-10'/1]).
-export(['K2-DirectConElemContent-11'/1]).
-export(['K2-DirectConElemContent-12'/1]).
-export(['K2-DirectConElemContent-13'/1]).
-export(['K2-DirectConElemContent-14'/1]).
-export(['K2-DirectConElemContent-15'/1]).
-export(['K2-DirectConElemContent-16'/1]).
-export(['K2-DirectConElemContent-17'/1]).
-export(['K2-DirectConElemContent-18'/1]).
-export(['K2-DirectConElemContent-19'/1]).
-export(['K2-DirectConElemContent-20'/1]).
-export(['K2-DirectConElemContent-21'/1]).
-export(['K2-DirectConElemContent-22'/1]).
-export(['K2-DirectConElemContent-23'/1]).
-export(['K2-DirectConElemContent-24'/1]).
-export(['K2-DirectConElemContent-25'/1]).
-export(['K2-DirectConElemContent-26'/1]).
-export(['K2-DirectConElemContent-26a'/1]).
-export(['K2-DirectConElemContent-26b'/1]).
-export(['K2-DirectConElemContent-27'/1]).
-export(['K2-DirectConElemContent-28'/1]).
-export(['K2-DirectConElemContent-29'/1]).
-export(['K2-DirectConElemContent-30'/1]).
-export(['K2-DirectConElemContent-31'/1]).
-export(['K2-DirectConElemContent-32'/1]).
-export(['K2-DirectConElemContent-33'/1]).
-export(['K2-DirectConElemContent-34'/1]).
-export(['K2-DirectConElemContent-35'/1]).
-export(['K2-DirectConElemContent-35a'/1]).
-export(['K2-DirectConElemContent-35b'/1]).
-export(['K2-DirectConElemContent-36'/1]).
-export(['K2-DirectConElemContent-37'/1]).
-export(['K2-DirectConElemContent-38'/1]).
-export(['K2-DirectConElemContent-39'/1]).
-export(['K2-DirectConElemContent-40'/1]).
-export(['K2-DirectConElemContent-41'/1]).
-export(['K2-DirectConElemContent-42'/1]).
-export(['K2-DirectConElemContent-43'/1]).
-export(['K2-DirectConElemContent-44'/1]).
-export(['K2-DirectConElemContent-45'/1]).
-export(['K2-DirectConElemContent-46'/1]).
-export(['K2-DirectConElemContent-47'/1]).
-export(['K2-DirectConElemContent-48'/1]).
-export(['cbcl-ns-fixup-1'/1]).
-export(['ElemContentArray-001'/1]).
-export(['ElemContentArray-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Constr-cont-invalid-1',
   'Constr-cont-invalid-2',
   'Constr-cont-invalid-3',
   'Constr-cont-invalid-4',
   'Constr-cont-eol-1',
   'Constr-cont-eol-2',
   'Constr-cont-eol-3',
   'Constr-cont-eol-4',
   'Constr-cont-entref-1',
   'Constr-cont-entref-2',
   'Constr-cont-entref-3',
   'Constr-cont-entref-4',
   'Constr-cont-entref-5',
   'Constr-cont-charref-1',
   'Constr-cont-charref-2',
   'Constr-cont-cdata-1',
   'Constr-cont-text-1',
   'Constr-cont-text-2',
   'Constr-cont-nested-1',
   'Constr-cont-nested-2',
   'Constr-cont-nested-3',
   'Constr-cont-nested-4',
   'Constr-cont-enclexpr-1',
   'Constr-cont-enclexpr-2',
   'Constr-cont-enclexpr-3',
   'Constr-cont-enclexpr-4',
   'Constr-cont-enclexpr-5',
   'Constr-cont-nested-5',
   'Constr-cont-nodeid-1',
   'Constr-cont-nodeid-2',
   'Constr-cont-nodeid-3',
   'Constr-cont-nodeid-4',
   'Constr-cont-nodeid-5',
   'Constr-cont-constrmod-1',
   'Constr-cont-constrmod-2',
   'Constr-cont-constrmod-3',
   'Constr-cont-constrmod-4',
   'Constr-cont-constrmod-5',
   'Constr-cont-constrmod-6',
   'Constr-cont-constrmod-7',
   'Constr-cont-constrmod-8',
   'Constr-cont-nsmode-1',
   'Constr-cont-nsmode-2',
   'Constr-cont-nsmode-3',
   'Constr-cont-nsmode-4',
   'Constr-cont-nsmode-5',
   'Constr-cont-nsmode-6',
   'Constr-cont-nsmode-7',
   'Constr-cont-nsmode-8',
   'Constr-cont-nsmode-9',
   'Constr-cont-nsmode-10',
   'Constr-cont-nsmode-11',
   'Constr-cont-uripres-1',
   'Constr-cont-adjtext-1',
   'Constr-cont-adjtext-2',
   'Constr-cont-adjtext-3',
   'Constr-cont-adjtext-4',
   'Constr-cont-doc-1',
   'Constr-cont-attr-1',
   'Constr-cont-attr-2',
   'Constr-cont-attr-3',
   'Constr-cont-attr-4',
   'Constr-cont-baseuri-1',
   'Constr-cont-baseuri-2',
   'Constr-cont-baseuri-3',
   'Constr-cont-parent-1',
   'Constr-cont-attr-5',
   'Constr-cont-attr-6',
   'Constr-cont-attr-7',
   'Constr-cont-attr-8',
   'Constr-cont-attr-9',
   'Constr-cont-string-1',
   'Constr-cont-data-1',
   'Constr-cont-document-1',
   'Constr-cont-document-2',
   'Constr-cont-document-3',
   'Constr-cont-document-4',
   'Constr-cont-document-5',
   'K2-DirectConElemContent-1',
   'K2-DirectConElemContent-2',
   'K2-DirectConElemContent-3',
   'K2-DirectConElemContent-4',
   'K2-DirectConElemContent-5',
   'K2-DirectConElemContent-6',
   'K2-DirectConElemContent-7',
   'K2-DirectConElemContent-8',
   'K2-DirectConElemContent-9',
   'K2-DirectConElemContent-10',
   'K2-DirectConElemContent-11',
   'K2-DirectConElemContent-12',
   'K2-DirectConElemContent-13',
   'K2-DirectConElemContent-14',
   'K2-DirectConElemContent-15',
   'K2-DirectConElemContent-16',
   'K2-DirectConElemContent-17',
   'K2-DirectConElemContent-18',
   'K2-DirectConElemContent-19',
   'K2-DirectConElemContent-20',
   'K2-DirectConElemContent-21',
   'K2-DirectConElemContent-22',
   'K2-DirectConElemContent-23',
   'K2-DirectConElemContent-24',
   'K2-DirectConElemContent-25',
   'K2-DirectConElemContent-26',
   'K2-DirectConElemContent-26a',
   'K2-DirectConElemContent-26b',
   'K2-DirectConElemContent-27',
   'K2-DirectConElemContent-28',
   'K2-DirectConElemContent-29',
   'K2-DirectConElemContent-30',
   'K2-DirectConElemContent-31',
   'K2-DirectConElemContent-32',
   'K2-DirectConElemContent-33',
   'K2-DirectConElemContent-34',
   'K2-DirectConElemContent-35',
   'K2-DirectConElemContent-35a',
   'K2-DirectConElemContent-35b',
   'K2-DirectConElemContent-36',
   'K2-DirectConElemContent-37',
   'K2-DirectConElemContent-38',
   'K2-DirectConElemContent-39',
   'K2-DirectConElemContent-40',
   'K2-DirectConElemContent-41',
   'K2-DirectConElemContent-42',
   'K2-DirectConElemContent-43',
   'K2-DirectConElemContent-44',
   'K2-DirectConElemContent-45',
   'K2-DirectConElemContent-46',
   'K2-DirectConElemContent-47',
   'K2-DirectConElemContent-48',
   'cbcl-ns-fixup-1',
   'ElemContentArray-001',
   'ElemContentArray-002'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('TopMany') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/AxisStep/TopMany.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('DupNode') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/CompAttrConstructor/DupNode.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('nsmode') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/DirElemContent/nsmode.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('namespace-sensitive') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/DirElemContent/namespace-sensitive.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/DirElemContent/namespace-sensitive.xsd","http://www.example.com/test/namespace-sensitive"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Constr-cont-invalid-1'(_Config) ->
   Qry = "<elem>{</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-invalid-2'(_Config) ->
   Qry = "<elem>}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-invalid-3'(_Config) ->
   Qry = "<elem><</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-invalid-4'(_Config) ->
   Qry = "<elem>&</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-eol-1'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>1
2</elem>)}</codepoints>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<codepoints>49 10 50</codepoints>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-eol-2'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>1&#xa;2</elem>) }</codepoints>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<codepoints>49 10 50</codepoints>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-eol-3'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>&#xD;&#xA;</elem>)}</codepoints>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<codepoints>13 10</codepoints>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-eol-4'(_Config) ->
   Qry = "<codepoints>{string-to-codepoints(<elem>&#xD;</elem>)}</codepoints>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<codepoints>13</codepoints>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-entref-1'(_Config) ->
   Qry = "string-to-codepoints(<elem>&lt;</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"60") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-entref-2'(_Config) ->
   Qry = "string-to-codepoints(<elem>&gt;</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"62") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-entref-3'(_Config) ->
   Qry = "string-to-codepoints(<elem>&amp;</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"38") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-entref-4'(_Config) ->
   Qry = "string-to-codepoints(<elem>&quot;</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"34") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-entref-5'(_Config) ->
   Qry = "string-to-codepoints(<elem>&apos;</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"39") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-charref-1'(_Config) ->
   Qry = "<elem>&#x30;</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>0</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-charref-2'(_Config) ->
   Qry = "<elem>&#x0;</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0090") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-cdata-1'(_Config) ->
   Qry = "<elem><![CDATA[cdata&<>'\"&lt;&#x20;]]></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>cdata&amp;&lt;&gt;'\"&amp;lt;&amp;#x20;</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-text-1'(_Config) ->
   Qry = "count((<elem>text</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-text-2'(_Config) ->
   Qry = "count((<elem>text<![CDATA[cdata]]></elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nested-1'(_Config) ->
   Qry = "<elem><a><b/></a><a/><c/></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><a><b/></a><a/><c/></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nested-2'(_Config) ->
   Qry = "<elem><?pi?><?pi content?></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><?pi ?><?pi content?></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nested-3'(_Config) ->
   Qry = "<elem><!----><!--content--></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><!----><!--content--></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nested-4'(_Config) ->
   Qry = "<elem>A<a>B<?pi?>C<b/>D<!---->E</a>F<!--content-->G<a/>H<?pi content?>I<c/>J</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>A<a>B<?pi ?>C<b/>D<!---->E</a>F<!--content-->G<a/>H<?pi content?>I<c/>J</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-enclexpr-1'(_Config) ->
   Qry = "count((<elem>{1,'a',3.5,4e2}</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-enclexpr-2'(_Config) ->
   Qry = "count((<elem>{1,'a',<a/>,3.5,4e2}</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-enclexpr-3'(_Config) ->
   Qry = "<elem>{1,'a',3.5,4e2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1 a 3.5 400</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-enclexpr-4'(_Config) ->
   Qry = "<elem>{1,//a,2,3,//comment(),4,5,//processing-instruction(),6,7,//text(),8}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-enclexpr-5'(_Config) ->
   Qry = "<elem>{1, '', 2}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1  2</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nested-5'(_Config) ->
   Qry = "<elem>{/root}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nodeid-1'(_Config) ->
   Qry = "for $x in <a/>, $y in <elem>{$x}</elem> return exactly-one($y/a) is $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nodeid-2'(_Config) ->
   Qry = "for $x in <a b=\"b\"/>, $y in <elem>{$x/@b}</elem> return $y/@b is $x/@b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nodeid-3'(_Config) ->
   Qry = "for $x in <!--comment-->, $y in <elem>{$x}</elem> return exactly-one($y/comment()) is $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nodeid-4'(_Config) ->
   Qry = "for $x in <?pi content?>, $y in <elem>{$x}</elem> return exactly-one($y/processing-instruction()) is $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nodeid-5'(_Config) ->
   Qry = "for $x in <a>text</a>, $y in <elem>{$x/text()}</elem> return exactly-one($y/text()) is exactly-one($x/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-constrmod-1'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-2'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-3'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-4'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-5'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-6'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-7'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-constrmod-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-1'(_Config) ->
   Qry = "declare copy-namespaces preserve, inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   {Env,Opts} = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<z xmlns:preserve=\"http://www.example.com/preserve\" xmlns:inherit=\"http://www.example.com/inherit\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nsmode-2'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   {Env,Opts} = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<z xmlns:inherit=\"http://www.example.com/inherit\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nsmode-3'(_Config) ->
   Qry = "declare copy-namespaces preserve, no-inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   {Env,Opts} = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<z xmlns:preserve=\"http://www.example.com/preserve\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nsmode-4'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, no-inherit; <y xmlns:inherit=\"http://www.example.com/inherit\">{(/)}</y>/x/z",
   {Env,Opts} = xqerl_test:handle_environment(environment('nsmode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<z/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-nsmode-5'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-6'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-7'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-8'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-9'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-10'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-nsmode-11'(_Config) ->
   {skip,"Validation Environment"}.
'Constr-cont-uripres-1'(_Config) ->
   Qry = "
        for $x in <a xml:base=\"http://www.example.com/base1\"><b/></a>, 
            $y in <a xml:base=\"http://www.example.com/base2\">{$x/b}</a> 
        return fn:base-uri(exactly-one($y/b))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/base2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-adjtext-1'(_Config) ->
   Qry = "count((<elem>a{1,2,3}b</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-adjtext-2'(_Config) ->
   Qry = "count((<elem>a{1,<a/>,3}b</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-adjtext-3'(_Config) ->
   Qry = "count((<elem>{''}</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-adjtext-4'(_Config) ->
   Qry = "count((<elem>{()}</elem>)/text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-doc-1'(_Config) ->
   Qry = "<elem>{(/), (/)}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root></elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-1'(_Config) ->
   Qry = "<elem>{1, //west/@mark}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-2'(_Config) ->
   Qry = "<elem><a/>{//west/@mark}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-3'(_Config) ->
   Qry = "<elem>{()}{//west/@mark}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem mark=\"w0\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-4'(_Config) ->
   Qry = "<elem>{//west/@mark}x{//west/@west-attr-1}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-baseuri-1'(_Config) ->
   Qry = "fn:base-uri(<elem xml:base=\"http://www.example.com\"/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-baseuri-2'(_Config) ->
   Qry = "fn:base-uri(exactly-one((<elem xml:base=\"http://www.example.com\"><a/></elem>)/a))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-baseuri-3'(_Config) ->
   Qry = "declare base-uri \"http://www.example.com\"; fn:base-uri(<elem/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-parent-1'(_Config) ->
   Qry = "count((<elem/>)/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-5'(_Config) ->
   Qry = "<elem>{//west/@mark, //west/@west-attr-1}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem mark=\"w0\" west-attr-1=\"w1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-6'(_Config) ->
   Qry = "<elem mark=\"w0\">{//west/@west-attr-1, //west/@west-attr-2}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem mark=\"w0\" west-attr-1=\"w1\" west-attr-2=\"w2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-7'(_Config) ->
   Qry = "<elem>{//west/@mark, //center/@mark}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-8'(_Config) ->
   Qry = "<elem mark=\"w0\">{//west/@west-attr-1, //west/@mark}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0025") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-attr-9'(_Config) ->
   Qry = "<elem>{//west/@west-attr-1}{//west/@west-attr-2}</elem>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem west-attr-1=\"w1\" west-attr-2=\"w2\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-string-1'(_Config) ->
   Qry = "fn:string(<elem>a<a/>b</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-data-1'(_Config) ->
   Qry = "fn:data(<elem>a<a/>b</elem>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-document-1'(_Config) ->
   Qry = "count(<wrapper> {'abc', document {'def', <anode/>, 'ghi'}, 'jkl'} </wrapper>/node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-document-2'(_Config) ->
   Qry = "count(<wrapper> abc {document {'def', <anode/>, 'ghi'}} jkl </wrapper>/node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-document-3'(_Config) ->
   Qry = "
        declare variable $codepoints as xs:integer+ := (9, 10, 13, 32 to 55295, 57344 to 65532, 65536 to 1114111 ); 
        declare variable $count as xs:integer := count($codepoints); 
        declare variable $lineWidth as xs:integer := 70;
        <allCodepoints><r>{codepoints-to-string($codepoints)}</r></allCodepoints> 
        (:<allCodepoints>{ 
            for $i in (1 to $count idiv $lineWidth) 
            let $startOffset := (($i - 1) * $lineWidth) + 1 
            return (<r s=\"{$codepoints[$startOffset]}\" e=\"{$codepoints[$startOffset] + $lineWidth}\"> { 
                codepoints-to-string(subsequence($codepoints, $startOffset, $lineWidth)) } </r>, \"&#xA;\") 
                } </allCodepoints>:)
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"sum($result//r/text()/string-length()) = count((9, 10, 13, 32 to 55295, 57344 to 65532, 65536 to 1114111 ))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"starts-with(($result//r/text())[1], '	')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"ends-with(($result//r/text())[last()], '􏿿')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-document-4'(_Config) ->
   Qry = "count( document {'abc', 'def', document {'ghi', <anode/>, 'jkl'}, 'mno' } /node() )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Constr-cont-document-5'(_Config) ->
   Qry = "count( document {'abc', 'def', document {'ghi', 'jkl'}, 'mno' } /node() )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-1'(_Config) ->
   Qry = "3}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-2'(_Config) ->
   Qry = "\"a string\" }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-3'(_Config) ->
   Qry = "}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-4'(_Config) ->
   Qry = "}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-5'(_Config) ->
   Qry = "data(<name>some text</name>) instance of xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-6'(_Config) ->
   Qry = "not(data(<name>some text</name>) instance of xs:string)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-7'(_Config) ->
   Qry = "<name>some, if(1) then else</name> instance of element()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-8'(_Config) ->
   Qry = "not(<name>some text</name> instance of xs:untypedAtomic)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-9'(_Config) ->
   Qry = "data(<!-- a comment -->) instance of xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-10'(_Config) ->
   Qry = "not(data(<!-- a comment -->) instance of xs:untypedAtomic)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-11'(_Config) ->
   Qry = "<!-- a comment --> instance of comment()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-12'(_Config) ->
   Qry = "not(<!-- a comment --> instance of xs:untypedAtomic)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-13'(_Config) ->
   Qry = "not(<!-- a comment --> instance of xs:string)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-14'(_Config) ->
   Qry = "data(<?target content?>) instance of xs:string",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-15'(_Config) ->
   Qry = "not(data(<?target content?>) instance of xs:untypedAtomic)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-16'(_Config) ->
   Qry = "<?target content?> instance of processing-instruction()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-17'(_Config) ->
   Qry = "not(<?target content?> instance of xs:untypedAtomic)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-18'(_Config) ->
   Qry = "<![CDATA[content]]>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-19'(_Config) ->
   Qry = "<elem><![THISISWRONG[content]]></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-20'(_Config) ->
   Qry = "<elem><![CDA",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-21'(_Config) ->
   Qry = "<elem><![CDATA[CONTENT]]>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-22'(_Config) ->
   Qry = "<elem><![CDATA[CONTENT]]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-23'(_Config) ->
   Qry = "<elem><![CDATA[CONTENT]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-24'(_Config) ->
   Qry = "<elem><![cdata[CONTENT]]></elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-25'(_Config) ->
   Qry = "string(<eg> (: an (:example:) </eg>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, " (: an (:example:) ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-26'(_Config) ->
   {skip,"XQ10 XQ30"}.
'K2-DirectConElemContent-26a'(_Config) ->
   Qry = "<elem>content{}content</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>contentcontent</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-26b'(_Config) ->
   Qry = "<elem>content{(:comment:)}content</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>contentcontent</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-27'(_Config) ->
   Qry = "string(<elem><![CDATA[str]]>str<![CDATA[str]]><![CDATA[str]]><![CDATA[str]]>strstr{ \"str\", \"str\", \"strstr\", \"str\"}strstr<![CDATA[str]]>s<?target str?>tr</elem>) eq \"strstrstrstrstrstrstrstr str strstr strstrstrstrstr\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-28'(_Config) ->
   Qry = "string(<elem><![CDATA[con<<< ]] >\"\"'*\"*\">>tent]]&#00;&#x12;&amp;&quot;&notrecognized;&apos]]></elem>) eq \"con&lt;&lt;&lt; ]] &gt;\"\"\"\"'*\"\"*\"\"&gt;&gt;tent]]&amp;#00;&amp;#x12;&amp;amp;&amp;quot;&amp;notrecognized;&amp;apos\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-29'(_Config) ->
   Qry = "data(text{\"content\"}) instance of xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-30'(_Config) ->
   Qry = "<e>{1}A{1}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>1A1</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-31'(_Config) ->
   Qry = "string(<e>{1}A{1}</e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1A1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-32'(_Config) ->
   Qry = "data(<e>dsa</e>) instance of xs:untypedAtomic",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-33'(_Config) ->
   Qry = "data(<e>dsa</e>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "dsa") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-34'(_Config) ->
   Qry = "<e/> instance of element(*, xs:anyType)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-35'(_Config) ->
   {skip,"XQ10"}.
'K2-DirectConElemContent-35a'(_Config) ->
   {skip,"typedData"}.
'K2-DirectConElemContent-35b'(_Config) ->
   {skip,"typedData"}.
'K2-DirectConElemContent-36'(_Config) ->
   Qry = "declare construction strip; <e/> instance of element(*, xs:untyped)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-37'(_Config) ->
   Qry = "<e/> instance of element(a, xs:anyType)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-38'(_Config) ->
   Qry = "declare construction strip; <e/> instance of element(b, xs:untyped)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-39'(_Config) ->
   Qry = "<elem>{1}{2}{3}{4}{5}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>12345</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-40'(_Config) ->
   Qry = "<elem>{1}{2}{3}{4}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>1234</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-41'(_Config) ->
   Qry = "<elem>{1}{2}{3}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>123</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-42'(_Config) ->
   Qry = "<elem>{1}{2}</elem>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<elem>12</elem>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-43'(_Config) ->
   Qry = "<a> <![CDATA[ ]]> {\"abc\"}</a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>   abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-44'(_Config) ->
   Qry = "<e attr='content\"/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-45'(_Config) ->
   Qry = "<e attr=\"content'/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-46'(_Config) ->
   Qry = "<e>{1}{text{()}}{2}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>12</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-47'(_Config) ->
   Qry = "<e>{1}{text{\"\"}}{2}</e>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>12</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-DirectConElemContent-48'(_Config) ->
   Qry = "document{
      	<e xmlns=\"http://www.example.com/\"> <a xmlns=\"\"/> </e>, 
      	<e xmlns=\"http://www.example.com/\"> <a xmlns=\"\"/> </e>/count(in-scope-prefixes(a)), 
      	<e xmlns=\"http://www.example.com/\"> <a xmlns=\"\"> <b xmlns=\"\"/> </a> </e>
      }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"/></e>1<e xmlns=\"http://www.example.com/\"><a xmlns=\"\"><b/></a></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-ns-fixup-1'(_Config) ->
   Qry = " 
      	let $x := <ns:foo xmlns:ns=\"http://www.w3.org/foo\" ns:attr=\"foo\" /> 
      	return let $y := <ns:foo xmlns:ns=\"http://www.w3.org/bar\" ns:attr=\"bar\" /> 
      	return let $z := <root> { $x/@*, $y/@* } </root> 
      	return count(distinct-values(in-scope-prefixes($z)))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'ElemContentArray-001'(_Config) ->
   Qry = " 
      	<e>{[1, 2, 3]}</e>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>1 2 3</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'ElemContentArray-002'(_Config) ->
   Qry = " 
      	<e>{[<f>{[1,<x/>,3]}</f>, <g>{[4, <x/>, 5]}</g>]}</e>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><f>1<x/>3</f><g>4<x/>5</g></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
