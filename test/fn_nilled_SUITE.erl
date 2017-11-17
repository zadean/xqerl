-module('fn_nilled_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-nilled-1'/1]).
-export(['fn-nilled-2'/1]).
-export(['fn-nilled-3'/1]).
-export(['fn-nilled-4'/1]).
-export(['fn-nilled-5'/1]).
-export(['fn-nilled-6'/1]).
-export(['fn-nilled-7'/1]).
-export(['fn-nilled-8'/1]).
-export(['fn-nilled-9'/1]).
-export(['fn-nilled-10'/1]).
-export(['fn-nilled-11'/1]).
-export(['fn-nilled-12'/1]).
-export(['fn-nilled-13'/1]).
-export(['fn-nilled-14'/1]).
-export(['fn-nilled-15'/1]).
-export(['fn-nilled-16'/1]).
-export(['fn-nilled-17'/1]).
-export(['fn-nilled-18'/1]).
-export(['fn-nilled-19'/1]).
-export(['fn-nilled-20'/1]).
-export(['fn-nilled-21'/1]).
-export(['fn-nilled-22'/1]).
-export(['fn-nilled-23'/1]).
-export(['fn-nilled-24'/1]).
-export(['fn-nilled-25'/1]).
-export(['fn-nilled-26'/1]).
-export(['fn-nilled-27'/1]).
-export(['fn-nilled-28'/1]).
-export(['fn-nilled-29'/1]).
-export(['fn-nilled-30'/1]).
-export(['fn-nilled-31'/1]).
-export(['fn-nilled-32'/1]).
-export(['fn-nilled-33'/1]).
-export(['fn-nilled-34'/1]).
-export(['fn-nilled-35'/1]).
-export(['fn-nilled-36'/1]).
-export(['fn-nilled-37'/1]).
-export(['fn-nilled-38'/1]).
-export(['fn-nilled-39'/1]).
-export(['fn-nilled-40'/1]).
-export(['fn-nilled-41'/1]).
-export(['fn-nilled-42'/1]).
-export(['fn-nilled-43'/1]).
-export(['fn-nilled-44'/1]).
-export(['fn-nilled-45'/1]).
-export(['fn-nilled-46'/1]).
-export(['fn-nilled-47'/1]).
-export(['fn-nilled-48'/1]).
-export(['fn-nilled-49'/1]).
-export(['fn-nilled-50'/1]).
-export(['fn-nilled-51'/1]).
-export(['fn-nilled-52'/1]).
-export(['fn-nilled-53'/1]).
-export(['K-NilledFunc-1'/1]).
-export(['K-NilledFunc-2'/1]).
-export(['K-NilledFunc-3'/1]).
-export(['K-NilledFunc-4'/1]).
-export(['cbcl-nilled-001'/1]).
-export(['cbcl-nilled-002'/1]).
-export(['cbcl-nilled-003'/1]).
-export(['cbcl-nilled-004'/1]).
-export(['cbcl-nilled-005'/1]).
-export(['cbcl-nilled-006'/1]).
-export(['cbcl-nilled-007'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-nilled-1',
   'fn-nilled-2',
   'fn-nilled-3',
   'fn-nilled-4',
   'fn-nilled-5',
   'fn-nilled-6',
   'fn-nilled-7',
   'fn-nilled-8',
   'fn-nilled-9',
   'fn-nilled-10',
   'fn-nilled-11',
   'fn-nilled-12',
   'fn-nilled-13',
   'fn-nilled-14',
   'fn-nilled-15',
   'fn-nilled-16',
   'fn-nilled-17',
   'fn-nilled-18',
   'fn-nilled-19',
   'fn-nilled-20',
   'fn-nilled-21',
   'fn-nilled-22',
   'fn-nilled-23',
   'fn-nilled-24',
   'fn-nilled-25',
   'fn-nilled-26',
   'fn-nilled-27',
   'fn-nilled-28',
   'fn-nilled-29',
   'fn-nilled-30',
   'fn-nilled-31',
   'fn-nilled-32',
   'fn-nilled-33',
   'fn-nilled-34',
   'fn-nilled-35',
   'fn-nilled-36',
   'fn-nilled-37',
   'fn-nilled-38',
   'fn-nilled-39',
   'fn-nilled-40',
   'fn-nilled-41',
   'fn-nilled-42',
   'fn-nilled-43',
   'fn-nilled-44',
   'fn-nilled-45',
   'fn-nilled-46',
   'fn-nilled-47',
   'fn-nilled-48',
   'fn-nilled-49',
   'fn-nilled-50',
   'fn-nilled-51',
   'fn-nilled-52',
   'fn-nilled-53',
   'K-NilledFunc-1',
   'K-NilledFunc-2',
   'K-NilledFunc-3',
   'K-NilledFunc-4',
   'cbcl-nilled-001',
   'cbcl-nilled-002',
   'cbcl-nilled-003',
   'cbcl-nilled-004',
   'cbcl-nilled-005',
   'cbcl-nilled-006',
   'cbcl-nilled-007'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
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
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('nillable') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/nilled/nillable.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/nilled/nillable.xsd","http://www.w3.org/XQueryTest/nillable"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest/nillable",""}]},
{resources, []},
{modules, []}
];
environment('nillable-Q') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/nilled/nillable.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/nilled/nillable.xsd","http://www.w3.org/XQueryTest/nillable"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('validate') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/nilled/validate.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/nilled/validate.xsd","http://www.w3.org/XQueryTest/testcases"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/fn/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-nilled-1'(_Config) ->
   Qry = "fn:count(fn:nilled(()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-2'(_Config) ->
   Qry = " fn:count(fn:nilled(/works[1]/employee[2]/child::text()[last()]))",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-3'(_Config) ->
   Qry = " fn:nilled(/works[1]/employee[2])",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-4'(_Config) ->
   Qry = " fn:nilled(<shoe size = \"5\"/>)",
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
'fn-nilled-5'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"true\"/>)",
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
'fn-nilled-6'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"false\"/>)",
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
'fn-nilled-7'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>)",
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
'fn-nilled-8'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:false()}\"/>)",
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
'fn-nilled-9'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>,\"A Second Argument\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-10'(_Config) ->
   Qry = " fn:not(fn:nilled(<shoe xsi:nil=\"{fn:false()}\"/>))",
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
'fn-nilled-11'(_Config) ->
   Qry = " fn:not(fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>))",
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
'fn-nilled-12'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) and fn:true()",
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
'fn-nilled-13'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) and fn:false()",
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
'fn-nilled-14'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) or fn:true()",
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
'fn-nilled-15'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) or fn:false()",
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
'fn-nilled-16'(_Config) ->
   Qry = " fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>) ",
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
'fn-nilled-17'(_Config) ->
   Qry = " xs:boolean(fn:nilled(<shoe xsi:nil=\"{fn:true()}\"/>))",
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
'fn-nilled-18'(_Config) ->
   Qry = " xs:boolean(fn:nilled(<shoe xsi:nil=\"{fn:false()}\"/>))",
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
'fn-nilled-19'(_Config) ->
   Qry = " fn:nilled(document {<aList><anElement>data</anElement></aList>})",
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
'fn-nilled-20'(_Config) ->
   Qry = " fn:nilled(attribute size {1})",
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
'fn-nilled-21'(_Config) ->
   Qry = " fn:nilled(<!-- This is a comment node -->)",
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
'fn-nilled-22'(_Config) ->
   Qry = " fn:nilled(<?format role=\"output\" ?>)",
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
'fn-nilled-23'(_Config) ->
   Qry = "nilled()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-24'(_Config) ->
   Qry = "/*/nilled()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-25'(_Config) ->
   Qry = "/works/employee[1]/@gender/nilled()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-26'(_Config) ->
   Qry = "/works/employee[1]/empnum/text()/nilled()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-27'(_Config) ->
   Qry = " (<shoe xsi:nil=\"true\"/>)/fn:nilled()",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-28'(_Config) ->
   Qry = "23[nilled()]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-29'(_Config) ->
   Qry = "nilled#0[nilled()]",
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-30'(_Config) ->
   Qry = "current-date() gt current-date()+xs:dayTimeDuration('P1D') or nilled()",
   {Env,Opts} = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-nilled-31'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-32'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-33'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-34'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-35'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-36'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-37'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-38'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-39'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-40'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-41'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-42'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-43'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-44'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-45'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-46'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-47'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-48'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-49'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-50'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-51'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-52'(_Config) ->
   {skip,"Validation Environment"}.
'fn-nilled-53'(_Config) ->
   {skip,"Validation Environment"}.
'K-NilledFunc-1'(_Config) ->
   {skip,"XP20 XQ10"}.
'K-NilledFunc-2'(_Config) ->
   Qry = "nilled((), \"wrong param\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NilledFunc-3'(_Config) ->
   Qry = "empty(nilled( () ))",
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
'K-NilledFunc-4'(_Config) ->
   Qry = "nilled(1)",
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
'cbcl-nilled-001'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-nilled-002'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-nilled-003'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-nilled-004'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-nilled-005'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-nilled-006'(_Config) ->
   {skip,"Validation Environment"}.
'cbcl-nilled-007'(_Config) ->
   Qry = "
      	empty(nilled( <?foo ?> ))
      ",
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
