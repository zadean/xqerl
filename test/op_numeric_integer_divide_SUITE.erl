-module('op_numeric_integer_divide_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-integer-divideint2args-1'/1]).
-export(['op-numeric-integer-divideint2args-2'/1]).
-export(['op-numeric-integer-divideint2args-3'/1]).
-export(['op-numeric-integer-divideint2args-4'/1]).
-export(['op-numeric-integer-divideint2args-5'/1]).
-export(['op-numeric-integer-divideintg2args-1'/1]).
-export(['op-numeric-integer-divideintg2args-2'/1]).
-export(['op-numeric-integer-divideintg2args-3'/1]).
-export(['op-numeric-integer-divideintg2args-4'/1]).
-export(['op-numeric-integer-divideintg2args-5'/1]).
-export(['op-numeric-integer-dividedec2args-1'/1]).
-export(['op-numeric-integer-dividedec2args-2'/1]).
-export(['op-numeric-integer-dividedec2args-3'/1]).
-export(['op-numeric-integer-dividedec2args-4'/1]).
-export(['op-numeric-integer-dividedec2args-5'/1]).
-export(['op-numeric-integer-dividelng2args-1'/1]).
-export(['op-numeric-integer-dividelng2args-2'/1]).
-export(['op-numeric-integer-dividelng2args-3'/1]).
-export(['op-numeric-integer-dividelng2args-4'/1]).
-export(['op-numeric-integer-dividelng2args-5'/1]).
-export(['op-numeric-integer-divideusht2args-1'/1]).
-export(['op-numeric-integer-divideusht2args-2'/1]).
-export(['op-numeric-integer-dividenint2args-1'/1]).
-export(['op-numeric-integer-dividenint2args-2'/1]).
-export(['op-numeric-integer-dividenint2args-3'/1]).
-export(['op-numeric-integer-dividenint2args-4'/1]).
-export(['op-numeric-integer-dividenint2args-5'/1]).
-export(['op-numeric-integer-dividepint2args-1'/1]).
-export(['op-numeric-integer-dividepint2args-2'/1]).
-export(['op-numeric-integer-dividepint2args-3'/1]).
-export(['op-numeric-integer-dividepint2args-4'/1]).
-export(['op-numeric-integer-dividepint2args-5'/1]).
-export(['op-numeric-integer-divideulng2args-1'/1]).
-export(['op-numeric-integer-divideulng2args-2'/1]).
-export(['op-numeric-integer-dividenpi2args-1'/1]).
-export(['op-numeric-integer-dividenpi2args-2'/1]).
-export(['op-numeric-integer-dividenpi2args-3'/1]).
-export(['op-numeric-integer-dividenpi2args-4'/1]).
-export(['op-numeric-integer-dividenni2args-1'/1]).
-export(['op-numeric-integer-dividenni2args-2'/1]).
-export(['op-numeric-integer-dividesht2args-1'/1]).
-export(['op-numeric-integer-dividesht2args-2'/1]).
-export(['op-numeric-integer-dividesht2args-3'/1]).
-export(['op-numeric-integer-dividesht2args-4'/1]).
-export(['op-numeric-integer-dividesht2args-5'/1]).
-export(['op-numeric-integer-dividemix2args-1'/1]).
-export(['op-numeric-integer-dividemix2args-2'/1]).
-export(['op-numeric-integer-dividemix2args-3'/1]).
-export(['op-numeric-integer-dividemix2args-4'/1]).
-export(['op-numeric-integer-dividemix2args-5'/1]).
-export(['op-numeric-integer-dividemix2args-6'/1]).
-export(['op-numeric-integer-dividemix2args-7'/1]).
-export(['op-numeric-integer-dividemix2args-8'/1]).
-export(['op-numeric-integer-dividemix2args-9'/1]).
-export(['op-numeric-integer-dividemix2args-10'/1]).
-export(['op-numeric-integer-divide-1'/1]).
-export(['K-NumericIntegerDivide-1'/1]).
-export(['K-NumericIntegerDivide-2'/1]).
-export(['K-NumericIntegerDivide-3'/1]).
-export(['K-NumericIntegerDivide-4'/1]).
-export(['K-NumericIntegerDivide-5'/1]).
-export(['K-NumericIntegerDivide-6'/1]).
-export(['K-NumericIntegerDivide-7'/1]).
-export(['K-NumericIntegerDivide-8'/1]).
-export(['K-NumericIntegerDivide-9'/1]).
-export(['K-NumericIntegerDivide-10'/1]).
-export(['K-NumericIntegerDivide-11'/1]).
-export(['K-NumericIntegerDivide-12'/1]).
-export(['K-NumericIntegerDivide-13'/1]).
-export(['K-NumericIntegerDivide-14'/1]).
-export(['K-NumericIntegerDivide-15'/1]).
-export(['K-NumericIntegerDivide-16'/1]).
-export(['K-NumericIntegerDivide-17'/1]).
-export(['K-NumericIntegerDivide-18'/1]).
-export(['K-NumericIntegerDivide-19'/1]).
-export(['K-NumericIntegerDivide-20'/1]).
-export(['K-NumericIntegerDivide-21'/1]).
-export(['K-NumericIntegerDivide-22'/1]).
-export(['K-NumericIntegerDivide-23'/1]).
-export(['K-NumericIntegerDivide-24'/1]).
-export(['K-NumericIntegerDivide-25'/1]).
-export(['K-NumericIntegerDivide-26'/1]).
-export(['K-NumericIntegerDivide-27'/1]).
-export(['K-NumericIntegerDivide-28'/1]).
-export(['K-NumericIntegerDivide-29'/1]).
-export(['K-NumericIntegerDivide-30'/1]).
-export(['K-NumericIntegerDivide-31'/1]).
-export(['K-NumericIntegerDivide-32'/1]).
-export(['K-NumericIntegerDivide-33'/1]).
-export(['K-NumericIntegerDivide-34'/1]).
-export(['K-NumericIntegerDivide-35'/1]).
-export(['K-NumericIntegerDivide-36'/1]).
-export(['K-NumericIntegerDivide-37'/1]).
-export(['K-NumericIntegerDivide-38'/1]).
-export(['K-NumericIntegerDivide-39'/1]).
-export(['K-NumericIntegerDivide-40'/1]).
-export(['K-NumericIntegerDivide-41'/1]).
-export(['K-NumericIntegerDivide-42'/1]).
-export(['K-NumericIntegerDivide-43'/1]).
-export(['K-NumericIntegerDivide-44'/1]).
-export(['K-NumericIntegerDivide-45'/1]).
-export(['K-NumericIntegerDivide-46'/1]).
-export(['K-NumericIntegerDivide-47'/1]).
-export(['K-NumericIntegerDivide-48'/1]).
-export(['K-NumericIntegerDivide-49'/1]).
-export(['K-NumericIntegerDivide-50'/1]).
-export(['K-NumericIntegerDivide-51'/1]).
-export(['K-NumericIntegerDivide-52'/1]).
-export(['K-NumericIntegerDivide-53'/1]).
-export(['K2-NumericIntegerDivide-1'/1]).
-export(['K2-NumericIntegerDivide-2'/1]).
-export(['K2-NumericIntegerDivide-3'/1]).
-export(['K2-NumericIntegerDivide-4'/1]).
-export(['K2-NumericIntegerDivide-5'/1]).
-export(['K2-NumericIntegerDivide-6'/1]).
-export(['K2-NumericIntegerDivide-7'/1]).
-export(['K2-NumericIntegerDivide-8'/1]).
-export(['op-numeric-integer-dividefloat2args-1'/1]).
-export(['op-numeric-integer-dividefloat2args-2'/1]).
-export(['op-numeric-integer-dividefloat2args-3'/1]).
-export(['op-numeric-integer-dividefloat2args-4'/1]).
-export(['op-numeric-integer-dividefloat2args-5'/1]).
-export(['op-numeric-integer-dividedouble2args-1'/1]).
-export(['op-numeric-integer-dividedouble2args-2'/1]).
-export(['op-numeric-integer-dividedouble2args-3'/1]).
-export(['op-numeric-integer-dividedouble2args-4'/1]).
-export(['op-numeric-integer-dividedouble2args-5'/1]).
-export(['cbcl-numeric-idivide-001'/1]).
-export(['cbcl-numeric-idivide-002'/1]).
-export(['cbcl-numeric-idivide-003'/1]).
-export(['cbcl-numeric-idivide-004'/1]).
-export(['cbcl-numeric-idivide-005'/1]).
-export(['cbcl-numeric-idivide-006'/1]).
-export(['cbcl-numeric-idivide-007'/1]).
-export(['cbcl-numeric-idivide-008'/1]).
-export(['cbcl-numeric-idivide-009'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-integer-divideint2args-1',
   'op-numeric-integer-divideint2args-2',
   'op-numeric-integer-divideint2args-3',
   'op-numeric-integer-divideint2args-4',
   'op-numeric-integer-divideint2args-5',
   'op-numeric-integer-divideintg2args-1',
   'op-numeric-integer-divideintg2args-2',
   'op-numeric-integer-divideintg2args-3',
   'op-numeric-integer-divideintg2args-4',
   'op-numeric-integer-divideintg2args-5',
   'op-numeric-integer-dividedec2args-1',
   'op-numeric-integer-dividedec2args-2',
   'op-numeric-integer-dividedec2args-3',
   'op-numeric-integer-dividedec2args-4',
   'op-numeric-integer-dividedec2args-5',
   'op-numeric-integer-dividelng2args-1',
   'op-numeric-integer-dividelng2args-2',
   'op-numeric-integer-dividelng2args-3',
   'op-numeric-integer-dividelng2args-4',
   'op-numeric-integer-dividelng2args-5',
   'op-numeric-integer-divideusht2args-1',
   'op-numeric-integer-divideusht2args-2',
   'op-numeric-integer-dividenint2args-1',
   'op-numeric-integer-dividenint2args-2',
   'op-numeric-integer-dividenint2args-3',
   'op-numeric-integer-dividenint2args-4',
   'op-numeric-integer-dividenint2args-5',
   'op-numeric-integer-dividepint2args-1',
   'op-numeric-integer-dividepint2args-2',
   'op-numeric-integer-dividepint2args-3',
   'op-numeric-integer-dividepint2args-4',
   'op-numeric-integer-dividepint2args-5',
   'op-numeric-integer-divideulng2args-1',
   'op-numeric-integer-divideulng2args-2',
   'op-numeric-integer-dividenpi2args-1',
   'op-numeric-integer-dividenpi2args-2',
   'op-numeric-integer-dividenpi2args-3',
   'op-numeric-integer-dividenpi2args-4',
   'op-numeric-integer-dividenni2args-1',
   'op-numeric-integer-dividenni2args-2',
   'op-numeric-integer-dividesht2args-1',
   'op-numeric-integer-dividesht2args-2',
   'op-numeric-integer-dividesht2args-3',
   'op-numeric-integer-dividesht2args-4',
   'op-numeric-integer-dividesht2args-5',
   'op-numeric-integer-dividemix2args-1',
   'op-numeric-integer-dividemix2args-2',
   'op-numeric-integer-dividemix2args-3',
   'op-numeric-integer-dividemix2args-4',
   'op-numeric-integer-dividemix2args-5',
   'op-numeric-integer-dividemix2args-6',
   'op-numeric-integer-dividemix2args-7',
   'op-numeric-integer-dividemix2args-8',
   'op-numeric-integer-dividemix2args-9',
   'op-numeric-integer-dividemix2args-10',
   'op-numeric-integer-divide-1',
   'K-NumericIntegerDivide-1',
   'K-NumericIntegerDivide-2',
   'K-NumericIntegerDivide-3',
   'K-NumericIntegerDivide-4',
   'K-NumericIntegerDivide-5',
   'K-NumericIntegerDivide-6',
   'K-NumericIntegerDivide-7',
   'K-NumericIntegerDivide-8',
   'K-NumericIntegerDivide-9',
   'K-NumericIntegerDivide-10',
   'K-NumericIntegerDivide-11',
   'K-NumericIntegerDivide-12',
   'K-NumericIntegerDivide-13',
   'K-NumericIntegerDivide-14',
   'K-NumericIntegerDivide-15',
   'K-NumericIntegerDivide-16',
   'K-NumericIntegerDivide-17',
   'K-NumericIntegerDivide-18',
   'K-NumericIntegerDivide-19',
   'K-NumericIntegerDivide-20',
   'K-NumericIntegerDivide-21',
   'K-NumericIntegerDivide-22',
   'K-NumericIntegerDivide-23',
   'K-NumericIntegerDivide-24',
   'K-NumericIntegerDivide-25',
   'K-NumericIntegerDivide-26',
   'K-NumericIntegerDivide-27',
   'K-NumericIntegerDivide-28',
   'K-NumericIntegerDivide-29',
   'K-NumericIntegerDivide-30',
   'K-NumericIntegerDivide-31',
   'K-NumericIntegerDivide-32',
   'K-NumericIntegerDivide-33',
   'K-NumericIntegerDivide-34',
   'K-NumericIntegerDivide-35',
   'K-NumericIntegerDivide-36',
   'K-NumericIntegerDivide-37',
   'K-NumericIntegerDivide-38',
   'K-NumericIntegerDivide-39',
   'K-NumericIntegerDivide-40',
   'K-NumericIntegerDivide-41',
   'K-NumericIntegerDivide-42',
   'K-NumericIntegerDivide-43',
   'K-NumericIntegerDivide-44',
   'K-NumericIntegerDivide-45',
   'K-NumericIntegerDivide-46',
   'K-NumericIntegerDivide-47',
   'K-NumericIntegerDivide-48',
   'K-NumericIntegerDivide-49',
   'K-NumericIntegerDivide-50',
   'K-NumericIntegerDivide-51',
   'K-NumericIntegerDivide-52',
   'K-NumericIntegerDivide-53',
   'K2-NumericIntegerDivide-1',
   'K2-NumericIntegerDivide-2',
   'K2-NumericIntegerDivide-3',
   'K2-NumericIntegerDivide-4',
   'K2-NumericIntegerDivide-5',
   'K2-NumericIntegerDivide-6',
   'K2-NumericIntegerDivide-7',
   'K2-NumericIntegerDivide-8',
   'op-numeric-integer-dividefloat2args-1',
   'op-numeric-integer-dividefloat2args-2',
   'op-numeric-integer-dividefloat2args-3',
   'op-numeric-integer-dividefloat2args-4',
   'op-numeric-integer-dividefloat2args-5',
   'op-numeric-integer-dividedouble2args-1',
   'op-numeric-integer-dividedouble2args-2',
   'op-numeric-integer-dividedouble2args-3',
   'op-numeric-integer-dividedouble2args-4',
   'op-numeric-integer-dividedouble2args-5',
   'cbcl-numeric-idivide-001',
   'cbcl-numeric-idivide-002',
   'cbcl-numeric-idivide-003',
   'cbcl-numeric-idivide-004',
   'cbcl-numeric-idivide-005',
   'cbcl-numeric-idivide-006',
   'cbcl-numeric-idivide-007',
   'cbcl-numeric-idivide-008',
   'cbcl-numeric-idivide-009'].
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
'op-numeric-integer-divideint2args-1'(_Config) ->
   Qry = "xs:int(\"-2147483648\") idiv xs:int(\"-2147483648\")",
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
'op-numeric-integer-divideint2args-2'(_Config) ->
   Qry = "xs:int(\"-1873914410\") idiv xs:int(\"-2147483648\")",
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
'op-numeric-integer-divideint2args-3'(_Config) ->
   Qry = "xs:int(\"2147483647\") idiv xs:int(\"-2147483648\")",
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
'op-numeric-integer-divideint2args-4'(_Config) ->
   Qry = "xs:int(\"-2147483648\") idiv xs:int(\"-1873914410\")",
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
'op-numeric-integer-divideint2args-5'(_Config) ->
   Qry = "xs:int(\"-2147483648\") idiv xs:int(\"2147483647\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-divideintg2args-1'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") idiv xs:integer(\"-999999999999999999\")",
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
'op-numeric-integer-divideintg2args-2'(_Config) ->
   Qry = "xs:integer(\"830993497117024304\") idiv xs:integer(\"-999999999999999999\")",
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
'op-numeric-integer-divideintg2args-3'(_Config) ->
   Qry = "xs:integer(\"999999999999999999\") idiv xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-divideintg2args-4'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") idiv xs:integer(\"830993497117024304\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-divideintg2args-5'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") idiv xs:integer(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedec2args-1'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") idiv xs:decimal(\"-999999999999999999\")",
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
'op-numeric-integer-dividedec2args-2'(_Config) ->
   Qry = "xs:decimal(\"617375191608514839\") idiv xs:decimal(\"-999999999999999999\")",
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
'op-numeric-integer-dividedec2args-3'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") idiv xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedec2args-4'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") idiv xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedec2args-5'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") idiv xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividelng2args-1'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") idiv xs:long(\"-92233720368547758\")",
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
'op-numeric-integer-dividelng2args-2'(_Config) ->
   Qry = "xs:long(\"-47175562203048468\") idiv xs:long(\"-92233720368547758\")",
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
'op-numeric-integer-dividelng2args-3'(_Config) ->
   Qry = "xs:long(\"92233720368547758\") idiv xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividelng2args-4'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") idiv xs:long(\"-47175562203048468\")",
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
'op-numeric-integer-dividelng2args-5'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") idiv xs:long(\"92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-divideusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") idiv xs:unsignedShort(\"44633\")",
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
'op-numeric-integer-divideusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") idiv xs:unsignedShort(\"65535\")",
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
'op-numeric-integer-dividenint2args-1'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") idiv xs:negativeInteger(\"-999999999999999999\")",
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
'op-numeric-integer-dividenint2args-2'(_Config) ->
   Qry = "xs:negativeInteger(\"-297014075999096793\") idiv xs:negativeInteger(\"-999999999999999999\")",
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
'op-numeric-integer-dividenint2args-3'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") idiv xs:negativeInteger(\"-999999999999999999\")",
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
'op-numeric-integer-dividenint2args-4'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") idiv xs:negativeInteger(\"-297014075999096793\")",
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
'op-numeric-integer-dividenint2args-5'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") idiv xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividepint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") idiv xs:positiveInteger(\"1\")",
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
'op-numeric-integer-dividepint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") idiv xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividepint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") idiv xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividepint2args-4'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") idiv xs:positiveInteger(\"52704602390610033\")",
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
'op-numeric-integer-dividepint2args-5'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") idiv xs:positiveInteger(\"999999999999999999\")",
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
'op-numeric-integer-divideulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") idiv xs:unsignedLong(\"130747108607674654\")",
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
'op-numeric-integer-divideulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") idiv xs:unsignedLong(\"184467440737095516\")",
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
'op-numeric-integer-dividenpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") idiv xs:nonPositiveInteger(\"-999999999999999999\")",
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
'op-numeric-integer-dividenpi2args-2'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") idiv xs:nonPositiveInteger(\"-999999999999999999\")",
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
'op-numeric-integer-dividenpi2args-3'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") idiv xs:nonPositiveInteger(\"-999999999999999999\")",
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
'op-numeric-integer-dividenpi2args-4'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") idiv xs:nonPositiveInteger(\"-475688437271870490\")",
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
'op-numeric-integer-dividenni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") idiv xs:nonNegativeInteger(\"303884545991464527\")",
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
'op-numeric-integer-dividenni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") idiv xs:nonNegativeInteger(\"999999999999999999\")",
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
'op-numeric-integer-dividesht2args-1'(_Config) ->
   Qry = "xs:short(\"-32768\") idiv xs:short(\"-32768\")",
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
'op-numeric-integer-dividesht2args-2'(_Config) ->
   Qry = "xs:short(\"-5324\") idiv xs:short(\"-32768\")",
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
'op-numeric-integer-dividesht2args-3'(_Config) ->
   Qry = "xs:short(\"32767\") idiv xs:short(\"-32768\")",
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
'op-numeric-integer-dividesht2args-4'(_Config) ->
   Qry = "xs:short(\"-32768\") idiv xs:short(\"-5324\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividesht2args-5'(_Config) ->
   Qry = "xs:short(\"-32768\") idiv xs:short(\"32767\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividemix2args-1'(_Config) ->
   Qry = "() idiv 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividemix2args-2'(_Config) ->
   Qry = "1 idiv '1'",
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
'op-numeric-integer-dividemix2args-3'(_Config) ->
   Qry = "1 idiv xs:integer('1')",
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
'op-numeric-integer-dividemix2args-4'(_Config) ->
   Qry = "3 idiv <a> 2 </a>",
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
'op-numeric-integer-dividemix2args-5'(_Config) ->
   Qry = "1 idiv <a> <b> 2 </b> </a>",
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
'op-numeric-integer-dividemix2args-6'(_Config) ->
   Qry = "3 idiv <a> <b> 2</b> <c> 2</c> </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividemix2args-7'(_Config) ->
   Qry = "<a> 1 </a> idiv <b> 2 </b>",
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
'op-numeric-integer-dividemix2args-8'(_Config) ->
   Qry = "1 idiv <a> x </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividemix2args-9'(_Config) ->
   Qry = "1 idiv <a/>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividemix2args-10'(_Config) ->
   Qry = "1 idiv 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-divide-1'(_Config) ->
   Qry = "(0 div 0E0) idiv xs:integer(2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-1'(_Config) ->
   Qry = "(xs:decimal(6) idiv xs:integer(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-2'(_Config) ->
   Qry = "(xs:integer(6) idiv xs:decimal(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-3'(_Config) ->
   Qry = "(xs:integer(6) idiv xs:integer(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-4'(_Config) ->
   Qry = "(xs:decimal(6) idiv xs:decimal(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-5'(_Config) ->
   Qry = "(xs:decimal(6) idiv xs:decimal(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-6'(_Config) ->
   Qry = "(xs:float(6) idiv xs:decimal(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-7'(_Config) ->
   Qry = "(xs:decimal(6) idiv xs:float(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-8'(_Config) ->
   Qry = "(xs:float(6) idiv xs:integer(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-9'(_Config) ->
   Qry = "(xs:integer(6) idiv xs:float(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-10'(_Config) ->
   Qry = "(xs:float(6) idiv xs:float(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-11'(_Config) ->
   Qry = "(xs:decimal(6) idiv xs:double(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-12'(_Config) ->
   Qry = "(xs:double(6) idiv xs:decimal(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-13'(_Config) ->
   Qry = "(xs:double(6) idiv xs:float(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-14'(_Config) ->
   Qry = "(xs:float(6) idiv xs:double(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-15'(_Config) ->
   Qry = "(xs:double(6) idiv xs:integer(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-16'(_Config) ->
   Qry = "(xs:integer(6) idiv xs:double(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-17'(_Config) ->
   Qry = "(xs:double(6) idiv xs:double(2)) instance of xs:integer",
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
'K-NumericIntegerDivide-18'(_Config) ->
   Qry = "10 idiv 3 eq 3",
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
'K-NumericIntegerDivide-19'(_Config) ->
   Qry = "3 idiv -2 eq -1",
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
'K-NumericIntegerDivide-20'(_Config) ->
   Qry = "-3 idiv 2 eq -1",
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
'K-NumericIntegerDivide-21'(_Config) ->
   Qry = "-3 idiv -2 eq 1",
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
'K-NumericIntegerDivide-22'(_Config) ->
   Qry = "5.0 idiv 2.0 eq 2",
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
'K-NumericIntegerDivide-23'(_Config) ->
   Qry = "9.0 idiv 3 eq 3",
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
'K-NumericIntegerDivide-24'(_Config) ->
   Qry = "-3.5 idiv 3 eq -1",
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
'K-NumericIntegerDivide-25'(_Config) ->
   Qry = "3.0 idiv 4 eq 0",
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
'K-NumericIntegerDivide-26'(_Config) ->
   Qry = "3.1E1 idiv 6 eq 5",
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
'K-NumericIntegerDivide-27'(_Config) ->
   Qry = "3.1E1 idiv 7 eq 4",
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
'K-NumericIntegerDivide-28'(_Config) ->
   Qry = "(1.1 idiv 1) instance of xs:integer",
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
'K-NumericIntegerDivide-29'(_Config) ->
   Qry = "(xs:double(1.1) idiv 1.1) instance of xs:integer",
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
'K-NumericIntegerDivide-30'(_Config) ->
   Qry = "3 idiv 1.1 eq 2",
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
'K-NumericIntegerDivide-31'(_Config) ->
   Qry = "1 idiv xs:float(\"NaN\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-32'(_Config) ->
   Qry = "xs:float(\"NaN\") idiv 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-33'(_Config) ->
   Qry = "xs:float(\"INF\") idiv xs:float(3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-34'(_Config) ->
   Qry = "xs:float(\"-INF\") idiv xs:float(3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-35'(_Config) ->
   Qry = "xs:float(\"3\") idiv xs:float(\"INF\") eq xs:float(0)",
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
'K-NumericIntegerDivide-36'(_Config) ->
   Qry = "xs:float(\"3\") idiv xs:float(\"-INF\") eq xs:float(0)",
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
'K-NumericIntegerDivide-37'(_Config) ->
   Qry = "1 idiv xs:double(\"NaN\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-38'(_Config) ->
   Qry = "xs:double(\"NaN\") idiv 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-39'(_Config) ->
   Qry = "xs:double(\"INF\") idiv xs:double(3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-40'(_Config) ->
   Qry = "xs:double(\"-INF\") idiv xs:double(3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-41'(_Config) ->
   Qry = "xs:double(\"3\") idiv xs:double(\"INF\") eq xs:double(0)",
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
'K-NumericIntegerDivide-42'(_Config) ->
   Qry = "xs:double(\"3\") idiv xs:double(\"-INF\") eq xs:double(0)",
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
'K-NumericIntegerDivide-43'(_Config) ->
   Qry = "10idiv 3",
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
'K-NumericIntegerDivide-44'(_Config) ->
   Qry = "10 idiv3",
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
'K-NumericIntegerDivide-45'(_Config) ->
   Qry = "10idiv3",
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
'K-NumericIntegerDivide-46'(_Config) ->
   Qry = "\"3\" idiv \"3\"",
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
'K-NumericIntegerDivide-47'(_Config) ->
   Qry = "\"3\" idiv xs:float(3)",
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
'K-NumericIntegerDivide-48'(_Config) ->
   Qry = "(xs:untypedAtomic(\"9\") idiv xs:float(5)) eq 1",
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
'K-NumericIntegerDivide-49'(_Config) ->
   Qry = "(xs:float(9) idiv xs:untypedAtomic(\"5\")) eq 1",
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
'K-NumericIntegerDivide-50'(_Config) ->
   Qry = "(xs:untypedAtomic(\"nine\") idiv xs:float(5)) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-51'(_Config) ->
   Qry = "(xs:float(9) idiv xs:untypedAtomic(\"five\")) eq 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-52'(_Config) ->
   Qry = "empty(() idiv ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericIntegerDivide-53'(_Config) ->
   Qry = "empty(() idiv xs:decimal(1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-1'(_Config) ->
   Qry = "1 idiv 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-2'(_Config) ->
   Qry = "1 idiv 0.0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-3'(_Config) ->
   Qry = "1 idiv +0.0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-4'(_Config) ->
   Qry = "1 idiv -0.0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-5'(_Config) ->
   Qry = "1 idiv 0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-6'(_Config) ->
   Qry = "-1 idiv 0e0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-7'(_Config) ->
   Qry = "1 idiv xs:float(0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericIntegerDivide-8'(_Config) ->
   Qry = "-1 idiv xs:float(0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividefloat2args-1'(_Config) ->
   Qry = "xs:float(\"-INF\") idiv xs:float(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividefloat2args-2'(_Config) ->
   Qry = "xs:float(\"1\") idiv xs:float(\"NaN\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividefloat2args-3'(_Config) ->
   Qry = "xs:float(\"1\") idiv xs:float(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividefloat2args-4'(_Config) ->
   Qry = "xs:float(\"INF\") idiv xs:float(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividefloat2args-5'(_Config) ->
   Qry = "xs:float(\"-3.5\") idiv xs:float(\"3\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedouble2args-1'(_Config) ->
   Qry = "xs:double(\"-INF\") idiv xs:double(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedouble2args-2'(_Config) ->
   Qry = "xs:double(\"1\") idiv xs:double(\"NaN\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedouble2args-3'(_Config) ->
   Qry = "xs:double(\"1\") idiv xs:double(\"0.0E0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedouble2args-4'(_Config) ->
   Qry = "xs:double(\"INF\") idiv xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-integer-dividedouble2args-5'(_Config) ->
   Qry = "xs:double(\"12.78e-2\") idiv xs:double(\"3\")",
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
'cbcl-numeric-idivide-001'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; 
      	local:square(4294967296.0) idiv 0.0000000000005 gt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-idivide-002'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; 
      	local:square(1e100) idiv 5e-100",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"string-length(string($result)) gt 299") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> ct:fail('all-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-idivide-003'(_Config) ->
   Qry = "
      	declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; 
      	local:square(xs:float(1e30)) idiv xs:float(5e-30)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-idivide-004'(_Config) ->
   Qry = "
      	declare function local:integer($x as xs:decimal) { if ($x mod 1 eq 0) then xs:integer($x) else $x };
      	 (local:integer(2) idiv local:integer(2)) instance of xs:integer",
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
'cbcl-numeric-idivide-005'(_Config) ->
   Qry = "xs:integer(2) idiv xs:decimal(1)",
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
'cbcl-numeric-idivide-006'(_Config) ->
   Qry = "xs:float(1.5) idiv xs:decimal(1)",
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
'cbcl-numeric-idivide-007'(_Config) ->
   Qry = "xs:double(1.5) idiv xs:decimal(1)",
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
'cbcl-numeric-idivide-008'(_Config) ->
   Qry = "xs:float('1e38') idiv xs:float('1e-37')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAR0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-idivide-009'(_Config) ->
   Qry = "
      	declare function local:value($number as xs:boolean) { if ($number) then 1 else xs:string('1') }; 
      	local:value(true()) idiv local:value(true())
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> ct:fail('any-of') 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
