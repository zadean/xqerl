-module('app_UseCaseSTRING_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['string-queries-results-q1'/1]).
-export(['string-queries-results-q2'/1]).
-export(['string-queries-results-q4'/1]).
-export(['string-queries-results-q5'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'string-queries-results-q1', 
'string-queries-results-q2', 
'string-queries-results-q4', 
'string-queries-results-q5'
].
environment('string',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/string.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('string-and-company-data',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/string.xml"), "$string",[]}, 
{filename:join(__BaseDir, "../docs/company-data.xml"), "$company-data",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'string-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "//news_item/title[contains(., \"Foobar Corporation\")]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('string',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "string-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(__BaseDir, "UseCaseSTRING/string-queries-results-q1.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'string-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $input-context1 := $string;
        declare variable $input-context2 := $company-data;

        declare function local:partners($company as xs:string) as element()*
        {
            let $c := $input-context2//company[name = $company]
            return $c//partner
        };

        let $foobar_partners := local:partners(\"Foobar Corporation\")

        for $item in $input-context1//news_item
        where
          some $t in $item//title satisfies
            (contains(exactly-one($t/text()), \"Foobar Corporation\")
            and (some $partner in $foobar_partners satisfies
              contains(exactly-one($t/text()), $partner/text())))
          or (some $par in $item//par satisfies
           (contains(string($par), \"Foobar Corporation\")
             and (some $partner in $foobar_partners satisfies
                contains(string($par), $partner/text()))))
        return
            <news_item>
                { $item/title }
                { $item/date }
            </news_item>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('string-and-company-data',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "string-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(__BaseDir, "UseCaseSTRING/string-queries-results-q2.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'string-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:partners($c as xs:string) as element()* { 
            let $c := $company-data//company[name = $c] 
            return $c//partner 
        }; 
        for $item in $string//news_item, 
            $c in $company-data//company 
        let $partners := local:partners(exactly-one($c/name)) 
        where contains(string($item), $c/name) 
          and (some $p in $partners satisfies contains(string($item), $p) and $item/news_agent != $c/name) 
        return $item", 
   {Env,Opts} = xqerl_test:handle_environment(environment('string-and-company-data',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "string-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(__BaseDir, "UseCaseSTRING/string-queries-results-q4.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'string-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $item in //news_item 
        where contains(string(exactly-one($item/content)), \"Gorilla Corporation\") 
        return <item_summary> { concat($item/title,\". \") } 
                              { concat($item/date,\". \") } 
                              { string(($item//par)[1]) } 
               </item_summary>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('string',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "string-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(__BaseDir, "UseCaseSTRING/string-queries-results-q5.out")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.