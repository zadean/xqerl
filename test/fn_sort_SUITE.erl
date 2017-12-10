-module('fn_sort_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-sort-1'/1]).
-export(['fn-sort-2'/1]).
-export(['fn-sort-3'/1]).
-export(['fn-sort-4'/1]).
-export(['fn-sort-5'/1]).
-export(['fn-sort-6'/1]).
-export(['fn-sort-7'/1]).
-export(['fn-sort-8'/1]).
-export(['fn-sort-9'/1]).
-export(['fn-sort-10'/1]).
-export(['fn-sort-11'/1]).
-export(['fn-sort-12'/1]).
-export(['fn-sort-13'/1]).
-export(['fn-sort-14'/1]).
-export(['fn-sort-15'/1]).
-export(['fn-sort-16'/1]).
-export(['fn-sort-17'/1]).
-export(['fn-sort-18'/1]).
-export(['fn-sort-19'/1]).
-export(['fn-sort-20'/1]).
-export(['fn-sort-21'/1]).
-export(['fn-sort-22'/1]).
-export(['fn-sort-frac-1'/1]).
-export(['fn-sort-str-1'/1]).
-export(['fn-sort2-str-1'/1]).
-export(['fn-sort2-str-2'/1]).
-export(['fn-sort-error-1'/1]).
-export(['fn-sort-error-2'/1]).
-export(['fn-sort-error-3'/1]).
-export(['fn-sort-spec-1'/1]).
-export(['fn-sort-spec-1b'/1]).
-export(['fn-sort-spec-2'/1]).
-export(['fn-sort-spec-4'/1]).
-export(['fn-sort-spec-5'/1]).
-export(['fn-sort-collation-1'/1]).
-export(['fn-sort-collation-2'/1]).
-export(['fn-sort-collation-3'/1]).
-export(['fn-sort-collation-4'/1]).
-export(['fn-sort-collation-5'/1]).
-export(['fn-sort-collation-6'/1]).
-export(['fn-sort-collation-7'/1]).
-export(['fn-sort-collation-8'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(proplists:get_value(data_dir, Config))),
   TD = filename:absname_join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "fn")

