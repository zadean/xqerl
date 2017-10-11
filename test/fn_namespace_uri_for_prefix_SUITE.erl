-module('fn_namespace_uri_for_prefix_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-namespace-uri-for-prefix-1'/1]).
-export(['fn-namespace-uri-for-prefix-2'/1]).
-export(['fn-namespace-uri-for-prefix-3'/1]).
-export(['fn-namespace-uri-for-prefix-4'/1]).
-export(['fn-namespace-uri-for-prefix-5'/1]).
-export(['fn-namespace-uri-for-prefix-6'/1]).
-export(['fn-namespace-uri-for-prefix-7'/1]).
-export(['fn-namespace-uri-for-prefix-8'/1]).
-export(['fn-namespace-uri-for-prefix-9'/1]).
-export(['fn-namespace-uri-for-prefix-10'/1]).
-export(['fn-namespace-uri-for-prefix-11'/1]).
-export(['fn-namespace-uri-for-prefix-12'/1]).
-export(['fn-namespace-uri-for-prefix-13'/1]).
-export(['fn-namespace-uri-for-prefix-14'/1]).
-export(['fn-namespace-uri-for-prefix-15'/1]).
-export(['fn-namespace-uri-for-prefix-16'/1]).
-export(['fn-namespace-uri-for-prefix-17'/1]).
-export(['fn-namespace-uri-for-prefix-18'/1]).
-export(['fn-namespace-uri-for-prefix-19'/1]).
-export(['fn-namespace-uri-for-prefix-20'/1]).
-export(['fn-namespace-uri-for-prefix-21'/1]).
-export(['fn-namespace-uri-for-prefix-22'/1]).
-export(['fn-namespace-uri-for-prefix-23'/1]).
-export(['K-NamespaceURIForPrefixFunc-1'/1]).
-export(['K-NamespaceURIForPrefixFunc-2'/1]).
-export(['K2-NamespaceURIForPrefixFunc-1'/1]).
-export(['K2-NamespaceURIForPrefixFunc-2'/1]).
-export(['K2-NamespaceURIForPrefixFunc-3'/1]).
-export(['cbcl-namespace-uri-for-prefix-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-namespace-uri-for-prefix-1',
   'fn-namespace-uri-for-prefix-2',
   'fn-namespace-uri-for-prefix-3',
   'fn-namespace-uri-for-prefix-4',
   'fn-namespace-uri-for-prefix-5',
   'fn-namespace-uri-for-prefix-6',
   'fn-namespace-uri-for-prefix-7',
   'fn-namespace-uri-for-prefix-8',
   'fn-namespace-uri-for-prefix-9',
   'fn-namespace-uri-for-prefix-10',
   'fn-namespace-uri-for-prefix-11',
   'fn-namespace-uri-for-prefix-12',
   'fn-namespace-uri-for-prefix-13',
   'fn-namespace-uri-for-prefix-14',
   'fn-namespace-uri-for-prefix-15',
   'fn-namespace-uri-for-prefix-16',
   'fn-namespace-uri-for-prefix-17',
   'fn-namespace-uri-for-prefix-18',
   'fn-namespace-uri-for-prefix-19',
   'fn-namespace-uri-for-prefix-20',
   'fn-namespace-uri-for-prefix-21',
   'fn-namespace-uri-for-prefix-22',
   'fn-namespace-uri-for-prefix-23',
   'K-NamespaceURIForPrefixFunc-1',
   'K-NamespaceURIForPrefixFunc-2',
   'K2-NamespaceURIForPrefixFunc-1',
   'K2-NamespaceURIForPrefixFunc-2',
   'K2-NamespaceURIForPrefixFunc-3',
   'cbcl-namespace-uri-for-prefix-001'].
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
'fn-namespace-uri-for-prefix-1'(_Config) ->
   Qry = "let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
      return string(fn:namespace-uri-for-prefix(\"p1\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-2'(_Config) ->
   Qry = "
        let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
        return fn:count(fn:namespace-uri-for-prefix(\"p2\",$var))
      ",
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
'fn-namespace-uri-for-prefix-3'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/defaultspace\"; 
        let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
        return fn:string(fn:namespace-uri-for-prefix(\"\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/defaultspace") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-4'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.example.com/defaultspace\"; 
        let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
        return fn:string(fn:namespace-uri-for-prefix((), $var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/defaultspace") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-5'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(\"p1\",<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-6'(_Config) ->
   Qry = "fn:count(fn:namespace-uri-for-prefix(\"p2\",<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
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
'fn-namespace-uri-for-prefix-7'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(xs:string(\"p1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-8'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:string(\"p1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-9'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:upper-case(\"p1\"),<anElement xmlns:P1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-10'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:lower-case(\"P1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-11'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:substring(\"abcp1\",4),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-12'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:concat(\"p\",\"1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-13'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:string-join((\"p\",\"1\"),\"\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-14'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:substring-before(\"p1abc\",\"abc\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-15'(_Config) ->
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:substring-after(\"abcp1\",\"abc\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-16'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        fn:count(fn:namespace-uri-for-prefix(\"p1\",<anElement>some context</anElement>))",
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
'fn-namespace-uri-for-prefix-17'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        fn:count(fn:namespace-uri-for-prefix(\"p1\",element anElement {\"some content\"}))",
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
'fn-namespace-uri-for-prefix-18'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        let $var := element anElement {\"some content\"} 
        return fn:count(fn:namespace-uri-for-prefix(\"p1\",$var))",
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
'fn-namespace-uri-for-prefix-19'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        for $var in (element anElement {\"some content\"}) 
        return fn:count(fn:namespace-uri-for-prefix(\"p1\",$var))",
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
'fn-namespace-uri-for-prefix-20'(_Config) ->
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        for $var in element anElement {\"some content\"} 
        return fn:count(fn:namespace-uri-for-prefix(\"p1\",$var))",
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
'fn-namespace-uri-for-prefix-21'(_Config) ->
   Qry = "
        fn:string(fn:namespace-uri-for-prefix(\"p1\",
                    <anElement xmlns:p1=\"http://www.example.com/examples\" xmlns:p2=\"http://www.someotherns.com/namespace\">some content\"</anElement>
                  ))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-22'(_Config) ->
   Qry = "fn:namespace-uri-for-prefix(\"\", <e/>)",
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
'fn-namespace-uri-for-prefix-23'(_Config) ->
   Qry = "fn:namespace-uri-for-prefix((), <e/>)",
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
'K-NamespaceURIForPrefixFunc-1'(_Config) ->
   Qry = "namespace-uri-for-prefix()",
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
'K-NamespaceURIForPrefixFunc-2'(_Config) ->
   Qry = "namespace-uri-for-prefix(\"string\", (), \"wrong param\")",
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
'K2-NamespaceURIForPrefixFunc-1'(_Config) ->
   Qry = "declare namespace p = \"http://www.example.com/B\"; namespace-uri-for-prefix(\"\", <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" xmlns=\"http://www.example.com/B\"/> </e>/p:b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/B") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIForPrefixFunc-2'(_Config) ->
   Qry = "namespace-uri-for-prefix(\"\", exactly-one(
                      <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" xmlns=\"\"/> </e>/b)
                      )",
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
'K2-NamespaceURIForPrefixFunc-3'(_Config) ->
   Qry = "declare namespace p = \"http://www.example.com/A\"; namespace-uri-for-prefix(\"\", <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" /> </e>/p:b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/A") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-namespace-uri-for-prefix-001'(_Config) ->
   Qry = "
      	fn:boolean(fn:namespace-uri-for-prefix('', <a />))
      ",
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
