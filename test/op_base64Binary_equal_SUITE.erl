-module('op_base64Binary_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-base64Binary-equal2args-1'/1]).
-export(['op-base64Binary-equal2args-2'/1]).
-export(['op-base64Binary-equal2args-3'/1]).
-export(['op-base64Binary-equal2args-4'/1]).
-export(['op-base64Binary-equal2args-5'/1]).
-export(['op-base64Binary-equal2args-6'/1]).
-export(['op-base64Binary-equal2args-7'/1]).
-export(['op-base64Binary-equal2args-8'/1]).
-export(['op-base64Binary-equal2args-9'/1]).
-export(['op-base64Binary-equal2args-10'/1]).
-export(['base64BinaryEqual-1'/1]).
-export(['base64BinaryEqual-2'/1]).
-export(['base64BinaryEqual-3'/1]).
-export(['base64BinaryEqual-4'/1]).
-export(['base64binaryequal-5'/1]).
-export(['base64BinaryEqual-6'/1]).
-export(['base64BinaryEqual-7'/1]).
-export(['base64BinaryEqual-8'/1]).
-export(['base64BinaryEqual-9'/1]).
-export(['base64BinaryEqual-10'/1]).
-export(['base64BinaryEqual-11'/1]).
-export(['base64BinaryEqual-12'/1]).
-export(['base64BinaryEqual-13'/1]).
-export(['base64BinaryEqual-14'/1]).
-export(['K-Base64BinaryEQ-1'/1]).
-export(['K-Base64BinaryEQ-2'/1]).
-export(['K-Base64BinaryEQ-3'/1]).
-export(['cbcl-base64Binary-equal-001'/1]).
-export(['cbcl-base64Binary-equal-002'/1]).
-export(['cbcl-base64Binary-equal-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-base64Binary-equal2args-1',
   'op-base64Binary-equal2args-2',
   'op-base64Binary-equal2args-3',
   'op-base64Binary-equal2args-4',
   'op-base64Binary-equal2args-5',
   'op-base64Binary-equal2args-6',
   'op-base64Binary-equal2args-7',
   'op-base64Binary-equal2args-8',
   'op-base64Binary-equal2args-9',
   'op-base64Binary-equal2args-10',
   'base64BinaryEqual-1',
   'base64BinaryEqual-2',
   'base64BinaryEqual-3',
   'base64BinaryEqual-4',
   'base64binaryequal-5',
   'base64BinaryEqual-6',
   'base64BinaryEqual-7',
   'base64BinaryEqual-8',
   'base64BinaryEqual-9',
   'base64BinaryEqual-10',
   'base64BinaryEqual-11',
   'base64BinaryEqual-12',
   'base64BinaryEqual-13',
   'base64BinaryEqual-14',
   'K-Base64BinaryEQ-1',
   'K-Base64BinaryEQ-2',
   'K-Base64BinaryEQ-3',
   'cbcl-base64Binary-equal-001',
   'cbcl-base64Binary-equal-002',
   'cbcl-base64Binary-equal-003'].
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
'op-base64Binary-equal2args-1'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\")",
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
'op-base64Binary-equal2args-2'(_Config) ->
   Qry = "xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\") eq xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\")",
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
'op-base64Binary-equal2args-3'(_Config) ->
   Qry = "xs:base64Binary(\"cW9kanZzY3ZlaWthYXVreGxibm11dW91ZmllZGplbXZza2FqcGlwdWlxcG5xbHR4dmFjcWFjbGN1Z3BqYmVuZWhsdHhzeHZs\") eq xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\")",
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
'op-base64Binary-equal2args-4'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")",
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
'op-base64Binary-equal2args-5'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"cW9kanZzY3ZlaWthYXVreGxibm11dW91ZmllZGplbXZza2FqcGlwdWlxcG5xbHR4dmFjcWFjbGN1Z3BqYmVuZWhsdHhzeHZs\")",
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
'op-base64Binary-equal2args-6'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\")",
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
'op-base64Binary-equal2args-7'(_Config) ->
   Qry = "xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\") ne xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\")",
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
'op-base64Binary-equal2args-8'(_Config) ->
   Qry = "xs:base64Binary(\"cW9kanZzY3ZlaWthYXVreGxibm11dW91ZmllZGplbXZza2FqcGlwdWlxcG5xbHR4dmFjcWFjbGN1Z3BqYmVuZWhsdHhzeHZs\") ne xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\")",
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
'op-base64Binary-equal2args-9'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")",
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
'op-base64Binary-equal2args-10'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"cW9kanZzY3ZlaWthYXVreGxibm11dW91ZmllZGplbXZza2FqcGlwdWlxcG5xbHR4dmFjcWFjbGN1Z3BqYmVuZWhsdHhzeHZs\")",
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
'base64BinaryEqual-1'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) and (xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\"))",
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
'base64BinaryEqual-2'(_Config) ->
   Qry = "xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\") or xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")",
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
'base64BinaryEqual-3'(_Config) ->
   Qry = "fn:not(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\"))",
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
'base64BinaryEqual-4'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) and fn:true()",
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
'base64binaryequal-5'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) and fn:false()",
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
'base64BinaryEqual-6'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) or fn:true()",
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
'base64BinaryEqual-7'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) or fn:false()",
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
'base64BinaryEqual-8'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) and (xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") eq xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\"))",
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
'base64BinaryEqual-9'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) or (xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\"))",
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
'base64BinaryEqual-10'(_Config) ->
   Qry = "fn:not(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\"))",
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
'base64BinaryEqual-11'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) and fn:true()",
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
'base64BinaryEqual-12'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) and fn:false()",
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
'base64BinaryEqual-13'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) or fn:true()",
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
'base64BinaryEqual-14'(_Config) ->
   Qry = "(xs:base64Binary(\"cmxjZ3R4c3JidnllcmVuZG91aWpsbXV5Z2NhamxpcmJkaWFhbmFob2VsYXVwZmJ1Z2dmanl2eHlzYmhheXFtZXR0anV2dG1q\") ne xs:base64Binary(\"d2J1bnB0Y3lucWtvYXdpb2xoZWNwZXlkdG90eHB3ZXJqcnliZXFubmJjZXBmbGx3aGN3cmNndG9xb2hvdHdlY2pzZ3h5bnlp\")) or fn:false()",
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
'K-Base64BinaryEQ-1'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"03\")) eq xs:base64Binary(xs:hexBinary(\"03\"))",
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
'K-Base64BinaryEQ-2'(_Config) ->
   Qry = "xs:base64Binary(xs:hexBinary(\"03\")) ne xs:base64Binary(xs:hexBinary(\"13\"))",
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
'K-Base64BinaryEQ-3'(_Config) ->
   Qry = "xs:hexBinary(xs:base64Binary(\"/w==\")) eq xs:hexBinary(\"FF\")",
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
'cbcl-base64Binary-equal-001'(_Config) ->
   Qry = "
      declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { 
      	if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') 
      }; 
      local:base64Binary-value(true()) eq local:base64Binary-value(false())",
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
'cbcl-base64Binary-equal-002'(_Config) ->
   Qry = "
      	declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { 
      		if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') 
      	}; 
      	not(local:base64Binary-value(true()) eq local:base64Binary-value(false()))",
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
'cbcl-base64Binary-equal-003'(_Config) ->
   Qry = "
      	declare function local:base64Binary-value($arg as xs:boolean) as xs:base64Binary { 
      		if ($arg) then xs:base64Binary('aGVsbG8=') else xs:base64Binary('Z29vZGJ5ZQ==') 
      	}; 
      	not(local:base64Binary-value(true()) ne local:base64Binary-value(false()))",
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
