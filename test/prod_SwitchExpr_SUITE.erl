-module('prod_SwitchExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['switch-001'/1]).
-export(['switch-002'/1]).
-export(['switch-003'/1]).
-export(['switch-004'/1]).
-export(['switch-005'/1]).
-export(['switch-006'/1]).
-export(['switch-007'/1]).
-export(['switch-008'/1]).
-export(['switch-009'/1]).
-export(['switch-010'/1]).
-export(['switch-011'/1]).
-export(['switch-012'/1]).
-export(['switch-013'/1]).
-export(['switch-014'/1]).
-export(['switch-015'/1]).
-export(['switch-016'/1]).
-export(['switch-017'/1]).
-export(['switch-018'/1]).
-export(['switch-901'/1]).
-export(['switch-902'/1]).
-export(['switch-903'/1]).
-export(['switch-904'/1]).
-export(['switch-905'/1]).
-export(['switch-906'/1]).
-export(['switch-907'/1]).
-export(['switch-908'/1]).
-export(['switch-909'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'switch-001',
   'switch-002',
   'switch-003',
   'switch-004',
   'switch-005',
   'switch-006',
   'switch-007',
   'switch-008',
   'switch-009',
   'switch-010',
   'switch-011',
   'switch-012',
   'switch-013',
   'switch-014',
   'switch-015',
   'switch-016',
   'switch-017',
   'switch-018',
   'switch-901',
   'switch-902',
   'switch-903',
   'switch-904',
   'switch-905',
   'switch-906',
   'switch-907',
   'switch-908',
   'switch-909'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
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
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'switch-001'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $animal as xs:string := \"Cat\"; 
        <out>{ switch ($animal) 
            case \"Cow\" return \"Moo\" 
            case \"Cat\" return \"Meow\" 
            case \"Duck\" return \"Quack\" 
            default return \"What's that odd noise?\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Meow</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-002'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $animal as xs:string := \"Dog\"; 
        <out>{ switch ($animal) 
            case \"Cow\" return \"Moo\"
            case \"Cat\" return \"Meow\" 
            case \"Duck\" return \"Quack\" 
            default return \"What's that odd noise?\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>What's that odd noise?</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-003'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $animal as xs:string := \"!?!?\"; 
        <out>{ switch (upper-case($animal)) 
            case \"COW\" return \"Moo\"
            case \"CAT\" return \"Meow\" 
            case \"DUCK\" return \"Quack\" 
            case lower-case($animal) return \"Oink\" 
            default return \"What's that odd noise?\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Oink</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-004'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $animal as xs:string := \"goose\"; 
        <out>{ switch (upper-case($animal)) 
            case \"COW\" return \"Moo\" 
            case \"CAT\" return \"Meow\" 
            case \"DUCK\" case \"GOOSE\" return \"Quack\" 
            case \"PIG\" case \"SWINE\" return \"Oink\" 
            default return \"What's that odd noise?\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Quack</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-005'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $animal as xs:string := \"duck\"; 
        <out>{ switch (upper-case($animal)) 
            case \"COW\" return \"Moo\" 
            case \"CAT\" return \"Meow\" 
            case \"DUCK\" case \"GOOSE\" return \"Quack\" 
            case \"PIG\" case \"SWINE\" return \"Oink\" 
            default return \"What's that odd noise?\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Quack</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-006'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $number as xs:decimal := 42; 
        <out>{ switch ($number) case 21 return \"Moo\" 
            case current-time() return \"Meow\" 
            case 42 return \"Quack\" 
            default return 3.14159 }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Quack</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-007'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := <a>42</a>; 
        <out>{ switch ($in) 
            case 42 return \"Moo\" 
            case \"42\" return \"Meow\" 
            case 42e0 return \"Quack\" 
            case \"42e0\" return \"Oink\" 
            default return \"Expletive deleted\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Meow</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-008'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := \"42\"; 
        <out>{ switch ($in) 
            case 42 return \"Moo\" 
            case <a>42</a> return \"Meow\" 
            case 42e0 return \"Quack\" 
            case \"42e0\" return \"Oink\" 
            default return \"Expletive deleted\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Meow</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-009'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := (); 
        <out>{ switch ($in) 
            case 42 return \"Moo\" 
            case <a>42</a> return \"Meow\" 
            case 42e0 return \"Quack\" 
            case \"42e0\" return \"Oink\" 
            case () return \"Woof\" 
            default return \"Expletive deleted\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Woof</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-010'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 21; 
        <out>{ switch ($in) 
            case 42 return \"Moo\" 
            case <a>42</a> return \"Meow\" 
            case 42e0 return \"Quack\" 
            case \"42e0\" return \"Oink\" 
            case () return \"Woof\" 
            default return \"Expletive deleted\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Expletive deleted</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-011'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := xs:double('NaN'); 
        <out>{ switch ($in) 
            case 42 return \"Moo\" 
            case <a>42</a> return \"Meow\" 
            case 42e0 return \"Quack\" 
            case \"42e0\" return \"Oink\" 
            case xs:float('NaN') return \"Woof\" 
            default return \"Expletive deleted\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Woof</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-012'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 25; 
        declare variable $zero := 0; 
        <out>{ switch ($in) 
            case 42 return $in div $zero 
            case 25 return \"Baa\" 
            case 39 return $in div $zero 
            default return \"Woof\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Baa</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-013'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 25; 
        declare variable $zero := 0; 
        <out>{ switch ($in) 
            case 42 return \"Quack\" 
            case 25 return \"Baa\" 
            case $in div $zero return \"Neigh\" 
            default return \"Woof\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>Baa</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-014'(_Config) ->
   Qry = " 
         let $v := xs:QName('a')
         return switch($v)
            case $v return 1
            default return 2
      ",
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
'switch-015'(_Config) ->
   Qry = " 
         let $v := xs:date('2001-01-01')
         return switch($v)
         case $v return 1
         default return 2
      ",
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
'switch-016'(_Config) ->
   Qry = " 
         let $v := xs:dateTime('2001-01-01T12:00:00')
         return switch($v)
         case current-dateTime() return 1
         default return 2
      ",
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
'switch-017'(_Config) ->
   Qry = " 
         let $v := current-dateTime()
         return switch($v)
         case xs:dateTime('2001-01-01T12:00:00') return 1
         default return 2
      ",
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
'switch-018'(_Config) ->
   Qry = " 
         let $v := xs:time('00:00:00Z')
         return switch($v)
         case xs:time('24:00:00Z') return 1
         default return 2
      ",
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
'switch-901'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch (1 to $in) 
            case 1 return \"Moo\" 
            case 2 return \"Meow\" 
            case 3 return \"Quack\" 
            case 4 return \"Oink\" 
            default return \"Baa\" }</out>",
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
'switch-902'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) 
            case 1 return \"Moo\" 
            case 5 return \"Meow\" 
            case 3 return \"Quack\" 
            case ($in to 4) return \"Oink\" 
            default return \"Baa\" }</out>",
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
'switch-903'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) default return \"Baa\" }</out>",
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
'switch-904'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) 
            case 1 return \"Moo\" 
            case 5 return \"Meow\" 
            case 3 return \"Quack\" 
            case ($in to 4) return \"Oink\" }</out>",
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
'switch-905'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) 
            case 1 return \"Moo\" 
            case 5 return \"Meow\" return \"Quack\" 
            case ($in to 4) return \"Oink\" 
            default return \"Baa\" }</out>",
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
'switch-906'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) 
            case 1 return \"Moo\", \"Boo\" 
            case 5 return \"Meow\" 
            case 7 return \"Quack\" 
            case 4 return \"Oink\" 
            default return \"Baa\" }</out>",
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
'switch-907'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch $in 
            case 1 return \"Moo\", \"Boo\" 
            case 5 return \"Meow\" 
            case 7 return \"Quack\" 
            case 4 return \"Oink\" 
            default return \"Baa\" }</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'switch-908'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) { 
            case 1 return \"Moo\", \"Boo\" 
            case 5 return \"Meow\" 
            case 7 return \"Quack\" 
            case 4 return \"Oink\" 
            default return \"Baa\" } }</out>",
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
'switch-909'(_Config) ->
   Qry = "xquery version \"3.0\"; 
        declare variable $in := 2; 
        <out>{ switch ($in) 
            case 1: return \"Moo\", \"Boo\" 
            case 5: return \"Meow\" 
            case 7: return \"Quack\" 
            case 4: return \"Oink\" 
            default: return \"Baa\" }</out>",
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
