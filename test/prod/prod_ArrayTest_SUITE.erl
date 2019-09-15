-module('prod_ArrayTest_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['ArrayTest-028'/1]).
-export(['ArrayTest-029'/1]).
-export(['ArrayTest-030'/1]).
-export(['ArrayTest-031'/1]).
-export(['ArrayTest-032'/1]).
-export(['ArrayTest-033'/1]).
-export(['ArrayTest-034'/1]).
-export(['ArrayTest-035'/1]).
-export(['ArrayTest-036'/1]).
-export(['ArrayTest-037'/1]).
-export(['ArrayTest-038'/1]).
-export(['ArrayTest-039'/1]).
-export(['ArrayTest-040'/1]).
-export(['ArrayTest-041'/1]).
-export(['ArrayTest-042'/1]).
-export(['ArrayTest-043'/1]).
-export(['ArrayTest-044'/1]).
-export(['ArrayTest-045'/1]).
-export(['ArrayTest-046'/1]).
-export(['ArrayTest-047'/1]).
-export(['ArrayTest-048'/1]).
-export(['ArrayTest-049'/1]).
-export(['ArrayTest-050'/1]).
-export(['ArrayTest-051'/1]).
-export(['ArrayTest-052'/1]).
-export(['ArrayTest-053'/1]).
-export(['ArrayTest-054'/1]).
-export(['ArrayTest-055'/1]).
-export(['ArrayTest-056'/1]).
-export(['ArrayTest-057'/1]).
-export(['ArrayTest-058'/1]).
-export(['ArrayTest-059'/1]).
-export(['ArrayTest-060'/1]).
-export(['ArrayTest-061'/1]).
-export(['ArrayTest-062'/1]).
-export(['ArrayTest-063'/1]).
-export(['ArrayTest-064'/1]).
-export(['ArrayTest-065'/1]).
-export(['ArrayTest-066'/1]).
-export(['ArrayTest-067'/1]).
-export(['ArrayTest-075'/1]).
-export(['ArrayTest-076'/1]).
-export(['ArrayTest-077'/1]).
-export(['ArrayTest-078'/1]).
-export(['ArrayTest-079'/1]).
-export(['ArrayTest-080'/1]).
-export(['ArrayTest-081'/1]).
-export(['ArrayTest-082'/1]).
-export(['ArrayTest-083'/1]).
-export(['ArrayTest-084'/1]).
-export(['ArrayTest-085'/1]).
-export(['ArrayTest-086'/1]).
-export(['ArrayTest-087'/1]).
-export(['ArrayTest-088'/1]).
-export(['ArrayTest-089'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'ArrayTest-028', 
    'ArrayTest-029', 
    'ArrayTest-030', 
    'ArrayTest-031', 
    'ArrayTest-032', 
    'ArrayTest-033', 
    'ArrayTest-034', 
    'ArrayTest-035', 
    'ArrayTest-036', 
    'ArrayTest-037', 
    'ArrayTest-038', 
    'ArrayTest-039', 
    'ArrayTest-040', 
    'ArrayTest-041', 
    'ArrayTest-042', 
    'ArrayTest-043', 
    'ArrayTest-044', 
    'ArrayTest-045', 
    'ArrayTest-046', 
    'ArrayTest-047', 
    'ArrayTest-048', 
    'ArrayTest-049', 
    'ArrayTest-050']}, 
   {group_1, [parallel], [
    'ArrayTest-051', 
    'ArrayTest-052', 
    'ArrayTest-053', 
    'ArrayTest-054', 
    'ArrayTest-055', 
    'ArrayTest-056', 
    'ArrayTest-057', 
    'ArrayTest-058', 
    'ArrayTest-059', 
    'ArrayTest-060', 
    'ArrayTest-061', 
    'ArrayTest-062', 
    'ArrayTest-063', 
    'ArrayTest-064', 
    'ArrayTest-065', 
    'ArrayTest-066', 
    'ArrayTest-067', 
    'ArrayTest-075', 
    'ArrayTest-076', 
    'ArrayTest-077', 
    'ArrayTest-078', 
    'ArrayTest-079', 
    'ArrayTest-080', 
    'ArrayTest-081']}, 
   {group_2, [parallel], [
    'ArrayTest-082', 
    'ArrayTest-083', 
    'ArrayTest-084', 
    'ArrayTest-085', 
    'ArrayTest-086', 
    'ArrayTest-087', 
    'ArrayTest-088', 
    'ArrayTest-089']}].
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
].
'ArrayTest-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $x := <root><elem>1</elem><elem>2</elem></root> return [$x/elem[1]] + [$x/elem[2]]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:data([<root><elem>1</elem><elem>2</elem></root> + 4])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"16") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:data([[1, 2], [3, 4, [5, 6]]])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 2, 3, 4, 5, 6)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[map:entry('a', 'b')] + 1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[data#1] + 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOTY0013") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOTY0013 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[\"A\", \"B\"]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"array(xs:string)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[(\"A\", \"B\")]", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"array(xs:string*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[(\"A\", \"B\"), \"C\"] instance of array(xs:string)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[(), \"A\"] instance of array(xs:string)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[(), \"A\"] instance of array(xs:integer*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[[\"A\"], [\"B\"]] instance of array(array(xs:string))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[[\"A\"], [\"B\"]] instance of array(item())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[xs:integer(\"10\")] instance of array(xs:decimal)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[[\"A\"], [\"B\"]] instance of item()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[[\"A\"], [\"B\"]] instance of function(*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[[\"A\"], [\"B\"]] instance of function(xs:integer) as item()*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if ([1, 2]) then 1 else 2", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FORG0006 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "['A'] = 'A'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "['A', 'B', 'C'] = 'A'", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>{['a', ['b', 'c'], 'd']}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>a b c d</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a>{[ 'a', ['b', 'c'], 'd']}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>a b c d</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "element a {['a', ['b', 'c'], 'd']}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-049.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>a b c d</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<chapter ref=\"{[1, 5 to 7, 9]}\"/>/@ref/string()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-050.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"1 5 6 7 9\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "element a {[<z x='3'/>/@x, <a>22</a>, [<b>33</b>, <c>44</c>], <d>55</d>]}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-051.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a x='3'><a>22</a><b>33</b><c>44</c><d>55</d></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "[1, 2, 3](2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-052.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array{1, 2, 3}(2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-053.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e'] return $array(3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-054.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"'c'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e', 0] return $array instance of array(xs:string)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-055.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e', ('f', 'g')] return $array instance of array(xs:string+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-056.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e', ()] return $array instance of array(xs:string?)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-057.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-058'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e', (1 to 8)] return $array instance of array(xs:anyAtomicType+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-058.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-059'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= ['a','b','c','d','e', map{}] return $array instance of array(xs:anyAtomicType+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-059.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-060'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [['a','b'],['c','d'], [], ['e']] return $array instance of array(array(xs:string*))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-060.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-061'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [(['a','b'],['c','d']), ([], ['e'])] return $array instance of array(array(xs:string*))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-061.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-062'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [(['a','b'],['c','d']), ([], ['e'])] return $array instance of array(array(xs:string*)+)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-062.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-063'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [floor#1, ceiling#1, round#1] return $array instance of array(function(xs:numeric?) as xs:numeric?)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-063.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-064'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [floor#1, ceiling#1, round#1, name#1] return $array instance of array(function(xs:numeric) as xs:numeric)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-064.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-065'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [] return $array instance of array(function(xs:numeric) as xs:numeric)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-065.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-066'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [map{1: map{2: map{}}}] return $array instance of array(map(xs:integer, map(xs:integer, map(xs:integer, map(*)))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-066.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-067'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $array:= [map{1: map{2: map{true(): false()}}}] return $array instance of array(map(xs:integer, map(xs:integer, map(xs:integer, map(*)))))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-067.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-075'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(xs:string)) as xs:boolean {array:size($a) ge 0},
             $array:= ['a','b','c','d','e', 0]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-075.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-076'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(xs:string+)) as xs:boolean {array:size($a) eq 6},
             $array:= ['a','b','c','d','e', ('f', 'g')]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-076.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-077'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(xs:string?)) as xs:boolean {array:size($a) eq 6},
             $array:= ['a','b','c','d','e', ()]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-077.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-078'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(xs:anyAtomicType+)) as xs:boolean {array:size($a) eq 6},
             $array:= ['a','b','c','d','e', (1 to 8)]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-078.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-079'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(xs:anyAtomicType+)) as xs:boolean {array:size($a) eq 6},
             $array:= ['a','b','c','d','e', map{}]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-079.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-080'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(array(xs:string*))) as xs:boolean {array:size($a) eq 4},
             $array:= [['a','b'],['c','d'], [], ['e']]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-080.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-081'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(array(xs:string*))) as xs:boolean {array:size($a) eq 3},
             $array:= [['a','b'],['c','d'], ([], ['e'])]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-081.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-082'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(array(xs:string*)+)) as xs:boolean {array:size($a) eq 3},
             $array:= [['a','b'],['c','d'], ([], ['e'])]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-082.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-083'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(function(xs:numeric?) as xs:numeric?)) as xs:boolean {array:size($a) eq 3},
             $array:= [floor#1, ceiling#1, round#1]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-083.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-084'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(function(xs:numeric?) as xs:numeric?)) as xs:boolean {array:size($a) eq 3},
             $array:= [floor#1, ceiling#1, round#1, name#1]
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-084.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-085'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(function(xs:numeric?) as xs:numeric?)) as xs:boolean {array:size($a) eq 0},
             $array:= []
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-085.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-086'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(map(xs:integer, map(xs:integer, map(xs:integer, map(*)))))) as xs:boolean {array:size($a) eq 1},
             $array:= [map{1: map{2: map{}}}] 
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-086.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-087'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(map(xs:integer, map(xs:integer, map(xs:integer, map(*)))))) as xs:boolean {array:size($a) eq 1},
             $array:= [map{1: map{2: map{true(): false()}}}] 
         return $f($array)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-087.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-088'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($a as array(xs:integer)) as xs:boolean {array:size($a) eq 1},
             $g := function($n as xs:integer) as array(xs:string) {array{(1 to $n)!\"x\"}} 
         return $f($g(0))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-088.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'ArrayTest-089'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare function local:f($a as array(xs:integer)) as xs:boolean {array:size($a) eq 1};
         declare function local:g($n as xs:integer) as array(xs:string) {array{(1 to $n)!\"x\"}}; 
         local:f(local:g(0))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ArrayTest-089.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.