,[{base_dir, BaseDir}|Config].
all() -> [
   'fn-sort-1',
   'fn-sort-2',
   'fn-sort-3',
   'fn-sort-4',
   'fn-sort-5',
   'fn-sort-6',
   'fn-sort-7',
   'fn-sort-8',
   'fn-sort-9',
   'fn-sort-10',
   'fn-sort-11',
   'fn-sort-12',
   'fn-sort-13',
   'fn-sort-14',
   'fn-sort-15',
   'fn-sort-16',
   'fn-sort-17',
   'fn-sort-18',
   'fn-sort-19',
   'fn-sort-20',
   'fn-sort-21',
   'fn-sort-22',
   'fn-sort-frac-1',
   'fn-sort-str-1',
   'fn-sort2-str-1',
   'fn-sort2-str-2',
   'fn-sort-error-1',
   'fn-sort-error-2',
   'fn-sort-error-3',
   'fn-sort-spec-1',
   'fn-sort-spec-1b',
   'fn-sort-spec-2',
   'fn-sort-spec-4',
   'fn-sort-spec-5',
   'fn-sort-collation-1',
   'fn-sort-collation-2',
   'fn-sort-collation-3',
   'fn-sort-collation-4',
   'fn-sort-collation-5',
   'fn-sort-collation-6',
   'fn-sort-collation-7',
   'fn-sort-collation-8'].
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
'fn-sort-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:empty(fn:sort( () ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (1, 2, 3) ) return (count($r) eq 3 and $r[1] eq 1 and $r[2] eq 2 and
         $r[3] eq 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (3, 2, 1) ) return (count($r) eq 3 and $r[1] eq 1 and $r[2] eq 2 and
         $r[3] eq 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (1) ) return (count($r) eq 1 and $r[1] eq 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort(42) = 42",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (1) ) return (count($r) eq 1 and $r[1] eq 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (1, 17) ) return (count($r) eq 2 and $r[1] eq 1 and $r[2] eq
         17)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (17, 1) ) return (count($r) eq 2 and $r[1] eq 1 and $r[2] eq
         17)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-9'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (17, 17) ) return (count($r) eq 2 and $r[1] eq 17 and $r[2] eq
         17)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-10'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (17, 5, 14) ) return (count($r) eq 3 and $r[1] eq 5 and $r[2] eq 14
         and$r[3] eq 17)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-11'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (4, 4, 4) ) return (count($r) eq 3 and $r[1] eq 4 and $r[2] eq 4 and
         $r[3] eq 4)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-12'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (17, 14, 5) ) return (count($r) eq 3 and $r[1] eq 5 and $r[2] eq 14
         and $r[3] eq 17)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-13'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (-42, 14, 5, 6, 14, 0) ) return (count($r) eq 6 and $r[1] eq -42 and
         $r[2] eq 0 and $r[3] eq 5 and $r[4] eq 6 and $r[5] eq 14 and $r[6] eq 14) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-14'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
        <turtles>
          <name>Leonardo</name>
          <name>Raphael</name>
          <name>Donatello</name>
          <name>Michelangelo</name>
        </turtles>
        !sort(*)!data()
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Donatello\", \"Leonardo\", \"Michelangelo\", \"Raphael\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-15'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         deep-equal(
            sort(
              (
                [<e>a</e>, <e>b</e>],
                [(<f>a</f>, <f>b</f>)],
                [<g>a</g>, <g>b</g>],
                \"A\",
                <h><i><j>A</j></i></h>   
              )
            )
            ,(
                \"A\",
                <h><i><j>A</j></i></h>,     
                [<e>a</e>, <e>b</e>],
                [(<f>a</f>, <f>b</f>)],
                [<g>a</g>, <g>b</g>]  
              )
            )
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-16'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "deep-equal(
         sort((\"b\", \"d\", <e>a</e>, \"c\", <f>e</f>))
         ,(<e>a</e>, \"b\", \"c\", \"d\", <f>e</f>)
         )
         ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-17'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
          let $a := [xs:float(\"NaN\"), 1],     
          $b := [xs:float(\"NaN\"), 2]
          return     
             sort(($a,$b,$a,$b))
        ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"every $x in 1 to 4 satisfies deep-equal($result[$x]?1, xs:float(\"NaN\"))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[1]?2 eq 1 and $result[2]?2 eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result[3]?2 eq 2 and $result[4]?2 eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-18'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( (1, [1, 2]) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, [1, 2])") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-19'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( ([1, 2], 1) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, [1, 2])") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-20'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( ([()], 1) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"([()], 1)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-21'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( (1, [()]) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"([()], 1)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-22'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( (map{\"key\":1, \"value\":89}, map{\"key\":6, \"value\":21}, map{\"key\":2, \"value\":33}),
         (), map:get(?, \"key\"))?value",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-22.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"89, 33, 21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-frac-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (-4.2, 14.25, 5.99, 6, 14.24, 0) ) return (count($r) eq 6 and $r[1]
         eq -4.2 and $r[2] eq 0 and $r[3] eq 5.99 and $r[4] eq 6 and $r[5] eq 14.24 and $r[6] eq
         14.25) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-frac-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-str-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (\"boy\",\"for\",\"new\",\"chosen\",\"black\",\"pope\") ) return (count($r) eq 6
         and $r[1] eq \"black\" and $r[2] eq \"boy\" and $r[3] eq \"chosen\" and $r[4] eq \"for\" and $r[5]
         eq \"new\" and $r[6] eq \"pope\" ) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-str-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort2-str-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (\"boy\",\"for\",\"new\",\"chosen\",\"black\",\"pope\"), (), fn:data#1 ) return
         (count($r) eq 6 and $r[1] eq \"black\" and $r[2] eq \"boy\" and $r[3] eq \"chosen\" and $r[4] eq
         \"for\" and $r[5] eq \"new\" and $r[6] eq \"pope\" ) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort2-str-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort2-str-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort( (\"boy\",\"for\",\"new\",\"chosen\",\"black\",\"pope\"), (), function($input as
         xs:anyAtomicType *) as item()* { fn:data($input) } ) return (count($r) eq 6 and $r[1] eq
         \"black\" and $r[2] eq \"boy\" and $r[3] eq \"chosen\" and $r[4] eq \"for\" and $r[5] eq \"new\" and
         $r[6] eq \"pope\" ) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort2-str-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-error-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( (1, \"a\") )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-error-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-error-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( (map{\"key\":1}, map{\"key\":\"a\"}), (), map:get(?, \"key\"))",
   {Env,Opts} = xqerl_test:handle_environment(environment('map',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-error-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-error-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort( (1, xs:untypedAtomic(\"2\")) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-error-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-spec-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort((1, 4, 6, 5, 3), (), fn:data#1 ) return (count($r) eq 5 and $r[1] eq 1
         and $r[2] eq 3 and $r[3] eq 4 and $r[4] eq 5 and $r[5] eq 6 ) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-spec-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-spec-1b'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort((10, 4, 6, 5, 3), (), fn:data#1 ) return (count($r) eq 5 and $r[1] eq
         3 and $r[2] eq 4 and $r[3] eq 5 and $r[4] eq 6 and $r[5] eq 10 ) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-spec-1b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-spec-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let $r := fn:sort((1, -2, 5, 10, -10, 10, 8), (), fn:abs#1) return (count($r) eq 7 and
         $r[1] eq 1 and $r[2] eq -2 and $r[3] eq 5 and $r[4] eq 8 and $r[5] eq 10 and $r[6] eq -10
         and $r[7] eq 10 ) ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-spec-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-spec-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let
	  $employees := (
	    <emp><name><first>Reginald</first><last>Cawcutt</last></name></emp>,
	    <emp><name><first>Hans</first><last>Gro&#xeb;r</last></name></emp>,
	    <emp><name><first>Domingo</first><last>De Silveira</last></name></emp>,
	    <emp><name><first>Keith</first><last>O'Brien</last></name></emp>,
	    <emp><name><first>Susan</first><last>Cawcutt</last></name></emp>,
	    <emp><name><first>Martin</first><last>Cawcutt</last></name></emp>
	    ),
	  $r := fn:sort($employees, default-collation(), function($emp) {$emp/name/last, $emp/name/first})
	  return (count($r) eq 6
	  and fn:data($r[1]/name/first) eq \"Martin\"
	  and fn:data($r[2]/name/first) eq \"Reginald\"
	  and fn:data($r[3]/name/first) eq \"Susan\"
	  and fn:data($r[4]/name/first) eq \"Domingo\"
	  and fn:data($r[5]/name/first) eq \"Hans\"
	  and fn:data($r[6]/name/first) eq \"Keith\"
	  )
     ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-spec-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-spec-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "let
	  $employees := (
	    <emp id='1'><name><last>Cawcutt</last></name></emp>,
	    <emp id='2'><name><first>Hans</first><last>Gro&#xeb;r</last></name></emp>,
	    <emp id='3'><name><first>Domingo</first><last>De Silveira</last></name></emp>,
	    <emp id='4'><name><first>Keith</first><last>O'Brien</last></name></emp>,
	    <emp id='5'><name><first>Susan</first><last>Cawcutt</last></name></emp>,
	    <emp id='6'><name><first>Martin</first><last>Cawcutt</last></name></emp>,
	    <emp id='7'><name><first>Martin</first><first>James</first><last>Cawcutt</last></name></emp>
	    )
	    return fn:sort($employees, default-collation(), function($emp) {$emp/name/last, $emp/name/first}) ! number(@id)
     ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-spec-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1, 6, 7, 5, 3, 2, 4") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-1'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"))
     ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-2'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"), ())
     ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-3'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";
         fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"), (), string#1)
     ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-4'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),
         \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-5'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),
         \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\", fn:string#1)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-6'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),
         \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-7'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),
         \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", fn:string#1)",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-sort-collation-8'(Config) ->
   BaseDir = proplists:get_value(base_dir, Config),
   Qry = "
         declare function local:key($n as xs:integer) as xs:string {
             (\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\")[$n]
         };
         fn:sort((1 to 5), \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\", local:key#1)
         ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "fn-sort-collation-8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3, 2, 5, 4, 1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
