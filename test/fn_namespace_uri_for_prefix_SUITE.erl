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
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
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
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
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
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'fn-namespace-uri-for-prefix-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
      return string(fn:namespace-uri-for-prefix(\"p1\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
        return fn:count(fn:namespace-uri-for-prefix(\"p2\",$var))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/defaultspace\"; 
        let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
        return fn:string(fn:namespace-uri-for-prefix(\"\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/defaultspace") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        declare default element namespace \"http://www.example.com/defaultspace\"; 
        let $var := <anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement> 
        return fn:string(fn:namespace-uri-for-prefix((), $var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/defaultspace") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(\"p1\",<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:count(fn:namespace-uri-for-prefix(\"p2\",<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(xs:string(\"p1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:string(\"p1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:upper-case(\"p1\"),<anElement xmlns:P1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:lower-case(\"P1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:substring(\"abcp1\",4),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:concat(\"p\",\"1\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:string-join((\"p\",\"1\"),\"\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:substring-before(\"p1abc\",\"abc\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:string(fn:namespace-uri-for-prefix(fn:substring-after(\"abcp1\",\"abc\"),<anElement xmlns:p1 = \"http://www.example.com/examples\">some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        fn:count(fn:namespace-uri-for-prefix(\"p1\",<anElement>some context</anElement>))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        fn:count(fn:namespace-uri-for-prefix(\"p1\",element anElement {\"some content\"}))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        let $var := element anElement {\"some content\"} 
        return fn:count(fn:namespace-uri-for-prefix(\"p1\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        for $var in (element anElement {\"some content\"}) 
        return fn:count(fn:namespace-uri-for-prefix(\"p1\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare default element namespace \"http://www.example.com/defaultnamespace\"; 
        for $var in element anElement {\"some content\"} 
        return fn:count(fn:namespace-uri-for-prefix(\"p1\",$var))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        fn:string(fn:namespace-uri-for-prefix(\"p1\",
                    <anElement xmlns:p1=\"http://www.example.com/examples\" xmlns:p2=\"http://www.someotherns.com/namespace\">some content\"</anElement>
                  ))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/examples") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:namespace-uri-for-prefix(\"\", <e/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-namespace-uri-for-prefix-23'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:namespace-uri-for-prefix((), <e/>)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-namespace-uri-for-prefix-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceURIForPrefixFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri-for-prefix()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIForPrefixFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NamespaceURIForPrefixFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri-for-prefix(\"string\", (), \"wrong param\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K-NamespaceURIForPrefixFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIForPrefixFunc-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://www.example.com/B\"; namespace-uri-for-prefix(\"\", <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" xmlns=\"http://www.example.com/B\"/> </e>/p:b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIForPrefixFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/B") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIForPrefixFunc-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "namespace-uri-for-prefix(\"\", exactly-one(
                      <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" xmlns=\"\"/> </e>/b)
                      )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIForPrefixFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NamespaceURIForPrefixFunc-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "declare namespace p = \"http://www.example.com/A\"; namespace-uri-for-prefix(\"\", <e xmlns=\"http://www.example.com/A\" xmlns:A=\"http://www.example.com/C\"> <b xmlns:B=\"http://www.example.com/C\" /> </e>/p:b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-NamespaceURIForPrefixFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/A") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-namespace-uri-for-prefix-001'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
      	fn:boolean(fn:namespace-uri-for-prefix('', <a />))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-namespace-uri-for-prefix-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
