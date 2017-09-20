-module('xs_anyURI_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['cbcl-anyURI-001'/1]).
-export(['cbcl-anyURI-002'/1]).
-export(['cbcl-anyURI-003'/1]).
-export(['cbcl-anyURI-004'/1]).
-export(['cbcl-anyURI-004b'/1]).
-export(['cbcl-anyURI-005'/1]).
-export(['cbcl-anyURI-006'/1]).
-export(['cbcl-anyURI-006b'/1]).
-export(['cbcl-anyURI-007'/1]).
-export(['cbcl-anyURI-008'/1]).
-export(['cbcl-anyURI-009'/1]).
-export(['cbcl-anyURI-009b'/1]).
-export(['cbcl-anyURI-010'/1]).
-export(['cbcl-anyURI-011'/1]).
-export(['cbcl-anyURI-012'/1]).
-export(['cbcl-anyURI-012b'/1]).
-export(['cbcl-anyURI-013'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'cbcl-anyURI-001',
   'cbcl-anyURI-002',
   'cbcl-anyURI-003',
   'cbcl-anyURI-004',
   'cbcl-anyURI-004b',
   'cbcl-anyURI-005',
   'cbcl-anyURI-006',
   'cbcl-anyURI-006b',
   'cbcl-anyURI-007',
   'cbcl-anyURI-008',
   'cbcl-anyURI-009',
   'cbcl-anyURI-009b',
   'cbcl-anyURI-010',
   'cbcl-anyURI-011',
   'cbcl-anyURI-012',
   'cbcl-anyURI-012b',
   'cbcl-anyURI-013'].
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
'cbcl-anyURI-001'(_Config) ->
   Qry = "xs:anyURI(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'cbcl-anyURI-002'(_Config) ->
   Qry = "xs:anyURI(\"odd-scheme+1.://www.example.org/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         odd-scheme+1.://www.example.org/
      ",
   case xqerl_test:string_value(Res) of
             "odd-scheme+1.://www.example.org/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-003'(_Config) ->
   Qry = "xs:anyURI(\"http://%0Ad%E2%9C%90%F0%98%9A%A0/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://%0Ad%E2%9C%90%F0%98%9A%A0/
      ",
   case xqerl_test:string_value(Res) of
             "http://%0Ad%E2%9C%90%F0%98%9A%A0/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-004'(_Config) ->
   Qry = "xs:anyURI(\"http://!$&amp;'()*+,;=/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://!$&'()*+,;=/
      ",
   case xqerl_test:string_value(Res) of
             "http://!$&'()*+,;=/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-004b'(_Config) ->
   {skip,"XP20+"}.
'cbcl-anyURI-005'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/%0Ad%E2%9C%90%F0%98%9A%A0/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/%0Ad%E2%9C%90%F0%98%9A%A0/
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/%0Ad%E2%9C%90%F0%98%9A%A0/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-006'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/!/$/&amp;/'/(/)/*/+/,/;/=/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/!/$/&/'/(/)/*/+/,/;/=/
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/!/$/&/'/(/)/*/+/,/;/=/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-006b'(_Config) ->
   {skip,"XP20+"}.
'cbcl-anyURI-007'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/:/@/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/:/@/
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/:/@/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-008'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/?%0Ad%E2%9C%90%F0%98%9A%A0/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/?%0Ad%E2%9C%90%F0%98%9A%A0/
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/?%0Ad%E2%9C%90%F0%98%9A%A0/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-009'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/?!$&amp;'()*+,;=\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/?!$&'()*+,;=
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/?!$&'()*+,;=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-009b'(_Config) ->
   {skip,"XP20+"}.
'cbcl-anyURI-010'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/?:@\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/?:@
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/?:@" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-011'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/#%0Ad%E2%9C%90%F0%98%9A%A0/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/#%0Ad%E2%9C%90%F0%98%9A%A0/
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/#%0Ad%E2%9C%90%F0%98%9A%A0/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-012'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/#!$&amp;'()*+,;=\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/#!$&'()*+,;=
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/#!$&'()*+,;=" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-anyURI-012b'(_Config) ->
   {skip,"XP20+"}.
'cbcl-anyURI-013'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.org/#:@\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://www.example.org/#:@
      ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/#:@" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
