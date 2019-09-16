-module('fn_format_integer_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['format-integer-001'/1]).
-export(['format-integer-002'/1]).
-export(['format-integer-003'/1]).
-export(['format-integer-004'/1]).
-export(['format-integer-005'/1]).
-export(['format-integer-006'/1]).
-export(['format-integer-007'/1]).
-export(['format-integer-008'/1]).
-export(['format-integer-009'/1]).
-export(['format-integer-010'/1]).
-export(['format-integer-011'/1]).
-export(['format-integer-012'/1]).
-export(['format-integer-013'/1]).
-export(['format-integer-014'/1]).
-export(['format-integer-015'/1]).
-export(['format-integer-016'/1]).
-export(['format-integer-017'/1]).
-export(['format-integer-018'/1]).
-export(['format-integer-019'/1]).
-export(['format-integer-020'/1]).
-export(['format-integer-021'/1]).
-export(['format-integer-022'/1]).
-export(['format-integer-023'/1]).
-export(['format-integer-024'/1]).
-export(['format-integer-025'/1]).
-export(['format-integer-026'/1]).
-export(['format-integer-027'/1]).
-export(['format-integer-028'/1]).
-export(['format-integer-029'/1]).
-export(['format-integer-030'/1]).
-export(['format-integer-031'/1]).
-export(['format-integer-032'/1]).
-export(['format-integer-032-fr'/1]).
-export(['format-integer-032-it'/1]).
-export(['format-integer-033'/1]).
-export(['format-integer-034'/1]).
-export(['format-integer-035'/1]).
-export(['format-integer-036'/1]).
-export(['format-integer-037'/1]).
-export(['format-integer-038'/1]).
-export(['format-integer-039'/1]).
-export(['format-integer-040'/1]).
-export(['format-integer-041'/1]).
-export(['format-integer-042'/1]).
-export(['format-integer-043'/1]).
-export(['format-integer-044'/1]).
-export(['format-integer-045'/1]).
-export(['format-integer-046'/1]).
-export(['format-integer-047'/1]).
-export(['format-integer-048'/1]).
-export(['format-integer-049'/1]).
-export(['format-integer-050'/1]).
-export(['format-integer-051'/1]).
-export(['format-integer-052'/1]).
-export(['format-integer-053'/1]).
-export(['format-integer-054'/1]).
-export(['format-integer-055'/1]).
-export(['format-integer-056'/1]).
-export(['format-integer-057'/1]).
-export(['format-integer-058'/1]).
-export(['format-integer-059'/1]).
-export(['format-integer-060'/1]).
-export(['format-integer-061'/1]).
-export(['format-integer-062'/1]).
-export(['format-integer-063'/1]).
-export(['format-integer-064'/1]).
-export(['format-integer-065'/1]).
-export(['format-integer-066'/1]).
-export(['format-integer-067'/1]).
-export(['format-integer-068'/1]).
-export(['format-integer-069'/1]).
-export(['format-integer-070'/1]).
-export(['format-integer-071'/1]).
-export(['format-integer-072'/1]).
-export(['format-integer-073'/1]).
-export(['format-integer-074'/1]).
-export(['format-integer-075'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}
   ].
groups() -> [
   {group_0, [parallel], [
    'format-integer-001', 
    'format-integer-002', 
    'format-integer-003', 
    'format-integer-004', 
    'format-integer-005', 
    'format-integer-006', 
    'format-integer-007', 
    'format-integer-008', 
    'format-integer-009', 
    'format-integer-010', 
    'format-integer-011', 
    'format-integer-012', 
    'format-integer-013', 
    'format-integer-014', 
    'format-integer-015', 
    'format-integer-016', 
    'format-integer-017', 
    'format-integer-018', 
    'format-integer-019', 
    'format-integer-020', 
    'format-integer-021', 
    'format-integer-022', 
    'format-integer-023']}, 
   {group_1, [parallel], [
    'format-integer-024', 
    'format-integer-025', 
    'format-integer-026', 
    'format-integer-027', 
    'format-integer-028', 
    'format-integer-029', 
    'format-integer-030', 
    'format-integer-031', 
    'format-integer-032', 
    'format-integer-032-fr', 
    'format-integer-032-it', 
    'format-integer-033', 
    'format-integer-034', 
    'format-integer-035', 
    'format-integer-036', 
    'format-integer-037', 
    'format-integer-038', 
    'format-integer-039', 
    'format-integer-040', 
    'format-integer-041', 
    'format-integer-042', 
    'format-integer-043', 
    'format-integer-044', 
    'format-integer-045']}, 
   {group_2, [parallel], [
    'format-integer-046', 
    'format-integer-047', 
    'format-integer-048', 
    'format-integer-049', 
    'format-integer-050', 
    'format-integer-051', 
    'format-integer-052', 
    'format-integer-053', 
    'format-integer-054', 
    'format-integer-055', 
    'format-integer-056', 
    'format-integer-057', 
    'format-integer-058', 
    'format-integer-059', 
    'format-integer-060', 
    'format-integer-061', 
    'format-integer-062', 
    'format-integer-063', 
    'format-integer-064', 
    'format-integer-065', 
    'format-integer-066', 
    'format-integer-067', 
    'format-integer-068', 
    'format-integer-069']}, 
   {group_3, [parallel], [
    'format-integer-070', 
    'format-integer-071', 
    'format-integer-072', 
    'format-integer-073', 
    'format-integer-074', 
    'format-integer-075']}].
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
].
'format-integer-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123, '1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123, '001')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123, '00001')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'00123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-123, '9')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-123, '999')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-123, '99999')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-00123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(0, '0')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'0'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(0, '000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(0, '00000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'00000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 4 return format-integer($i, 'a'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'abcd'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 4 return format-integer($i, 'A'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'ABCD'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 20 return format-integer($i, 'i'), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'i|ii|iii|iv|v|vi|vii|viii|ix|x|xi|xii|xiii|xiv|xv|xvi|xvii|xviii|xix|xx'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 20 return format-integer($i, 'I'), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII|XIII|XIV|XV|XVI|XVII|XVIII|XIX|XX'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 20 return format-integer($i, '١'), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'١|٢|٣|٤|٥|٦|٧|٨|٩|١٠|١١|١٢|١٣|١٤|١٥|١٦|١٧|١٨|١٩|٢٠'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 20 return format-integer($i, '٩'), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'١|٢|٣|٤|٥|٦|٧|٨|٩|١٠|١١|١٢|١٣|١٤|١٥|١٦|١٧|١٨|١٩|٢٠'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 10 return format-integer($i, 'Ww'), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'One|Two|Three|Four|Five|Six|Seven|Eight|Nine|Ten'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 10 return format-integer($i, 'W'), '|')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'ONE|TWO|THREE|FOUR|FIVE|SIX|SEVEN|EIGHT|NINE|TEN'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 10 return format-integer($i, 'w'), '|')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'one|two|three|four|five|six|seven|eight|nine|ten'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(a, 'w')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1, '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '0,000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1,500,000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '#,###,000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1,500,000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '0,000,')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '11#0,000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '#')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1500000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '#a')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1500000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, ',123')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '0,00,,000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1500000, '###𐄀0,00')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1500𐄀0,00'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(602347826, '#(000)000-000')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'602)347-826'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(2, 'W;o')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'SECOND'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"language:de"}. 
'format-integer-032-fr'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"language:fr"}. 
'format-integer-032-it'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"language:it"}. 
'format-integer-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1, '1;o(-en)')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1st'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1, '1;o(-er)z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1, 'Ww;t')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'One'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer((), 'Ww')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"''") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, 'Ww;o()(')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, '()Ww;o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1234th") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, '
')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1234") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, '123١')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, '#,𐒠𐒠𐒠')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'𐒡,𐒢𐒣𐒤'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, 'ﯴ')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1234'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-85, '1;o')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-043.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-85th'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-5, 'Ww;o')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-044.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-Fifth'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(0, 'Ww')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-045.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'Zero'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 5 return format-integer($i, '①'), '|')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-046.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'①|②|③|④|⑤'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 5 return format-integer($i, '⑴'), '|')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-047.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'⑴|⑵|⑶|⑷|⑸'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(for $i in 1 to 5 return format-integer($i, '⒈'), '|')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'⒈|⒉|⒊|⒋|⒌'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"format-integer-sequence:Α"}. 
'format-integer-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"format-integer-sequence:α"}. 
'format-integer-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(12345678901,'# 000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-051.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'12 345 678 901'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"format-integer-sequence:一"}. 
'format-integer-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123,'#0')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-053.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'123'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123,'0#')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-054.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1,'b;o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-055.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1,'o;o')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-056.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1,'bo;o')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-057.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-058'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1,'bb')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-058.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-059'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1,'001;')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-059.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'001'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-060'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234,'#;##1;')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-060.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1;234'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-061'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1, ';')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-061.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-062'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(11, 'Ww', 'en')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-062.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'Eleven'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-063'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(11, 'Ww', '@*!+%')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-063.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'Eleven'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-064'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-1, '1o')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('empty',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-064.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-065'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"language:de"}. 
'format-integer-066'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"language:it"}. 
'format-integer-067'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(1234, 'Ww;o(')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-067.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FODF1310") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FODF1310 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-068'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(0, 'w;o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-068.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'zeroth'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-069'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(100, 'w;o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-069.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'one hundredth'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-070'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123456789, '0,0,00,0')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-070.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'12345,6,78,9'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-071'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123456789, '00,00,00')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-071.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1,23,45,67,89'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-072'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(123456789, '000,00,00')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-072.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'12345,67,89'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-073'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(150000, '##֊000')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-073.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'150֊000'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-074'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(-8500, '#,##1;o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-074.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-8,500th'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-integer-075'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-integer(85, 'A;o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-integer-075.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.