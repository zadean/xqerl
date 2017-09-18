-module('fn_parse_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-parse-json-001'/1]).
-export(['fn-parse-json-002'/1]).
-export(['fn-parse-json-003'/1]).
-export(['fn-parse-json-004'/1]).
-export(['fn-parse-json-005'/1]).
-export(['fn-parse-json-006'/1]).
-export(['fn-parse-json-007'/1]).
-export(['fn-parse-json-008'/1]).
-export(['fn-parse-json-009'/1]).
-export(['fn-parse-json-010'/1]).
-export(['fn-parse-json-011'/1]).
-export(['fn-parse-json-012'/1]).
-export(['fn-parse-json-013'/1]).
-export(['fn-parse-json-014'/1]).
-export(['fn-parse-json-015'/1]).
-export(['fn-parse-json-016'/1]).
-export(['fn-parse-json-017'/1]).
-export(['fn-parse-json-018'/1]).
-export(['fn-parse-json-019'/1]).
-export(['fn-parse-json-020'/1]).
-export(['fn-parse-json-021'/1]).
-export(['fn-parse-json-022'/1]).
-export(['fn-parse-json-023'/1]).
-export(['fn-parse-json-024'/1]).
-export(['fn-parse-json-025'/1]).
-export(['fn-parse-json-026'/1]).
-export(['fn-parse-json-027'/1]).
-export(['fn-parse-json-028'/1]).
-export(['fn-parse-json-029'/1]).
-export(['fn-parse-json-030'/1]).
-export(['fn-parse-json-031'/1]).
-export(['fn-parse-json-032'/1]).
-export(['fn-parse-json-033'/1]).
-export(['fn-parse-json-034'/1]).
-export(['fn-parse-json-035'/1]).
-export(['fn-parse-json-036'/1]).
-export(['fn-parse-json-037'/1]).
-export(['fn-parse-json-038'/1]).
-export(['fn-parse-json-039'/1]).
-export(['fn-parse-json-040'/1]).
-export(['fn-parse-json-041'/1]).
-export(['fn-parse-json-042'/1]).
-export(['fn-parse-json-101'/1]).
-export(['fn-parse-json-102'/1]).
-export(['fn-parse-json-103'/1]).
-export(['fn-parse-json-104'/1]).
-export(['fn-parse-json-105'/1]).
-export(['fn-parse-json-901'/1]).
-export(['fn-parse-json-902'/1]).
-export(['fn-parse-json-903'/1]).
-export(['fn-parse-json-904'/1]).
-export(['fn-parse-json-905'/1]).
-export(['fn-parse-json-906'/1]).
-export(['fn-parse-json-907'/1]).
-export(['fn-parse-json-908'/1]).
-export(['fn-parse-json-909'/1]).
-export(['fn-parse-json-910'/1]).
-export(['fn-parse-json-911'/1]).
-export(['fn-parse-json-912'/1]).
-export(['fn-parse-json-913'/1]).
-export(['fn-parse-json-914'/1]).
-export(['fn-parse-json-915'/1]).
-export(['fn-parse-json-916'/1]).
-export(['fn-parse-json-917'/1]).
-export(['fn-parse-json-918'/1]).
-export(['fn-parse-json-919'/1]).
-export(['fn-parse-json-920'/1]).
-export(['fn-parse-json-921'/1]).
-export(['fn-parse-json-922'/1]).
-export(['fn-parse-json-923'/1]).
-export(['fn-parse-json-924'/1]).
-export(['fn-parse-json-925'/1]).
-export(['fn-parse-json-926'/1]).
-export(['fn-parse-json-927'/1]).
-export(['fn-parse-json-928'/1]).
-export(['fn-parse-json-929'/1]).
-export(['fn-parse-json-930'/1]).
-export(['fn-parse-json-931'/1]).
-export(['fn-parse-json-932'/1]).
-export(['fn-parse-json-933'/1]).
-export(['fn-parse-json-934'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-parse-json-001',
   'fn-parse-json-002',
   'fn-parse-json-003',
   'fn-parse-json-004',
   'fn-parse-json-005',
   'fn-parse-json-006',
   'fn-parse-json-007',
   'fn-parse-json-008',
   'fn-parse-json-009',
   'fn-parse-json-010',
   'fn-parse-json-011',
   'fn-parse-json-012',
   'fn-parse-json-013',
   'fn-parse-json-014',
   'fn-parse-json-015',
   'fn-parse-json-016',
   'fn-parse-json-017',
   'fn-parse-json-018',
   'fn-parse-json-019',
   'fn-parse-json-020',
   'fn-parse-json-021',
   'fn-parse-json-022',
   'fn-parse-json-023',
   'fn-parse-json-024',
   'fn-parse-json-025',
   'fn-parse-json-026',
   'fn-parse-json-027',
   'fn-parse-json-028',
   'fn-parse-json-029',
   'fn-parse-json-030',
   'fn-parse-json-031',
   'fn-parse-json-032',
   'fn-parse-json-033',
   'fn-parse-json-034',
   'fn-parse-json-035',
   'fn-parse-json-036',
   'fn-parse-json-037',
   'fn-parse-json-038',
   'fn-parse-json-039',
   'fn-parse-json-040',
   'fn-parse-json-041',
   'fn-parse-json-042',
   'fn-parse-json-101',
   'fn-parse-json-102',
   'fn-parse-json-103',
   'fn-parse-json-104',
   'fn-parse-json-105',
   'fn-parse-json-901',
   'fn-parse-json-902',
   'fn-parse-json-903',
   'fn-parse-json-904',
   'fn-parse-json-905',
   'fn-parse-json-906',
   'fn-parse-json-907',
   'fn-parse-json-908',
   'fn-parse-json-909',
   'fn-parse-json-910',
   'fn-parse-json-911',
   'fn-parse-json-912',
   'fn-parse-json-913',
   'fn-parse-json-914',
   'fn-parse-json-915',
   'fn-parse-json-916',
   'fn-parse-json-917',
   'fn-parse-json-918',
   'fn-parse-json-919',
   'fn-parse-json-920',
   'fn-parse-json-921',
   'fn-parse-json-922',
   'fn-parse-json-923',
   'fn-parse-json-924',
   'fn-parse-json-925',
   'fn-parse-json-926',
   'fn-parse-json-927',
   'fn-parse-json-928',
   'fn-parse-json-929',
   'fn-parse-json-930',
   'fn-parse-json-931',
   'fn-parse-json-932',
   'fn-parse-json-933',
   'fn-parse-json-934'].
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
'fn-parse-json-001'(_Config) ->
   Qry = "parse-json(\"{}\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{}\n      ",
 Tst = xqerl:run("map{}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-002'(_Config) ->
   Qry = "parse-json('{\"abc\":12}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=12e0}\n      ",
 Tst = xqerl:run("map{\"abc\":=12e0}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-003'(_Config) ->
   Qry = "parse-json('{\"abc\":12e0}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=12e0}\n      ",
 Tst = xqerl:run("map{\"abc\":=12e0}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-004'(_Config) ->
   Qry = "parse-json('{\"abc\":-1.2e0}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=-1.2e0}\n      ",
 Tst = xqerl:run("map{\"abc\":=-1.2e0}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-005'(_Config) ->
   Qry = "parse-json('{\"abc\":true}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=true()}\n      ",
 Tst = xqerl:run("map{\"abc\":=true()}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-006'(_Config) ->
   Qry = "parse-json('{\"abc\":false}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=false()}\n      ",
 Tst = xqerl:run("map{\"abc\":=false()}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-007'(_Config) ->
   Qry = "parse-json('{\"abc\":null}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=()}\n      ",
 Tst = xqerl:run("map{\"abc\":=()}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-008'(_Config) ->
   Qry = "parse-json('{\"abc\":true,\"xyz\":false}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=true(),\"xyz\":=false()}\n      ",
 Tst = xqerl:run("map{\"abc\":=true(),\"xyz\":=false()}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-009'(_Config) ->
   Qry = "parse-json(' { \"abc\" : true , \"xyz\" : false } ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=true(),\"xyz\":=false()}\n      ",
 Tst = xqerl:run("map{\"abc\":=true(),\"xyz\":=false()}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-010'(_Config) ->
   Qry = "parse-json('    {   \"abc\"   :   true    ,\n            \"xyz\"   :   false   \n            }   ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map{\"abc\":=true(),\"xyz\":=false()}\n      ",
 Tst = xqerl:run("map{\"abc\":=true(),\"xyz\":=false()}"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-parse-json-011'(_Config) ->
   Qry = "parse-json(\"[]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            map(*)\n            1\n            map:size($result) eq 0\n            map:collation($result) eq \"http://saxon.sf.net/json/array-collation\"\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:collation($result) eq \"http://saxon.sf.net/json/array-collation\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-012'(_Config) ->
   Qry = "parse-json(\"[12345]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            map(*)\n            1\n            map:contains($result, 1)\n            map:get($result, 1) eq 12345\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 1)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:get($result, 1) eq 12345",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-013'(_Config) ->
   Qry = "parse-json('[\"abcd\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            map(*)\n            1\n            map:contains($result, 1)\n            $result(1) eq \"abcd\"\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 1)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) eq \"abcd\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-014'(_Config) ->
   Qry = "parse-json(\"[true]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n            map(*)\n            1\n            map:contains($result, 1)\n            $result(1) eq true()\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 1)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) eq true()",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-015'(_Config) ->
   Qry = "parse-json(\"[false]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            map(*)\n            1\n            map:contains($result, 1)\n            $result(1) eq false()\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 1)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) eq false()",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-016'(_Config) ->
   Qry = "parse-json(\"[null]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            map(*)\n            1\n            map:contains($result, 1)\n            empty($result(1))\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 1)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"empty($result(1))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-017'(_Config) ->
   Qry = "parse-json('[1,2,3, \"abc\", \"def\", true, false, null]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n            map(*)\n            1\n            every $i in 1 to 8 satisfies map:contains($result, $i)\n            every $i in (0, 9, 10) satisfies not(map:contains($result, $i))\n            $result(1) eq 1\n            $result(5) eq \"def\"\n            $result(7) eq false()\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"every $i in 1 to 8 satisfies map:contains($result, $i)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"every $i in (0, 9, 10) satisfies not(map:contains($result, $i))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(5) eq \"def\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(7) eq false()",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-018'(_Config) ->
   Qry = "parse-json('\n        [   1,     2,  3, \n        \"abc\",  \"def\",   true, \n        false,  null ]\n        ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            map(*)\n            1\n            every $i in 1 to 8 satisfies map:contains($result, $i)\n            every $i in (0, 9, 10) satisfies not(map:contains($result, $i))\n            $result(1) eq 1\n            $result(5) eq \"def\"\n            $result(7) eq false()\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"every $i in 1 to 8 satisfies map:contains($result, $i)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"every $i in (0, 9, 10) satisfies not(map:contains($result, $i))",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(5) eq \"def\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(7) eq false()",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(*)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-019'(_Config) ->
   Qry = "parse-json(\"[[[],[]]]\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n            map(xs:integer, map(xs:integer, map(*)))\n            1\n            map:size($result) eq 1\n            map:size($result(1)) eq 2\n            map:size($result(1)(2)) eq 0\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result(1)) eq 2",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result(1)(2)) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_test:size(Res) == 1 andalso xqerl_types:type(Res) == 'map(xs:integer, map(xs:integer, map(*)))' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-020'(_Config) ->
   Qry = "parse-json('[1, 2, [], [1], [1,2], [1,2,3]]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "        \n         \n            map:size($result) = 6\n            $result(6)(3) = 3\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 6",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(6)(3) = 3",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-021'(_Config) ->
   Qry = "parse-json('[{\"x\":12,\"y\":5}, {\"x\":13,\"y\":6}]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map:size($result) = 2\n         $result(2)(\"y\") = 6\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 2",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(2)(\"y\") = 6",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-022'(_Config) ->
   Qry = "parse-json('{\"x\":[12,3], \"y\":[14,9]}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         map:size($result) = 2\n         $result(\"y\")(2) = 9\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 2",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(\"y\")(2) = 9",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-023'(_Config) ->
   Qry = "parse-json('[0.123]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = 0.123e0\n         $result(1) instance of xs:double\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = 0.123e0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:double",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-024'(_Config) ->
   Qry = "parse-json('[-0.123]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = -0.123e0\n         $result(1) instance of xs:double\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = -0.123e0",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:double",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-025'(_Config) ->
   Qry = "parse-json('[-0.123e2]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = -0.123e2\n         $result(1) instance of xs:double\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = -0.123e2",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:double",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-026'(_Config) ->
   Qry = "parse-json('[-0.123e+2]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = -0.123e+2\n         $result(1) instance of xs:double\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = -0.123e+2",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:double",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-027'(_Config) ->
   Qry = "parse-json('[-0.123e-2]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = -0.123e-2\n         $result(1) instance of xs:double\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = -0.123e-2",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:double",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-028'(_Config) ->
   Qry = "parse-json('[\"\\\\\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = \"\\\"\n         $result(1) instance of xs:string\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = \"\\\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-029'(_Config) ->
   Qry = "parse-json('[\"\\\"\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = '\"'\n         $result(1) instance of xs:string\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = '\"'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-030'(_Config) ->
   Qry = "parse-json('[\"\\r\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = ''\n         $result(1) instance of xs:string\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = ''",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-031'(_Config) ->
   Qry = "parse-json('[\"\\n\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = '\n'\n         $result(1) instance of xs:string\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = '\n'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-032'(_Config) ->
   Qry = "parse-json('[\"\\/\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = '/'\n         $result(1) instance of xs:string\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = '/'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-033'(_Config) ->
   Qry = "parse-json('[\"aa\\u0030aa\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = 'aa0aa'\n         $result(1) instance of xs:string\n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) = 'aa0aa'",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-034'(_Config) ->
   Qry = "parse-json('[\"\\uD834\\udD1E\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = [10,32,32,32,32,32,32,32,32,32,36,114,101,115,117,108,116,40,49,41,32,61,32,39,119070,39,10,32,32,32,32,32,32,32,32,32,36,114,101,115,117,108,116,40,49,41,32,105,110,115,116,97,110,99,101,32,111,102,32,120,115,58,115,116,114,105,110,103,10,32,32,32,32,32,32],
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++[36,114,101,115,117,108,116,40,49,41,32,61,32,39,119070,39],Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"$result(1) instance of xs:string",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-035'(_Config) ->
   Qry = "parse-json('[\"\\r\"]', map{'unescape':=false()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = '\\r'\n      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""$result(1) = '\\r'",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'fn-parse-json-036'(_Config) ->
   Qry = "parse-json('[\"\\r\"]', map{'unescape':=true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = ''\n      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""$result(1) = ''",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'fn-parse-json-037'(_Config) ->
   Qry = "parse-json('[\"\\u0000\"]', map{'unescape':=false()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         $result(1) = '\\u0000'\n      ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""$result(1) = '\\u0000'",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'fn-parse-json-038'(_Config) ->
   Qry = "parse-json('true', map{'spec':='ECMA-262'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-parse-json-039'(_Config) ->
   Qry = "parse-json('false', map{'spec':='ECMA-262'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-parse-json-040'(_Config) ->
   Qry = "parse-json('null', map{'spec':='ECMA-262'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-parse-json-041'(_Config) ->
   Qry = "parse-json('93.7', map{'spec':='ECMA-262'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          93.7e0\n          xs:double\n        \n      ",
 case  begin Tst1 = xqerl:run("93.7e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-042'(_Config) ->
   Qry = "parse-json('\"abcd\\n\"', map{'spec':='ECMA-262','unescape':=false()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n          'abcd\\n'\n          xs:string\n        \n      ",
 case  begin Tst1 = xqerl:run("'abcd\\n'"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-parse-json-101'(_Config) ->
   Qry = "parse-json(unparsed-text('parse-json/data001.json'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-parse-json-102'(_Config) ->
   Qry = "parse-json(unparsed-text('parse-json/data002.json'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-parse-json-103'(_Config) ->
   Qry = "parse-json(unparsed-text('parse-json/data003.json'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-parse-json-104'(_Config) ->
   Qry = "parse-json(unparsed-text('parse-json/data004.json'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-parse-json-105'(_Config) ->
   Qry = "parse-json(unparsed-text('parse-json/data005.json'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:size(Res) of 1 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-parse-json-901'(_Config) ->
   Qry = "parse-json('[-0.123e-2[')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-902'(_Config) ->
   Qry = "parse-json('[false')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-903'(_Config) ->
   Qry = "parse-json('[falsehood]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-904'(_Config) ->
   Qry = "parse-json('[(5)]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-905'(_Config) ->
   Qry = "parse-json('[{5}]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-906'(_Config) ->
   Qry = "parse-json('[{x:23}]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-907'(_Config) ->
   Qry = "parse-json('23,24')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-908'(_Config) ->
   Qry = "parse-json('[\"abc]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-909'(_Config) ->
   Qry = "parse-json('[1,2,3,]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-910'(_Config) ->
   Qry = "parse-json('{\"a\":=13}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-911'(_Config) ->
   Qry = "parse-json('{\"a\":13,,\"b\":15}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-912'(_Config) ->
   Qry = "parse-json('{\"a\":13')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-913'(_Config) ->
   Qry = "parse-json('{\"a\":{\"b\":12}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-914'(_Config) ->
   Qry = "parse-json('{\"a\":{\"b\":12}}}')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-915'(_Config) ->
   Qry = "parse-json('[\"\\\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-916'(_Config) ->
   Qry = "parse-json('[\"\\1\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-917'(_Config) ->
   Qry = "parse-json('[\"\\u2\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-918'(_Config) ->
   Qry = "parse-json('[\"\\u123u\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-919'(_Config) ->
   Qry = "parse-json('[\"\\b\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-920'(_Config) ->
   Qry = "parse-json('[\"\\x20\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-921'(_Config) ->
   Qry = "parse-json('[\"\\s\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-922'(_Config) ->
   Qry = "parse-json('[\"\\uD834\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-923'(_Config) ->
   Qry = "parse-json('[\"\\udD1E\"]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-924'(_Config) ->
   Qry = "parse-json('[\"\\u0000\"]', map{'unescape':=true()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-925'(_Config) ->
   Qry = "parse-json('true', map{'spec':='RFC4627'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-926'(_Config) ->
   Qry = "parse-json('false', map{'spec':='RFC4627'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-927'(_Config) ->
   Qry = "parse-json('null', map{'spec':='RFC4627'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-928'(_Config) ->
   Qry = "parse-json('93.7', map{'spec':='RFC4627'})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-929'(_Config) ->
   Qry = "parse-json('\"abcd\\n\"', map{'spec':='RFC4627','unescape':=false()})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-930'(_Config) ->
   Qry = "parse-json('[.3]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-931'(_Config) ->
   Qry = "parse-json('[01]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-932'(_Config) ->
   Qry = "parse-json('[00.00]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-933'(_Config) ->
   Qry = "parse-json('[+23]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
'fn-parse-json-934'(_Config) ->
   Qry = "parse-json('[1.234f0]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOJS0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOJS0001'}) end.
