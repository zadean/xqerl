-module('prod_AllowingEmpty_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['outer-001'/1]).
-export(['outer-002'/1]).
-export(['outer-003'/1]).
-export(['outer-004'/1]).
-export(['outer-005'/1]).
-export(['outer-006'/1]).
-export(['outer-007'/1]).
-export(['outer-008'/1]).
-export(['outer-009'/1]).
-export(['outer-010'/1]).
-export(['outer-011'/1]).
-export(['outer-012'/1]).
-export(['outer-013'/1]).
-export(['outer-014'/1]).
-export(['outer-015'/1]).
-export(['outer-016'/1]).
-export(['outer-017'/1]).
-export(['outer-018'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'outer-001',
   'outer-002',
   'outer-003',
   'outer-004',
   'outer-005',
   'outer-006',
   'outer-007',
   'outer-008',
   'outer-009',
   'outer-010',
   'outer-011',
   'outer-012',
   'outer-013',
   'outer-014',
   'outer-015',
   'outer-016',
   'outer-017',
   'outer-018'].
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
'outer-001'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 10; 
        <out>{ for $x allowing empty in 1 to $n return <a>{$x}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a>1</a><a>2</a><a>3</a><a>4</a><a>5</a><a>6</a><a>7</a><a>8</a><a>9</a><a>10</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-002'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty in 1 to $n return <a>{$x}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-003'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 10; 
        <out>{ for $x allowing empty at $p in 1 to $n return <a position=\"{$p}\">{$x}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a position=\"1\">1</a><a position=\"2\">2</a><a position=\"3\">3</a><a position=\"4\">4</a><a position=\"5\">5</a><a position=\"6\">6</a><a position=\"7\">7</a><a position=\"8\">8</a><a position=\"9\">9</a><a position=\"10\">10</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-004'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty at $p in 1 to $n return <a position=\"{$p}\">{$x}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a position=\"0\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-005'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 10;
        <out>{ string-join(for $x allowing empty in 1 to $n return concat('[',$x,']'), '|') }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>[1]|[2]|[3]|[4]|[5]|[6]|[7]|[8]|[9]|[10]</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-006'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ string-join(for $x allowing empty in 1 to $n return concat('[',$x,']'), '|') }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>[]</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-007'(_Config) ->
   Qry = "
        declare variable $m as xs:integer external := 5; 
        declare variable $n as xs:integer external := 5;
         <out>{ for $x allowing empty at $p in 1 to $m, $y at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,1</a><a p=\"1\" q=\"2\">1,2</a><a p=\"1\" q=\"3\">1,3</a><a p=\"1\" q=\"4\">1,4</a><a p=\"1\" q=\"5\">1,5</a><a p=\"2\" q=\"1\">2,1</a><a p=\"2\" q=\"2\">2,2</a><a p=\"2\" q=\"3\">2,3</a><a p=\"2\" q=\"4\">2,4</a><a p=\"2\" q=\"5\">2,5</a><a p=\"3\" q=\"1\">3,1</a><a p=\"3\" q=\"2\">3,2</a><a p=\"3\" q=\"3\">3,3</a><a p=\"3\" q=\"4\">3,4</a><a p=\"3\" q=\"5\">3,5</a><a p=\"4\" q=\"1\">4,1</a><a p=\"4\" q=\"2\">4,2</a><a p=\"4\" q=\"3\">4,3</a><a p=\"4\" q=\"4\">4,4</a><a p=\"4\" q=\"5\">4,5</a><a p=\"5\" q=\"1\">5,1</a><a p=\"5\" q=\"2\">5,2</a><a p=\"5\" q=\"3\">5,3</a><a p=\"5\" q=\"4\">5,4</a><a p=\"5\" q=\"5\">5,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-008'(_Config) ->
   Qry = "
        declare variable $m as xs:integer external := 5; 
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty at $p in 1 to $m, $y allowing empty at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"0\">1,</a><a p=\"2\" q=\"0\">2,</a><a p=\"3\" q=\"0\">3,</a><a p=\"4\" q=\"0\">4,</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-009'(_Config) ->
   Qry = "
        declare variable $m as xs:integer external := 0; 
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x allowing empty at $p in 1 to $m, $y at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"1\">,1</a><a p=\"0\" q=\"2\">,2</a><a p=\"0\" q=\"3\">,3</a><a p=\"0\" q=\"4\">,4</a><a p=\"0\" q=\"5\">,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-010'(_Config) ->
   Qry = "
        declare variable $m as xs:integer external := 0; 
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x allowing empty at $p in 1 to $m, 
                   $y allowing empty at $q in 1 to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"0\">,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-011'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x allowing empty at $p in 1 to $n, $y allowing empty at $q in ($x+1) to $n return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,2</a><a p=\"1\" q=\"2\">1,3</a><a p=\"1\" q=\"3\">1,4</a><a p=\"1\" q=\"4\">1,5</a><a p=\"2\" q=\"1\">2,3</a><a p=\"2\" q=\"2\">2,4</a><a p=\"2\" q=\"3\">2,5</a><a p=\"3\" q=\"1\">3,4</a><a p=\"3\" q=\"2\">3,5</a><a p=\"4\" q=\"1\">4,5</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-012'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ 
            for $x as xs:integer allowing empty at $p in 1 to $n, 
                $y as xs:integer? allowing empty at $q in ($x+1) to $n 
            return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,2</a><a p=\"1\" q=\"2\">1,3</a><a p=\"1\" q=\"3\">1,4</a><a p=\"1\" q=\"4\">1,5</a><a p=\"2\" q=\"1\">2,3</a><a p=\"2\" q=\"2\">2,4</a><a p=\"2\" q=\"3\">2,5</a><a p=\"3\" q=\"1\">3,4</a><a p=\"3\" q=\"2\">3,5</a><a p=\"4\" q=\"1\">4,5</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-013'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer allowing empty at $p in 1 to $n, 
                   $y as xs:integer allowing empty at $q in ($x+1) to $n 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-014'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer at $p in 1 to $n 
               for $y as xs:integer? allowing empty at $q in ($x+1) to $n 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,2</a><a p=\"1\" q=\"2\">1,3</a><a p=\"1\" q=\"3\">1,4</a><a p=\"1\" q=\"4\">1,5</a><a p=\"2\" q=\"1\">2,3</a><a p=\"2\" q=\"2\">2,4</a><a p=\"2\" q=\"3\">2,5</a><a p=\"3\" q=\"1\">3,4</a><a p=\"3\" q=\"2\">3,5</a><a p=\"4\" q=\"1\">4,5</a><a p=\"5\" q=\"0\">5,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-015'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer at $q in (if (empty($x)) then 0 else (1 to $x)) 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,1</a><a p=\"2\" q=\"1\">2,1</a><a p=\"2\" q=\"2\">2,2</a><a p=\"3\" q=\"1\">3,1</a><a p=\"3\" q=\"2\">3,2</a><a p=\"3\" q=\"3\">3,3</a><a p=\"4\" q=\"1\">4,1</a><a p=\"4\" q=\"2\">4,2</a><a p=\"4\" q=\"3\">4,3</a><a p=\"4\" q=\"4\">4,4</a><a p=\"5\" q=\"1\">5,1</a><a p=\"5\" q=\"2\">5,2</a><a p=\"5\" q=\"3\">5,3</a><a p=\"5\" q=\"4\">5,4</a><a p=\"5\" q=\"5\">5,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-016'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer at $q in (if (empty($x)) then 0 else (1 to $x)) 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"1\">,0</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-017'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 5; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer? allowing empty at $q in (if (empty($x)) then () else (1 to $x)) 
               where deep-equal($x,$y) 
               return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"1\" q=\"1\">1,1</a><a p=\"2\" q=\"2\">2,2</a><a p=\"3\" q=\"3\">3,3</a><a p=\"4\" q=\"4\">4,4</a><a p=\"5\" q=\"5\">5,5</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'outer-018'(_Config) ->
   Qry = "
        declare variable $n as xs:integer external := 0; 
        <out>{ for $x as xs:integer? allowing empty at $p in 1 to $n 
               for $y as xs:integer? allowing empty at $q in (if (empty($x)) then () else (1 to $x)) 
               where deep-equal($x,$y) return <a p=\"{$p}\" q=\"{$q}\">{$x},{$y}</a> }</out>
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><a p=\"0\" q=\"0\">,</a></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
