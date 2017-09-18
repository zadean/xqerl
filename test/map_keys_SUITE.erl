-module('map_keys_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-keys-001'/1]).
-export(['map-keys-002'/1]).
-export(['map-keys-003'/1]).
-export(['map-keys-004'/1]).
-export(['map-keys-005'/1]).
-export(['map-keys-006'/1]).
-export(['map-keys-007'/1]).
-export(['map-keys-008'/1]).
-export(['map-keys-009'/1]).
-export(['map-keys-010'/1]).
-export(['map-keys-011'/1]).
-export(['map-keys-012'/1]).
-export(['map-keys-013'/1]).
-export(['map-keys-014'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-keys-001',
   'map-keys-002',
   'map-keys-003',
   'map-keys-004',
   'map-keys-005',
   'map-keys-006',
   'map-keys-007',
   'map-keys-008',
   'map-keys-009',
   'map-keys-010',
   'map-keys-011',
   'map-keys-012',
   'map-keys-013',
   'map-keys-014'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
].
'map-keys-001'(_Config) ->
   Qry = "map:keys(map{})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-keys-002'(_Config) ->
   Qry = "map:keys(map:new(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-keys-003'(_Config) ->
   Qry = "map:keys(map{\"a\":1})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                1\n                xs:string\n                \"a\"\n            \n        ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst3 = xqerl:run("\"a\""),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-004'(_Config) ->
   Qry = "map:keys(map:entry(\"a\", \"1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                1\n                xs:string\n                \"a\"\n            \n        ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst3 = xqerl:run("\"a\""),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-005'(_Config) ->
   Qry = "map:keys(map:new((map:entry(\"a\", \"1\"), map:entry(\"b\", 2))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                $result = \"a\"\n                $result = \"b\"\n                2\n            \n        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = \"a\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = \"b\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 2 of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-006'(_Config) ->
   Qry = "map:keys(map{\"a\":1, \"b\":2})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                $result = \"a\"\n                $result = \"b\"\n                2\n            \n        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = \"a\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = \"b\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 2 of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-007'(_Config) ->
   Qry = "map:keys(map{\"a\":1, \"a\":2})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                1\n                xs:string\n                \"a\"\n            \n        ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst3 = xqerl:run("\"a\""),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-008'(_Config) ->
   Qry = "map:keys(map:new((map:entry(\"a\",1), map:entry(\"a\",2))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                1\n                xs:string\n                \"a\"\n            \n        ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst3 = xqerl:run("\"a\""),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-009'(_Config) ->
   Qry = "map:keys(map:remove(map{\"a\":1,\"b\":2}, \"b\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                1\n                xs:string\n                \"a\"\n            \n        ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst3 = xqerl:run("\"a\""),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-010'(_Config) ->
   Qry = "map:keys(map:remove(map:entry(1,2),1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-keys-011'(_Config) ->
   Qry = "map:keys(map:remove(map:remove(map{\"a\":1,\"b\":2},\"b\"),\"a\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n        ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'map-keys-012'(_Config) ->
   Qry = "map:keys(map{number('NaN'):1,\"b\":2})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                1\n                xs:string\n                \"b\"\n            \n        ",
 case xqerl_test:size(Res) == 1 andalso  begin Tst3 = xqerl:run("\"b\""),
  ResVal3 = xqerl_types:value(Res),
  TstVal3 = xqerl_types:value(Tst3),
  ResVal3 == TstVal3 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-013'(_Config) ->
   Qry = "map:keys(map:remove(map{\"a\":1,\"b\":2}, \"c\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                $result = \"a\"\n                $result = \"b\"\n                2\n            \n        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = \"a\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = \"b\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 2 of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-keys-014'(_Config) ->
   Qry = "map:keys(map:new(for $n in 1 to 500000 return map:entry($n, $n+1)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n            \n                $result = 1\n                $result = 500000\n                500000\n            \n        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result = 500000",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 500000 of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
