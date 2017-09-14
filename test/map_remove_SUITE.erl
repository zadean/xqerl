-module('map_remove_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['map-remove-001'/1]).
-export(['map-remove-002'/1]).
-export(['map-remove-003'/1]).
-export(['map-remove-005'/1]).
-export(['map-remove-006'/1]).
-export(['map-remove-007'/1]).
-export(['map-remove-008'/1]).
-export(['map-remove-009'/1]).
-export(['map-remove-010'/1]).
-export(['map-remove-011'/1]).
-export(['map-remove-012'/1]).
-export(['map-remove-013'/1]).
-export(['map-remove-014'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'map-remove-001',
   'map-remove-002',
   'map-remove-003',
   'map-remove-005',
   'map-remove-006',
   'map-remove-007',
   'map-remove-008',
   'map-remove-009',
   'map-remove-010',
   'map-remove-011',
   'map-remove-012',
   'map-remove-013',
   'map-remove-014'].
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
'map-remove-001'(_Config) ->
   Qry = "map:remove(map{}, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            map:size($result) eq 0
        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""map:size($result) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'map-remove-002'(_Config) ->
   Qry = "map:remove(map:new(()), \"abcd\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            map:size($result) eq 0
        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""map:size($result) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'map-remove-003'(_Config) ->
   Qry = "map:remove(map{\"a\":1}, \"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            map:size($result) eq 0
        ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""map:size($result) eq 0",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'map-remove-005'(_Config) ->
   Qry = "map:remove(map:entry(\"a\", \"1\"), \"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                map:size($result) eq 1
                map:contains($result, \"a\")
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, \"a\")",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-remove-006'(_Config) ->
   Qry = "map:remove(map:new((map:entry(\"a\", \"1\"), map:entry(\"b\", 2))), \"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                map:size($result) eq 1
                map:contains($result, \"a\")
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) eq 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, \"a\")",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-remove-007'(_Config) ->
   Qry = "map:remove(map:new((map:entry(\"a\", \"1\"), map:entry(\"b\", 2))), \"c\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                map:keys($result) = \"a\"
                map:keys($result) = \"b\"
                map:size($result) = 2
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:keys($result) = \"a\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:keys($result) = \"b\"",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 2",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-remove-008'(_Config) ->
   Qry = "map:remove(map:new((map:entry(12, 1), map:entry(13, 2))), 12e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                map:size($result) = 1
                map(xs:integer, xs:integer)
                map:contains($result, 13)
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 13)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_types:type(Res) == 'map(xs:integer, xs:integer)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-remove-009'(_Config) ->
   Qry = "map:remove(map:new((map:entry(\"a\",1), map:entry(\"b\",2))), xs:untypedAtomic(\"b\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                map:size($result) = 1
                map(xs:string, xs:integer)
                map:contains($result, \"a\")
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 1",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, \"a\")",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso xqerl_types:type(Res) == 'map(xs:string, xs:integer)' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-remove-010'(_Config) ->
   Qry = "map:remove(map{\"a\":1,\"b\":\"xyz\"}, \"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            map(xs:string, xs:integer)
        ",
   case xqerl_types:type(Res) of
           'map(xs:string, xs:integer)' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'map-remove-011'(_Config) ->
   Qry = "map:remove(map{\"a\":1,12:\"xyz\"}, 12)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            map(xs:string, xs:integer)
        ",
   case xqerl_types:type(Res) of
           'map(xs:string, xs:integer)' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'map-remove-012'(_Config) ->
   Qry = "map:remove(map:new(for $n in 1 to 500000 return map:entry($n, $n+1)), 123456)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
                map:contains($result, 1)
                map:contains($result, 500000)
                map:size($result) = 499999
                not(map:contains($result, 123456))
            
        ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 1)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:contains($result, 500000)",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"map:size($result) = 499999",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"not(map:contains($result, 123456))",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'map-remove-013'(_Config) ->
   Qry = "deep-equal(map:remove(map{\"a\":1,\"b\":(2,3)}, \"a\"), map:entry(\"b\", (2,3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'map-remove-014'(_Config) ->
   {skip,"Collation Environment"}.
