-module('prod_UnorderedExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Orderexpr-1'/1]).
-export(['Orderexpr-2'/1]).
-export(['Orderexpr-5'/1]).
-export(['Orderexpr-6'/1]).
-export(['Orderexpr-9'/1]).
-export(['Orderexpr-10'/1]).
-export(['Orderexpr-11'/1]).
-export(['Orderexpr-12'/1]).
-export(['Orderexpr-13'/1]).
-export(['Orderexpr-14'/1]).
-export(['Orderexpr-15'/1]).
-export(['Orderexpr-16'/1]).
-export(['Orderexpr-17'/1]).
-export(['Orderexpr-18'/1]).
-export(['Orderexpr-19'/1]).
-export(['Orderexpr-20'/1]).
-export(['orderedunorderedexpr-1'/1]).
-export(['orderedunorderedexpr-2'/1]).
-export(['orderedunorderedexpr-3'/1]).
-export(['orderedunorderedexpr-4'/1]).
-export(['orderedunorderedexpr-5'/1]).
-export(['orderedunorderedexpr-6'/1]).
-export(['K-OrderExpr-1'/1]).
-export(['K-OrderExpr-1a'/1]).
-export(['K-OrderExpr-2'/1]).
-export(['K-OrderExpr-2a'/1]).
-export(['K-OrderExpr-3'/1]).
-export(['K-OrderExpr-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'Orderexpr-1',
   'Orderexpr-2',
   'Orderexpr-5',
   'Orderexpr-6',
   'Orderexpr-9',
   'Orderexpr-10',
   'Orderexpr-11',
   'Orderexpr-12',
   'Orderexpr-13',
   'Orderexpr-14',
   'Orderexpr-15',
   'Orderexpr-16',
   'Orderexpr-17',
   'Orderexpr-18',
   'Orderexpr-19',
   'Orderexpr-20',
   'orderedunorderedexpr-1',
   'orderedunorderedexpr-2',
   'orderedunorderedexpr-3',
   'orderedunorderedexpr-4',
   'orderedunorderedexpr-5',
   'orderedunorderedexpr-6',
   'K-OrderExpr-1',
   'K-OrderExpr-1a',
   'K-OrderExpr-2',
   'K-OrderExpr-2a',
   'K-OrderExpr-3',
   'K-OrderExpr-4'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('partlist') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/docs/partlist.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Orderexpr-1'(_Config) ->
   Qry = "ordered {//part[@partid < 2]}",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-2'(_Config) ->
   Qry = "unordered {//part[@partid < 2]}",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"0\" name=\"car\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"0\" name=\"car\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-5'(_Config) ->
   Qry = "ordered {//part[@partid < 2][2]}",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-6'(_Config) ->
   Qry = "unordered {//part[@partid < 2][2]}",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<part partid=\"0\" name=\"car\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-9'(_Config) ->
   Qry = "ordered {//part[@partof = 1] union //part[@partid = 1] }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-10'(_Config) ->
   Qry = "unordered {//part[@partof = 1] union //part[@partid = 1] }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-11'(_Config) ->
   Qry = "ordered {//part[@partof < 2] intersect //part[@partid = 1 or @partid > 2] }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-12'(_Config) ->
   Qry = "unordered {//part[@partof < 2] intersect //part[@partid = 1 or @partid > 2] }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-13'(_Config) ->
   Qry = "ordered {//part[@partof < 2] except //part[@partid = 2] }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-14'(_Config) ->
   Qry = "unordered {//part[@partof < 2] except //part[@partid = 2] }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<part partid=\"1\" partof=\"0\" name=\"engine\"/><part partid=\"3\" partof=\"1\" name=\"piston\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<part partid=\"3\" partof=\"1\" name=\"piston\"/><part partid=\"1\" partof=\"0\" name=\"engine\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-15'(_Config) ->
   Qry = "ordered {fn:subsequence((1,2,3,4),2,2)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-16'(_Config) ->
   Qry = "unordered {fn:subsequence((1,2,3,4),2,2)}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-17'(_Config) ->
   Qry = "ordered {fn:reverse((3,2))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-18'(_Config) ->
   Qry = "unordered {fn:reverse((2,3))}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-19'(_Config) ->
   Qry = "ordered { for $i in (//part[@partid = 1], //part[@partid = 2]), $j in (//part[@partof = $i/@partid]) where ($i/@partid + $j/@partid) < 7 return $i/@partid + $j/@partid }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Orderexpr-20'(_Config) ->
   Qry = "unordered { for $i in (//part[@partid = 1], //part[@partid = 2]), $j in (//part[@partof = $i/@partid]) where ($i/@partid + $j/@partid) < 7 return $i/@partid + $j/@partid }",
   {Env,Opts} = xqerl_test:handle_environment(environment('partlist')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "4 6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "6 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderedunorderedexpr-1'(_Config) ->
   Qry = "ordered {if (fn:true()) then (0,1,2,3,4) else (\"A\",\"B\",\"C\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderedunorderedexpr-2'(_Config) ->
   Qry = "ordered {if (1 eq 1 and 2 eq 2) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderedunorderedexpr-3'(_Config) ->
   Qry = "ordered {if (1 eq 1 or 2 eq 3) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderedunorderedexpr-4'(_Config) ->
   Qry = "ordered {if (some $x in (1, 2, 3), $y in (2, 3, 4) satisfies $x + $y = 4) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderedunorderedexpr-5'(_Config) ->
   Qry = "ordered {if (every $x in (1, 2, 3) satisfies $x < 4) then (0,1,2,3,4) else (\"a\",\"b\")}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'orderedunorderedexpr-6'(_Config) ->
   Qry = "ordered {typeswitch(123) case $i as xs:string return (\"a\",\"b\",\"c\") case $i as xs:double return (\"a\",\"b\",\"c\") case $i as xs:integer return (1,2,3,4) default return (\"a\",\"b\",\"c\") }",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-OrderExpr-1'(_Config) ->
   {skip,"XQ10 XQ30"}.
'K-OrderExpr-1a'(_Config) ->
   Qry = "ordered{}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-OrderExpr-2'(_Config) ->
   {skip,"XQ10 XQ30"}.
'K-OrderExpr-2a'(_Config) ->
   Qry = "unordered{}",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-OrderExpr-3'(_Config) ->
   Qry = "ordered{true()}",
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
'K-OrderExpr-4'(_Config) ->
   Qry = "unordered{true()}",
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
