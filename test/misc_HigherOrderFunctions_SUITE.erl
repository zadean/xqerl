-module('misc_HigherOrderFunctions_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['hof-001'/1]).
-export(['hof-002'/1]).
-export(['hof-003'/1]).
-export(['hof-004'/1]).
-export(['hof-005'/1]).
-export(['hof-006'/1]).
-export(['hof-007'/1]).
-export(['hof-008'/1]).
-export(['hof-009'/1]).
-export(['hof-010'/1]).
-export(['hof-011'/1]).
-export(['hof-012'/1]).
-export(['hof-013'/1]).
-export(['hof-014'/1]).
-export(['hof-015'/1]).
-export(['hof-016'/1]).
-export(['hof-017'/1]).
-export(['hof-018'/1]).
-export(['hof-019'/1]).
-export(['hof-020'/1]).
-export(['hof-021'/1]).
-export(['hof-022'/1]).
-export(['hof-023'/1]).
-export(['hof-024'/1]).
-export(['hof-025'/1]).
-export(['hof-026'/1]).
-export(['hof-027'/1]).
-export(['hof-028'/1]).
-export(['hof-029'/1]).
-export(['hof-030'/1]).
-export(['hof-031'/1]).
-export(['hof-032'/1]).
-export(['hof-033'/1]).
-export(['hof-034'/1]).
-export(['hof-035'/1]).
-export(['hof-036'/1]).
-export(['hof-037'/1]).
-export(['hof-038'/1]).
-export(['hof-039'/1]).
-export(['hof-040'/1]).
-export(['hof-041'/1]).
-export(['hof-042'/1]).
-export(['hof-043'/1]).
-export(['hof-044'/1]).
-export(['hof-045'/1]).
-export(['hof-046'/1]).
-export(['hof-047'/1]).
-export(['hof-048'/1]).
-export(['hof-049'/1]).
-export(['hof-050'/1]).
-export(['hof-051'/1]).
-export(['hof-052'/1]).
-export(['hof-053'/1]).
-export(['hof-901'/1]).
-export(['hof-902'/1]).
-export(['hof-903'/1]).
-export(['hof-904'/1]).
-export(['hof-905'/1]).
-export(['hof-906'/1]).
-export(['hof-907'/1]).
-export(['hof-908'/1]).
-export(['hof-909'/1]).
-export(['hof-910'/1]).
-export(['hof-911'/1]).
-export(['hof-912'/1]).
-export(['hof-913'/1]).
-export(['hof-914'/1]).
-export(['hof-915'/1]).
-export(['hof-916'/1]).
-export(['hof-917'/1]).
-export(['hof-918'/1]).
-export(['hof-919'/1]).
-export(['function-item-1'/1]).
-export(['function-item-2'/1]).
-export(['function-item-3'/1]).
-export(['function-item-4'/1]).
-export(['function-item-5'/1]).
-export(['function-item-6'/1]).
-export(['function-item-7'/1]).
-export(['function-item-8'/1]).
-export(['function-item-9'/1]).
-export(['function-item-10'/1]).
-export(['function-item-11'/1]).
-export(['function-item-12'/1]).
-export(['function-item-13'/1]).
-export(['function-item-14'/1]).
-export(['function-item-15'/1]).
-export(['function-item-16'/1]).
-export(['function-item-17'/1]).
-export(['inline-function-1'/1]).
-export(['inline-function-2'/1]).
-export(['inline-function-3'/1]).
-export(['inline-function-4'/1]).
-export(['inline-function-5'/1]).
-export(['inline-function-6'/1]).
-export(['inline-function-7'/1]).
-export(['inline-function-8'/1]).
-export(['inline-function-9'/1]).
-export(['inline-function-10'/1]).
-export(['inline-function-11'/1]).
-export(['inline-function-12'/1]).
-export(['inline-function-11a'/1]).
-export(['inline-function-12a'/1]).
-export(['inline-function-13'/1]).
-export(['inline-function-14'/1]).
-export(['inline-function-15'/1]).
-export(['inline-function-16'/1]).
-export(['xqhof1'/1]).
-export(['xqhof2'/1]).
-export(['xqhof3'/1]).
-export(['xqhof4'/1]).
-export(['xqhof5'/1]).
-export(['xqhof6'/1]).
-export(['xqhof7'/1]).
-export(['xqhof8'/1]).
-export(['xqhof9'/1]).
-export(['xqhof10'/1]).
-export(['xqhof11'/1]).
-export(['xqhof12'/1]).
-export(['xqhof13'/1]).
-export(['xqhof14'/1]).
-export(['xqhof15'/1]).
-export(['xqhof16'/1]).
-export(['xqhof17'/1]).
-export(['xqhof18'/1]).
-export(['xqhof19'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/misc/HigherOrderFunctions/module-hof-003.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/misc/HigherOrderFunctions/functional.xq") catch _:_ -> ok end
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/misc/HigherOrderFunctions/module-xqhof16.xq") catch _:_ -> ok end,Config.
all() -> [
   'hof-001',
   'hof-002',
   'hof-003',
   'hof-004',
   'hof-005',
   'hof-006',
   'hof-007',
   'hof-008',
   'hof-009',
   'hof-010',
   'hof-011',
   'hof-012',
   'hof-013',
   'hof-014',
   'hof-015',
   'hof-016',
   'hof-017',
   'hof-018',
   'hof-019',
   'hof-020',
   'hof-021',
   'hof-022',
   'hof-023',
   'hof-024',
   'hof-025',
   'hof-026',
   'hof-027',
   'hof-028',
   'hof-029',
   'hof-030',
   'hof-031',
   'hof-032',
   'hof-033',
   'hof-034',
   'hof-035',
   'hof-036',
   'hof-037',
   'hof-038',
   'hof-039',
   'hof-040',
   'hof-041',
   'hof-042',
   'hof-043',
   'hof-044',
   'hof-045',
   'hof-046',
   'hof-047',
   'hof-048',
   'hof-049',
   'hof-050',
   'hof-051',
   'hof-052',
   'hof-053',
   'hof-901',
   'hof-902',
   'hof-903',
   'hof-904',
   'hof-905',
   'hof-906',
   'hof-907',
   'hof-908',
   'hof-909',
   'hof-910',
   'hof-911',
   'hof-912',
   'hof-913',
   'hof-914',
   'hof-915',
   'hof-916',
   'hof-917',
   'hof-918',
   'hof-919',
   'function-item-1',
   'function-item-2',
   'function-item-3',
   'function-item-4',
   'function-item-5',
   'function-item-6',
   'function-item-7',
   'function-item-8',
   'function-item-9',
   'function-item-10',
   'function-item-11',
   'function-item-12',
   'function-item-13',
   'function-item-14',
   'function-item-15',
   'function-item-16',
   'function-item-17',
   'inline-function-1',
   'inline-function-2',
   'inline-function-3',
   'inline-function-4',
   'inline-function-5',
   'inline-function-6',
   'inline-function-7',
   'inline-function-8',
   'inline-function-9',
   'inline-function-10',
   'inline-function-11',
   'inline-function-12',
   'inline-function-11a',
   'inline-function-12a',
   'inline-function-13',
   'inline-function-14',
   'inline-function-15',
   'inline-function-16',
   'xqhof1',
   'xqhof2',
   'xqhof3',
   'xqhof4',
   'xqhof5',
   'xqhof6',
   'xqhof7',
   'xqhof8',
   'xqhof9',
   'xqhof10',
   'xqhof11',
   'xqhof12',
   'xqhof13',
   'xqhof14',
   'xqhof15',
   'xqhof16',
   'xqhof17',
   'xqhof18',
   'xqhof19'].
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
];
environment('user-defined-types') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/userdefined.xsd","http://www.w3.org/XQueryTest/userDefinedTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'hof-001'(_Config) ->
   Qry = "\n        declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n        let $f := local:f#1 return $f(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-002'(_Config) ->
   Qry = "\n      	declare function local:f() as xs:integer { 42 }; \n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	let $f := local:f#0 return $f()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         42\n      ",
 Tst = xqerl:run("42"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-003'(_Config) ->
   Qry = "\n        import module namespace m=\"http://example.com/hof-003\"; \n        let $f := m:f#1 return $f(17)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         18\n      ",
 Tst = xqerl:run("18"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-004'(_Config) ->
   Qry = "let $f := fn:round#1 return $f(1.2345)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-005'(_Config) ->
   Qry = "let $f := concat#8 return $f('a','b','c','d','e','f','g','h')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abcdefgh\n      ",
   case xqerl_test:string_value(Res) of
             "abcdefgh" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-006'(_Config) ->
   Qry = "\n      declare default function namespace \"http://example.com/hof-006\"; \n      declare function g($x as xs:integer) as xs:integer { $x + 1 }; \n      let $f := g#1 return $f(21)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         22\n      ",
 Tst = xqerl:run("22"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-007'(_Config) ->
   Qry = "\n      declare default function namespace \"http://www.w3.org/2001/XMLSchema\"; \n      let $f := date#1 return $f('2008-01-31')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2008-01-31\n      ",
   case xqerl_test:string_value(Res) of
             "2008-01-31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-008'(_Config) ->
   Qry = "let $f := xs:date#1 return $f('2008-01-31')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2008-01-31\n      ",
   case xqerl_test:string_value(Res) of
             "2008-01-31" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-009'(_Config) ->
   {skip,"schemaImport"}.
'hof-010'(_Config) ->
   Qry = "\n      declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      let $f as function(*) := local:f#1 return $f(2)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-011'(_Config) ->
   Qry = "\n      declare function local:f($x as xs:integer) as xs:integer { $x + 3 }; \n      let $f as function(xs:integer) as xs:integer := local:f#1 \n      return $f(2)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5\n      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-012'(_Config) ->
   Qry = "\n      declare function local:f($x as xs:integer, $y as xs:long) as xs:integer { $x + $y }; \n      let $f as function(xs:integer, xs:long) as xs:integer := local:f#2 \n      return $f(2, xs:long(5))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         7\n      ",
 Tst = xqerl:run("7"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-013'(_Config) ->
   Qry = "\n      declare function local:f($x as xs:integer) as xs:integer { $x + 3 }; \n      declare function local:g($x as xs:integer) as xs:integer { $x + 4 }; \n      declare function local:h($x as xs:integer) as xs:integer { $x + 5 }; \n      let $f as (function(xs:integer) as xs:integer)* := (local:f#1, local:g#1, local:h#1) return $f[3](2)[1]\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         7\n      ",
 Tst = xqerl:run("7"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-014'(_Config) ->
   Qry = "\n      declare function local:case($x as xs:boolean) as function(*) \n      	{ if ($x) then fn:upper-case#1 else fn:lower-case#1 }; \n      local:case(true())(\"Mike\"), local:case(false())(\"Mike\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MIKE mike\n      ",
   case xqerl_test:string_value(Res) of
             "MIKE mike" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-015'(_Config) ->
   Qry = "\n      declare function local:case($x as xs:boolean) as function(xs:string?) as xs:string \n      	{ if ($x) then fn:upper-case#1 else fn:lower-case#1 }; \n      local:case(true())(\"Mike\"), local:case(false())(\"Mike\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MIKE mike\n      ",
   case xqerl_test:string_value(Res) of
             "MIKE mike" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-016'(_Config) ->
   Qry = "\n      declare function local:case($x as function(*), $y as xs:string) as xs:string { $x($y) }; \n      local:case(upper-case#1, \"Mike\"), local:case(lower-case#1, \"Mike\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MIKE mike\n      ",
   case xqerl_test:string_value(Res) of
             "MIKE mike" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-017'(_Config) ->
   Qry = "\n      declare function local:case($x as function(xs:string?) as xs:string, $y as xs:string) as xs:string { $x($y) }; \n      local:case(upper-case#1, \"Mike\"), local:case(lower-case#1, \"Mike\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MIKE mike\n      ",
   case xqerl_test:string_value(Res) of
             "MIKE mike" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-018'(_Config) ->
   Qry = "\n      declare function local:scramble($x as function(xs:string) as xs:string, $y as xs:string) as xs:string \n      	{ $x($y) }; \n      declare function local:rot13($x as xs:string) as xs:string \n      	{ translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\") }; \n      local:scramble(local:rot13#1, \"mike\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         zvxr\n      ",
   case xqerl_test:string_value(Res) of
             "zvxr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-019'(_Config) ->
   Qry = "\n      declare function local:scramble($x as function(*), $y as xs:string) as xs:string { $x($y) }; \n      declare function local:rot13($x as xs:string) as xs:string { translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\") }; \n      local:scramble(local:rot13#1, \"mike\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         zvxr\n      ",
   case xqerl_test:string_value(Res) of
             "zvxr" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-020'(_Config) ->
   Qry = "\n      declare function local:scramble($x as function(*), $y as xs:string) as xs:string { $x($y) }; \n      local:scramble(function($x){translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\")}, \"john\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         wbua\n      ",
   case xqerl_test:string_value(Res) of
             "wbua" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-021'(_Config) ->
   Qry = "\n      declare function local:scramble($x as function(xs:string) as xs:string, $y as xs:string) as xs:string { $x($y) }; \n      local:scramble(function($x){translate($x, \"abcdefghijklmnopqrstuvwxyz\", \"nopqrstuvwxyzabcdefghijklm\")}, \"john\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         wbua\n      ",
   case xqerl_test:string_value(Res) of
             "wbua" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-022'(_Config) ->
   Qry = "\n      declare function local:scramble($x as function(xs:string) as xs:string, $y as xs:string) as xs:string { $x($y) }; \n      let $n := function-name(local:scramble#2) \n      return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity(local:scramble#2))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         scramble http://www.w3.org/2005/xquery-local-functions 2\n      ",
   case xqerl_test:string_value(Res) of
             "scramble http://www.w3.org/2005/xquery-local-functions 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-023'(_Config) ->
   Qry = "\n        let $f := fn:function-name#1, $n := function-name($f) \n        return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity($f))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         function-name http://www.w3.org/2005/xpath-functions 1\n      ",
   case xqerl_test:string_value(Res) of
             "function-name http://www.w3.org/2005/xpath-functions 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-024'(_Config) ->
   Qry = "\n        let $f := xs:dateTime#1, $n := function-name($f) \n        return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity($f))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         dateTime http://www.w3.org/2001/XMLSchema 1\n      ",
   case xqerl_test:string_value(Res) of
             "dateTime http://www.w3.org/2001/XMLSchema 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-025'(_Config) ->
   Qry = "let $f := concat#123456, $n := function-name($f) \n        return (local-name-from-QName($n), namespace-uri-from-QName($n), function-arity($f))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         concat http://www.w3.org/2005/xpath-functions 123456\n      ",
   case xqerl_test:string_value(Res) of
             "concat http://www.w3.org/2005/xpath-functions 123456" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-026'(_Config) ->
   Qry = "\n        let $f := function($x as xs:string) as xs:string { upper-case($x) } \n        let $n := function-name($f) \n        return <a loc=\"{local-name-from-QName($n)}\" uri=\"{namespace-uri-from-QName($n)}\"\n        			arity=\"{function-arity($f)}\" eloc=\"{empty(local-name-from-QName($n))}\" euri=\"{empty(namespace-uri-from-QName($n))}\"/>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <a uri=\"\" loc=\"\" euri=\"true\" eloc=\"true\" arity=\"1\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a uri=\"\" loc=\"\" euri=\"true\" eloc=\"true\" arity=\"1\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a uri=\"\" loc=\"\" euri=\"true\" eloc=\"true\" arity=\"1\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-027'(_Config) ->
   Qry = "\n        let $f := fn:contains(?, \"e\") \n        return for $s in (\"Mike\", \"John\", \"Dave\", \"Mary\", \"Jane\") return $f($s)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true false true false true\n      ",
   case xqerl_test:string_value(Res) of
             "true false true false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-028'(_Config) ->
   Qry = "\n      declare function local:splitter() as (function(xs:string) as xs:string*) { function($x as xs:string) { tokenize($x, '\\s') } }; \n      string-join(local:splitter()(\"A nice cup of tea\"), '|')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A|nice|cup|of|tea\n      ",
   case xqerl_test:string_value(Res) of
             "A|nice|cup|of|tea" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-029'(_Config) ->
   Qry = "\n      declare function local:splitter() as (function(xs:string) as xs:string+)? \n      { function($x as xs:string) { for $i in tokenize($x, '\\s') return upper-case($i)} }; \n      string-join(local:splitter()(\"A nice cup of tea\"), '|')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A|NICE|CUP|OF|TEA\n      ",
   case xqerl_test:string_value(Res) of
             "A|NICE|CUP|OF|TEA" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-030'(_Config) ->
   Qry = "\n      declare variable $sep as xs:string := \"\\s\"; \n      declare function local:splitter() as (function(xs:string) as xs:string*)? \n      	{ function($x as xs:string) { for $i in tokenize($x, $sep) return upper-case($i)} }; \n      string-join(local:splitter()(\"A nice cup of tea\"), '|')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A|NICE|CUP|OF|TEA\n      ",
   case xqerl_test:string_value(Res) of
             "A|NICE|CUP|OF|TEA" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-031'(_Config) ->
   Qry = "\n      declare function local:splitter($sep as xs:string) as (function(xs:string) as xs:string*) \n      	{ function($x as xs:string) { for $i in tokenize($x, $sep) return upper-case($i)} }; \n      string-join(local:splitter(\"\\s\")(\"A nice cup of tea\"), '|')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         A|NICE|CUP|OF|TEA\n      ",
   case xqerl_test:string_value(Res) of
             "A|NICE|CUP|OF|TEA" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-032'(_Config) ->
   Qry = "(if (current-date() gt xs:date('2000-12-31')) then upper-case#1 else lower-case#1)(\"Mike\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MIKE\n      ",
   case xqerl_test:string_value(Res) of
             "MIKE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-033'(_Config) ->
   Qry = "local-name-from-QName(function-name((upper-case#1, lower-case#1)[.(\"Mike\") = \"MIKE\"]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         upper-case\n      ",
   case xqerl_test:string_value(Res) of
             "upper-case" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-034'(_Config) ->
   Qry = "local-name-from-QName(function-name((upper-case#1, lower-case#1)[ordered{.}(\"Mike\") = \"MIKE\"]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         upper-case\n      ",
   case xqerl_test:string_value(Res) of
             "upper-case" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-035'(_Config) ->
   Qry = "local-name-from-QName(function-name((upper-case#1, lower-case#1)[ordered{.}(\"Mike\") = \"MIKE\"]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         upper-case\n      ",
   case xqerl_test:string_value(Res) of
             "upper-case" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-036'(_Config) ->
   Qry = "(<a b=\"3\"/>/(string(@b), upper-case#1, 17))[. instance of xs:anyAtomicType]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3 17\n      ",
   case xqerl_test:string_value(Res) of
             "3 17" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-037'(_Config) ->
   Qry = "\n        declare function local:f($x as xs:long, $y as xs:NCName) as element(e) { \n            <e x=\"{$x}\" y=\"{$y}\"/> \n        }; \n        local:f#2 instance of function(*), \n        local:f#2 instance of function(xs:long, xs:NCName) as element(e), \n        local:f#2 instance of function(xs:anyAtomicType?, xs:anyAtomicType?) as element(e), \n        local:f#2 instance of function(item()*, item()*) as element(e)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true true false false\n      ",
   case xqerl_test:string_value(Res) of
             "true true false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-038'(_Config) ->
   Qry = "\n        declare function local:f($x as xs:long?, $y as xs:NCName?) as element(e) { \n            <e x=\"{$x}\" y=\"{$y}\"/> \n        }; \n        local:f#2 instance of function(xs:int?, xs:NCName?) as element(e), \n        local:f#2 instance of function(xs:long?) as element(e), \n        local:f#2 instance of function(xs:long?, xs:NCName?, item()*) as element(e), \n        local:f#2 instance of function(xs:long, xs:anyAtomicType?) as element(e), \n        local:f#2 instance of function(item()+, item()+) as element(e)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true false false false false\n      ",
   case xqerl_test:string_value(Res) of
             "true false false false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-039'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:long, $y as xs:NCName) as element(e)? { <e x=\"{$x}\" y=\"{$y}\"/> }; \n      	local:f#2 instance of function(xs:long, xs:NCName) as element()?, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element()*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(e)*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(e, xs:anyType?)*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(*, xs:anyType?)?, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(*, xs:untyped)?\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true true true true true false\n      ",
   case xqerl_test:string_value(Res) of
             "true true true true true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-040'(_Config) ->
   Qry = "\n      declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* { for $f in $fns return $f($s) }; \n      let $ops := (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, substring-before(?, ' ')) \n      return string-join(local:apply($ops, 'Michael Kay'), '~')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MICHAEL KAY~michael kay~Michail Kay~Michael\n      ",
   case xqerl_test:string_value(Res) of
             "MICHAEL KAY~michael kay~Michail Kay~Michael" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-041'(_Config) ->
   Qry = "\n      declare function local:ops() as (function(xs:string) as xs:string)*\n      	{ (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, substring-before(?, ' ')) }; \n      string-join(for $f in local:ops() return $f('Michael Kay'), '~')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MICHAEL KAY~michael kay~Michail Kay~Michael\n      ",
   case xqerl_test:string_value(Res) of
             "MICHAEL KAY~michael kay~Michail Kay~Michael" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-042'(_Config) ->
   Qry = "\n        declare function local:lower-case($x as xs:string) as xs:string { concat(\"'\", fn:lower-case($x), \"'\") }; \n        declare function local:ops() as (function(xs:string) as xs:string)* \n        	{ (upper-case#1, local:lower-case#1, function($x){translate($x, 'e', 'i')}, substring-before(?, ' ')) }; \n        string-join(for $f in local:ops() return $f(<a name=\"Michael Kay\"/>/@name), '~')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         MICHAEL KAY~'michael kay'~Michail Kay~Michael\n      ",
   case xqerl_test:string_value(Res) of
             "MICHAEL KAY~'michael kay'~Michail Kay~Michael" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-043'(_Config) ->
   Qry = "\n      declare function local:round($x as xs:double) as xs:double \n      	{ fn:floor($x) }; \n      declare function local:ops() as (function(xs:double) as xs:double)* \n      	{ (abs#1, local:round#1, function($x){$x+1}, round-half-to-even(?, 2)) }; \n      string-join(for $f in local:ops() return string($f(xs:untypedAtomic('123.456'))), '~')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         123.456~123~124.456~123.46\n      ",
   case xqerl_test:string_value(Res) of
             "123.456~123~124.456~123.46" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-044'(_Config) ->
   Qry = "\n      declare function local:round($x as xs:double) as xs:double { fn:floor($x) }; \n      declare function local:ops() as (function(xs:double) as xs:double)* \n      	{ (abs#1, local:round#1, function($x as xs:double){$x+1}, round-half-to-even(?, 2)) }; \n      string-join(for $f in local:ops() return string(round-half-to-even($f(xs:decimal('123.456')), 4)), '~')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         123.456~123~124.456~123.46\n      ",
   case xqerl_test:string_value(Res) of
             "123.456~123~124.456~123.46" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-045'(_Config) ->
   Qry = "\n      declare function local:round($x as xs:double, $algorithm as (function(xs:double) as xs:double)) as xs:double { $algorithm($x) }; \n      declare variable $roundToCeiling := local:round(?, ceiling#1); $roundToCeiling(12.4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         13\n      ",
 Tst = xqerl:run("13"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-046'(_Config) ->
   Qry = "\n        declare function local:splitter($x as xs:string) as (function() as xs:string*)* { \n            for $sep in ('\\s', ',', '!') \n            return function() { for $i in tokenize($x, $sep) return upper-case($i) } \n        }; \n        <out>{ \n            for $f as function(*) in local:splitter(\"How nice! Thank you, I enjoyed that.\") \n            return <tokens>{ for $t in $f() \n                             return <t>{$t}</t> \n                   }</tokens> \n       }</out>\n    ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><tokens><t>HOW</t><t>NICE!</t><t>THANK</t><t>YOU,</t><t>I</t><t>ENJOYED</t><t>THAT.</t></tokens><tokens><t>HOW NICE! THANK YOU</t><t> I ENJOYED THAT.</t></tokens><tokens><t>HOW NICE</t><t> THANK YOU, I ENJOYED THAT.</t></tokens></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><tokens><t>HOW</t><t>NICE!</t><t>THANK</t><t>YOU,</t><t>I</t><t>ENJOYED</t><t>THAT.</t></tokens><tokens><t>HOW NICE! THANK YOU</t><t> I ENJOYED THAT.</t></tokens><tokens><t>HOW NICE</t><t> THANK YOU, I ENJOYED THAT.</t></tokens></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><tokens><t>HOW</t><t>NICE!</t><t>THANK</t><t>YOU,</t><t>I</t><t>ENJOYED</t><t>THAT.</t></tokens><tokens><t>HOW NICE! THANK YOU</t><t> I ENJOYED THAT.</t></tokens><tokens><t>HOW NICE</t><t> THANK YOU, I ENJOYED THAT.</t></tokens></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-047'(_Config) ->
   Qry = "\n        declare function local:splitter($x as xs:string) as (function() as xs:string*)* { \n            for $sep in ('\\s', ',', '!') return function() { \n                for $i in tokenize($x, $sep) return \n                    let $f := function(){ concat($sep, ':', upper-case($i)) } \n                    return $f() } \n        }; \n        <out>{ \n            for $f as function(*) in local:splitter(\"How nice! Thank you, I enjoyed that.\") \n            return <tokens>{ for $t in $f() \n                             return <t>{$t}</t> }</tokens> \n        }</out>\n     ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><tokens><t>\\s:HOW</t><t>\\s:NICE!</t><t>\\s:THANK</t><t>\\s:YOU,</t><t>\\s:I</t><t>\\s:ENJOYED</t><t>\\s:THAT.</t></tokens><tokens><t>,:HOW NICE! THANK YOU</t><t>,: I ENJOYED THAT.</t></tokens><tokens><t>!:HOW NICE</t><t>!: THANK YOU, I ENJOYED THAT.</t></tokens></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><tokens><t>\\s:HOW</t><t>\\s:NICE!</t><t>\\s:THANK</t><t>\\s:YOU,</t><t>\\s:I</t><t>\\s:ENJOYED</t><t>\\s:THAT.</t></tokens><tokens><t>,:HOW NICE! THANK YOU</t><t>,: I ENJOYED THAT.</t></tokens><tokens><t>!:HOW NICE</t><t>!: THANK YOU, I ENJOYED THAT.</t></tokens></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><tokens><t>\\s:HOW</t><t>\\s:NICE!</t><t>\\s:THANK</t><t>\\s:YOU,</t><t>\\s:I</t><t>\\s:ENJOYED</t><t>\\s:THAT.</t></tokens><tokens><t>,:HOW NICE! THANK YOU</t><t>,: I ENJOYED THAT.</t></tokens><tokens><t>!:HOW NICE</t><t>!: THANK YOU, I ENJOYED THAT.</t></tokens></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-048'(_Config) ->
   Qry = "\n        declare function local:do() as xs:integer { (local:f#1)(5) }; \n        declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n        local:do()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         6\n      ",
 Tst = xqerl:run("6"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'hof-049'(_Config) ->
   Qry = "\n        declare function local:tf($i as xs:integer) as function () as xs:boolean { \n            if ($i) then true#0 else false#0 \n        }; \n        <out>{(local:tf(0)(), local:tf(1)())}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out>false true</out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>false true</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>false true</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-050'(_Config) ->
   Qry = "let $f := fn:substring-before#2(?, '-') return <out>{$f('the-end-of-the-world')}</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out>the</out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>the</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>the</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-051'(_Config) ->
   Qry = "\n        let $f := function($a as xs:string, $b as xs:string) { \n            starts-with($a, $b) and ends-with($a, $b)}(?, 'a') \n        return <out>{$f('abracadabra')}</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out>true</out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>true</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>true</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-052'(_Config) ->
   Qry = "let $f := fn:concat#3(?, '*', ?) let $g := $f('[', ?) return <out>{$g(']')}</out>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out>[*]</out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>[*]</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>[*]</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'hof-053'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:long, $y as xs:NCName) as element(e, xs:anyAtomicType) { <e x=\"{$x}\" y=\"{$y}\"/> }; \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(), \n      	local:f#2 instance of function(xs:long, xs:NCName) as element()+, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element()?, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element()*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(e)*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(e, xs:anyType?)*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(*, xs:anyType?)?, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(e, xs:anyType)*, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(*, xs:anyType)?, \n      	local:f#2 instance of function(xs:long, xs:NCName) as element(*, xs:untyped)?\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true true true true true true true true true false\n      ",
   case xqerl_test:string_value(Res) of
             "true true true true true true true true true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'hof-901'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	let $f := local:g#1 return $f(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'hof-902'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	let $f := local:f#3 return $f(2)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'hof-903'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	let $f := xs:date#2 return $f('2008-03-01')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'hof-904'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	let $f := concat#1 return $f('2008-03-01')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'hof-905'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	string(local:f#1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0014" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0014'}) end.
'hof-906'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	exists(data(local:f#1))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0013'}) end.
'hof-907'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	deep-equal((1,2,3,4,local:f#1), (1,2,3,4,local:f#1))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0015" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0015'}) end.
'hof-908'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	local:f#1 eq 3\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0013'}) end.
'hof-909'(_Config) ->
   Qry = "\n      	declare function local:f($x as xs:integer) as xs:integer { $x + 1 }; \n      	number(local:f#1)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0013'}) end.
'hof-910'(_Config) ->
   Qry = "\n        declare function local:f($x as xs:integer) as xs:integer {\n            $x + 1\n        };\n        let $f as function(xs:integer) := local:f#1\n        return $f(3)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'hof-911'(_Config) ->
   Qry = "<a b=\"3\"/>/(@b, upper-case#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0018" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0018'}) end.
'hof-912'(_Config) ->
   Qry = "\n        declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* \n        { for $f in $fns return $f($s) };\n        let $ops := (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, \n            substring-before(?, ' ', ?)) \n        return string-join(local:apply($ops, 'Michael Kay'), '~')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'hof-913'(_Config) ->
   Qry = "\n        declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* \n        { for $f in $fns return $f($s) }; \n        let $ops := (upper-case#1, lower-case#1, function($x){translate($x, 'e', 'i')}, \n            string-length#1) \n        return string-join(local:apply($ops, 'Michael Kay'), '~')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'hof-914'(_Config) ->
   Qry = "\n        declare function local:apply($fns as (function(xs:string) as xs:string)*, $s as xs:string) as xs:string* \n        { for $f in $fns return $f($s) }; \n        let $ops := (upper-case#1, lower-case#1, function($x as xs:double){string($x)}) \n        return string-join(local:apply($ops, 'Michael Kay'), '~')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'hof-915'(_Config) ->
   Qry = "let $ops := substring-before('abc', ' ', (), ?) return $ops('Michael Kay')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'hof-916'(_Config) ->
   Qry = "let $ops := substring-before(?, ?) return $ops('Michael Kay')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'hof-917'(_Config) ->
   Qry = "let $ops := substring-before(?, 2) return $ops('Michael Kay')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'hof-918'(_Config) ->
   Qry = "\n        declare function local:round($x as xs:double, $algorithm as (function(xs:double) as xs:double)) as xs:double \n        { $algorithm($x) }; \n        declare variable $roundToCeiling := local:round(?, upper-case#1); \n        $roundToCeiling(12.4)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'hof-919'(_Config) ->
   Qry = "\n      declare function local:round($x as xs:double) as xs:double { fn:floor($x) }; \n      declare function local:ops() as (function(xs:double) as xs:double)* \n      	{ (abs#1, local:round#1, function($x as xs:float){$x+1}, round-half-to-even(?, 2)) }; \n      string-join(for $f in local:ops() return string(round-half-to-even($f(xs:decimal('123.456')), 4)), '~')\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'function-item-1'(_Config) ->
   Qry = "concat#64 instance of function(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-2'(_Config) ->
   Qry = "string-join#1((\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         abcdefghij\n      ",
   case xqerl_test:string_value(Res) of
             "abcdefghij" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'function-item-3'(_Config) ->
   Qry = "string-join#1 is string-join#1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'function-item-4'(_Config) ->
   Qry = "string-join#1 eq string-join#1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0013'}) end.
'function-item-5'(_Config) ->
   Qry = "element a { avg#1 }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQTY0105" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQTY0105'}) end.
'function-item-6'(_Config) ->
   Qry = "attribute a { avg#1 }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOTY0013" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOTY0013'}) end.
'function-item-7'(_Config) ->
   Qry = "(let $a := 92, $b := true() return function($c) { $a, $b, $c })(\"lala\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        92, true(), \"lala\"\n      ",
 Tst = xqerl:run("92, true(), \"lala\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'function-item-8'(_Config) ->
   Qry = "function-name(function-name#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        xs:QName(\"fn:function-name\")\n      ",
 Tst = xqerl:run("xs:QName(\"fn:function-name\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'function-item-9'(_Config) ->
   Qry = "function-name(let $a := 92, $b := true() return function($c) { $a, $b, $c })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        0\n      ",
   case xqerl_test:size(Res) of 0 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'function-item-10'(_Config) ->
   Qry = "(let $a := 92, $b := true() return function($c) { $a, $b, $c }) instance of function(item()*) as item()*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-11'(_Config) ->
   Qry = "(let $a := 92, $b := true() return function($c) { $a, $b, $c })((xs:QName(\"foo\"), 5.0e3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        92, true(), fn:QName(\"\",\"foo\"), 5000\n      ",
 Tst = xqerl:run("92, true(), fn:QName(\"\",\"foo\"), 5000"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'function-item-12'(_Config) ->
   Qry = "function($a as item()) as item() { $a } instance of function(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-13'(_Config) ->
   Qry = "function($a as item()) as xs:integer { $a } instance of function(item()) as item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-14'(_Config) ->
   Qry = "function($a as item()) as item() { $a } instance of function(xs:string) as item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-15'(_Config) ->
   Qry = "function($a as item()) as item() { $a } instance of function() as item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-16'(_Config) ->
   Qry = "function($a as item()) as xs:integer { $a } instance of function(item(), item()) as item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'function-item-17'(_Config) ->
   Qry = "function($a as xs:string) as item() { $a } instance of function(item()) as item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'inline-function-1'(_Config) ->
   Qry = "function() { 5 } instance of function(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'inline-function-2'(_Config) ->
   Qry = "function-name(function() { 5 })",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        0\n      ",
   case xqerl_test:size(Res) of 0 -> {comment, "Count correct"};
           Q -> ct:fail({Res,Exp,Q}) end.
'inline-function-3'(_Config) ->
   Qry = "function() as xs:integer { 5 }()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        5\n      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'inline-function-4'(_Config) ->
   Qry = "function($a as xs:integer) as xs:integer { $a + 5 }(3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        8\n      ",
 Tst = xqerl:run("8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'inline-function-5'(_Config) ->
   Qry = "function($a as xs:integer, $b as xs:double) as xs:double { $a * $b + 5 }(3, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        11\n      ",
 Tst = xqerl:run("11"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'inline-function-6'(_Config) ->
   Qry = "function($a, $b as xs:double) as xs:double { $a * $b + 5 } instance of function(item()*, xs:double) as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'inline-function-7'(_Config) ->
   Qry = "function($a as node()+, $b) as xs:double { $a * $b + 5 } instance of function(node(), item()*) as xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'inline-function-8'(_Config) ->
   Qry = "function($a as node()+) { $a + 5 } instance of function(node()) as item()*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'inline-function-9'(_Config) ->
   Qry = "function() { true() } instance of function() as item()*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'inline-function-10'(_Config) ->
   Qry = "function($a) { \"lala\", $a }, $a",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'inline-function-11'(_Config) ->
   Qry = "let $a := \"monkey\" return function($a) { \"lala\", $a }(\"gibbon\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \"lala\", \"gibbon\"\n      ",
 Tst = xqerl:run("\"lala\", \"gibbon\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'inline-function-12'(_Config) ->
   Qry = "$a, function($a) { \"lala\", $a }",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'inline-function-11a'(_Config) ->
   Qry = "function($a) { let $a := \"monkey\" return (\"lala\", $a) }(\"gibbon\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \"lala\", \"monkey\"\n      ",
 Tst = xqerl:run("\"lala\", \"monkey\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'inline-function-12a'(_Config) ->
   Qry = "function($a, $a) { \"lala\", $a }(\"gibbon\", \"monkey\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0039" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0039'}) end.
'inline-function-13'(_Config) ->
   Qry = "function($local:foo, $local:bar, $local:foo) { \"lala\", $local:foo, $local:bar }(\"gibbon\", \"monkey\", \"ape\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0039" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0039'}) end.
'inline-function-14'(_Config) ->
   Qry = "function($local:foo, $local:bar, $fn:foo) { \"lala\", $local:foo, $local:bar }(\"gibbon\", \"monkey\", \"ape\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \"lala\", \"gibbon\", \"monkey\"\n      ",
 Tst = xqerl:run("\"lala\", \"gibbon\", \"monkey\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'inline-function-15'(_Config) ->
   Qry = "function($Q{http://local/}foo, $Q{http://local/}bar, $Q{http://local/}foo) { \n              \"lala\", $Q{http://local/}foo, $Q{http://local/}bar }(\"gibbon\", \"monkey\", \"ape\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0039" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0039'}) end.
'inline-function-16'(_Config) ->
   Qry = "function($Q{http://local/}foo, $Q{http://local/}bar, $fn:foo) { \n               \"lala\", $Q{http://local/}foo, $Q{http://local/}bar }(\"gibbon\", \"monkey\", \"ape\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \"lala\", \"gibbon\", \"monkey\"\n      ",
 Tst = xqerl:run("\"lala\", \"gibbon\", \"monkey\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof1'(_Config) ->
   Qry = "\ndeclare namespace map = \"http://snelson.org.uk/functions/map\";\n\ndeclare function map:key($pair as function() as item()+) as item()\n{\n  $pair()[1]\n};\n\ndeclare function map:value($pair as function() as item()+) as item()*\n{\n  subsequence($pair(), 2)\n};\n\ndeclare function map:contains($map as (function() as item()+)*, $key as item())\n  as xs:boolean\n{\n  map:process($map, $key, function($a) { true() }, false(),\n    function($a) { () })\n};\n\ndeclare function map:get($map as (function() as item()+)*, $key as item())\n  as item()*\n{\n  map:process($map, $key, map:value#1, (), function($a) { () })\n};\n\ndeclare function map:process(\n  $map as (function() as item()+)*,\n  $key as item(),\n  $found as function(function() as item()+) as item()*,\n  $notfound as item()*,\n  $unused as function((function() as item()+)*) as item()*\n) as item()*\n{\n  if(empty($map)) then $notfound\n  else\n\n  let $length := count($map)\n  let $middle := $length idiv 2 + 1\n  let $pair := $map[$middle]\n  let $pair_key := $pair()[1]\n  return\n    if($pair_key eq $key) then (\n      $unused(subsequence($map, 1, $middle - 1)),\n      $found($pair),\n      $unused(subsequence($map, $middle + 1))\n    )\n    else if($pair_key gt $key) then (\n      map:process(subsequence($map, 1, $middle - 1), $key,\n        $found, $notfound, $unused),\n      $unused(subsequence($map, $middle))\n    )\n    else (\n      $unused(subsequence($map, 1, $middle)),\n      map:process(subsequence($map, $middle + 1), $key,\n        $found, $notfound, $unused)\n    )\n};\n\ndeclare function map:pair($key as item(), $value as item()*)\n  as function() as item()+\n{\n  function() { $key, $value }\n};\n\ndeclare function map:put(\n  $map as (function() as item()+)*,\n  $key as item(),\n  $value as item()*\n) as (function() as item()+)+\n{\n  let $pair := map:pair($key, $value)\n  return\n    map:process($map, $key, function($a) { $pair }, $pair,\n      function($a) { $a })\n};\n\nstring-join(let $map := map:put(map:put(map:put(map:put(map:put(map:put((),\n  \"a\", \"aardvark\"),\n  \"z\", \"zebra\"),\n  \"e\", (\"elephant\", \"eagle\")),\n  \"o\", \"osterich\"),\n  \"t\", \"terrapin\"),\n  \"a\", \"antelope\")\nreturn (\n  map:get($map, \"o\"),\n\n  for $m in $map\n  return concat(\"key: \", map:key($m), \", value: (\",\n    string-join(map:value($m), \", \"), \")\"))\n, \"\n\")\n",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"osterich\nkey: a, value: (antelope)\nkey: e, value: (elephant, eagle)\nkey: o, value: (osterich)\nkey: t, value: (terrapin)\nkey: z, value: (zebra)\"\n      ",
 Tst = xqerl:run("\"osterich\nkey: a, value: (antelope)\nkey: e, value: (elephant, eagle)\nkey: o, value: (osterich)\nkey: t, value: (terrapin)\nkey: z, value: (zebra)\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof2'(_Config) ->
   Qry = "\n         import module namespace func = \"http://snelson.org.uk/functions/functional\";\n         \n         let $f := func:curry(concat#5)\n         return $f(\"foo\")(\" bar\")(\" baz\")(\" what's\")(\" next?\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"foo bar baz what's next?\"\n      ",
 Tst = xqerl:run("\"foo bar baz what's next?\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof3'(_Config) ->
   Qry = "\nimport module namespace func = \"http://snelson.org.uk/functions/functional\";\n\ndeclare function local:fib2_aux($result as xs:integer, $next as xs:integer, $n) as xs:integer*\n{\n  if($n eq 0) then () else (\n  $result, local:fib2_aux($next, $next + $result, $n - 1))\n};\n\ndeclare function local:fib2($n) as xs:integer*\n{\n  local:fib2_aux(0, 1, $n)\n};\n\ndeclare function local:map-pairs($f,$a,$b)\n{\n  for-each-pair($a,$b,$f)\n};\n\nstring-join(\nfor $a in subsequence(\n\nlet $interleave := func:curry(local:map-pairs#3)(function($a, $b) { $a, $b })\nlet $enumerate := $interleave(0 to 49)\nreturn\n$enumerate(local:fib2(50))\n\n, 1, 100)\nreturn string($a)\n, \"\n\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"0\n0\n1\n1\n2\n1\n3\n2\n4\n3\n5\n5\n6\n8\n7\n13\n8\n21\n9\n34\n10\n55\n11\n89\n12\n144\n13\n233\n14\n377\n15\n610\n16\n987\n17\n1597\n18\n2584\n19\n4181\n20\n6765\n21\n10946\n22\n17711\n23\n28657\n24\n46368\n25\n75025\n26\n121393\n27\n196418\n28\n317811\n29\n514229\n30\n832040\n31\n1346269\n32\n2178309\n33\n3524578\n34\n5702887\n35\n9227465\n36\n14930352\n37\n24157817\n38\n39088169\n39\n63245986\n40\n102334155\n41\n165580141\n42\n267914296\n43\n433494437\n44\n701408733\n45\n1134903170\n46\n1836311903\n47\n2971215073\n48\n4807526976\n49\n7778742049\"\n      ",
 Tst = xqerl:run("\"0\n0\n1\n1\n2\n1\n3\n2\n4\n3\n5\n5\n6\n8\n7\n13\n8\n21\n9\n34\n10\n55\n11\n89\n12\n144\n13\n233\n14\n377\n15\n610\n16\n987\n17\n1597\n18\n2584\n19\n4181\n20\n6765\n21\n10946\n22\n17711\n23\n28657\n24\n46368\n25\n75025\n26\n121393\n27\n196418\n28\n317811\n29\n514229\n30\n832040\n31\n1346269\n32\n2178309\n33\n3524578\n34\n5702887\n35\n9227465\n36\n14930352\n37\n24157817\n38\n39088169\n39\n63245986\n40\n102334155\n41\n165580141\n42\n267914296\n43\n433494437\n44\n701408733\n45\n1134903170\n46\n1836311903\n47\n2971215073\n48\n4807526976\n49\n7778742049\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof4'(_Config) ->
   Qry = "\n         declare function local:hof($s, $f as function(*)) {\n           $f($s[1], $s[2])\n         };\n         \n         local:hof(('1', '2'), concat#2)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"12\"\n      ",
 Tst = xqerl:run("\"12\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof5'(_Config) ->
   Qry = "\n         let $a := string-join(?, \"\")\n         return $a((\"foo\", \"bar\", \"baz\"))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"foobarbaz\"\n      ",
 Tst = xqerl:run("\"foobarbaz\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof6'(_Config) ->
   Qry = "\n         declare function local:curry($f as function(item()*, item()*) as item()*) as function(item()*) as function(item()*) as item()*\n         {\n           function($a) { $f($a, ?) }\n         };\n         \n         local:curry(substring-after#2)(\"foobar\")(\"foo\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"bar\"\n      ",
 Tst = xqerl:run("\"bar\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof7'(_Config) ->
   Qry = "concat#3(\"one\", \"two\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'xqhof8'(_Config) ->
   Qry = "concat#4(\"one\", ?, \"three\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'xqhof9'(_Config) ->
   Qry = "concat#2(\"one\", ?, \"three\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'xqhof10'(_Config) ->
   Qry = "\n         for $f in (concat(\"one \", ?, \" three\"), substring-before(\"one two three\", ?), matches(?, \"t.*o\"), xs:NCName(?))\n         return $f(\"two\")\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n        \"one two three\", \"one \", true(), xs:NCName(\"two\")\n      ",
 Tst = xqerl:run("\"one two three\", \"one \", true(), xs:NCName(\"two\")"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof11'(_Config) ->
   Qry = "()(\"two\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'xqhof12'(_Config) ->
   Qry = "(concat(\"one \", ?, \" three\"), substring-before(\"one two three\", ?), matches(?, \"t.*o\"), xs:NCName(?))(\"two\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'xqhof13'(_Config) ->
   Qry = "\n         let $f := function($a) { node-name(.), $a }\n         return <a/>/$f(5)\n      \n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'xqhof14'(_Config) ->
   Qry = "\n         let $f := name#0\n         return <a/>/$f()\n      \n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'xqhof15'(_Config) ->
   Qry = "\n         let $f := <b/>/name#0\n         return <a/>/$f()\n      \n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"b\"\n      ",
 Tst = xqerl:run("\"b\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof16'(_Config) ->
   Qry = "\n         declare base-uri \"main\";\n         import module namespace lib = \"lib\";\n         \n         lib:getfun()(),\n         fn:static-base-uri#0(),\n         fn:static-base-uri()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            fn:ends-with($result[1], \"lib\")\n            fn:ends-with($result[2], \"main\")\n            fn:ends-with($result[3], \"main\")\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"fn:ends-with($result[1], \"lib\")",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"fn:ends-with($result[2], \"main\")",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"fn:ends-with($result[3], \"main\")",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'xqhof17'(_Config) ->
   Qry = "\n         import module namespace lib = \"lib\";\n         \n         <main/>/lib:getfun2()(),\n         <main/>/name#0(),\n         <main/>/name()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"lib\", \"main\", \"main\"\n      ",
 Tst = xqerl:run("\"lib\", \"main\", \"main\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'xqhof18'(_Config) ->
   Qry = "\n         declare base-uri \"main\";\n         import module namespace lib = \"lib\";\n         \n         lib:getfun3()(xs:QName(\"fn:static-base-uri\"),0)(),\n         function-lookup#2(xs:QName(\"fn:static-base-uri\"),0)(),\n         function-lookup(xs:QName(\"fn:static-base-uri\"),0)()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            fn:ends-with($result[1], \"lib\")\n            fn:ends-with($result[2], \"main\")\n            fn:ends-with($result[3], \"main\")\n         \n      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"fn:ends-with($result[1], \"lib\")",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"fn:ends-with($result[2], \"main\")",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"fn:ends-with($result[3], \"main\")",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'xqhof19'(_Config) ->
   Qry = "\n         import module namespace lib = \"lib\";\n         \n         <main/>/lib:getfun3()(xs:QName(\"fn:name\"),0)(),\n         <main/>/function-lookup#2(xs:QName(\"fn:name\"),0)(),\n         <main/>/function-lookup(xs:QName(\"fn:name\"),0)()\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \"lib\", \"main\", \"main\"\n      ",
 Tst = xqerl:run("\"lib\", \"main\", \"main\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
