-module('prod_CompDocConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Constr-docnode-adjtext-1'/1]).
-export(['Constr-docnode-adjtext-2'/1]).
-export(['Constr-docnode-adjtext-3'/1]).
-export(['Constr-docnode-nested-1'/1]).
-export(['Constr-docnode-nested-2'/1]).
-export(['Constr-docnode-nested-3'/1]).
-export(['Constr-docnode-nested-4'/1]).
-export(['Constr-docnode-enclexpr-1'/1]).
-export(['Constr-docnode-enclexpr-2'/1]).
-export(['Constr-docnode-enclexpr-3'/1]).
-export(['Constr-docnode-enclexpr-4'/1]).
-export(['Constr-docnode-nodeid-1'/1]).
-export(['Constr-docnode-nodeid-3'/1]).
-export(['Constr-docnode-nodeid-4'/1]).
-export(['Constr-docnode-nodeid-5'/1]).
-export(['Constr-docnode-constrmod-1'/1]).
-export(['Constr-docnode-constrmod-2'/1]).
-export(['Constr-docnode-constrmod-3'/1]).
-export(['Constr-docnode-constrmod-4'/1]).
-export(['Constr-docnode-doc-1'/1]).
-export(['Constr-docnode-parent-1'/1]).
-export(['Constr-docnode-string-1'/1]).
-export(['Constr-docnode-data-1'/1]).
-export(['Constr-docnode-attr-1'/1]).
-export(['Constr-docnode-attr-2'/1]).
-export(['Constr-docnode-attr-3'/1]).
-export(['K2-ConDocNode-1'/1]).
-export(['K2-ConDocNode-2'/1]).
-export(['K2-ConDocNode-3'/1]).
-export(['K2-ConDocNode-4'/1]).
-export(['K2-ConDocNode-5'/1]).
-export(['K2-ConDocNode-6'/1]).
-export(['K2-ConDocNode-7'/1]).
-export(['K2-ConDocNode-8'/1]).
-export(['K2-ConDocNode-9'/1]).
-export(['K2-ConDocNode-10'/1]).
-export(['K2-ConDocNode-11'/1]).
-export(['K2-ConDocNode-12'/1]).
-export(['K2-ConDocNode-13'/1]).
-export(['K2-ConDocNode-14'/1]).
-export(['K2-ConDocNode-15'/1]).
-export(['K2-ConDocNode-16'/1]).
-export(['K2-ConDocNode-17'/1]).
-export(['K2-ConDocNode-18'/1]).
-export(['K2-ConDocNode-19'/1]).
-export(['K2-ConDocNode-20'/1]).
-export(['K2-ConDocNode-21'/1]).
-export(['K2-ConDocNode-22'/1]).
-export(['K2-ConDocNode-23'/1]).
-export(['K2-ConDocNode-24'/1]).
-export(['K2-ConDocNode-25'/1]).
-export(['K2-ConDocNode-26'/1]).
-export(['K2-ConDocNode-27'/1]).
-export(['K2-ConDocNode-28'/1]).
-export(['K2-ConDocNode-29'/1]).
-export(['K2-ConDocNode-30'/1]).
-export(['K2-ConDocNode-31'/1]).
-export(['K2-ConDocNode-32'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Constr-docnode-adjtext-1', 
'Constr-docnode-adjtext-2', 
'Constr-docnode-adjtext-3', 
'Constr-docnode-nested-1', 
'Constr-docnode-nested-2', 
'Constr-docnode-nested-3', 
'Constr-docnode-nested-4', 
'Constr-docnode-enclexpr-1', 
'Constr-docnode-enclexpr-2', 
'Constr-docnode-enclexpr-3', 
'Constr-docnode-enclexpr-4', 
'Constr-docnode-nodeid-1', 
'Constr-docnode-nodeid-3', 
'Constr-docnode-nodeid-4', 
'Constr-docnode-nodeid-5', 
'Constr-docnode-constrmod-1', 
'Constr-docnode-constrmod-2', 
'Constr-docnode-constrmod-3', 
'Constr-docnode-constrmod-4', 
'Constr-docnode-doc-1', 
'Constr-docnode-parent-1', 
'Constr-docnode-string-1', 
'Constr-docnode-data-1', 
'Constr-docnode-attr-1', 
'Constr-docnode-attr-2', 
'Constr-docnode-attr-3', 
'K2-ConDocNode-1', 
'K2-ConDocNode-2', 
'K2-ConDocNode-3', 
'K2-ConDocNode-4', 
'K2-ConDocNode-5', 
'K2-ConDocNode-6', 
'K2-ConDocNode-7', 
'K2-ConDocNode-8', 
'K2-ConDocNode-9', 
'K2-ConDocNode-10', 
'K2-ConDocNode-11', 
'K2-ConDocNode-12', 
'K2-ConDocNode-13', 
'K2-ConDocNode-14', 
'K2-ConDocNode-15', 
'K2-ConDocNode-16', 
'K2-ConDocNode-17', 
'K2-ConDocNode-18', 
'K2-ConDocNode-19', 
'K2-ConDocNode-20', 
'K2-ConDocNode-21', 
'K2-ConDocNode-22', 
'K2-ConDocNode-23', 
'K2-ConDocNode-24', 
'K2-ConDocNode-25', 
'K2-ConDocNode-26', 
'K2-ConDocNode-27', 
'K2-ConDocNode-28', 
'K2-ConDocNode-29', 
'K2-ConDocNode-30', 
'K2-ConDocNode-31', 
'K2-ConDocNode-32'
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
environment('DupNode',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "CompAttrConstructor/DupNode.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('TreeEmpty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "AxisStep/TreeEmpty.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'Constr-docnode-adjtext-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((document {1, 'string', 1,2e3})/text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-adjtext-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-adjtext-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((document {1, //text(), 'string'})/text())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-adjtext-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-adjtext-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((document {1, 2, <a/>, 3, 4, <b/>, 5, 6})/text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-adjtext-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nested-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {1, document {2, document {document {()}, document {3}}, 4}}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nested-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1234") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nested-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {/root}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nested-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nested-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(document {1, document{2}, document { document {()}, document {3}}, 4}/text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nested-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nested-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(document {\"\", document{\"\"}, document { document {()}, document {\"\"}}, \"\"}/text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nested-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-enclexpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {()}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-enclexpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-enclexpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {1,'a',3.5,4e2}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-enclexpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 a 3.5 400") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-enclexpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {1,//a,2,3,//comment(),4,5,//processing-instruction(),6,7,//text(),8}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-enclexpr-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"1<a>text</a><a>text</a>2 3<!--comment--><!--comment-->4 5<?pi content?><?pi content?>6 7texttext8") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-enclexpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {1, '', 2}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-enclexpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1  2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nodeid-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in <a/>, $y in document {$x} return exactly-one($y/a) is $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nodeid-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nodeid-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in <!--comment-->, $y in document {$x} return exactly-one($y/comment()) is $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nodeid-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nodeid-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in <?pi content?>, $y in document {$x} return exactly-one($y/processing-instruction()) is $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nodeid-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-nodeid-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in <a>text</a>, $y in document {$x/text()} return exactly-one($y/text()) is exactly-one($x/text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-nodeid-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-constrmod-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Constr-docnode-constrmod-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Constr-docnode-constrmod-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Constr-docnode-constrmod-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Constr-docnode-doc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {., .}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('DupNode',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-doc-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root><root><child1><a>text</a><!--comment--><?pi content?></child1><child2><a>text</a><!--comment--><?pi content?></child2></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'Constr-docnode-parent-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((document {()})/..)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-parent-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'Constr-docnode-string-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:string(document {'a', element a {}, 'b'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-string-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-data-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:data(document {'a', element a {}, 'b'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-data-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ab") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-attr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {//@mark}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-attr-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-attr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {<a/>, //@mark}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-attr-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Constr-docnode-attr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {<a/>, //@mark, <b/>}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "Constr-docnode-attr-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document-node{\"content\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{\"content\"};", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{\"some text\", <e/>, attribute name {\"content\"}}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{<e/>, attribute name {\"content\"}, \"some text\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{attribute name {\"content\"}, <e/>, \"some text\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{\"some text\", <e/>, attribute name {\"content\"}})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{<e/>, attribute name {\"content\"}, \"some text\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{attribute name {\"content\"}, <e/>, \"some text\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{<a/>, <b/>, <c/>}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><b/><c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{<a/>, <b/>, <c/>}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/><b/><c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>{data(document{<a/>, <b/>, <c/>})}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>{string(document{<a/>, <b/>, <c/>})}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>{string(document{<a/>, <b/>, <c/>})}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{\"abc\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "data(document {\"content\"}) instance of xs:untypedAtomic", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {\"content\"} is document{\"content\"}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{\"string\", <e>more<a>even more</a><b attr=\"thisIsIgnored\"/><![CDATA[ButNotThis]]><?target butThisIs?> content</e>})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "stringmoreeven moreButNotThis content") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{ text {\"data\"}, processing-instruction name {\"data\"}, processing-instruction name {\"data\"}, text {\"data\"}, processing-instruction name {\"data\"}, processing-instruction name1 {\"data\"}, comment {\"content\"}, comment {\"content\"}, text {\"data\"}, processing-instruction name2 {\"data\"}, comment {\"content\"}, text {\"data\"} })", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "datadatadatadata") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(document{document{document{document{()}}}}/child::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1, document{document{document{document{()}}}}/child::node(), 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{document{document{document{<e/>}}}}/child::node()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document{document{document{document{<e/>, document{()}, <e>{document{()}}</e>}}}}//child::node()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e/><e/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document{ text {\"data\"}, text {\"data\"}, text {\"data\"}, text {\"data\"} })", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "datadatadatadata") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(document{ text {\"data\"}, text {\"data\"}, <e/>, text {\"data\"}, text {\"data\"} }/child::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(document{ text {\"data\"}, text {\"data\"}, text {\"data\"}, text {\"data\"} }/child::node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<doo> { document { attribute name {\"content\"} } } </doo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<doo> { document { <e/>, attribute name {\"content\"} } } </doo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<doo> { document { <e> <b/> <b/> <b/> <c> <d/> </c> </e>, attribute name {\"content\"} } } </doo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<doo> { document { <e> { <?target data?>, attribute name {\"content\"} } </e> } } </doo>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQTY0024") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count(<a>{document {text{'a'}}}b</a>/node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(document {1, document {2, document {document {()}, 3, document {4}}, 5}, 6})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ConDocNode-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "document {1, document {2, document {document {()}, 3, document {4}}, 5}, 6}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-ConDocNode-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123456") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.