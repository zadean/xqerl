-module('fn_normalize_unicode_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-normalize-unicode1args-1'/1]).
-export(['fn-normalize-unicode1args-2'/1]).
-export(['fn-normalize-unicode1args-3'/1]).
-export(['fn-normalize-unicode1args-4'/1]).
-export(['fn-normalize-unicode1args-5'/1]).
-export(['fn-normalize-unicode1args-6'/1]).
-export(['fn-normalize-unicode1args-7'/1]).
-export(['fn-normalize-unicode1args-8'/1]).
-export(['fn-normalize-unicode2args-1'/1]).
-export(['fn-normalize-unicode2args-2'/1]).
-export(['fn-normalize-unicode2args-3'/1]).
-export(['fn-normalize-unicode2args-4'/1]).
-export(['fn-normalize-unicode2args-5'/1]).
-export(['fn-normalize-unicode2args-6'/1]).
-export(['fn-normalize-unicode-1'/1]).
-export(['fn-normalize-unicode-2'/1]).
-export(['fn-normalize-unicode-3'/1]).
-export(['fn-normalize-unicode-4'/1]).
-export(['fn-normalize-unicode-5'/1]).
-export(['fn-normalize-unicode-6'/1]).
-export(['fn-normalize-unicode-7'/1]).
-export(['fn-normalize-unicode-8'/1]).
-export(['fn-normalize-unicode-9'/1]).
-export(['fn-normalize-unicode-10'/1]).
-export(['fn-normalize-unicode-11'/1]).
-export(['fn-normalize-unicode-11-6-0'/1]).
-export(['fn-normalize-unicode-11-6-2'/1]).
-export(['K-NormalizeUnicodeFunc-1'/1]).
-export(['K-NormalizeUnicodeFunc-2'/1]).
-export(['K-NormalizeUnicodeFunc-3'/1]).
-export(['K-NormalizeUnicodeFunc-4'/1]).
-export(['K-NormalizeUnicodeFunc-5'/1]).
-export(['K-NormalizeUnicodeFunc-6'/1]).
-export(['K-NormalizeUnicodeFunc-7'/1]).
-export(['K-NormalizeUnicodeFunc-8'/1]).
-export(['K-NormalizeUnicodeFunc-9'/1]).
-export(['K-NormalizeUnicodeFunc-10'/1]).
-export(['K-NormalizeUnicodeFunc-11'/1]).
-export(['K-NormalizeUnicodeFunc-12'/1]).
-export(['K-NormalizeUnicodeFunc-13'/1]).
-export(['cbcl-fn-normalize-unicode-001'/1]).
-export(['cbcl-fn-normalize-unicode-001a'/1]).
-export(['cbcl-fn-normalize-unicode-002'/1]).
-export(['cbcl-fn-normalize-unicode-003'/1]).
-export(['cbcl-fn-normalize-unicode-004'/1]).
-export(['cbcl-fn-normalize-unicode-005'/1]).
-export(['cbcl-fn-normalize-unicode-006'/1]).
-export(['cbcl-fn-normalize-unicode-006a'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-normalize-unicode1args-1',
   'fn-normalize-unicode1args-2',
   'fn-normalize-unicode1args-3',
   'fn-normalize-unicode1args-4',
   'fn-normalize-unicode1args-5',
   'fn-normalize-unicode1args-6',
   'fn-normalize-unicode1args-7',
   'fn-normalize-unicode1args-8',
   'fn-normalize-unicode2args-1',
   'fn-normalize-unicode2args-2',
   'fn-normalize-unicode2args-3',
   'fn-normalize-unicode2args-4',
   'fn-normalize-unicode2args-5',
   'fn-normalize-unicode2args-6',
   'fn-normalize-unicode-1',
   'fn-normalize-unicode-2',
   'fn-normalize-unicode-3',
   'fn-normalize-unicode-4',
   'fn-normalize-unicode-5',
   'fn-normalize-unicode-6',
   'fn-normalize-unicode-7',
   'fn-normalize-unicode-8',
   'fn-normalize-unicode-9',
   'fn-normalize-unicode-10',
   'fn-normalize-unicode-11',
   'fn-normalize-unicode-11-6-0',
   'fn-normalize-unicode-11-6-2',
   'K-NormalizeUnicodeFunc-1',
   'K-NormalizeUnicodeFunc-2',
   'K-NormalizeUnicodeFunc-3',
   'K-NormalizeUnicodeFunc-4',
   'K-NormalizeUnicodeFunc-5',
   'K-NormalizeUnicodeFunc-6',
   'K-NormalizeUnicodeFunc-7',
   'K-NormalizeUnicodeFunc-8',
   'K-NormalizeUnicodeFunc-9',
   'K-NormalizeUnicodeFunc-10',
   'K-NormalizeUnicodeFunc-11',
   'K-NormalizeUnicodeFunc-12',
   'K-NormalizeUnicodeFunc-13',
   'cbcl-fn-normalize-unicode-001',
   'cbcl-fn-normalize-unicode-001a',
   'cbcl-fn-normalize-unicode-002',
   'cbcl-fn-normalize-unicode-003',
   'cbcl-fn-normalize-unicode-004',
   'cbcl-fn-normalize-unicode-005',
   'cbcl-fn-normalize-unicode-006',
   'cbcl-fn-normalize-unicode-006a'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
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
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-normalize-unicode1args-1'(_Config) ->
   Qry = "normalize-unicode('Nothing to normalize.')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Nothing to normalize.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode1args-2'(_Config) ->
   Qry = "normalize-unicode(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode1args-3'(_Config) ->
   Qry = "matches('Ǻ', normalize-unicode('Ǻ'))",
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
'fn-normalize-unicode1args-4'(_Config) ->
   Qry = "matches('Å', normalize-unicode('Å'))",
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
'fn-normalize-unicode1args-5'(_Config) ->
   Qry = "matches('Å', normalize-unicode('Å'))",
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
'fn-normalize-unicode1args-6'(_Config) ->
   Qry = "(normalize-unicode('Å') eq normalize-unicode('Å'))",
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
'fn-normalize-unicode1args-7'(_Config) ->
   Qry = "normalize-unicode(12)",
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
'fn-normalize-unicode1args-8'(_Config) ->
   Qry = "normalize-unicode('','','')",
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
'fn-normalize-unicode2args-1'(_Config) ->
   Qry = "normalize-unicode('Nothing to normalize.', 'NFC')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Nothing to normalize.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode2args-2'(_Config) ->
   Qry = "normalize-unicode('Nothing to normalize.', 'nFc')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Nothing to normalize.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode2args-3'(_Config) ->
   Qry = "normalize-unicode((), 'NFC')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode2args-4'(_Config) ->
   Qry = "(normalize-unicode('Å', '') eq normalize-unicode('Å', ''))",
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
'fn-normalize-unicode2args-5'(_Config) ->
   Qry = "normalize-unicode('',())",
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
'fn-normalize-unicode2args-6'(_Config) ->
   Qry = "normalize-unicode('',12)",
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
'fn-normalize-unicode-1'(_Config) ->
   Qry = "fn:concat(fn:normalize-unicode(\"Å\",\" NFC \"),fn:normalize-unicode(\"Å\",\"NFC\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ÅÅ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-2'(_Config) ->
   Qry = "fn:normalize-unicode(\"è\",\"chancesareyoudonotsupportthis123ifyoudowaoo\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-3'(_Config) ->
   Qry = "fn:upper-case(fn:normalize-unicode(\"normalizedstring\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NORMALIZEDSTRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-4'(_Config) ->
   Qry = "fn:lower-case(fn:normalize-unicode(\"NORMALIZEDSTRING\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "normalizedstring") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-5'(_Config) ->
   Qry = "fn:string-length(fn:normalize-unicode(\"NORMALIZEDSTRING\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "16") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-6'(_Config) ->
   Qry = "fn:concat(fn:normalize-unicode(\"NORMALIZEDSTRING\"),\"another string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NORMALIZEDSTRINGanother string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-7'(_Config) ->
   Qry = "fn:substring(fn:normalize-unicode(\"NORMALIZEDSTRING\"),5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ALIZEDSTRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-8'(_Config) ->
   Qry = "string-to-codepoints(normalize-unicode('﷐'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "64976") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-9'(_Config) ->
   Qry = "string-to-codepoints(fn:normalize-unicode('ê﷐ê﷐ê'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"234, 64976, 234, 64976, 234") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-10'(_Config) ->
   Qry = "string-to-codepoints(fn:normalize-unicode('e﷐̂'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"101, 64976, 770") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-11'(_Config) ->
   Qry = "(: Name: fn-normalize-unicode-11 :)
(: Description: Bug 7935: normalize-unicode() applied to unassigned codepoints :)
(: Result should be empty, indicating that normalization is idempotent on these characters :)

declare variable $Cn := 
   (: derived from the Unicode 5.2 database - essentially a list of characters that are legal
    in XML but undefined in Unicode :)
   (: queries for other Unicode versions can be generated using the stylesheet generator-for-test-11.xsl
    in the containing directory :)
   <Cn>
      <range from=\"888\" to=\"889\"/>
      <range from=\"895\" to=\"899\"/>
      <range from=\"907\" to=\"907\"/>
      <range from=\"909\" to=\"909\"/>
      <range from=\"930\" to=\"930\"/>
      <range from=\"1318\" to=\"1328\"/>
      <range from=\"1367\" to=\"1368\"/>
      <range from=\"1376\" to=\"1376\"/>
      <range from=\"1416\" to=\"1416\"/>
      <range from=\"1419\" to=\"1424\"/>
      <range from=\"1480\" to=\"1487\"/>
      <range from=\"1515\" to=\"1519\"/>
      <range from=\"1525\" to=\"1535\"/>
      <range from=\"1540\" to=\"1541\"/>
      <range from=\"1564\" to=\"1565\"/>
      <range from=\"1568\" to=\"1568\"/>
      <range from=\"1631\" to=\"1631\"/>
      <range from=\"1806\" to=\"1806\"/>
      <range from=\"1867\" to=\"1868\"/>
      <range from=\"1970\" to=\"1983\"/>
      <range from=\"2043\" to=\"2047\"/>
      <range from=\"2094\" to=\"2095\"/>
      <range from=\"2111\" to=\"2303\"/>
      <range from=\"2362\" to=\"2363\"/>
      <range from=\"2383\" to=\"2383\"/>
      <range from=\"2390\" to=\"2391\"/>
      <range from=\"2419\" to=\"2424\"/>
      <range from=\"2432\" to=\"2432\"/>
      <range from=\"2436\" to=\"2436\"/>
      <range from=\"2445\" to=\"2446\"/>
      <range from=\"2449\" to=\"2450\"/>
      <range from=\"2473\" to=\"2473\"/>
      <range from=\"2481\" to=\"2481\"/>
      <range from=\"2483\" to=\"2485\"/>
      <range from=\"2490\" to=\"2491\"/>
      <range from=\"2501\" to=\"2502\"/>
      <range from=\"2505\" to=\"2506\"/>
      <range from=\"2511\" to=\"2518\"/>
      <range from=\"2520\" to=\"2523\"/>
      <range from=\"2526\" to=\"2526\"/>
      <range from=\"2532\" to=\"2533\"/>
      <range from=\"2556\" to=\"2560\"/>
      <range from=\"2564\" to=\"2564\"/>
      <range from=\"2571\" to=\"2574\"/>
      <range from=\"2577\" to=\"2578\"/>
      <range from=\"2601\" to=\"2601\"/>
      <range from=\"2609\" to=\"2609\"/>
      <range from=\"2612\" to=\"2612\"/>
      <range from=\"2615\" to=\"2615\"/>
      <range from=\"2618\" to=\"2619\"/>
      <range from=\"2621\" to=\"2621\"/>
      <range from=\"2627\" to=\"2630\"/>
      <range from=\"2633\" to=\"2634\"/>
      <range from=\"2638\" to=\"2640\"/>
      <range from=\"2642\" to=\"2648\"/>
      <range from=\"2653\" to=\"2653\"/>
      <range from=\"2655\" to=\"2661\"/>
      <range from=\"2678\" to=\"2688\"/>
      <range from=\"2692\" to=\"2692\"/>
      <range from=\"2702\" to=\"2702\"/>
      <range from=\"2706\" to=\"2706\"/>
      <range from=\"2729\" to=\"2729\"/>
      <range from=\"2737\" to=\"2737\"/>
      <range from=\"2740\" to=\"2740\"/>
      <range from=\"2746\" to=\"2747\"/>
      <range from=\"2758\" to=\"2758\"/>
      <range from=\"2762\" to=\"2762\"/>
      <range from=\"2766\" to=\"2767\"/>
      <range from=\"2769\" to=\"2783\"/>
      <range from=\"2788\" to=\"2789\"/>
      <range from=\"2800\" to=\"2800\"/>
      <range from=\"2802\" to=\"2816\"/>
      <range from=\"2820\" to=\"2820\"/>
      <range from=\"2829\" to=\"2830\"/>
      <range from=\"2833\" to=\"2834\"/>
      <range from=\"2857\" to=\"2857\"/>
      <range from=\"2865\" to=\"2865\"/>
      <range from=\"2868\" to=\"2868\"/>
      <range from=\"2874\" to=\"2875\"/>
      <range from=\"2885\" to=\"2886\"/>
      <range from=\"2889\" to=\"2890\"/>
      <range from=\"2894\" to=\"2901\"/>
      <range from=\"2904\" to=\"2907\"/>
      <range from=\"2910\" to=\"2910\"/>
      <range from=\"2916\" to=\"2917\"/>
      <range from=\"2930\" to=\"2945\"/>
      <range from=\"2948\" to=\"2948\"/>
      <range from=\"2955\" to=\"2957\"/>
      <range from=\"2961\" to=\"2961\"/>
      <range from=\"2966\" to=\"2968\"/>
      <range from=\"2971\" to=\"2971\"/>
      <range from=\"2973\" to=\"2973\"/>
      <range from=\"2976\" to=\"2978\"/>
      <range from=\"2981\" to=\"2983\"/>
      <range from=\"2987\" to=\"2989\"/>
      <range from=\"3002\" to=\"3005\"/>
      <range from=\"3011\" to=\"3013\"/>
      <range from=\"3017\" to=\"3017\"/>
      <range from=\"3022\" to=\"3023\"/>
      <range from=\"3025\" to=\"3030\"/>
      <range from=\"3032\" to=\"3045\"/>
      <range from=\"3067\" to=\"3072\"/>
      <range from=\"3076\" to=\"3076\"/>
      <range from=\"3085\" to=\"3085\"/>
      <range from=\"3089\" to=\"3089\"/>
      <range from=\"3113\" to=\"3113\"/>
      <range from=\"3124\" to=\"3124\"/>
      <range from=\"3130\" to=\"3132\"/>
      <range from=\"3141\" to=\"3141\"/>
      <range from=\"3145\" to=\"3145\"/>
      <range from=\"3150\" to=\"3156\"/>
      <range from=\"3159\" to=\"3159\"/>
      <range from=\"3162\" to=\"3167\"/>
      <range from=\"3172\" to=\"3173\"/>
      <range from=\"3184\" to=\"3191\"/>
      <range from=\"3200\" to=\"3201\"/>
      <range from=\"3204\" to=\"3204\"/>
      <range from=\"3213\" to=\"3213\"/>
      <range from=\"3217\" to=\"3217\"/>
      <range from=\"3241\" to=\"3241\"/>
      <range from=\"3252\" to=\"3252\"/>
      <range from=\"3258\" to=\"3259\"/>
      <range from=\"3269\" to=\"3269\"/>
      <range from=\"3273\" to=\"3273\"/>
      <range from=\"3278\" to=\"3284\"/>
      <range from=\"3287\" to=\"3293\"/>
      <range from=\"3295\" to=\"3295\"/>
      <range from=\"3300\" to=\"3301\"/>
      <range from=\"3312\" to=\"3312\"/>
      <range from=\"3315\" to=\"3329\"/>
      <range from=\"3332\" to=\"3332\"/>
      <range from=\"3341\" to=\"3341\"/>
      <range from=\"3345\" to=\"3345\"/>
      <range from=\"3369\" to=\"3369\"/>
      <range from=\"3386\" to=\"3388\"/>
      <range from=\"3397\" to=\"3397\"/>
      <range from=\"3401\" to=\"3401\"/>
      <range from=\"3406\" to=\"3414\"/>
      <range from=\"3416\" to=\"3423\"/>
      <range from=\"3428\" to=\"3429\"/>
      <range from=\"3446\" to=\"3448\"/>
      <range from=\"3456\" to=\"3457\"/>
      <range from=\"3460\" to=\"3460\"/>
      <range from=\"3479\" to=\"3481\"/>
      <range from=\"3506\" to=\"3506\"/>
      <range from=\"3516\" to=\"3516\"/>
      <range from=\"3518\" to=\"3519\"/>
      <range from=\"3527\" to=\"3529\"/>
      <range from=\"3531\" to=\"3534\"/>
      <range from=\"3541\" to=\"3541\"/>
      <range from=\"3543\" to=\"3543\"/>
      <range from=\"3552\" to=\"3569\"/>
      <range from=\"3573\" to=\"3584\"/>
      <range from=\"3643\" to=\"3646\"/>
      <range from=\"3676\" to=\"3712\"/>
      <range from=\"3715\" to=\"3715\"/>
      <range from=\"3717\" to=\"3718\"/>
      <range from=\"3721\" to=\"3721\"/>
      <range from=\"3723\" to=\"3724\"/>
      <range from=\"3726\" to=\"3731\"/>
      <range from=\"3736\" to=\"3736\"/>
      <range from=\"3744\" to=\"3744\"/>
      <range from=\"3748\" to=\"3748\"/>
      <range from=\"3750\" to=\"3750\"/>
      <range from=\"3752\" to=\"3753\"/>
      <range from=\"3756\" to=\"3756\"/>
      <range from=\"3770\" to=\"3770\"/>
      <range from=\"3774\" to=\"3775\"/>
      <range from=\"3781\" to=\"3781\"/>
      <range from=\"3783\" to=\"3783\"/>
      <range from=\"3790\" to=\"3791\"/>
      <range from=\"3802\" to=\"3803\"/>
      <range from=\"3806\" to=\"3839\"/>
      <range from=\"3912\" to=\"3912\"/>
      <range from=\"3949\" to=\"3952\"/>
      <range from=\"3980\" to=\"3983\"/>
      <range from=\"3992\" to=\"3992\"/>
      <range from=\"4029\" to=\"4029\"/>
      <range from=\"4045\" to=\"4045\"/>
      <range from=\"4057\" to=\"4095\"/>
      <range from=\"4294\" to=\"4303\"/>
      <range from=\"4349\" to=\"4351\"/>
      <range from=\"4681\" to=\"4681\"/>
      <range from=\"4686\" to=\"4687\"/>
      <range from=\"4695\" to=\"4695\"/>
      <range from=\"4697\" to=\"4697\"/>
      <range from=\"4702\" to=\"4703\"/>
      <range from=\"4745\" to=\"4745\"/>
      <range from=\"4750\" to=\"4751\"/>
      <range from=\"4785\" to=\"4785\"/>
      <range from=\"4790\" to=\"4791\"/>
      <range from=\"4799\" to=\"4799\"/>
      <range from=\"4801\" to=\"4801\"/>
      <range from=\"4806\" to=\"4807\"/>
      <range from=\"4823\" to=\"4823\"/>
      <range from=\"4881\" to=\"4881\"/>
      <range from=\"4886\" to=\"4887\"/>
      <range from=\"4955\" to=\"4958\"/>
      <range from=\"4989\" to=\"4991\"/>
      <range from=\"5018\" to=\"5023\"/>
      <range from=\"5109\" to=\"5119\"/>
      <range from=\"5789\" to=\"5791\"/>
      <range from=\"5873\" to=\"5887\"/>
      <range from=\"5901\" to=\"5901\"/>
      <range from=\"5909\" to=\"5919\"/>
      <range from=\"5943\" to=\"5951\"/>
      <range from=\"5972\" to=\"5983\"/>
      <range from=\"5997\" to=\"5997\"/>
      <range from=\"6001\" to=\"6001\"/>
      <range from=\"6004\" to=\"6015\"/>
      <range from=\"6110\" to=\"6111\"/>
      <range from=\"6122\" to=\"6127\"/>
      <range from=\"6138\" to=\"6143\"/>
      <range from=\"6159\" to=\"6159\"/>
      <range from=\"6170\" to=\"6175\"/>
      <range from=\"6264\" to=\"6271\"/>
      <range from=\"6315\" to=\"6319\"/>
      <range from=\"6390\" to=\"6399\"/>
      <range from=\"6429\" to=\"6431\"/>
      <range from=\"6444\" to=\"6447\"/>
      <range from=\"6460\" to=\"6463\"/>
      <range from=\"6465\" to=\"6467\"/>
      <range from=\"6510\" to=\"6511\"/>
      <range from=\"6517\" to=\"6527\"/>
      <range from=\"6572\" to=\"6575\"/>
      <range from=\"6602\" to=\"6607\"/>
      <range from=\"6619\" to=\"6621\"/>
      <range from=\"6684\" to=\"6685\"/>
      <range from=\"6751\" to=\"6751\"/>
      <range from=\"6781\" to=\"6782\"/>
      <range from=\"6794\" to=\"6799\"/>
      <range from=\"6810\" to=\"6815\"/>
      <range from=\"6830\" to=\"6911\"/>
      <range from=\"6988\" to=\"6991\"/>
      <range from=\"7037\" to=\"7039\"/>
      <range from=\"7083\" to=\"7085\"/>
      <range from=\"7098\" to=\"7167\"/>
      <range from=\"7224\" to=\"7226\"/>
      <range from=\"7242\" to=\"7244\"/>
      <range from=\"7296\" to=\"7375\"/>
      <range from=\"7411\" to=\"7423\"/>
      <range from=\"7655\" to=\"7676\"/>
      <range from=\"7958\" to=\"7959\"/>
      <range from=\"7966\" to=\"7967\"/>
      <range from=\"8006\" to=\"8007\"/>
      <range from=\"8014\" to=\"8015\"/>
      <range from=\"8024\" to=\"8024\"/>
      <range from=\"8026\" to=\"8026\"/>
      <range from=\"8028\" to=\"8028\"/>
      <range from=\"8030\" to=\"8030\"/>
      <range from=\"8062\" to=\"8063\"/>
      <range from=\"8117\" to=\"8117\"/>
      <range from=\"8133\" to=\"8133\"/>
      <range from=\"8148\" to=\"8149\"/>
      <range from=\"8156\" to=\"8156\"/>
      <range from=\"8176\" to=\"8177\"/>
      <range from=\"8181\" to=\"8181\"/>
      <range from=\"8191\" to=\"8191\"/>
      <range from=\"8293\" to=\"8297\"/>
      <range from=\"8306\" to=\"8307\"/>
      <range from=\"8335\" to=\"8335\"/>
      <range from=\"8341\" to=\"8351\"/>
      <range from=\"8377\" to=\"8399\"/>
      <range from=\"8433\" to=\"8447\"/>
      <range from=\"8586\" to=\"8591\"/>
      <range from=\"9193\" to=\"9215\"/>
      <range from=\"9255\" to=\"9279\"/>
      <range from=\"9291\" to=\"9311\"/>
      <range from=\"9934\" to=\"9934\"/>
      <range from=\"9954\" to=\"9954\"/>
      <range from=\"9956\" to=\"9959\"/>
      <range from=\"9984\" to=\"9984\"/>
      <range from=\"9989\" to=\"9989\"/>
      <range from=\"9994\" to=\"9995\"/>
      <range from=\"10024\" to=\"10024\"/>
      <range from=\"10060\" to=\"10060\"/>
      <range from=\"10062\" to=\"10062\"/>
      <range from=\"10067\" to=\"10069\"/>
      <range from=\"10079\" to=\"10080\"/>
      <range from=\"10133\" to=\"10135\"/>
      <range from=\"10160\" to=\"10160\"/>
      <range from=\"10175\" to=\"10175\"/>
      <range from=\"10187\" to=\"10187\"/>
      <range from=\"10189\" to=\"10191\"/>
      <range from=\"11085\" to=\"11087\"/>
      <range from=\"11098\" to=\"11263\"/>
      <range from=\"11311\" to=\"11311\"/>
      <range from=\"11359\" to=\"11359\"/>
      <range from=\"11506\" to=\"11512\"/>
      <range from=\"11558\" to=\"11567\"/>
      <range from=\"11622\" to=\"11630\"/>
      <range from=\"11632\" to=\"11647\"/>
      <range from=\"11671\" to=\"11679\"/>
      <range from=\"11687\" to=\"11687\"/>
      <range from=\"11695\" to=\"11695\"/>
      <range from=\"11703\" to=\"11703\"/>
      <range from=\"11711\" to=\"11711\"/>
      <range from=\"11719\" to=\"11719\"/>
      <range from=\"11727\" to=\"11727\"/>
      <range from=\"11735\" to=\"11735\"/>
      <range from=\"11743\" to=\"11743\"/>
      <range from=\"11826\" to=\"11903\"/>
      <range from=\"11930\" to=\"11930\"/>
      <range from=\"12020\" to=\"12031\"/>
      <range from=\"12246\" to=\"12271\"/>
      <range from=\"12284\" to=\"12287\"/>
      <range from=\"12352\" to=\"12352\"/>
      <range from=\"12439\" to=\"12440\"/>
      <range from=\"12544\" to=\"12548\"/>
      <range from=\"12590\" to=\"12592\"/>
      <range from=\"12687\" to=\"12687\"/>
      <range from=\"12728\" to=\"12735\"/>
      <range from=\"12772\" to=\"12783\"/>
      <range from=\"12831\" to=\"12831\"/>
      <range from=\"13055\" to=\"13055\"/>
      <range from=\"19894\" to=\"19903\"/>
      <range from=\"40908\" to=\"40959\"/>
      <range from=\"42125\" to=\"42127\"/>
      <range from=\"42183\" to=\"42191\"/>
      <range from=\"42540\" to=\"42559\"/>
      <range from=\"42592\" to=\"42593\"/>
      <range from=\"42612\" to=\"42619\"/>
      <range from=\"42648\" to=\"42655\"/>
      <range from=\"42744\" to=\"42751\"/>
      <range from=\"42893\" to=\"43002\"/>
      <range from=\"43052\" to=\"43055\"/>
      <range from=\"43066\" to=\"43071\"/>
      <range from=\"43128\" to=\"43135\"/>
      <range from=\"43205\" to=\"43213\"/>
      <range from=\"43226\" to=\"43231\"/>
      <range from=\"43260\" to=\"43263\"/>
      <range from=\"43348\" to=\"43358\"/>
      <range from=\"43389\" to=\"43391\"/>
      <range from=\"43470\" to=\"43470\"/>
      <range from=\"43482\" to=\"43485\"/>
      <range from=\"43488\" to=\"43519\"/>
      <range from=\"43575\" to=\"43583\"/>
      <range from=\"43598\" to=\"43599\"/>
      <range from=\"43610\" to=\"43611\"/>
      <range from=\"43644\" to=\"43647\"/>
      <range from=\"43715\" to=\"43738\"/>
      <range from=\"43744\" to=\"43967\"/>
      <range from=\"44014\" to=\"44015\"/>
      <range from=\"44026\" to=\"44031\"/>
      <range from=\"55204\" to=\"55215\"/>
      <range from=\"55239\" to=\"55242\"/>
      <range from=\"55292\" to=\"55295\"/>
      <range from=\"64046\" to=\"64047\"/>
      <range from=\"64110\" to=\"64111\"/>
      <range from=\"64218\" to=\"64255\"/>
      <range from=\"64263\" to=\"64274\"/>
      <range from=\"64280\" to=\"64284\"/>
      <range from=\"64311\" to=\"64311\"/>
      <range from=\"64317\" to=\"64317\"/>
      <range from=\"64319\" to=\"64319\"/>
      <range from=\"64322\" to=\"64322\"/>
      <range from=\"64325\" to=\"64325\"/>
      <range from=\"64434\" to=\"64466\"/>
      <range from=\"64832\" to=\"64847\"/>
      <range from=\"64912\" to=\"64913\"/>
      <range from=\"64968\" to=\"65007\"/>
      <range from=\"65022\" to=\"65023\"/>
      <range from=\"65050\" to=\"65055\"/>
      <range from=\"65063\" to=\"65071\"/>
      <range from=\"65107\" to=\"65107\"/>
      <range from=\"65127\" to=\"65127\"/>
      <range from=\"65132\" to=\"65135\"/>
      <range from=\"65141\" to=\"65141\"/>
      <range from=\"65277\" to=\"65278\"/>
      <range from=\"65280\" to=\"65280\"/>
      <range from=\"65471\" to=\"65473\"/>
      <range from=\"65480\" to=\"65481\"/>
      <range from=\"65488\" to=\"65489\"/>
      <range from=\"65496\" to=\"65497\"/>
      <range from=\"65501\" to=\"65503\"/>
      <range from=\"65511\" to=\"65511\"/>
      <range from=\"65519\" to=\"65528\"/>
      <range from=\"65548\" to=\"65548\"/>
      <range from=\"65575\" to=\"65575\"/>
      <range from=\"65595\" to=\"65595\"/>
      <range from=\"65598\" to=\"65598\"/>
      <range from=\"65614\" to=\"65615\"/>
      <range from=\"65630\" to=\"65663\"/>
      <range from=\"65787\" to=\"65791\"/>
      <range from=\"65795\" to=\"65798\"/>
      <range from=\"65844\" to=\"65846\"/>
      <range from=\"65931\" to=\"65935\"/>
      <range from=\"65948\" to=\"65999\"/>
      <range from=\"66046\" to=\"66175\"/>
      <range from=\"66205\" to=\"66207\"/>
      <range from=\"66257\" to=\"66303\"/>
      <range from=\"66335\" to=\"66335\"/>
      <range from=\"66340\" to=\"66351\"/>
      <range from=\"66379\" to=\"66431\"/>
      <range from=\"66462\" to=\"66462\"/>
      <range from=\"66500\" to=\"66503\"/>
      <range from=\"66518\" to=\"66559\"/>
      <range from=\"66718\" to=\"66719\"/>
      <range from=\"66730\" to=\"67583\"/>
      <range from=\"67590\" to=\"67591\"/>
      <range from=\"67593\" to=\"67593\"/>
      <range from=\"67638\" to=\"67638\"/>
      <range from=\"67641\" to=\"67643\"/>
      <range from=\"67645\" to=\"67646\"/>
      <range from=\"67670\" to=\"67670\"/>
      <range from=\"67680\" to=\"67839\"/>
      <range from=\"67868\" to=\"67870\"/>
      <range from=\"67898\" to=\"67902\"/>
      <range from=\"67904\" to=\"68095\"/>
      <range from=\"68100\" to=\"68100\"/>
      <range from=\"68103\" to=\"68107\"/>
      <range from=\"68116\" to=\"68116\"/>
      <range from=\"68120\" to=\"68120\"/>
      <range from=\"68148\" to=\"68151\"/>
      <range from=\"68155\" to=\"68158\"/>
      <range from=\"68168\" to=\"68175\"/>
      <range from=\"68185\" to=\"68191\"/>
      <range from=\"68224\" to=\"68351\"/>
      <range from=\"68406\" to=\"68408\"/>
      <range from=\"68438\" to=\"68439\"/>
      <range from=\"68467\" to=\"68471\"/>
      <range from=\"68480\" to=\"68607\"/>
      <range from=\"68681\" to=\"69215\"/>
      <range from=\"69247\" to=\"69759\"/>
      <range from=\"69826\" to=\"73727\"/>
      <range from=\"74607\" to=\"74751\"/>
      <range from=\"74851\" to=\"74863\"/>
      <range from=\"74868\" to=\"77823\"/>
      <range from=\"78895\" to=\"118783\"/>
      <range from=\"119030\" to=\"119039\"/>
      <range from=\"119079\" to=\"119080\"/>
      <range from=\"119262\" to=\"119295\"/>
      <range from=\"119366\" to=\"119551\"/>
      <range from=\"119639\" to=\"119647\"/>
      <range from=\"119666\" to=\"119807\"/>
      <range from=\"119893\" to=\"119893\"/>
      <range from=\"119965\" to=\"119965\"/>
      <range from=\"119968\" to=\"119969\"/>
      <range from=\"119971\" to=\"119972\"/>
      <range from=\"119975\" to=\"119976\"/>
      <range from=\"119981\" to=\"119981\"/>
      <range from=\"119994\" to=\"119994\"/>
      <range from=\"119996\" to=\"119996\"/>
      <range from=\"120004\" to=\"120004\"/>
      <range from=\"120070\" to=\"120070\"/>
      <range from=\"120075\" to=\"120076\"/>
      <range from=\"120085\" to=\"120085\"/>
      <range from=\"120093\" to=\"120093\"/>
      <range from=\"120122\" to=\"120122\"/>
      <range from=\"120127\" to=\"120127\"/>
      <range from=\"120133\" to=\"120133\"/>
      <range from=\"120135\" to=\"120137\"/>
      <range from=\"120145\" to=\"120145\"/>
      <range from=\"120486\" to=\"120487\"/>
      <range from=\"120780\" to=\"120781\"/>
      <range from=\"120832\" to=\"126975\"/>
      <range from=\"127020\" to=\"127023\"/>
      <range from=\"127124\" to=\"127231\"/>
      <range from=\"127243\" to=\"127247\"/>
      <range from=\"127279\" to=\"127280\"/>
      <range from=\"127282\" to=\"127292\"/>
      <range from=\"127294\" to=\"127294\"/>
      <range from=\"127296\" to=\"127297\"/>
      <range from=\"127299\" to=\"127301\"/>
      <range from=\"127303\" to=\"127305\"/>
      <range from=\"127311\" to=\"127318\"/>
      <range from=\"127320\" to=\"127326\"/>
      <range from=\"127328\" to=\"127352\"/>
      <range from=\"127354\" to=\"127354\"/>
      <range from=\"127357\" to=\"127358\"/>
      <range from=\"127360\" to=\"127369\"/>
      <range from=\"127374\" to=\"127375\"/>
      <range from=\"127377\" to=\"127487\"/>
      <range from=\"127489\" to=\"127503\"/>
      <range from=\"127538\" to=\"127551\"/>
      <range from=\"127561\" to=\"131071\"/>
      <range from=\"173783\" to=\"173823\"/>
      <range from=\"177973\" to=\"194559\"/>
      <range from=\"195102\" to=\"917504\"/>
      <range from=\"917506\" to=\"917535\"/>
      <range from=\"917632\" to=\"917759\"/>
      <range from=\"918000\" to=\"983039\"/>
      <range from=\"1048574\" to=\"1048575\"/>
   </Cn>;

<out>{   
   let $codes := for $r in $Cn//range return (xs:integer($r/@from) to xs:integer($r/@to))
   for $code in $codes
   for $char in codepoints-to-string($code)
   where not(codepoint-equal(normalize-unicode($char, 'NFC'), $char))
         or not(codepoint-equal(normalize-unicode($char, 'NFD'), $char))
   return 
   <norm char=\"{string-to-codepoints($char)}\"
         nfc=\"{string-to-codepoints(normalize-unicode($char, 'NFC'))}\"
         nfd=\"{string-to-codepoints(normalize-unicode($char, 'NFD'))}\"/>
}</out>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-11-6-0'(_Config) ->
   Qry = "(: Name: fn-normalize-unicode-11 :)
(: Description: Bug 7935: normalize-unicode() applied to unassigned codepoints :)
(: Result should be empty, indicating that normalization is idempotent on these characters :)

declare variable $Cn := 
   (: derived from the Unicode 6.0.0 database - essentially a list of characters that are legal
    in XML but undefined in Unicode :)
   (: queries for other Unicode versions can be generated using the stylesheet generator-for-test-11.xsl
    in the containing directory :)
<Cn>
   <range from=\"888\" to=\"889\"/>
   <range from=\"895\" to=\"899\"/>
   <range from=\"907\" to=\"907\"/>
   <range from=\"909\" to=\"909\"/>
   <range from=\"930\" to=\"930\"/>
   <range from=\"1320\" to=\"1328\"/>
   <range from=\"1367\" to=\"1368\"/>
   <range from=\"1376\" to=\"1376\"/>
   <range from=\"1416\" to=\"1416\"/>
   <range from=\"1419\" to=\"1423\"/>
   <range from=\"1424\" to=\"1424\"/>
   <range from=\"1480\" to=\"1487\"/>
   <range from=\"1515\" to=\"1519\"/>
   <range from=\"1525\" to=\"1535\"/>
   <range from=\"1540\" to=\"1541\"/>
   <range from=\"1564\" to=\"1565\"/>
   <range from=\"1806\" to=\"1806\"/>
   <range from=\"1867\" to=\"1868\"/>
   <range from=\"1970\" to=\"1983\"/>
   <range from=\"2043\" to=\"2047\"/>
   <range from=\"2094\" to=\"2095\"/>
   <range from=\"2111\" to=\"2111\"/>
   <range from=\"2140\" to=\"2141\"/>
   <range from=\"2143\" to=\"2303\"/>
   <range from=\"2424\" to=\"2424\"/>
   <range from=\"2432\" to=\"2432\"/>
   <range from=\"2436\" to=\"2436\"/>
   <range from=\"2445\" to=\"2446\"/>
   <range from=\"2449\" to=\"2450\"/>
   <range from=\"2473\" to=\"2473\"/>
   <range from=\"2481\" to=\"2481\"/>
   <range from=\"2483\" to=\"2485\"/>
   <range from=\"2490\" to=\"2491\"/>
   <range from=\"2501\" to=\"2502\"/>
   <range from=\"2505\" to=\"2506\"/>
   <range from=\"2511\" to=\"2518\"/>
   <range from=\"2520\" to=\"2523\"/>
   <range from=\"2526\" to=\"2526\"/>
   <range from=\"2532\" to=\"2533\"/>
   <range from=\"2556\" to=\"2560\"/>
   <range from=\"2564\" to=\"2564\"/>
   <range from=\"2571\" to=\"2574\"/>
   <range from=\"2577\" to=\"2578\"/>
   <range from=\"2601\" to=\"2601\"/>
   <range from=\"2609\" to=\"2609\"/>
   <range from=\"2612\" to=\"2612\"/>
   <range from=\"2615\" to=\"2615\"/>
   <range from=\"2618\" to=\"2619\"/>
   <range from=\"2621\" to=\"2621\"/>
   <range from=\"2627\" to=\"2630\"/>
   <range from=\"2633\" to=\"2634\"/>
   <range from=\"2638\" to=\"2640\"/>
   <range from=\"2642\" to=\"2648\"/>
   <range from=\"2653\" to=\"2653\"/>
   <range from=\"2655\" to=\"2661\"/>
   <range from=\"2678\" to=\"2688\"/>
   <range from=\"2692\" to=\"2692\"/>
   <range from=\"2702\" to=\"2702\"/>
   <range from=\"2706\" to=\"2706\"/>
   <range from=\"2729\" to=\"2729\"/>
   <range from=\"2737\" to=\"2737\"/>
   <range from=\"2740\" to=\"2740\"/>
   <range from=\"2746\" to=\"2747\"/>
   <range from=\"2758\" to=\"2758\"/>
   <range from=\"2762\" to=\"2762\"/>
   <range from=\"2766\" to=\"2767\"/>
   <range from=\"2769\" to=\"2783\"/>
   <range from=\"2788\" to=\"2789\"/>
   <range from=\"2800\" to=\"2800\"/>
   <range from=\"2802\" to=\"2816\"/>
   <range from=\"2820\" to=\"2820\"/>
   <range from=\"2829\" to=\"2830\"/>
   <range from=\"2833\" to=\"2834\"/>
   <range from=\"2857\" to=\"2857\"/>
   <range from=\"2865\" to=\"2865\"/>
   <range from=\"2868\" to=\"2868\"/>
   <range from=\"2874\" to=\"2875\"/>
   <range from=\"2885\" to=\"2886\"/>
   <range from=\"2889\" to=\"2890\"/>
   <range from=\"2894\" to=\"2901\"/>
   <range from=\"2904\" to=\"2907\"/>
   <range from=\"2910\" to=\"2910\"/>
   <range from=\"2916\" to=\"2917\"/>
   <range from=\"2936\" to=\"2945\"/>
   <range from=\"2948\" to=\"2948\"/>
   <range from=\"2955\" to=\"2957\"/>
   <range from=\"2961\" to=\"2961\"/>
   <range from=\"2966\" to=\"2968\"/>
   <range from=\"2971\" to=\"2971\"/>
   <range from=\"2973\" to=\"2973\"/>
   <range from=\"2976\" to=\"2978\"/>
   <range from=\"2981\" to=\"2983\"/>
   <range from=\"2987\" to=\"2989\"/>
   <range from=\"3002\" to=\"3005\"/>
   <range from=\"3011\" to=\"3013\"/>
   <range from=\"3017\" to=\"3017\"/>
   <range from=\"3022\" to=\"3023\"/>
   <range from=\"3025\" to=\"3030\"/>
   <range from=\"3032\" to=\"3045\"/>
   <range from=\"3067\" to=\"3072\"/>
   <range from=\"3076\" to=\"3076\"/>
   <range from=\"3085\" to=\"3085\"/>
   <range from=\"3089\" to=\"3089\"/>
   <range from=\"3113\" to=\"3113\"/>
   <range from=\"3124\" to=\"3124\"/>
   <range from=\"3130\" to=\"3132\"/>
   <range from=\"3141\" to=\"3141\"/>
   <range from=\"3145\" to=\"3145\"/>
   <range from=\"3150\" to=\"3156\"/>
   <range from=\"3159\" to=\"3159\"/>
   <range from=\"3162\" to=\"3167\"/>
   <range from=\"3172\" to=\"3173\"/>
   <range from=\"3184\" to=\"3191\"/>
   <range from=\"3200\" to=\"3201\"/>
   <range from=\"3204\" to=\"3204\"/>
   <range from=\"3213\" to=\"3213\"/>
   <range from=\"3217\" to=\"3217\"/>
   <range from=\"3241\" to=\"3241\"/>
   <range from=\"3252\" to=\"3252\"/>
   <range from=\"3258\" to=\"3259\"/>
   <range from=\"3269\" to=\"3269\"/>
   <range from=\"3273\" to=\"3273\"/>
   <range from=\"3278\" to=\"3284\"/>
   <range from=\"3287\" to=\"3293\"/>
   <range from=\"3295\" to=\"3295\"/>
   <range from=\"3300\" to=\"3301\"/>
   <range from=\"3312\" to=\"3312\"/>
   <range from=\"3315\" to=\"3329\"/>
   <range from=\"3332\" to=\"3332\"/>
   <range from=\"3341\" to=\"3341\"/>
   <range from=\"3345\" to=\"3345\"/>
   <range from=\"3387\" to=\"3388\"/>
   <range from=\"3397\" to=\"3397\"/>
   <range from=\"3401\" to=\"3401\"/>
   <range from=\"3407\" to=\"3414\"/>
   <range from=\"3416\" to=\"3423\"/>
   <range from=\"3428\" to=\"3429\"/>
   <range from=\"3446\" to=\"3448\"/>
   <range from=\"3456\" to=\"3457\"/>
   <range from=\"3460\" to=\"3460\"/>
   <range from=\"3479\" to=\"3481\"/>
   <range from=\"3506\" to=\"3506\"/>
   <range from=\"3516\" to=\"3516\"/>
   <range from=\"3518\" to=\"3519\"/>
   <range from=\"3527\" to=\"3529\"/>
   <range from=\"3531\" to=\"3534\"/>
   <range from=\"3541\" to=\"3541\"/>
   <range from=\"3543\" to=\"3543\"/>
   <range from=\"3552\" to=\"3569\"/>
   <range from=\"3573\" to=\"3584\"/>
   <range from=\"3643\" to=\"3646\"/>
   <range from=\"3676\" to=\"3712\"/>
   <range from=\"3715\" to=\"3715\"/>
   <range from=\"3717\" to=\"3718\"/>
   <range from=\"3721\" to=\"3721\"/>
   <range from=\"3723\" to=\"3724\"/>
   <range from=\"3726\" to=\"3731\"/>
   <range from=\"3736\" to=\"3736\"/>
   <range from=\"3744\" to=\"3744\"/>
   <range from=\"3748\" to=\"3748\"/>
   <range from=\"3750\" to=\"3750\"/>
   <range from=\"3752\" to=\"3753\"/>
   <range from=\"3756\" to=\"3756\"/>
   <range from=\"3770\" to=\"3770\"/>
   <range from=\"3774\" to=\"3775\"/>
   <range from=\"3781\" to=\"3781\"/>
   <range from=\"3783\" to=\"3783\"/>
   <range from=\"3790\" to=\"3791\"/>
   <range from=\"3802\" to=\"3803\"/>
   <range from=\"3806\" to=\"3839\"/>
   <range from=\"3912\" to=\"3912\"/>
   <range from=\"3949\" to=\"3952\"/>
   <range from=\"3992\" to=\"3992\"/>
   <range from=\"4029\" to=\"4029\"/>
   <range from=\"4045\" to=\"4045\"/>
   <range from=\"4059\" to=\"4095\"/>
   <range from=\"4294\" to=\"4303\"/>
   <range from=\"4349\" to=\"4351\"/>
   <range from=\"4681\" to=\"4681\"/>
   <range from=\"4686\" to=\"4687\"/>
   <range from=\"4695\" to=\"4695\"/>
   <range from=\"4697\" to=\"4697\"/>
   <range from=\"4702\" to=\"4703\"/>
   <range from=\"4745\" to=\"4745\"/>
   <range from=\"4750\" to=\"4751\"/>
   <range from=\"4785\" to=\"4785\"/>
   <range from=\"4790\" to=\"4791\"/>
   <range from=\"4799\" to=\"4799\"/>
   <range from=\"4801\" to=\"4801\"/>
   <range from=\"4806\" to=\"4807\"/>
   <range from=\"4823\" to=\"4823\"/>
   <range from=\"4881\" to=\"4881\"/>
   <range from=\"4886\" to=\"4887\"/>
   <range from=\"4955\" to=\"4956\"/>
   <range from=\"4989\" to=\"4991\"/>
   <range from=\"5018\" to=\"5023\"/>
   <range from=\"5109\" to=\"5119\"/>
   <range from=\"5789\" to=\"5791\"/>
   <range from=\"5873\" to=\"5887\"/>
   <range from=\"5901\" to=\"5901\"/>
   <range from=\"5909\" to=\"5919\"/>
   <range from=\"5943\" to=\"5951\"/>
   <range from=\"5972\" to=\"5983\"/>
   <range from=\"5997\" to=\"5997\"/>
   <range from=\"6001\" to=\"6001\"/>
   <range from=\"6004\" to=\"6015\"/>
   <range from=\"6110\" to=\"6111\"/>
   <range from=\"6122\" to=\"6127\"/>
   <range from=\"6138\" to=\"6143\"/>
   <range from=\"6159\" to=\"6159\"/>
   <range from=\"6170\" to=\"6175\"/>
   <range from=\"6264\" to=\"6271\"/>
   <range from=\"6315\" to=\"6319\"/>
   <range from=\"6390\" to=\"6399\"/>
   <range from=\"6429\" to=\"6431\"/>
   <range from=\"6444\" to=\"6447\"/>
   <range from=\"6460\" to=\"6463\"/>
   <range from=\"6465\" to=\"6467\"/>
   <range from=\"6510\" to=\"6511\"/>
   <range from=\"6517\" to=\"6527\"/>
   <range from=\"6572\" to=\"6575\"/>
   <range from=\"6602\" to=\"6607\"/>
   <range from=\"6619\" to=\"6621\"/>
   <range from=\"6684\" to=\"6685\"/>
   <range from=\"6751\" to=\"6751\"/>
   <range from=\"6781\" to=\"6782\"/>
   <range from=\"6794\" to=\"6799\"/>
   <range from=\"6810\" to=\"6815\"/>
   <range from=\"6830\" to=\"6911\"/>
   <range from=\"6988\" to=\"6991\"/>
   <range from=\"7037\" to=\"7039\"/>
   <range from=\"7083\" to=\"7085\"/>
   <range from=\"7098\" to=\"7103\"/>
   <range from=\"7156\" to=\"7163\"/>
   <range from=\"7224\" to=\"7226\"/>
   <range from=\"7242\" to=\"7244\"/>
   <range from=\"7296\" to=\"7375\"/>
   <range from=\"7411\" to=\"7423\"/>
   <range from=\"7655\" to=\"7675\"/>
   <range from=\"7958\" to=\"7959\"/>
   <range from=\"7966\" to=\"7967\"/>
   <range from=\"8006\" to=\"8007\"/>
   <range from=\"8014\" to=\"8015\"/>
   <range from=\"8024\" to=\"8024\"/>
   <range from=\"8026\" to=\"8026\"/>
   <range from=\"8028\" to=\"8028\"/>
   <range from=\"8030\" to=\"8030\"/>
   <range from=\"8062\" to=\"8063\"/>
   <range from=\"8117\" to=\"8117\"/>
   <range from=\"8133\" to=\"8133\"/>
   <range from=\"8148\" to=\"8149\"/>
   <range from=\"8156\" to=\"8156\"/>
   <range from=\"8176\" to=\"8177\"/>
   <range from=\"8181\" to=\"8181\"/>
   <range from=\"8191\" to=\"8191\"/>
   <range from=\"8293\" to=\"8297\"/>
   <range from=\"8306\" to=\"8307\"/>
   <range from=\"8335\" to=\"8335\"/>
   <range from=\"8349\" to=\"8351\"/>
   <range from=\"8378\" to=\"8399\"/>
   <range from=\"8433\" to=\"8447\"/>
   <range from=\"8586\" to=\"8591\"/>
   <range from=\"9204\" to=\"9215\"/>
   <range from=\"9255\" to=\"9279\"/>
   <range from=\"9291\" to=\"9311\"/>
   <range from=\"9984\" to=\"9984\"/>
   <range from=\"10187\" to=\"10187\"/>
   <range from=\"10189\" to=\"10189\"/>
   <range from=\"11085\" to=\"11087\"/>
   <range from=\"11098\" to=\"11263\"/>
   <range from=\"11311\" to=\"11311\"/>
   <range from=\"11359\" to=\"11359\"/>
   <range from=\"11506\" to=\"11512\"/>
   <range from=\"11558\" to=\"11567\"/>
   <range from=\"11622\" to=\"11630\"/>
   <range from=\"11633\" to=\"11646\"/>
   <range from=\"11671\" to=\"11679\"/>
   <range from=\"11687\" to=\"11687\"/>
   <range from=\"11695\" to=\"11695\"/>
   <range from=\"11703\" to=\"11703\"/>
   <range from=\"11711\" to=\"11711\"/>
   <range from=\"11719\" to=\"11719\"/>
   <range from=\"11727\" to=\"11727\"/>
   <range from=\"11735\" to=\"11735\"/>
   <range from=\"11743\" to=\"11743\"/>
   <range from=\"11826\" to=\"11903\"/>
   <range from=\"11930\" to=\"11930\"/>
   <range from=\"12020\" to=\"12031\"/>
   <range from=\"12246\" to=\"12271\"/>
   <range from=\"12284\" to=\"12287\"/>
   <range from=\"12352\" to=\"12352\"/>
   <range from=\"12439\" to=\"12440\"/>
   <range from=\"12544\" to=\"12548\"/>
   <range from=\"12590\" to=\"12592\"/>
   <range from=\"12687\" to=\"12687\"/>
   <range from=\"12731\" to=\"12735\"/>
   <range from=\"12772\" to=\"12783\"/>
   <range from=\"12831\" to=\"12831\"/>
   <range from=\"13055\" to=\"13055\"/>
   <range from=\"19894\" to=\"19903\"/>
   <range from=\"40908\" to=\"40959\"/>
   <range from=\"42125\" to=\"42127\"/>
   <range from=\"42183\" to=\"42191\"/>
   <range from=\"42540\" to=\"42559\"/>
   <range from=\"42612\" to=\"42619\"/>
   <range from=\"42648\" to=\"42655\"/>
   <range from=\"42744\" to=\"42751\"/>
   <range from=\"42895\" to=\"42895\"/>
   <range from=\"42898\" to=\"42911\"/>
   <range from=\"42922\" to=\"43001\"/>
   <range from=\"43052\" to=\"43055\"/>
   <range from=\"43066\" to=\"43071\"/>
   <range from=\"43128\" to=\"43135\"/>
   <range from=\"43205\" to=\"43213\"/>
   <range from=\"43226\" to=\"43231\"/>
   <range from=\"43260\" to=\"43263\"/>
   <range from=\"43348\" to=\"43358\"/>
   <range from=\"43389\" to=\"43391\"/>
   <range from=\"43470\" to=\"43470\"/>
   <range from=\"43482\" to=\"43485\"/>
   <range from=\"43488\" to=\"43519\"/>
   <range from=\"43575\" to=\"43583\"/>
   <range from=\"43598\" to=\"43599\"/>
   <range from=\"43610\" to=\"43611\"/>
   <range from=\"43644\" to=\"43647\"/>
   <range from=\"43715\" to=\"43738\"/>
   <range from=\"43744\" to=\"43776\"/>
   <range from=\"43783\" to=\"43784\"/>
   <range from=\"43791\" to=\"43792\"/>
   <range from=\"43799\" to=\"43807\"/>
   <range from=\"43815\" to=\"43815\"/>
   <range from=\"43823\" to=\"43967\"/>
   <range from=\"44014\" to=\"44015\"/>
   <range from=\"44026\" to=\"44031\"/>
   <range from=\"55204\" to=\"55215\"/>
   <range from=\"55239\" to=\"55242\"/>
   <range from=\"55292\" to=\"55295\"/>
   <range from=\"64046\" to=\"64047\"/>
   <range from=\"64110\" to=\"64111\"/>
   <range from=\"64218\" to=\"64255\"/>
   <range from=\"64263\" to=\"64274\"/>
   <range from=\"64280\" to=\"64284\"/>
   <range from=\"64311\" to=\"64311\"/>
   <range from=\"64317\" to=\"64317\"/>
   <range from=\"64319\" to=\"64319\"/>
   <range from=\"64322\" to=\"64322\"/>
   <range from=\"64325\" to=\"64325\"/>
   <range from=\"64450\" to=\"64466\"/>
   <range from=\"64832\" to=\"64847\"/>
   <range from=\"64912\" to=\"64913\"/>
   <range from=\"64968\" to=\"64975\"/>
   <range from=\"65022\" to=\"65023\"/>
   <range from=\"65050\" to=\"65055\"/>
   <range from=\"65063\" to=\"65071\"/>
   <range from=\"65107\" to=\"65107\"/>
   <range from=\"65127\" to=\"65127\"/>
   <range from=\"65132\" to=\"65135\"/>
   <range from=\"65141\" to=\"65141\"/>
   <range from=\"65277\" to=\"65278\"/>
   <range from=\"65280\" to=\"65280\"/>
   <range from=\"65471\" to=\"65473\"/>
   <range from=\"65480\" to=\"65481\"/>
   <range from=\"65488\" to=\"65489\"/>
   <range from=\"65496\" to=\"65497\"/>
   <range from=\"65501\" to=\"65503\"/>
   <range from=\"65511\" to=\"65511\"/>
   <range from=\"65519\" to=\"65519\"/>
   <range from=\"65520\" to=\"65528\"/>
   <range from=\"65548\" to=\"65548\"/>
   <range from=\"65575\" to=\"65575\"/>
   <range from=\"65595\" to=\"65595\"/>
   <range from=\"65598\" to=\"65598\"/>
   <range from=\"65614\" to=\"65615\"/>
   <range from=\"65630\" to=\"65663\"/>
   <range from=\"65787\" to=\"65791\"/>
   <range from=\"65795\" to=\"65798\"/>
   <range from=\"65844\" to=\"65846\"/>
   <range from=\"65931\" to=\"65935\"/>
   <range from=\"65948\" to=\"65999\"/>
   <range from=\"66046\" to=\"66175\"/>
   <range from=\"66205\" to=\"66207\"/>
   <range from=\"66257\" to=\"66303\"/>
   <range from=\"66335\" to=\"66335\"/>
   <range from=\"66340\" to=\"66351\"/>
   <range from=\"66379\" to=\"66431\"/>
   <range from=\"66462\" to=\"66462\"/>
   <range from=\"66500\" to=\"66503\"/>
   <range from=\"66518\" to=\"66559\"/>
   <range from=\"66718\" to=\"66719\"/>
   <range from=\"66730\" to=\"67583\"/>
   <range from=\"67590\" to=\"67591\"/>
   <range from=\"67593\" to=\"67593\"/>
   <range from=\"67638\" to=\"67638\"/>
   <range from=\"67641\" to=\"67643\"/>
   <range from=\"67645\" to=\"67646\"/>
   <range from=\"67670\" to=\"67670\"/>
   <range from=\"67680\" to=\"67839\"/>
   <range from=\"67868\" to=\"67870\"/>
   <range from=\"67898\" to=\"67902\"/>
   <range from=\"67904\" to=\"68095\"/>
   <range from=\"68100\" to=\"68100\"/>
   <range from=\"68103\" to=\"68107\"/>
   <range from=\"68116\" to=\"68116\"/>
   <range from=\"68120\" to=\"68120\"/>
   <range from=\"68148\" to=\"68151\"/>
   <range from=\"68155\" to=\"68158\"/>
   <range from=\"68168\" to=\"68175\"/>
   <range from=\"68185\" to=\"68191\"/>
   <range from=\"68224\" to=\"68351\"/>
   <range from=\"68406\" to=\"68408\"/>
   <range from=\"68438\" to=\"68439\"/>
   <range from=\"68467\" to=\"68471\"/>
   <range from=\"68480\" to=\"68607\"/>
   <range from=\"68681\" to=\"69215\"/>
   <range from=\"69247\" to=\"69631\"/>
   <range from=\"69710\" to=\"69713\"/>
   <range from=\"69744\" to=\"69759\"/>
   <range from=\"69826\" to=\"73727\"/>
   <range from=\"74607\" to=\"74751\"/>
   <range from=\"74851\" to=\"74863\"/>
   <range from=\"74868\" to=\"77823\"/>
   <range from=\"78895\" to=\"92159\"/>
   <range from=\"92729\" to=\"110591\"/>
   <range from=\"110594\" to=\"118783\"/>
   <range from=\"119030\" to=\"119039\"/>
   <range from=\"119079\" to=\"119080\"/>
   <range from=\"119262\" to=\"119295\"/>
   <range from=\"119366\" to=\"119551\"/>
   <range from=\"119639\" to=\"119647\"/>
   <range from=\"119666\" to=\"119807\"/>
   <range from=\"119893\" to=\"119893\"/>
   <range from=\"119965\" to=\"119965\"/>
   <range from=\"119968\" to=\"119969\"/>
   <range from=\"119971\" to=\"119972\"/>
   <range from=\"119975\" to=\"119976\"/>
   <range from=\"119981\" to=\"119981\"/>
   <range from=\"119994\" to=\"119994\"/>
   <range from=\"119996\" to=\"119996\"/>
   <range from=\"120004\" to=\"120004\"/>
   <range from=\"120070\" to=\"120070\"/>
   <range from=\"120075\" to=\"120076\"/>
   <range from=\"120085\" to=\"120085\"/>
   <range from=\"120093\" to=\"120093\"/>
   <range from=\"120122\" to=\"120122\"/>
   <range from=\"120127\" to=\"120127\"/>
   <range from=\"120133\" to=\"120133\"/>
   <range from=\"120135\" to=\"120137\"/>
   <range from=\"120145\" to=\"120145\"/>
   <range from=\"120486\" to=\"120487\"/>
   <range from=\"120780\" to=\"120781\"/>
   <range from=\"120832\" to=\"124927\"/>
   <range from=\"124928\" to=\"126975\"/>
   <range from=\"127020\" to=\"127023\"/>
   <range from=\"127124\" to=\"127135\"/>
   <range from=\"127151\" to=\"127152\"/>
   <range from=\"127167\" to=\"127168\"/>
   <range from=\"127184\" to=\"127184\"/>
   <range from=\"127200\" to=\"127231\"/>
   <range from=\"127243\" to=\"127247\"/>
   <range from=\"127279\" to=\"127279\"/>
   <range from=\"127338\" to=\"127343\"/>
   <range from=\"127387\" to=\"127461\"/>
   <range from=\"127491\" to=\"127503\"/>
   <range from=\"127547\" to=\"127551\"/>
   <range from=\"127561\" to=\"127567\"/>
   <range from=\"127570\" to=\"127743\"/>
   <range from=\"127777\" to=\"127791\"/>
   <range from=\"127798\" to=\"127798\"/>
   <range from=\"127869\" to=\"127871\"/>
   <range from=\"127892\" to=\"127903\"/>
   <range from=\"127941\" to=\"127941\"/>
   <range from=\"127947\" to=\"127967\"/>
   <range from=\"127985\" to=\"127999\"/>
   <range from=\"128063\" to=\"128063\"/>
   <range from=\"128065\" to=\"128065\"/>
   <range from=\"128248\" to=\"128248\"/>
   <range from=\"128253\" to=\"128255\"/>
   <range from=\"128318\" to=\"128335\"/>
   <range from=\"128360\" to=\"128506\"/>
   <range from=\"128512\" to=\"128512\"/>
   <range from=\"128529\" to=\"128529\"/>
   <range from=\"128533\" to=\"128533\"/>
   <range from=\"128535\" to=\"128535\"/>
   <range from=\"128537\" to=\"128537\"/>
   <range from=\"128539\" to=\"128539\"/>
   <range from=\"128543\" to=\"128543\"/>
   <range from=\"128550\" to=\"128551\"/>
   <range from=\"128556\" to=\"128556\"/>
   <range from=\"128558\" to=\"128559\"/>
   <range from=\"128564\" to=\"128564\"/>
   <range from=\"128577\" to=\"128580\"/>
   <range from=\"128592\" to=\"128639\"/>
   <range from=\"128710\" to=\"128767\"/>
   <range from=\"128884\" to=\"131069\"/>
   <range from=\"173783\" to=\"173823\"/>
   <range from=\"177973\" to=\"177983\"/>
   <range from=\"178206\" to=\"194559\"/>
   <range from=\"195102\" to=\"196605\"/>
   <range from=\"196608\" to=\"262141\"/>
   <range from=\"262144\" to=\"327677\"/>
   <range from=\"327680\" to=\"393213\"/>
   <range from=\"393216\" to=\"458749\"/>
   <range from=\"458752\" to=\"524285\"/>
   <range from=\"524288\" to=\"589821\"/>
   <range from=\"589824\" to=\"655357\"/>
   <range from=\"655360\" to=\"720893\"/>
   <range from=\"720896\" to=\"786429\"/>
   <range from=\"786432\" to=\"851965\"/>
   <range from=\"851968\" to=\"917501\"/>
   <range from=\"917504\" to=\"917504\"/>
   <range from=\"917506\" to=\"917535\"/>
   <range from=\"917632\" to=\"917759\"/>
   <range from=\"918000\" to=\"921599\"/>
   <range from=\"921600\" to=\"983037\"/>
</Cn>;

<out>{   
   let $codes := for $r in $Cn//range return (xs:integer($r/@from) to xs:integer($r/@to))
   for $code in $codes
   for $char in codepoints-to-string($code)
   where not(codepoint-equal(normalize-unicode($char, 'NFC'), $char))
         or not(codepoint-equal(normalize-unicode($char, 'NFD'), $char))
   return 
   <norm char=\"{string-to-codepoints($char)}\"
         nfc=\"{string-to-codepoints(normalize-unicode($char, 'NFC'))}\"
         nfd=\"{string-to-codepoints(normalize-unicode($char, 'NFD'))}\"/>
}</out>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-normalize-unicode-11-6-2'(_Config) ->
   Qry = "(: Name: fn-normalize-unicode-11 :)
(: Description: Bug 7935: normalize-unicode() applied to unassigned codepoints :)
(: Result should be empty, indicating that normalization is idempotent on these characters :)

declare variable $Cn := 
   (: derived from the Unicode 6.2.0 database - essentially a list of characters that are legal
    in XML but undefined in Unicode :)
   (: queries for other Unicode versions can be generated using the stylesheet generator-for-test-11.xsl
    in the containing directory :)
   <Cn>
   <range from=\"888\" to=\"889\"/>
   <range from=\"895\" to=\"899\"/>
   <range from=\"907\" to=\"907\"/>
   <range from=\"909\" to=\"909\"/>
   <range from=\"930\" to=\"930\"/>
   <range from=\"1320\" to=\"1327\"/>
   <range from=\"1328\" to=\"1328\"/>
   <range from=\"1367\" to=\"1368\"/>
   <range from=\"1376\" to=\"1376\"/>
   <range from=\"1416\" to=\"1416\"/>
   <range from=\"1419\" to=\"1422\"/>
   <range from=\"1424\" to=\"1424\"/>
   <range from=\"1480\" to=\"1487\"/>
   <range from=\"1515\" to=\"1519\"/>
   <range from=\"1525\" to=\"1535\"/>
   <range from=\"1541\" to=\"1541\"/>
   <range from=\"1564\" to=\"1565\"/>
   <range from=\"1806\" to=\"1806\"/>
   <range from=\"1867\" to=\"1868\"/>
   <range from=\"1970\" to=\"1983\"/>
   <range from=\"2043\" to=\"2047\"/>
   <range from=\"2094\" to=\"2095\"/>
   <range from=\"2111\" to=\"2111\"/>
   <range from=\"2140\" to=\"2141\"/>
   <range from=\"2143\" to=\"2143\"/>
   <range from=\"2144\" to=\"2207\"/>
   <range from=\"2209\" to=\"2209\"/>
   <range from=\"2221\" to=\"2275\"/>
   <range from=\"2303\" to=\"2303\"/>
   <range from=\"2424\" to=\"2424\"/>
   <range from=\"2432\" to=\"2432\"/>
   <range from=\"2436\" to=\"2436\"/>
   <range from=\"2445\" to=\"2446\"/>
   <range from=\"2449\" to=\"2450\"/>
   <range from=\"2473\" to=\"2473\"/>
   <range from=\"2481\" to=\"2481\"/>
   <range from=\"2483\" to=\"2485\"/>
   <range from=\"2490\" to=\"2491\"/>
   <range from=\"2501\" to=\"2502\"/>
   <range from=\"2505\" to=\"2506\"/>
   <range from=\"2511\" to=\"2518\"/>
   <range from=\"2520\" to=\"2523\"/>
   <range from=\"2526\" to=\"2526\"/>
   <range from=\"2532\" to=\"2533\"/>
   <range from=\"2556\" to=\"2559\"/>
   <range from=\"2560\" to=\"2560\"/>
   <range from=\"2564\" to=\"2564\"/>
   <range from=\"2571\" to=\"2574\"/>
   <range from=\"2577\" to=\"2578\"/>
   <range from=\"2601\" to=\"2601\"/>
   <range from=\"2609\" to=\"2609\"/>
   <range from=\"2612\" to=\"2612\"/>
   <range from=\"2615\" to=\"2615\"/>
   <range from=\"2618\" to=\"2619\"/>
   <range from=\"2621\" to=\"2621\"/>
   <range from=\"2627\" to=\"2630\"/>
   <range from=\"2633\" to=\"2634\"/>
   <range from=\"2638\" to=\"2640\"/>
   <range from=\"2642\" to=\"2648\"/>
   <range from=\"2653\" to=\"2653\"/>
   <range from=\"2655\" to=\"2661\"/>
   <range from=\"2678\" to=\"2687\"/>
   <range from=\"2688\" to=\"2688\"/>
   <range from=\"2692\" to=\"2692\"/>
   <range from=\"2702\" to=\"2702\"/>
   <range from=\"2706\" to=\"2706\"/>
   <range from=\"2729\" to=\"2729\"/>
   <range from=\"2737\" to=\"2737\"/>
   <range from=\"2740\" to=\"2740\"/>
   <range from=\"2746\" to=\"2747\"/>
   <range from=\"2758\" to=\"2758\"/>
   <range from=\"2762\" to=\"2762\"/>
   <range from=\"2766\" to=\"2767\"/>
   <range from=\"2769\" to=\"2783\"/>
   <range from=\"2788\" to=\"2789\"/>
   <range from=\"2802\" to=\"2815\"/>
   <range from=\"2816\" to=\"2816\"/>
   <range from=\"2820\" to=\"2820\"/>
   <range from=\"2829\" to=\"2830\"/>
   <range from=\"2833\" to=\"2834\"/>
   <range from=\"2857\" to=\"2857\"/>
   <range from=\"2865\" to=\"2865\"/>
   <range from=\"2868\" to=\"2868\"/>
   <range from=\"2874\" to=\"2875\"/>
   <range from=\"2885\" to=\"2886\"/>
   <range from=\"2889\" to=\"2890\"/>
   <range from=\"2894\" to=\"2901\"/>
   <range from=\"2904\" to=\"2907\"/>
   <range from=\"2910\" to=\"2910\"/>
   <range from=\"2916\" to=\"2917\"/>
   <range from=\"2936\" to=\"2943\"/>
   <range from=\"2944\" to=\"2945\"/>
   <range from=\"2948\" to=\"2948\"/>
   <range from=\"2955\" to=\"2957\"/>
   <range from=\"2961\" to=\"2961\"/>
   <range from=\"2966\" to=\"2968\"/>
   <range from=\"2971\" to=\"2971\"/>
   <range from=\"2973\" to=\"2973\"/>
   <range from=\"2976\" to=\"2978\"/>
   <range from=\"2981\" to=\"2983\"/>
   <range from=\"2987\" to=\"2989\"/>
   <range from=\"3002\" to=\"3005\"/>
   <range from=\"3011\" to=\"3013\"/>
   <range from=\"3017\" to=\"3017\"/>
   <range from=\"3022\" to=\"3023\"/>
   <range from=\"3025\" to=\"3030\"/>
   <range from=\"3032\" to=\"3045\"/>
   <range from=\"3067\" to=\"3071\"/>
   <range from=\"3072\" to=\"3072\"/>
   <range from=\"3076\" to=\"3076\"/>
   <range from=\"3085\" to=\"3085\"/>
   <range from=\"3089\" to=\"3089\"/>
   <range from=\"3113\" to=\"3113\"/>
   <range from=\"3124\" to=\"3124\"/>
   <range from=\"3130\" to=\"3132\"/>
   <range from=\"3141\" to=\"3141\"/>
   <range from=\"3145\" to=\"3145\"/>
   <range from=\"3150\" to=\"3156\"/>
   <range from=\"3159\" to=\"3159\"/>
   <range from=\"3162\" to=\"3167\"/>
   <range from=\"3172\" to=\"3173\"/>
   <range from=\"3184\" to=\"3191\"/>
   <range from=\"3200\" to=\"3201\"/>
   <range from=\"3204\" to=\"3204\"/>
   <range from=\"3213\" to=\"3213\"/>
   <range from=\"3217\" to=\"3217\"/>
   <range from=\"3241\" to=\"3241\"/>
   <range from=\"3252\" to=\"3252\"/>
   <range from=\"3258\" to=\"3259\"/>
   <range from=\"3269\" to=\"3269\"/>
   <range from=\"3273\" to=\"3273\"/>
   <range from=\"3278\" to=\"3284\"/>
   <range from=\"3287\" to=\"3293\"/>
   <range from=\"3295\" to=\"3295\"/>
   <range from=\"3300\" to=\"3301\"/>
   <range from=\"3312\" to=\"3312\"/>
   <range from=\"3315\" to=\"3327\"/>
   <range from=\"3328\" to=\"3329\"/>
   <range from=\"3332\" to=\"3332\"/>
   <range from=\"3341\" to=\"3341\"/>
   <range from=\"3345\" to=\"3345\"/>
   <range from=\"3387\" to=\"3388\"/>
   <range from=\"3397\" to=\"3397\"/>
   <range from=\"3401\" to=\"3401\"/>
   <range from=\"3407\" to=\"3414\"/>
   <range from=\"3416\" to=\"3423\"/>
   <range from=\"3428\" to=\"3429\"/>
   <range from=\"3446\" to=\"3448\"/>
   <range from=\"3456\" to=\"3457\"/>
   <range from=\"3460\" to=\"3460\"/>
   <range from=\"3479\" to=\"3481\"/>
   <range from=\"3506\" to=\"3506\"/>
   <range from=\"3516\" to=\"3516\"/>
   <range from=\"3518\" to=\"3519\"/>
   <range from=\"3527\" to=\"3529\"/>
   <range from=\"3531\" to=\"3534\"/>
   <range from=\"3541\" to=\"3541\"/>
   <range from=\"3543\" to=\"3543\"/>
   <range from=\"3552\" to=\"3569\"/>
   <range from=\"3573\" to=\"3583\"/>
   <range from=\"3584\" to=\"3584\"/>
   <range from=\"3643\" to=\"3646\"/>
   <range from=\"3676\" to=\"3711\"/>
   <range from=\"3712\" to=\"3712\"/>
   <range from=\"3715\" to=\"3715\"/>
   <range from=\"3717\" to=\"3718\"/>
   <range from=\"3721\" to=\"3721\"/>
   <range from=\"3723\" to=\"3724\"/>
   <range from=\"3726\" to=\"3731\"/>
   <range from=\"3736\" to=\"3736\"/>
   <range from=\"3744\" to=\"3744\"/>
   <range from=\"3748\" to=\"3748\"/>
   <range from=\"3750\" to=\"3750\"/>
   <range from=\"3752\" to=\"3753\"/>
   <range from=\"3756\" to=\"3756\"/>
   <range from=\"3770\" to=\"3770\"/>
   <range from=\"3774\" to=\"3775\"/>
   <range from=\"3781\" to=\"3781\"/>
   <range from=\"3783\" to=\"3783\"/>
   <range from=\"3790\" to=\"3791\"/>
   <range from=\"3802\" to=\"3803\"/>
   <range from=\"3808\" to=\"3839\"/>
   <range from=\"3912\" to=\"3912\"/>
   <range from=\"3949\" to=\"3952\"/>
   <range from=\"3992\" to=\"3992\"/>
   <range from=\"4029\" to=\"4029\"/>
   <range from=\"4045\" to=\"4045\"/>
   <range from=\"4059\" to=\"4095\"/>
   <range from=\"4294\" to=\"4294\"/>
   <range from=\"4296\" to=\"4300\"/>
   <range from=\"4302\" to=\"4303\"/>
   <range from=\"4681\" to=\"4681\"/>
   <range from=\"4686\" to=\"4687\"/>
   <range from=\"4695\" to=\"4695\"/>
   <range from=\"4697\" to=\"4697\"/>
   <range from=\"4702\" to=\"4703\"/>
   <range from=\"4745\" to=\"4745\"/>
   <range from=\"4750\" to=\"4751\"/>
   <range from=\"4785\" to=\"4785\"/>
   <range from=\"4790\" to=\"4791\"/>
   <range from=\"4799\" to=\"4799\"/>
   <range from=\"4801\" to=\"4801\"/>
   <range from=\"4806\" to=\"4807\"/>
   <range from=\"4823\" to=\"4823\"/>
   <range from=\"4881\" to=\"4881\"/>
   <range from=\"4886\" to=\"4887\"/>
   <range from=\"4955\" to=\"4956\"/>
   <range from=\"4989\" to=\"4991\"/>
   <range from=\"5018\" to=\"5023\"/>
   <range from=\"5109\" to=\"5119\"/>
   <range from=\"5789\" to=\"5791\"/>
   <range from=\"5873\" to=\"5887\"/>
   <range from=\"5901\" to=\"5901\"/>
   <range from=\"5909\" to=\"5919\"/>
   <range from=\"5943\" to=\"5951\"/>
   <range from=\"5972\" to=\"5983\"/>
   <range from=\"5997\" to=\"5997\"/>
   <range from=\"6001\" to=\"6001\"/>
   <range from=\"6004\" to=\"6015\"/>
   <range from=\"6110\" to=\"6111\"/>
   <range from=\"6122\" to=\"6127\"/>
   <range from=\"6138\" to=\"6143\"/>
   <range from=\"6159\" to=\"6159\"/>
   <range from=\"6170\" to=\"6175\"/>
   <range from=\"6264\" to=\"6271\"/>
   <range from=\"6315\" to=\"6319\"/>
   <range from=\"6390\" to=\"6399\"/>
   <range from=\"6429\" to=\"6431\"/>
   <range from=\"6444\" to=\"6447\"/>
   <range from=\"6460\" to=\"6463\"/>
   <range from=\"6465\" to=\"6467\"/>
   <range from=\"6510\" to=\"6511\"/>
   <range from=\"6517\" to=\"6527\"/>
   <range from=\"6572\" to=\"6575\"/>
   <range from=\"6602\" to=\"6607\"/>
   <range from=\"6619\" to=\"6621\"/>
   <range from=\"6684\" to=\"6685\"/>
   <range from=\"6751\" to=\"6751\"/>
   <range from=\"6781\" to=\"6782\"/>
   <range from=\"6794\" to=\"6799\"/>
   <range from=\"6810\" to=\"6815\"/>
   <range from=\"6830\" to=\"6831\"/>
   <range from=\"6832\" to=\"6911\"/>
   <range from=\"6988\" to=\"6991\"/>
   <range from=\"7037\" to=\"7039\"/>
   <range from=\"7156\" to=\"7163\"/>
   <range from=\"7224\" to=\"7226\"/>
   <range from=\"7242\" to=\"7244\"/>
   <range from=\"7296\" to=\"7359\"/>
   <range from=\"7368\" to=\"7375\"/>
   <range from=\"7415\" to=\"7423\"/>
   <range from=\"7655\" to=\"7675\"/>
   <range from=\"7958\" to=\"7959\"/>
   <range from=\"7966\" to=\"7967\"/>
   <range from=\"8006\" to=\"8007\"/>
   <range from=\"8014\" to=\"8015\"/>
   <range from=\"8024\" to=\"8024\"/>
   <range from=\"8026\" to=\"8026\"/>
   <range from=\"8028\" to=\"8028\"/>
   <range from=\"8030\" to=\"8030\"/>
   <range from=\"8062\" to=\"8063\"/>
   <range from=\"8117\" to=\"8117\"/>
   <range from=\"8133\" to=\"8133\"/>
   <range from=\"8148\" to=\"8149\"/>
   <range from=\"8156\" to=\"8156\"/>
   <range from=\"8176\" to=\"8177\"/>
   <range from=\"8181\" to=\"8181\"/>
   <range from=\"8191\" to=\"8191\"/>
   <range from=\"8293\" to=\"8297\"/>
   <range from=\"8306\" to=\"8307\"/>
   <range from=\"8335\" to=\"8335\"/>
   <range from=\"8349\" to=\"8351\"/>
   <range from=\"8379\" to=\"8399\"/>
   <range from=\"8433\" to=\"8447\"/>
   <range from=\"8586\" to=\"8591\"/>
   <range from=\"9204\" to=\"9215\"/>
   <range from=\"9255\" to=\"9279\"/>
   <range from=\"9291\" to=\"9311\"/>
   <range from=\"9984\" to=\"9984\"/>
   <range from=\"11085\" to=\"11087\"/>
   <range from=\"11098\" to=\"11263\"/>
   <range from=\"11311\" to=\"11311\"/>
   <range from=\"11359\" to=\"11359\"/>
   <range from=\"11508\" to=\"11512\"/>
   <range from=\"11558\" to=\"11558\"/>
   <range from=\"11560\" to=\"11564\"/>
   <range from=\"11566\" to=\"11567\"/>
   <range from=\"11624\" to=\"11630\"/>
   <range from=\"11633\" to=\"11646\"/>
   <range from=\"11671\" to=\"11679\"/>
   <range from=\"11687\" to=\"11687\"/>
   <range from=\"11695\" to=\"11695\"/>
   <range from=\"11703\" to=\"11703\"/>
   <range from=\"11711\" to=\"11711\"/>
   <range from=\"11719\" to=\"11719\"/>
   <range from=\"11727\" to=\"11727\"/>
   <range from=\"11735\" to=\"11735\"/>
   <range from=\"11743\" to=\"11743\"/>
   <range from=\"11836\" to=\"11903\"/>
   <range from=\"11930\" to=\"11930\"/>
   <range from=\"12020\" to=\"12031\"/>
   <range from=\"12246\" to=\"12255\"/>
   <range from=\"12256\" to=\"12271\"/>
   <range from=\"12284\" to=\"12287\"/>
   <range from=\"12352\" to=\"12352\"/>
   <range from=\"12439\" to=\"12440\"/>
   <range from=\"12544\" to=\"12548\"/>
   <range from=\"12590\" to=\"12591\"/>
   <range from=\"12592\" to=\"12592\"/>
   <range from=\"12687\" to=\"12687\"/>
   <range from=\"12731\" to=\"12735\"/>
   <range from=\"12772\" to=\"12783\"/>
   <range from=\"12831\" to=\"12831\"/>
   <range from=\"13055\" to=\"13055\"/>
   <range from=\"19894\" to=\"19903\"/>
   <range from=\"40909\" to=\"40959\"/>
   <range from=\"42125\" to=\"42127\"/>
   <range from=\"42183\" to=\"42191\"/>
   <range from=\"42540\" to=\"42559\"/>
   <range from=\"42648\" to=\"42654\"/>
   <range from=\"42744\" to=\"42751\"/>
   <range from=\"42895\" to=\"42895\"/>
   <range from=\"42900\" to=\"42911\"/>
   <range from=\"42923\" to=\"42999\"/>
   <range from=\"43052\" to=\"43055\"/>
   <range from=\"43066\" to=\"43071\"/>
   <range from=\"43128\" to=\"43135\"/>
   <range from=\"43205\" to=\"43213\"/>
   <range from=\"43226\" to=\"43231\"/>
   <range from=\"43260\" to=\"43263\"/>
   <range from=\"43348\" to=\"43358\"/>
   <range from=\"43389\" to=\"43391\"/>
   <range from=\"43470\" to=\"43470\"/>
   <range from=\"43482\" to=\"43485\"/>
   <range from=\"43488\" to=\"43519\"/>
   <range from=\"43575\" to=\"43583\"/>
   <range from=\"43598\" to=\"43599\"/>
   <range from=\"43610\" to=\"43611\"/>
   <range from=\"43644\" to=\"43647\"/>
   <range from=\"43715\" to=\"43738\"/>
   <range from=\"43767\" to=\"43775\"/>
   <range from=\"43776\" to=\"43776\"/>
   <range from=\"43783\" to=\"43784\"/>
   <range from=\"43791\" to=\"43792\"/>
   <range from=\"43799\" to=\"43807\"/>
   <range from=\"43815\" to=\"43815\"/>
   <range from=\"43823\" to=\"43823\"/>
   <range from=\"43824\" to=\"43967\"/>
   <range from=\"44014\" to=\"44015\"/>
   <range from=\"44026\" to=\"44031\"/>
   <range from=\"55204\" to=\"55215\"/>
   <range from=\"55239\" to=\"55242\"/>
   <range from=\"55292\" to=\"55295\"/>
   <range from=\"64110\" to=\"64111\"/>
   <range from=\"64218\" to=\"64255\"/>
   <range from=\"64263\" to=\"64274\"/>
   <range from=\"64280\" to=\"64284\"/>
   <range from=\"64311\" to=\"64311\"/>
   <range from=\"64317\" to=\"64317\"/>
   <range from=\"64319\" to=\"64319\"/>
   <range from=\"64322\" to=\"64322\"/>
   <range from=\"64325\" to=\"64325\"/>
   <range from=\"64450\" to=\"64466\"/>
   <range from=\"64832\" to=\"64847\"/>
   <range from=\"64912\" to=\"64913\"/>
   <range from=\"64968\" to=\"64975\"/>
   <range from=\"65022\" to=\"65023\"/>
   <range from=\"65050\" to=\"65055\"/>
   <range from=\"65063\" to=\"65071\"/>
   <range from=\"65107\" to=\"65107\"/>
   <range from=\"65127\" to=\"65127\"/>
   <range from=\"65132\" to=\"65135\"/>
   <range from=\"65141\" to=\"65141\"/>
   <range from=\"65277\" to=\"65278\"/>
   <range from=\"65280\" to=\"65280\"/>
   <range from=\"65471\" to=\"65473\"/>
   <range from=\"65480\" to=\"65481\"/>
   <range from=\"65488\" to=\"65489\"/>
   <range from=\"65496\" to=\"65497\"/>
   <range from=\"65501\" to=\"65503\"/>
   <range from=\"65511\" to=\"65511\"/>
   <range from=\"65519\" to=\"65519\"/>
   <range from=\"65520\" to=\"65528\"/>
   <range from=\"65548\" to=\"65548\"/>
   <range from=\"65575\" to=\"65575\"/>
   <range from=\"65595\" to=\"65595\"/>
   <range from=\"65598\" to=\"65598\"/>
   <range from=\"65614\" to=\"65615\"/>
   <range from=\"65630\" to=\"65663\"/>
   <range from=\"65787\" to=\"65791\"/>
   <range from=\"65795\" to=\"65798\"/>
   <range from=\"65844\" to=\"65846\"/>
   <range from=\"65931\" to=\"65935\"/>
   <range from=\"65948\" to=\"65999\"/>
   <range from=\"66046\" to=\"66047\"/>
   <range from=\"66048\" to=\"66175\"/>
   <range from=\"66205\" to=\"66207\"/>
   <range from=\"66257\" to=\"66271\"/>
   <range from=\"66272\" to=\"66303\"/>
   <range from=\"66335\" to=\"66335\"/>
   <range from=\"66340\" to=\"66351\"/>
   <range from=\"66379\" to=\"66383\"/>
   <range from=\"66384\" to=\"66431\"/>
   <range from=\"66462\" to=\"66462\"/>
   <range from=\"66500\" to=\"66503\"/>
   <range from=\"66518\" to=\"66527\"/>
   <range from=\"66528\" to=\"66559\"/>
   <range from=\"66718\" to=\"66719\"/>
   <range from=\"66730\" to=\"66735\"/>
   <range from=\"66736\" to=\"67583\"/>
   <range from=\"67590\" to=\"67591\"/>
   <range from=\"67593\" to=\"67593\"/>
   <range from=\"67638\" to=\"67638\"/>
   <range from=\"67641\" to=\"67643\"/>
   <range from=\"67645\" to=\"67646\"/>
   <range from=\"67670\" to=\"67670\"/>
   <range from=\"67680\" to=\"67839\"/>
   <range from=\"67868\" to=\"67870\"/>
   <range from=\"67898\" to=\"67902\"/>
   <range from=\"67904\" to=\"67967\"/>
   <range from=\"68024\" to=\"68029\"/>
   <range from=\"68032\" to=\"68095\"/>
   <range from=\"68100\" to=\"68100\"/>
   <range from=\"68103\" to=\"68107\"/>
   <range from=\"68116\" to=\"68116\"/>
   <range from=\"68120\" to=\"68120\"/>
   <range from=\"68148\" to=\"68151\"/>
   <range from=\"68155\" to=\"68158\"/>
   <range from=\"68168\" to=\"68175\"/>
   <range from=\"68185\" to=\"68191\"/>
   <range from=\"68224\" to=\"68351\"/>
   <range from=\"68406\" to=\"68408\"/>
   <range from=\"68438\" to=\"68439\"/>
   <range from=\"68467\" to=\"68471\"/>
   <range from=\"68480\" to=\"68607\"/>
   <range from=\"68681\" to=\"68687\"/>
   <range from=\"68688\" to=\"69215\"/>
   <range from=\"69247\" to=\"69247\"/>
   <range from=\"69248\" to=\"69631\"/>
   <range from=\"69710\" to=\"69713\"/>
   <range from=\"69744\" to=\"69759\"/>
   <range from=\"69826\" to=\"69839\"/>
   <range from=\"69865\" to=\"69871\"/>
   <range from=\"69882\" to=\"69887\"/>
   <range from=\"69941\" to=\"69941\"/>
   <range from=\"69956\" to=\"69967\"/>
   <range from=\"69968\" to=\"70015\"/>
   <range from=\"70089\" to=\"70095\"/>
   <range from=\"70106\" to=\"70111\"/>
   <range from=\"70112\" to=\"71295\"/>
   <range from=\"71352\" to=\"71359\"/>
   <range from=\"71370\" to=\"71375\"/>
   <range from=\"71376\" to=\"73727\"/>
   <range from=\"74607\" to=\"74751\"/>
   <range from=\"74851\" to=\"74863\"/>
   <range from=\"74868\" to=\"74879\"/>
   <range from=\"74880\" to=\"77823\"/>
   <range from=\"78895\" to=\"78895\"/>
   <range from=\"78896\" to=\"92159\"/>
   <range from=\"92729\" to=\"92735\"/>
   <range from=\"92736\" to=\"93951\"/>
   <range from=\"94021\" to=\"94031\"/>
   <range from=\"94079\" to=\"94094\"/>
   <range from=\"94112\" to=\"110591\"/>
   <range from=\"110594\" to=\"110847\"/>
   <range from=\"110848\" to=\"118783\"/>
   <range from=\"119030\" to=\"119039\"/>
   <range from=\"119079\" to=\"119080\"/>
   <range from=\"119262\" to=\"119295\"/>
   <range from=\"119366\" to=\"119375\"/>
   <range from=\"119376\" to=\"119551\"/>
   <range from=\"119639\" to=\"119647\"/>
   <range from=\"119666\" to=\"119679\"/>
   <range from=\"119680\" to=\"119807\"/>
   <range from=\"119893\" to=\"119893\"/>
   <range from=\"119965\" to=\"119965\"/>
   <range from=\"119968\" to=\"119969\"/>
   <range from=\"119971\" to=\"119972\"/>
   <range from=\"119975\" to=\"119976\"/>
   <range from=\"119981\" to=\"119981\"/>
   <range from=\"119994\" to=\"119994\"/>
   <range from=\"119996\" to=\"119996\"/>
   <range from=\"120004\" to=\"120004\"/>
   <range from=\"120070\" to=\"120070\"/>
   <range from=\"120075\" to=\"120076\"/>
   <range from=\"120085\" to=\"120085\"/>
   <range from=\"120093\" to=\"120093\"/>
   <range from=\"120122\" to=\"120122\"/>
   <range from=\"120127\" to=\"120127\"/>
   <range from=\"120133\" to=\"120133\"/>
   <range from=\"120135\" to=\"120137\"/>
   <range from=\"120145\" to=\"120145\"/>
   <range from=\"120486\" to=\"120487\"/>
   <range from=\"120780\" to=\"120781\"/>
   <range from=\"120832\" to=\"124927\"/>
   <range from=\"124928\" to=\"126463\"/>
   <range from=\"126468\" to=\"126468\"/>
   <range from=\"126496\" to=\"126496\"/>
   <range from=\"126499\" to=\"126499\"/>
   <range from=\"126501\" to=\"126502\"/>
   <range from=\"126504\" to=\"126504\"/>
   <range from=\"126515\" to=\"126515\"/>
   <range from=\"126520\" to=\"126520\"/>
   <range from=\"126522\" to=\"126522\"/>
   <range from=\"126524\" to=\"126529\"/>
   <range from=\"126531\" to=\"126534\"/>
   <range from=\"126536\" to=\"126536\"/>
   <range from=\"126538\" to=\"126538\"/>
   <range from=\"126540\" to=\"126540\"/>
   <range from=\"126544\" to=\"126544\"/>
   <range from=\"126547\" to=\"126547\"/>
   <range from=\"126549\" to=\"126550\"/>
   <range from=\"126552\" to=\"126552\"/>
   <range from=\"126554\" to=\"126554\"/>
   <range from=\"126556\" to=\"126556\"/>
   <range from=\"126558\" to=\"126558\"/>
   <range from=\"126560\" to=\"126560\"/>
   <range from=\"126563\" to=\"126563\"/>
   <range from=\"126565\" to=\"126566\"/>
   <range from=\"126571\" to=\"126571\"/>
   <range from=\"126579\" to=\"126579\"/>
   <range from=\"126584\" to=\"126584\"/>
   <range from=\"126589\" to=\"126589\"/>
   <range from=\"126591\" to=\"126591\"/>
   <range from=\"126602\" to=\"126602\"/>
   <range from=\"126620\" to=\"126624\"/>
   <range from=\"126628\" to=\"126628\"/>
   <range from=\"126634\" to=\"126634\"/>
   <range from=\"126652\" to=\"126703\"/>
   <range from=\"126706\" to=\"126719\"/>
   <range from=\"126720\" to=\"126975\"/>
   <range from=\"127020\" to=\"127023\"/>
   <range from=\"127124\" to=\"127135\"/>
   <range from=\"127151\" to=\"127152\"/>
   <range from=\"127167\" to=\"127168\"/>
   <range from=\"127184\" to=\"127184\"/>
   <range from=\"127200\" to=\"127231\"/>
   <range from=\"127243\" to=\"127247\"/>
   <range from=\"127279\" to=\"127279\"/>
   <range from=\"127340\" to=\"127343\"/>
   <range from=\"127387\" to=\"127461\"/>
   <range from=\"127491\" to=\"127503\"/>
   <range from=\"127547\" to=\"127551\"/>
   <range from=\"127561\" to=\"127567\"/>
   <range from=\"127570\" to=\"127743\"/>
   <range from=\"127777\" to=\"127791\"/>
   <range from=\"127798\" to=\"127798\"/>
   <range from=\"127869\" to=\"127871\"/>
   <range from=\"127892\" to=\"127903\"/>
   <range from=\"127941\" to=\"127941\"/>
   <range from=\"127947\" to=\"127967\"/>
   <range from=\"127985\" to=\"127999\"/>
   <range from=\"128063\" to=\"128063\"/>
   <range from=\"128065\" to=\"128065\"/>
   <range from=\"128248\" to=\"128248\"/>
   <range from=\"128253\" to=\"128255\"/>
   <range from=\"128318\" to=\"128319\"/>
   <range from=\"128324\" to=\"128335\"/>
   <range from=\"128360\" to=\"128506\"/>
   <range from=\"128577\" to=\"128580\"/>
   <range from=\"128592\" to=\"128639\"/>
   <range from=\"128710\" to=\"128767\"/>
   <range from=\"128884\" to=\"128895\"/>
   <range from=\"128896\" to=\"131069\"/>
   <range from=\"173783\" to=\"173791\"/>
   <range from=\"173792\" to=\"173823\"/>
   <range from=\"177973\" to=\"177983\"/>
   <range from=\"178206\" to=\"178207\"/>
   <range from=\"178208\" to=\"194559\"/>
   <range from=\"195102\" to=\"195103\"/>
   <range from=\"195104\" to=\"196605\"/>
   <range from=\"196608\" to=\"262141\"/>
   <range from=\"262144\" to=\"327677\"/>
   <range from=\"327680\" to=\"393213\"/>
   <range from=\"393216\" to=\"458749\"/>
   <range from=\"458752\" to=\"524285\"/>
   <range from=\"524288\" to=\"589821\"/>
   <range from=\"589824\" to=\"655357\"/>
   <range from=\"655360\" to=\"720893\"/>
   <range from=\"720896\" to=\"786429\"/>
   <range from=\"786432\" to=\"851965\"/>
   <range from=\"851968\" to=\"917501\"/>
   <range from=\"917504\" to=\"917504\"/>
   <range from=\"917506\" to=\"917535\"/>
   <range from=\"917632\" to=\"917759\"/>
   <range from=\"918000\" to=\"921599\"/>
   <range from=\"921600\" to=\"983037\"/>
</Cn>;

<out>{   
   let $codes := for $r in $Cn//range return (xs:integer($r/@from) to xs:integer($r/@to))
   for $code in $codes
   for $char in codepoints-to-string($code)
   where not(codepoint-equal(normalize-unicode($char, 'NFC'), $char))
         or not(codepoint-equal(normalize-unicode($char, 'NFD'), $char))
   return 
   <norm char=\"{string-to-codepoints($char)}\"
         nfc=\"{string-to-codepoints(normalize-unicode($char, 'NFC'))}\"
         nfd=\"{string-to-codepoints(normalize-unicode($char, 'NFD'))}\"/>
}</out>
",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NormalizeUnicodeFunc-1'(_Config) ->
   Qry = "normalize-unicode()",
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
'K-NormalizeUnicodeFunc-2'(_Config) ->
   Qry = "normalize-unicode(\"a string\", \"NFC\", \"wrong param\")",
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
'K-NormalizeUnicodeFunc-3'(_Config) ->
   Qry = "normalize-unicode(\"a string\", \"example.com/notSupported/\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NormalizeUnicodeFunc-4'(_Config) ->
   Qry = "normalize-unicode(\"foo\") eq \"foo\"",
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
'K-NormalizeUnicodeFunc-5'(_Config) ->
   Qry = "normalize-unicode(\"foo\", \"NFC\") eq \"foo\"",
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
'K-NormalizeUnicodeFunc-6'(_Config) ->
   Qry = "normalize-unicode(\"foo\", \"NFD\") eq \"foo\"",
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
'K-NormalizeUnicodeFunc-7'(_Config) ->
   Qry = "normalize-unicode(\"foo\", \"NFKD\") eq \"foo\"",
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
'K-NormalizeUnicodeFunc-8'(_Config) ->
   Qry = "normalize-unicode(\"foo\", \"NFKC\") eq \"foo\"",
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
'K-NormalizeUnicodeFunc-9'(_Config) ->
   Qry = "normalize-unicode(\"f oo\", \"\") eq \"f oo\"",
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
'K-NormalizeUnicodeFunc-10'(_Config) ->
   Qry = "normalize-unicode(\"foo\", \"\") eq \"foo\"",
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
'K-NormalizeUnicodeFunc-11'(_Config) ->
   Qry = "normalize-unicode(\"f oo\") eq \"f oo\"",
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
'K-NormalizeUnicodeFunc-12'(_Config) ->
   Qry = "normalize-unicode(\"f oo\", \"NFC\") eq \"f oo\"",
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
'K-NormalizeUnicodeFunc-13'(_Config) ->
   Qry = "normalize-unicode((\"a string\", error()), \"NFC\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'cbcl-fn-normalize-unicode-001'(_Config) ->
   {skip,"unicode-normalization-form FULLY-NORMALIZED"}.
'cbcl-fn-normalize-unicode-001a'(_Config) ->
   Qry = "normalize-unicode(\"blah\",\"FULLY-NORMALIZED\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-normalize-unicode-002'(_Config) ->
   Qry = "boolean(normalize-unicode(\"blah\",\"NFC\"))",
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
'cbcl-fn-normalize-unicode-003'(_Config) ->
   Qry = "boolean(normalize-unicode(\"blah\",\"ZZZ\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-normalize-unicode-004'(_Config) ->
   Qry = "normalize-unicode((),\"NFC\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-normalize-unicode-005'(_Config) ->
   Qry = "normalize-unicode(\"\",\"NFC\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-fn-normalize-unicode-006'(_Config) ->
   {skip,"unicode-normalization-form FULLY-NORMALIZED"}.
'cbcl-fn-normalize-unicode-006a'(_Config) ->
   Qry = "normalize-unicode(codepoints-to-string(2494),\"FULLY-NORMALIZED\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOCH0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
