-module('op_subtract_yearMonthDurations_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-yearMonthDurations2args-1'/1]).
-export(['op-subtract-yearMonthDurations2args-2'/1]).
-export(['op-subtract-yearMonthDurations2args-3'/1]).
-export(['op-subtract-yearMonthDurations2args-4'/1]).
-export(['op-subtract-yearMonthDurations2args-5'/1]).
-export(['op-subtract-yearMonthDurations-1'/1]).
-export(['op-subtract-yearMonthDurations-2'/1]).
-export(['op-subtract-yearMonthDurations-3'/1]).
-export(['op-subtract-yearMonthDurations-4'/1]).
-export(['op-subtract-yearMonthDurations-5'/1]).
-export(['op-subtract-yearMonthDurations-6'/1]).
-export(['op-subtract-yearMonthDurations-7'/1]).
-export(['op-subtract-yearMonthDurations-8'/1]).
-export(['op-subtract-yearMonthDurations-9'/1]).
-export(['op-subtract-yearMonthDurations-10'/1]).
-export(['op-subtract-yearMonthDurations-11'/1]).
-export(['op-subtract-yearMonthDurations-12'/1]).
-export(['op-subtract-yearMonthDurations-13'/1]).
-export(['op-subtract-yearMonthDurations-14'/1]).
-export(['op-subtract-yearMonthDurations-15'/1]).
-export(['op-subtract-yearMonthDurations-16'/1]).
-export(['K-YearMonthDurationSubtract-1'/1]).
-export(['K-YearMonthDurationSubtract-2'/1]).
-export(['K-YearMonthDurationSubtract-3'/1]).
-export(['K-YearMonthDurationSubtract-4'/1]).
-export(['K-YearMonthDurationSubtract-5'/1]).
-export(['K-YearMonthDurationSubtract-6'/1]).
-export(['K-YearMonthDurationSubtract-7'/1]).
-export(['K-YearMonthDurationSubtract-8'/1]).
-export(['K-YearMonthDurationSubtract-9'/1]).
-export(['cbcl-subtract-yearMonthDurations-001'/1]).
-export(['cbcl-subtract-yearMonthDurations-002'/1]).
-export(['cbcl-subtract-yearMonthDurations-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-subtract-yearMonthDurations2args-1',
   'op-subtract-yearMonthDurations2args-2',
   'op-subtract-yearMonthDurations2args-3',
   'op-subtract-yearMonthDurations2args-4',
   'op-subtract-yearMonthDurations2args-5',
   'op-subtract-yearMonthDurations-1',
   'op-subtract-yearMonthDurations-2',
   'op-subtract-yearMonthDurations-3',
   'op-subtract-yearMonthDurations-4',
   'op-subtract-yearMonthDurations-5',
   'op-subtract-yearMonthDurations-6',
   'op-subtract-yearMonthDurations-7',
   'op-subtract-yearMonthDurations-8',
   'op-subtract-yearMonthDurations-9',
   'op-subtract-yearMonthDurations-10',
   'op-subtract-yearMonthDurations-11',
   'op-subtract-yearMonthDurations-12',
   'op-subtract-yearMonthDurations-13',
   'op-subtract-yearMonthDurations-14',
   'op-subtract-yearMonthDurations-15',
   'op-subtract-yearMonthDurations-16',
   'K-YearMonthDurationSubtract-1',
   'K-YearMonthDurationSubtract-2',
   'K-YearMonthDurationSubtract-3',
   'K-YearMonthDurationSubtract-4',
   'K-YearMonthDurationSubtract-5',
   'K-YearMonthDurationSubtract-6',
   'K-YearMonthDurationSubtract-7',
   'K-YearMonthDurationSubtract-8',
   'K-YearMonthDurationSubtract-9',
   'cbcl-subtract-yearMonthDurations-001',
   'cbcl-subtract-yearMonthDurations-002',
   'cbcl-subtract-yearMonthDurations-003'].
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
'op-subtract-yearMonthDurations2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1000Y6M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2031Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") - xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1000Y6M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") - xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P2031Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations-1'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P2Y11M\") - xs:yearMonthDuration(\"P3Y3M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P4M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations-2'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P10Y11M\") - xs:yearMonthDuration(\"P12Y07M\")) and fn:false()",
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
'op-subtract-yearMonthDurations-3'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P20Y10M\") - xs:yearMonthDuration(\"P19Y10M\")) or fn:false()",
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
'op-subtract-yearMonthDurations-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") - xs:yearMonthDuration(\"P02Y11M\")))",
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
'op-subtract-yearMonthDurations-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") - xs:yearMonthDuration(\"P03Y06M\")))",
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
'op-subtract-yearMonthDurations-6'(_Config) ->
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") - xs:yearMonthDuration(\"P10Y01M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations-7'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") - xs:yearMonthDuration(\"P01Y02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2Y6M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") - xs:yearMonthDuration(\"P11Y02M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-P1Y1M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations-9'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P01Y01M\") - xs:yearMonthDuration(\"P02Y02M\"))) and fn:string((xs:yearMonthDuration(\"P02Y03M\") - xs:yearMonthDuration(\"P04Y04M\")))",
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
'op-subtract-yearMonthDurations-10'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P05Y02M\") - xs:yearMonthDuration(\"P03Y04M\"))) or fn:string((xs:yearMonthDuration(\"P05Y03M\") - xs:yearMonthDuration(\"P01Y03M\")))",
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
'op-subtract-yearMonthDurations-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P42Y10M\") - xs:yearMonthDuration(\"P20Y10M\")) div (xs:yearMonthDuration(\"P20Y11M\") - xs:yearMonthDuration(\"P18Y11M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-subtract-yearMonthDurations-12'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") - xs:yearMonthDuration(\"P05Y07M\"))) and (fn:true())",
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
'op-subtract-yearMonthDurations-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") - xs:yearMonthDuration(\"P23Y11M\")) eq xs:yearMonthDuration(\"P23Y11M\")",
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
'op-subtract-yearMonthDurations-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") - xs:yearMonthDuration(\"P08Y05M\")) ne xs:yearMonthDuration(\"P08Y05M\")",
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
'op-subtract-yearMonthDurations-15'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") - xs:yearMonthDuration(\"P17Y02M\")) le xs:yearMonthDuration(\"P17Y02M\")",
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
'op-subtract-yearMonthDurations-16'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") - xs:yearMonthDuration(\"P18Y02M\")) ge xs:yearMonthDuration(\"P18Y02M\")",
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
'K-YearMonthDurationSubtract-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") - xs:yearMonthDuration(\"P0M\") eq xs:yearMonthDuration(\"P3Y3M\")",
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
'K-YearMonthDurationSubtract-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0M\") - xs:yearMonthDuration(\"P3Y3M\") eq xs:yearMonthDuration(\"-P3Y3M\")",
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
'K-YearMonthDurationSubtract-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P32Y43M\") - xs:yearMonthDuration(\"P12Y13M\") eq xs:yearMonthDuration(\"P22Y6M\")",
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
'K-YearMonthDurationSubtract-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") + xs:yearMonthDuration(\"P3Y3M\")",
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
'K-YearMonthDurationSubtract-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") + xs:dayTimeDuration(\"P3D\")",
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
'K-YearMonthDurationSubtract-6'(_Config) ->
   Qry = "xs:duration(\"P3D\") + xs:yearMonthDuration(\"P3Y3M\")",
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
'K-YearMonthDurationSubtract-7'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") + xs:duration(\"P3D\")",
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
'K-YearMonthDurationSubtract-8'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") + xs:duration(\"P3Y3M\")",
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
'K-YearMonthDurationSubtract-9'(_Config) ->
   Qry = "xs:duration(\"P3Y3M\") + xs:dayTimeDuration(\"P3D\")",
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
'cbcl-subtract-yearMonthDurations-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        local:yearMonthDuration(1, 1) - xs:yearMonthDuration(\"P0Y\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y1M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-yearMonthDurations-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        local:yearMonthDuration(1, 1) - local:yearMonthDuration(1, 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-subtract-yearMonthDurations-003'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        xs:yearMonthDuration(\"-P768614336404564650Y\") - local:yearMonthDuration(768614336404564650, 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODT0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
