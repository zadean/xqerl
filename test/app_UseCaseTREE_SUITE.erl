-module('app_UseCaseTREE_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['tree-queries-results-q1'/1]).
-export(['tree-queries-results-q2'/1]).
-export(['tree-queries-results-q3'/1]).
-export(['tree-queries-results-q4'/1]).
-export(['tree-queries-results-q5'/1]).
-export(['tree-queries-results-q6'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'tree-queries-results-q1', 
'tree-queries-results-q2', 
'tree-queries-results-q3', 
'tree-queries-results-q4', 
'tree-queries-results-q5', 
'tree-queries-results-q6'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/staff.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('auction',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
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
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('math',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array-and-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('book',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/book.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'tree-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:toc($book-or-section as element()) as element()* { 
            for $section in $book-or-section/section 
            return <section> { $section/@* , $section/title , local:toc($section) } </section> };
        <toc> { for $s in /book return local:toc($s) } </toc>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('book',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "tree-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<toc><section id=\"intro\" difficulty=\"easy\"><title>Introduction</title><section><title>Audience</title></section><section><title>Web Data and the Two Cultures</title></section></section><section id=\"syntax\" difficulty=\"medium\"><title>A Syntax For Data</title><section><title>Base Types</title></section><section><title>Representing Relational Databases</title></section><section><title>Representing Object Databases</title></section></section></toc>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'tree-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<figlist> { for $f in //figure return <figure> { $f/@* } { $f/title } </figure> } </figlist>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('book',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "tree-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<figlist><figure height=\"400\" width=\"400\"><title>Traditional client/server architecture</title></figure><figure height=\"200\" width=\"500\"><title>Graph representations of structures</title></figure><figure height=\"250\" width=\"400\"><title>Examples of Relations</title></figure></figlist>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'tree-queries-results-q3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<section_count>{ count(//section) }</section_count>, <figure_count>{ count(//figure) }</figure_count>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('book',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "tree-queries-results-q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<section_count>7</section_count><figure_count>3</figure_count>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'tree-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<top_section_count> { count(/book/section) } </top_section_count>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('book',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "tree-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<top_section_count>2</top_section_count>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'tree-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<section_list> { for $s in //section let $f := $s/figure return <section title=\"{ $s/title/text() }\" figcount=\"{ count($f) }\"/> } </section_list>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('book',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "tree-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<section_list><section title=\"Introduction\" figcount=\"0\"/><section title=\"Audience\" figcount=\"0\"/><section title=\"Web Data and the Two Cultures\" figcount=\"1\"/><section title=\"A Syntax For Data\" figcount=\"1\"/><section title=\"Base Types\" figcount=\"0\"/><section title=\"Representing Relational Databases\" figcount=\"1\"/><section title=\"Representing Object Databases\" figcount=\"0\"/></section_list>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'tree-queries-results-q6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:section-summary($book-or-section as element()*) as element()* { 
            for $section in $book-or-section 
            return <section> { $section/@* } { $section/title } <figcount> { count($section/figure) } </figcount> { local:section-summary($section/section) } </section> 
        }; 
        <toc> { 
            for $s in /book/section 
            return local:section-summary($s) 
        } </toc>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('book',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "tree-queries-results-q6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<toc><section id=\"intro\" difficulty=\"easy\"><title>Introduction</title><figcount>0</figcount><section><title>Audience</title><figcount>0</figcount></section><section><title>Web Data and the Two Cultures</title><figcount>1</figcount></section></section><section id=\"syntax\" difficulty=\"medium\"><title>A Syntax For Data</title><figcount>1</figcount><section><title>Base Types</title><figcount>0</figcount></section><section><title>Representing Relational Databases</title><figcount>1</figcount></section><section><title>Representing Object Databases</title><figcount>0</figcount></section></section></toc>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.