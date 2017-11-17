-module('prod_DecimalFormatDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['decimal-format-01'/1]).
-export(['decimal-format-02'/1]).
-export(['decimal-format-03'/1]).
-export(['decimal-format-04'/1]).
-export(['decimal-format-05'/1]).
-export(['decimal-format-06'/1]).
-export(['decimal-format-07'/1]).
-export(['decimal-format-09'/1]).
-export(['decimal-format-11'/1]).
-export(['decimal-format-12'/1]).
-export(['decimal-format-13'/1]).
-export(['decimal-format-14'/1]).
-export(['decimal-format-15'/1]).
-export(['decimal-format-16'/1]).
-export(['decimal-format-17'/1]).
-export(['decimal-format-18'/1]).
-export(['decimal-format-19'/1]).
-export(['decimal-format-20'/1]).
-export(['decimal-format-21'/1]).
-export(['decimal-format-31'/1]).
-export(['decimal-format-32'/1]).
-export(['decimal-format-33'/1]).
-export(['decimal-format-34'/1]).
-export(['decimal-format-35'/1]).
-export(['decimal-format-36'/1]).
-export(['decimal-format-37'/1]).
-export(['decimal-format-38'/1]).
-export(['decimal-format-39'/1]).
-export(['decimal-format-40'/1]).
-export(['decimal-format-901err'/1]).
-export(['decimal-format-902err'/1]).
-export(['decimal-format-903err'/1]).
-export(['decimal-format-904err'/1]).
-export(['decimal-format-905err'/1]).
-export(['decimal-format-906err'/1]).
-export(['decimal-format-907err'/1]).
-export(['decimal-format-908err'/1]).
-export(['decimal-format-909err'/1]).
-export(['decimal-format-910err'/1]).
-export(['decimal-format-911err'/1]).
-export(['decimal-format-912err'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3-test-suite/prod/DecimalFormatDecl/dfd-module-001.xq") catch _:_ -> ok end,Config.
all() -> [
   'decimal-format-01',
   'decimal-format-02',
   'decimal-format-03',
   'decimal-format-04',
   'decimal-format-05',
   'decimal-format-06',
   'decimal-format-07',
   'decimal-format-09',
   'decimal-format-11',
   'decimal-format-12',
   'decimal-format-13',
   'decimal-format-14',
   'decimal-format-15',
   'decimal-format-16',
   'decimal-format-17',
   'decimal-format-18',
   'decimal-format-19',
   'decimal-format-20',
   'decimal-format-21',
   'decimal-format-31',
   'decimal-format-32',
   'decimal-format-33',
   'decimal-format-34',
   'decimal-format-35',
   'decimal-format-36',
   'decimal-format-37',
   'decimal-format-38',
   'decimal-format-39',
   'decimal-format-40',
   'decimal-format-901err',
   'decimal-format-902err',
   'decimal-format-903err',
   'decimal-format-904err',
   'decimal-format-905err',
   'decimal-format-906err',
   'decimal-format-907err',
   'decimal-format-908err',
   'decimal-format-909err',
   'decimal-format-910err',
   'decimal-format-911err',
   'decimal-format-912err'].
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
].
'decimal-format-01'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit=\"0\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(2392.14*36.58,'000,000.000000')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "087,504.481200") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-02'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"#\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(12792.14*96.58,'##,###,000.000###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1,235,464.8812") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-03'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"-\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(2792.14*(-36.58),'000,000.000###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-102,136.4812") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-04'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"-\" pattern-separator=\";\" grouping-separator=\",\" decimal-separator=\".\";
      	format-number(2392.14*(-36.58),'000,000.000###;###,###.000###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "87,504.4812") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-05'(_Config) ->
   Qry = "
        declare decimal-format local:df minus-sign=\"-\" percent=\"%\" decimal-separator=\".\";
      	format-number(0.4857,'###.###%', 'local:df')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "48.57%") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-06'(_Config) ->
   Qry = "
        declare decimal-format local:df minus-sign=\"-\" per-mille=\"‰\" decimal-separator=\".\";
      	format-number(0.4857,'###.###‰')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "485.7‰") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-07'(_Config) ->
   Qry = "
        declare decimal-format local:df minus-sign=\"-\" currency-symbol=\"¤\" decimal-separator=\".\";
      	format-number(95.4857,'¤###.####', \"local:df\")",
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
'decimal-format-09'(_Config) ->
   Qry = "
         declare default decimal-format decimal-separator=\"|\" grouping-separator=\".\"; 
         format-number(931.4857,'000.000|###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "000.931|486") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-11'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";
        format-number(26931.4,'+!!!,!!!.!!!\\-!!,!!!.!!!')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "+26,931.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-12'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";
        format-number(-26931.4,'+!!,!!!.!!!\\-!!!,!!!.!!!')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-26,931.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-13'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"!\" pattern-separator=\"\\\";
        format-number(-26931.4,'!!!,!!!.!!!')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-26,931.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-14'(_Config) ->
   Qry = "
        declare decimal-format local:df2 infinity=\"off-the-scale\";
        format-number(1 div 0e0,'###############################', 'local:df2')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "off-the-scale") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-15'(_Config) ->
   Qry = "
        declare decimal-format local:df2 NaN=\"non-numeric\";
        format-number(number('none'), '#############', 'local:df2')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "non-numeric") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-16'(_Config) ->
   Qry = "
        declare default decimal-format  per-mille=\"m\";
        format-number(0.4857,'###.###m')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "485.7m") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-17'(_Config) ->
   Qry = "
        declare default decimal-format  minus-sign=\"_\";
        format-number(-26931.4,'+###,###.###;-###,###.###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-26,931.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-18'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"_\";
        format-number(-26931.4,'###,###.###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "_26,931.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-19'(_Config) ->
   Qry = "
        declare decimal-format myminus minus-sign=\"_\"; 
        concat(format-number(-26931.4,'###,###.###','myminus'), '/',
        format-number(-42857.1,'###,###.###'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "_26,931.4/-42,857.1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-20'(_Config) ->
   Qry = "
        declare namespace foo=\"http://foo.ns\";
        declare decimal-format foo:decimal1  decimal-separator=\"!\" grouping-separator=\"*\";
        declare decimal-format decimal1  decimal-separator=\"*\" grouping-separator=\"!\";
        format-number(1234.567,'#*###*###!###','foo:decimal1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1*234!567") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-21'(_Config) ->
   Qry = "
        import module namespace m=\"http://www.w3.org/TestModules/dfd-module-001\";
        declare decimal-format df001 grouping-separator=\"!\";
        format-number(123456.789,'#!###!###.###','df001')||'-'||m:do()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123!456.789-123'456.789") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-31'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator = \"^\";
        declare default decimal-format decimal-separator = \"^\";
      	true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0111") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-32'(_Config) ->
   Qry = "
        declare decimal-format fmt1 decimal-separator = \"^\";
        declare decimal-format fmt1 decimal-separator = \"^\";
      	true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0111") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-33'(_Config) ->
   Qry = "
        declare decimal-format fmt1 decimal-separator = \"^\";
        declare decimal-format fmt2 decimal-separator = \"~\";
      	concat (format-number(123.45, '9999^999', 'fmt1'), \" and \",
                format-number(123.45, '9999~999', 'fmt2'))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0123^450 and 0123~450") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-34'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator = \"^\" grouping-separator = \"\\\" decimal-separator = \"^\";
      	true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0114") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-35'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit = \"A\";
      	true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0097") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-36'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator = \"~\" grouping-separator = \"~\";
      	true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0098") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-37'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator = \",\";
      	true()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0098") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-38'(_Config) ->
   Qry = "
        declare default decimal-format decimal-sprtr = \".\";
      	true()
      ",
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
'decimal-format-39'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"-\";
        format-number(-26931.4,'###,###.###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-26,931.4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-40'(_Config) ->
   Qry = "
      declare default decimal-format NaN = \"0\";
      format-number(xs:double('NaN'),'###,###.###')",
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
'decimal-format-901err'(_Config) ->
   Qry = "
        declare default decimal-format decimal-separator=\"!\" grouping-separator=\"!\";
        format-number(931.4857,'###!###!###')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0098") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-902err'(_Config) ->
   Qry = "
        declare default decimal-format digit='$';
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-903err'(_Config) ->
   Qry = "
        declare default decimal-format digit='$';
        declare default decimal-format minus-sign='_';
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0111") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-904err'(_Config) ->
   Qry = "
        declare namespace a=\"http://a.com/\";
        declare namespace b=\"http://a.com/\";
        declare decimal-format a:one digit='$';
        declare decimal-format two digit='$';
        declare decimal-format three digit='$';
        declare decimal-format four digit='$';
        declare decimal-format five digit='$';
        declare decimal-format b:one minus-sign=\"_\";
        declare default decimal-format minus-sign='_';
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0111") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-905err'(_Config) ->
   Qry = "
        declare decimal-format q decimal-separator=\".\" grouping-separator=\",\";
        format-number(931.4857,'fred.ginger', 'q')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-906err'(_Config) ->
   Qry = "format-number(931.45, '000.##0', 'foo:bar')",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/prod/"}]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1280") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-907err'(_Config) ->
   Qry = "
        declare namespace a=\"http://a.com/\";
        declare namespace b=\"http://a.com/\";
        declare decimal-format a:one digit='$' zero-digit=\"0\" minus-sign=\"_\" digit=\"#\";
        format-number(931.4857,'000.$$0', 'a:one')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0114") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-908err'(_Config) ->
   Qry = "
        declare default decimal-format digit=\"one\";
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0097") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-909err'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit=\"1\";
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0097") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-910err'(_Config) ->
   Qry = "
        declare default decimal-format zero-digit=\"a\";
        format-number(931.4857,'aaa.$$a')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0097") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-911err'(_Config) ->
   Qry = "
        declare default decimal-format minus-sign=\"--\";
        format-number(931.4857,'000.$$0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0097") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'decimal-format-912err'(_Config) ->
   Qry = "
      declare default decimal-format decimal-separator = \"6\";
      true()
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0098") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
