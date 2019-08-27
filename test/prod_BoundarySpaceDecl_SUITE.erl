-module('prod_BoundarySpaceDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['boundary-space-001'/1]).
-export(['boundary-space-002'/1]).
-export(['boundary-space-003'/1]).
-export(['boundary-space-004'/1]).
-export(['boundary-space-005'/1]).
-export(['boundary-space-006'/1]).
-export(['boundary-space-007'/1]).
-export(['boundary-space-008'/1]).
-export(['boundary-space-009'/1]).
-export(['boundary-space-010'/1]).
-export(['boundary-space-011'/1]).
-export(['boundary-space-012'/1]).
-export(['boundary-space-013'/1]).
-export(['boundary-space-014'/1]).
-export(['boundary-space-015'/1]).
-export(['boundary-space-016'/1]).
-export(['boundary-space-017'/1]).
-export(['boundary-space-018'/1]).
-export(['boundary-space-019'/1]).
-export(['boundary-space-020'/1]).
-export(['boundary-space-021'/1]).
-export(['boundary-space-022'/1]).
-export(['boundaryspacedeclerr-1'/1]).
-export(['K-BoundarySpaceProlog-1'/1]).
-export(['K-BoundarySpaceProlog-2'/1]).
-export(['K-BoundarySpaceProlog-3'/1]).
-export(['K-BoundarySpaceProlog-4'/1]).
-export(['K2-BoundarySpaceProlog-1'/1]).
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
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'boundary-space-001', 
    'boundary-space-002', 
    'boundary-space-003', 
    'boundary-space-004', 
    'boundary-space-005', 
    'boundary-space-006', 
    'boundary-space-007', 
    'boundary-space-008', 
    'boundary-space-009', 
    'boundary-space-010', 
    'boundary-space-011', 
    'boundary-space-012', 
    'boundary-space-013', 
    'boundary-space-014', 
    'boundary-space-015', 
    'boundary-space-016', 
    'boundary-space-017', 
    'boundary-space-018', 
    'boundary-space-019', 
    'boundary-space-020', 
    'boundary-space-021', 
    'boundary-space-022', 
    'boundaryspacedeclerr-1']}, 
   {group_1, [parallel], [
    'K-BoundarySpaceProlog-1', 
    'K-BoundarySpaceProlog-2', 
    'K-BoundarySpaceProlog-3', 
    'K-BoundarySpaceProlog-4', 
    'K2-BoundarySpaceProlog-1']}].

'boundary-space-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space strip; <a> {\"abc\"} </a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; <a> {\"abc\"} </a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc </a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space strip; <a> z {\"abc\"}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> z abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; <a> z {\"abc\"}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> z abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space strip; <a>&#x20;{\"abc\"}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; <a>&#x20;{\"abc\"}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space strip; <a>&#x20;{\"abc\"}{' '}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc </a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; <a>&#x20;{\"abc\"}{' '}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc </a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space strip; <a>&#x20;{\"abc\"}{\" \"}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc </a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; <a>&#x20;{\"abc\"}{\" \"}</a>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a> abc </a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
<res>
a
b
c
</res>
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<res>
a
b
c
</res>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space preserve;
<res>
a
b
c
</res>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<res>
a
b
c
</res>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
<res>
  a
  b
  c
</res>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<res>
  a
  b
  c
</res>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space preserve;
<res>
  a
  b
  c
</res>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<res>
  a
  b
  c
</res>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
<A>  A   {\"B\"}   C   {\"D\"}  </A>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<A>  A   B   C   D</A>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space preserve;
<A>  A   {\"B\"}   C   {\"D\"}  </A>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<A>  A   B   C   D  </A>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
<A>  A   {\"B\"}   C   {\"D  \"}</A>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<A>  A   B   C   D  </A>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space preserve;
<A>  A   {\"B\"}   C   {\"D  \"}</A>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<A>  A   B   C   D  </A>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space strip;
<A> (a), (b), (c) </A>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<A> (a), (b), (c) </A>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare boundary-space preserve;
<A> (a), (b), (c) </A>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<A> (a), (b), (c) </A>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space strip; (\" \",10, 20, 30, 40,\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  10 20 30 40  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundary-space-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; (\" \",10, 20, 30, 40,\" \")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundary-space-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "  10 20 30 40  ") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'boundaryspacedeclerr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare boundary-space preserve; declare boundary-space strip; \"abc\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "boundaryspacedeclerr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0068") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0068 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-BoundarySpaceProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)boundary-space(::)strip(::); 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BoundarySpaceProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-BoundarySpaceProlog-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)boundary-space(::)strip(::); 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BoundarySpaceProlog-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-BoundarySpaceProlog-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)boundary-space(::)strip(::); (::)declare(::)boundary-space(::)preserve(::); 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BoundarySpaceProlog-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0068") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0068 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-BoundarySpaceProlog-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(::)declare(::)boundary space(::)strip(::); 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-BoundarySpaceProlog-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-BoundarySpaceProlog-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boundary-space ne boundary-space", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-BoundarySpaceProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.