-module('fn_format_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['format-date-001a'/1]).
-export(['format-date-001b'/1]).
-export(['format-date-001c'/1]).
-export(['format-date-001d'/1]).
-export(['format-date-001e'/1]).
-export(['format-date-001f'/1]).
-export(['format-date-001g'/1]).
-export(['format-date-005'/1]).
-export(['format-date-006'/1]).
-export(['format-date-007a'/1]).
-export(['format-date-007b'/1]).
-export(['format-date-007c'/1]).
-export(['format-date-008a'/1]).
-export(['format-date-008b'/1]).
-export(['format-date-008c'/1]).
-export(['format-date-009'/1]).
-export(['format-date-010'/1]).
-export(['format-date-011'/1]).
-export(['format-date-013a'/1]).
-export(['format-date-013b'/1]).
-export(['format-date-013c'/1]).
-export(['format-date-013d'/1]).
-export(['format-date-013e'/1]).
-export(['format-date-013f'/1]).
-export(['format-date-013g'/1]).
-export(['format-date-013h'/1]).
-export(['format-date-013i'/1]).
-export(['format-date-013j'/1]).
-export(['format-date-013k'/1]).
-export(['format-date-013L'/1]).
-export(['format-date-013m'/1]).
-export(['format-date-013n'/1]).
-export(['format-date-014'/1]).
-export(['format-date-015'/1]).
-export(['format-date-016'/1]).
-export(['format-date-017'/1]).
-export(['format-date-018'/1]).
-export(['format-date-019'/1]).
-export(['format-date-020'/1]).
-export(['format-date-021'/1]).
-export(['format-date-022'/1]).
-export(['format-date-023'/1]).
-export(['format-date-024'/1]).
-export(['format-date-025'/1]).
-export(['format-date-026'/1]).
-export(['format-date-027'/1]).
-export(['format-date-028'/1]).
-export(['format-date-029'/1]).
-export(['format-date-030'/1]).
-export(['format-date-031'/1]).
-export(['format-date-032'/1]).
-export(['format-date-033'/1]).
-export(['format-date-034'/1]).
-export(['format-date-035'/1]).
-export(['format-date-036'/1]).
-export(['format-date-037'/1]).
-export(['format-date-038'/1]).
-export(['format-date-039'/1]).
-export(['format-date-040'/1]).
-export(['format-date-041'/1]).
-export(['format-date-042'/1]).
-export(['format-date-043'/1]).
-export(['format-date-044'/1]).
-export(['format-date-045'/1]).
-export(['format-date-046'/1]).
-export(['format-date-047'/1]).
-export(['format-date-048'/1]).
-export(['format-date-801err'/1]).
-export(['format-date-802err'/1]).
-export(['format-date-803err'/1]).
-export(['format-date-804err'/1]).
-export(['format-date-805err'/1]).
-export(['format-date-806err'/1]).
-export(['format-date-807err'/1]).
-export(['format-date-808err'/1]).
-export(['format-date-809err'/1]).
-export(['format-date-810err'/1]).
-export(['format-date-en101'/1]).
-export(['format-date-en102'/1]).
-export(['format-date-en103'/1]).
-export(['format-date-en104'/1]).
-export(['format-date-en105'/1]).
-export(['format-date-en106'/1]).
-export(['format-date-en111'/1]).
-export(['format-date-en112'/1]).
-export(['format-date-en113'/1]).
-export(['format-date-en114'/1]).
-export(['format-date-en115'/1]).
-export(['format-date-en116'/1]).
-export(['format-date-en117'/1]).
-export(['format-date-en118'/1]).
-export(['format-date-en121'/1]).
-export(['format-date-en122'/1]).
-export(['format-date-en122b'/1]).
-export(['format-date-en123'/1]).
-export(['format-date-en124'/1]).
-export(['format-date-en125'/1]).
-export(['format-date-en126'/1]).
-export(['format-date-en127'/1]).
-export(['format-date-en128'/1]).
-export(['format-date-en129'/1]).
-export(['format-date-en130'/1]).
-export(['format-date-en131'/1]).
-export(['format-date-en132'/1]).
-export(['format-date-en133'/1]).
-export(['format-date-en134'/1]).
-export(['format-date-en141'/1]).
-export(['format-date-en151'/1]).
-export(['format-date-en152'/1]).
-export(['format-date-en153'/1]).
-export(['format-date-en154'/1]).
-export(['format-date-en155'/1]).
-export(['format-date-en156'/1]).
-export(['format-date-en157'/1]).
-export(['format-date-en158'/1]).
-export(['format-date-inpt-er1'/1]).
-export(['format-date-inpt-er2'/1]).
-export(['format-date-inpt-er3'/1]).
-export(['format-date-inpt-er4'/1]).
-export(['format-date-1340err'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}, 
   {group, group_5}
   ].
groups() -> [
   {group_0, [parallel], [
    'format-date-001a', 
    'format-date-001b', 
    'format-date-001c', 
    'format-date-001d', 
    'format-date-001e', 
    'format-date-001f', 
    'format-date-001g', 
    'format-date-005', 
    'format-date-006', 
    'format-date-007a', 
    'format-date-007b', 
    'format-date-007c', 
    'format-date-008a', 
    'format-date-008b', 
    'format-date-008c', 
    'format-date-009', 
    'format-date-010', 
    'format-date-011', 
    'format-date-013a', 
    'format-date-013b', 
    'format-date-013c', 
    'format-date-013d', 
    'format-date-013e']}, 
   {group_1, [parallel], [
    'format-date-013f', 
    'format-date-013g', 
    'format-date-013h', 
    'format-date-013i', 
    'format-date-013j', 
    'format-date-013k', 
    'format-date-013L', 
    'format-date-013m', 
    'format-date-013n', 
    'format-date-014', 
    'format-date-015', 
    'format-date-016', 
    'format-date-017', 
    'format-date-018', 
    'format-date-019', 
    'format-date-020', 
    'format-date-021', 
    'format-date-022', 
    'format-date-023', 
    'format-date-024', 
    'format-date-025', 
    'format-date-026', 
    'format-date-027', 
    'format-date-028']}, 
   {group_2, [parallel], [
    'format-date-029', 
    'format-date-030', 
    'format-date-031', 
    'format-date-032', 
    'format-date-033', 
    'format-date-034', 
    'format-date-035', 
    'format-date-036', 
    'format-date-037', 
    'format-date-038', 
    'format-date-039', 
    'format-date-040', 
    'format-date-041', 
    'format-date-042', 
    'format-date-043', 
    'format-date-044', 
    'format-date-045', 
    'format-date-046', 
    'format-date-047', 
    'format-date-048', 
    'format-date-801err', 
    'format-date-802err', 
    'format-date-803err', 
    'format-date-804err']}, 
   {group_3, [parallel], [
    'format-date-805err', 
    'format-date-806err', 
    'format-date-807err', 
    'format-date-808err', 
    'format-date-809err', 
    'format-date-810err', 
    'format-date-en101', 
    'format-date-en102', 
    'format-date-en103', 
    'format-date-en104', 
    'format-date-en105', 
    'format-date-en106', 
    'format-date-en111', 
    'format-date-en112', 
    'format-date-en113', 
    'format-date-en114', 
    'format-date-en115', 
    'format-date-en116', 
    'format-date-en117', 
    'format-date-en118', 
    'format-date-en121', 
    'format-date-en122', 
    'format-date-en122b', 
    'format-date-en123']}, 
   {group_4, [parallel], [
    'format-date-en124', 
    'format-date-en125', 
    'format-date-en126', 
    'format-date-en127', 
    'format-date-en128', 
    'format-date-en129', 
    'format-date-en130', 
    'format-date-en131', 
    'format-date-en132', 
    'format-date-en133', 
    'format-date-en134', 
    'format-date-en141', 
    'format-date-en151', 
    'format-date-en152', 
    'format-date-en153', 
    'format-date-en154', 
    'format-date-en155', 
    'format-date-en156', 
    'format-date-en157', 
    'format-date-en158', 
    'format-date-inpt-er1', 
    'format-date-inpt-er2', 
    'format-date-inpt-er3', 
    'format-date-inpt-er4']}, 
   {group_5, [parallel], [
    'format-date-1340err']}].

'format-date-001a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[Y]-[M01]-[D]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2003-09-7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-001b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[M]-[D]-[Y]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "9-7-2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-001c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[D]-[M]-[Y]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7-9-2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-001d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[D1] [MI] [Y]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "7 IX 2003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-001e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[[[Y]-[M01]-[D01]]]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[2003-09-07]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-001f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[[[Y0001]-[M01]-[D01]]]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001f.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[2003-09-07]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-001g'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"([Y01]-[M01]-[D01])\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-001g.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(03-09-07)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 1 to 100 return format-date($t + xs:yearMonthDuration('P1Y')*$i,
         '[YI]'), ' ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1950-01-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "MCMLI MCMLII MCMLIII MCMLIV MCMLV MCMLVI MCMLVII MCMLVIII MCMLIX MCMLX MCMLXI MCMLXII MCMLXIII MCMLXIV MCMLXV MCMLXVI MCMLXVII MCMLXVIII MCMLXIX MCMLXX MCMLXXI MCMLXXII MCMLXXIII MCMLXXIV MCMLXXV MCMLXXVI MCMLXXVII MCMLXXVIII MCMLXXIX MCMLXXX MCMLXXXI MCMLXXXII MCMLXXXIII MCMLXXXIV MCMLXXXV MCMLXXXVI MCMLXXXVII MCMLXXXVIII MCMLXXXIX MCMXC MCMXCI MCMXCII MCMXCIII MCMXCIV MCMXCV MCMXCVI MCMXCVII MCMXCVIII MCMXCIX MM MMI MMII MMIII MMIV MMV MMVI MMVII MMVIII MMIX MMX MMXI MMXII MMXIII MMXIV MMXV MMXVI MMXVII MMXVIII MMXIX MMXX MMXXI MMXXII MMXXIII MMXXIV MMXXV MMXXVI MMXXVII MMXXVIII MMXXIX MMXXX MMXXXI MMXXXII MMXXXIII MMXXXIV MMXXXV MMXXXVI MMXXXVII MMXXXVIII MMXXXIX MMXL MMXLI MMXLII MMXLIII MMXLIV MMXLV MMXLVI MMXLVII MMXLVIII MMXLIX MML") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 1 to 100 return format-date($t +
         xs:yearMonthDuration('P17Y')*$i, '[Yi,4-4]'), ' ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0800-01-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "dcccxvii dcccxxxiv dcccli dccclxviii dccclxxxv cmii cmxix cmxxxvi cmliii cmlxx cmlxxxvii miv mxxi mxxxviii mlv mlxxii mlxxxix mcvi mcxxiii mcxl mclvii mclxxiv mcxci mccviii mccxxv mccxlii mcclix mcclxxvi mccxciii mcccx mcccxxvii mcccxliv mccclxi mccclxxviii mcccxcv mcdxii mcdxxix mcdxlvi mcdlxiii mcdlxxx mcdxcvii mdxiv mdxxxi mdxlviii mdlxv mdlxxxii mdxcix mdcxvi mdcxxxiii mdcl mdclxvii mdclxxxiv mdcci mdccxviii mdccxxxv mdcclii mdcclxix mdcclxxxvi mdccciii mdcccxx mdcccxxxvii mdcccliv mdccclxxi mdccclxxxviii mcmv mcmxxii mcmxxxix mcmlvi mcmlxxiii mcmxc mmvii mmxxiv mmxli mmlviii mmlxxv mmxcii mmcix mmcxxvi mmcxliii mmclx mmclxxvii mmcxciv mmccxi mmccxxviii mmccxlv mmcclxii mmcclxxix mmccxcvi mmcccxiii mmcccxxx mmcccxlvii mmccclxiv mmccclxxxi mmcccxcviii mmcdxv mmcdxxxii mmcdxlix mmcdlxvi mmcdlxxxiii mmd") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-007a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[Y๐๐๐๑]-[M๐๑]-[D๑]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-007a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "๒๐๐๓-๐๙-๗") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-007b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[M๑]-[D๑]-[Y๐๐๐๑]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-007b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "๙-๗-๒๐๐๓") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-007c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"([Y๐๑]-[M๐๑]-[D๐๑])\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-007c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(๐๓-๐๙-๐๗)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-008a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[Y𐒠𐒠𐒠𐒡]-[M𐒠𐒡]-[D𐒡]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-008a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "𐒢𐒠𐒠𐒣-𐒠𐒩-𐒧") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-008b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"[M𐒡]-[D𐒡]-[Y𐒠𐒠𐒠𐒡]\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-008b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "𐒩-𐒧-𐒢𐒠𐒠𐒣") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-008c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($d,\"([Y𐒠𐒡]-[M𐒠𐒡]-[D𐒠𐒡])\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-09-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-008c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "(𐒠𐒣-𐒠𐒩-𐒠𐒧)") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 48, $d in $t + xs:yearMonthDuration('P1M')*$i 
        return concat(\"[\", $d, \":\", format-date($d, '[W]', (), 'ISO', ()), \"]\")
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('2004-04-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "[2004-05-01:18] [2004-06-01:23] [2004-07-01:27] [2004-08-01:31] [2004-09-01:36] [2004-10-01:40] [2004-11-01:45] [2004-12-01:49] [2005-01-01:53] [2005-02-01:5] [2005-03-01:9] [2005-04-01:13] [2005-05-01:17] [2005-06-01:22] [2005-07-01:26] [2005-08-01:31] [2005-09-01:35] [2005-10-01:39] [2005-11-01:44] [2005-12-01:48] [2006-01-01:52] [2006-02-01:5] [2006-03-01:9] [2006-04-01:13] [2006-05-01:18] [2006-06-01:22] [2006-07-01:26] [2006-08-01:31] [2006-09-01:35] [2006-10-01:39] [2006-11-01:44] [2006-12-01:48] [2007-01-01:1] [2007-02-01:5] [2007-03-01:9] [2007-04-01:13] [2007-05-01:18] [2007-06-01:22] [2007-07-01:26] [2007-08-01:31] [2007-09-01:35] [2007-10-01:40] [2007-11-01:44] [2007-12-01:48] [2008-01-01:1] [2008-02-01:5] [2008-03-01:9] [2008-04-01:14]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 48, $d in $t + xs:yearMonthDuration('P1M')*$i 
            return concat(\"[\", $d, \":\", format-date($d, '[F01]', (), 'Q{}ISO', ()), ']')
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('2003-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "[2004-01-01:04] [2004-02-01:07] [2004-03-01:01] [2004-04-01:04] [2004-05-01:06] [2004-06-01:02] [2004-07-01:04] [2004-08-01:07] [2004-09-01:03] [2004-10-01:05] [2004-11-01:01] [2004-12-01:03] [2005-01-01:06] [2005-02-01:02] [2005-03-01:02] [2005-04-01:05] [2005-05-01:07] [2005-06-01:03] [2005-07-01:05] [2005-08-01:01] [2005-09-01:04] [2005-10-01:06] [2005-11-01:02] [2005-12-01:04] [2006-01-01:07] [2006-02-01:03] [2006-03-01:03] [2006-04-01:06] [2006-05-01:01] [2006-06-01:04] [2006-07-01:06] [2006-08-01:02] [2006-09-01:05] [2006-10-01:07] [2006-11-01:03] [2006-12-01:05] [2007-01-01:01] [2007-02-01:04] [2007-03-01:04] [2007-04-01:07] [2007-05-01:02] [2007-06-01:05] [2007-07-01:07] [2007-08-01:03] [2007-09-01:06] [2007-10-01:01] [2007-11-01:04] [2007-12-01:06]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 48, $d in $t + xs:dayTimeDuration('P3D')*$i 
        return concat(\"[\", $d, \":\", format-date($d, '[w]', (), 'ISO', ()), ']')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('2005-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "[2005-12-04:1] [2005-12-07:2] [2005-12-10:2] [2005-12-13:3] [2005-12-16:3] [2005-12-19:4] [2005-12-22:4] [2005-12-25:4] [2005-12-28:5] [2005-12-31:5] [2006-01-03:1] [2006-01-06:1] [2006-01-09:2] [2006-01-12:2] [2006-01-15:2] [2006-01-18:3] [2006-01-21:3] [2006-01-24:4] [2006-01-27:4] [2006-01-30:5] [2006-02-02:1] [2006-02-05:1] [2006-02-08:2] [2006-02-11:2] [2006-02-14:3] [2006-02-17:3] [2006-02-20:4] [2006-02-23:4] [2006-02-26:4] [2006-03-01:1] [2006-03-04:1] [2006-03-07:2] [2006-03-10:2] [2006-03-13:3] [2006-03-16:3] [2006-03-19:3] [2006-03-22:4] [2006-03-25:4] [2006-03-28:5] [2006-03-31:5] [2006-04-03:1] [2006-04-06:1] [2006-04-09:1] [2006-04-12:2] [2006-04-15:2] [2006-04-18:3] [2006-04-21:3] [2006-04-24:4]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,4-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,3-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,2-5]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,2-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "85") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,2-*]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,*-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013f.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013g'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[Y,3]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013g.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "985") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013h'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,4-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013h.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013i'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,1-4]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013i.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013j'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,2-5]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013j.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "03") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013k'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,2-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013k.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "03") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013L'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,1-*]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013L.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013m'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,*-2]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013m.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-013n'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($t, '[M,3]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('0985-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-013n.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "003") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z]'), ' ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "-14:00 -13:30 -13:00 -12:30 -12:00 -11:30 -11:00 -10:30 -10:00 -09:30 -09:00 -08:30 -08:00 -07:30 -07:00 -06:30 -06:00 -05:30 -05:00 -04:30 -04:00 -03:30 -03:00 -02:30 -02:00 -01:30 -01:00 -00:30 +00:00 +00:30 +01:00 +01:30 +02:00 +02:30 +03:00 +03:30 +04:00 +04:30 +05:00 +05:30 +06:00 +06:30 +07:00 +07:30 +08:00 +08:30 +09:00 +09:30 +10:00 +10:30 +11:00 +11:30 +12:00 +12:30 +13:00 +13:30 +14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[z0]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "GMT-14; GMT-13:30; GMT-13; GMT-12:30; GMT-12; GMT-11:30; GMT-11; GMT-10:30; GMT-10; GMT-9:30; GMT-9; GMT-8:30; GMT-8; GMT-7:30; GMT-7; GMT-6:30; GMT-6; GMT-5:30; GMT-5; GMT-4:30; GMT-4; GMT-3:30; GMT-3; GMT-2:30; GMT-2; GMT-1:30; GMT-1; GMT-0:30; GMT+0; GMT+0:30; GMT+1; GMT+1:30; GMT+2; GMT+2:30; GMT+3; GMT+3:30; GMT+4; GMT+4:30; GMT+5; GMT+5:30; GMT+6; GMT+6:30; GMT+7; GMT+7:30; GMT+8; GMT+8:30; GMT+9; GMT+9:30; GMT+10; GMT+10:30; GMT+11; GMT+11:30; GMT+12; GMT+12:30; GMT+13; GMT+13:30; GMT+14") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[z]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "GMT-14:00; GMT-13:30; GMT-13:00; GMT-12:30; GMT-12:00; GMT-11:30; GMT-11:00; GMT-10:30; GMT-10:00; GMT-09:30; GMT-09:00; GMT-08:30; GMT-08:00; GMT-07:30; GMT-07:00; GMT-06:30; GMT-06:00; GMT-05:30; GMT-05:00; GMT-04:30; GMT-04:00; GMT-03:30; GMT-03:00; GMT-02:30; GMT-02:00; GMT-01:30; GMT-01:00; GMT-00:30; GMT+00:00; GMT+00:30; GMT+01:00; GMT+01:30; GMT+02:00; GMT+02:30; GMT+03:00; GMT+03:30; GMT+04:00; GMT+04:30; GMT+05:00; GMT+05:30; GMT+06:00; GMT+06:30; GMT+07:00; GMT+07:30; GMT+08:00; GMT+08:30; GMT+09:00; GMT+09:30; GMT+10:00; GMT+10:30; GMT+11:00; GMT+11:30; GMT+12:00; GMT+12:30; GMT+13:00; GMT+13:30; GMT+14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -12 to +12 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT1H')), '[ZZ]'), ' ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "Y X W V U T S R Q P O N Z A B C D E F G H I K L M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('1987-12-13'), '[ZZ]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "J") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('1987-12-13+05:30'), '[ZZ]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "+05:30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('1987-12-13+13:00'), '[ZZ]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "+13:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[z00~00]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-021.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "GMT-14~00; GMT-13~30; GMT-13~00; GMT-12~30; GMT-12~00; GMT-11~30; GMT-11~00; GMT-10~30; GMT-10~00; GMT-09~30; GMT-09~00; GMT-08~30; GMT-08~00; GMT-07~30; GMT-07~00; GMT-06~30; GMT-06~00; GMT-05~30; GMT-05~00; GMT-04~30; GMT-04~00; GMT-03~30; GMT-03~00; GMT-02~30; GMT-02~00; GMT-01~30; GMT-01~00; GMT-00~30; GMT+00~00; GMT+00~30; GMT+01~00; GMT+01~30; GMT+02~00; GMT+02~30; GMT+03~00; GMT+03~30; GMT+04~00; GMT+04~30; GMT+05~00; GMT+05~30; GMT+06~00; GMT+06~30; GMT+07~00; GMT+07~30; GMT+08~00; GMT+08~30; GMT+09~00; GMT+09~30; GMT+10~00; GMT+10~30; GMT+11~00; GMT+11~30; GMT+12~00; GMT+12~30; GMT+13~00; GMT+13~30; GMT+14~00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18+05:30'), '[Z٠٠:٠٠]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "+٠٥:٣٠") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z0:01]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "-14:00; -13:30; -13:00; -12:30; -12:00; -11:30; -11:00; -10:30; -10:00; -9:30; -9:00; -8:30; -8:00; -7:30; -7:00; -6:30; -6:00; -5:30; -5:00; -4:30; -4:00; -3:30; -3:00; -2:30; -2:00; -1:30; -1:00; -0:30; +0:00; +0:30; +1:00; +1:30; +2:00; +2:30; +3:00; +3:30; +4:00; +4:30; +5:00; +5:30; +6:00; +6:30; +7:00; +7:30; +8:00; +8:30; +9:00; +9:30; +10:00; +10:30; +11:00; +11:30; +12:00; +12:30; +13:00; +13:30; +14:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z999]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "-1400; -1330; -1300; -1230; -1200; -1130; -1100; -1030; -1000; -930; -900; -830; -800; -730; -700; -630; -600; -530; -500; -430; -400; -330; -300; -230; -200; -130; -100; -030; +000; +030; +100; +130; +200; +230; +300; +330; +400; +430; +500; +530; +600; +630; +700; +730; +800; +830; +900; +930; +1000; +1030; +1100; +1130; +1200; +1230; +1300; +1330; +1400") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z99]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "-14; -13:30; -13; -12:30; -12; -11:30; -11; -10:30; -10; -09:30; -09; -08:30; -08; -07:30; -07; -06:30; -06; -05:30; -05; -04:30; -04; -03:30; -03; -02:30; -02; -01:30; -01; -00:30; +00; +00:30; +01; +01:30; +02; +02:30; +03; +03:30; +04; +04:30; +05; +05:30; +06; +06:30; +07; +07:30; +08; +08:30; +09; +09:30; +10; +10:30; +11; +11:30; +12; +12:30; +13; +13:30; +14") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join( for $z in -28 to +28 return format-date(adjust-date-to-timezone($t,
         $z*xs:dayTimeDuration('PT30M')), '[Z0t]'), '; ')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "-14; -13:30; -13; -12:30; -12; -11:30; -11; -10:30; -10; -9:30; -9; -8:30; -8; -7:30; -7; -6:30; -6; -5:30; -5; -4:30; -4; -3:30; -3; -2:30; -2; -1:30; -1; -0:30; Z; +0:30; +1; +1:30; +2; +2:30; +3; +3:30; +4; +4:30; +5; +5:30; +6; +6:30; +7; +7:30; +8; +8:30; +9; +9:30; +10; +10:30; +11; +11:30; +12; +12:30; +13; +13:30; +14") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18+05:30'), '[Z𐒡:𐒠𐒡]')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"t","xs:date","xs:date('1985-03-01Z')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "+𐒥:𐒣𐒠") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18'), '[ D 01 ] [M 0 1] [ Y 0 0 0 1 ]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "18 05 2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18'), '[Y9;999]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2;012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18'), '[Y9,999,*]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2,012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18'), '[Y9,99-9,*]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2,01-2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date(\"1200-01-01\"),\"[Y###9]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1200") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date(\"0900-01-01\"),\"[Y###9]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "900") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18'), '[Y9999,25]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0000000000000000000002012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2012-05-18'), '[Y๐๐๐๑,10]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "๐๐๐๐๐๐๒๐๑๒") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-02-01'), '[d]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "32") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y# $ 0,3-3]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('654321-01-01'), '[Y#0 ' || codepoints-to-string(10) || '00            0]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "54321") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('654321-01-01'), '[Y#0,2-5]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "54321") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('654321-01-01'), '[Y#!0!0,5-5]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,2-4]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,2-*]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,2]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,1-4]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,3-4]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,3-3]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date('2016-01-01'), '[Y#.0,4-3]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-801err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[bla]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-801err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-802err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[H]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-802err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-803err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[h]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-803err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-804err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[P]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-804err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-805err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[m]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-805err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-806err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[s]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-806err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-807err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[f]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-807err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1350") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-808err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[bla]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-808err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XTDE1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-809err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date(\"2012-05-18\"),\"[Y999#]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-809err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-810err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(xs:date(\"2012-05-18\"),\"[Y##9#]\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-810err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 12 return let $d2 := $d + xs:yearMonthDuration('P1M')*$i return
         format-date($d2, '[MN]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 12 return let $d2 := $d + xs:yearMonthDuration('P1M')*$i return
         format-date($d2, '[Mn]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "january february march april may june july august september october november december") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[MNn]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "January February March April May June July August September October November December") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[MN,3-3]', 'en', (), ()) 
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[Mn,3-3]', 'en', (), ()) 
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en105.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "jan feb mar apr may jun jul aug sep oct nov dec") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $i in 1 to 12 
        return let $d2 := $d + xs:yearMonthDuration('P1M')*$i 
        return format-date($d2, '[MNn,3-3]', 'en', (), ()) 
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en106.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en111'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FN]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en111.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en112'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[Fn]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en112.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "monday tuesday wednesday thursday friday saturday sunday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en113'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FNn]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en113.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "Monday Tuesday Wednesday Thursday Friday Saturday Sunday") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en114'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FN,3-3]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en114.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "MON TUE WED THU FRI SAT SUN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en115'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[Fn,3-3]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en115.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "mon tue wed thu fri sat sun") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en116'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[FNn,3-3]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en116.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Mon Tue Wed Thu Fri Sat Sun") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en117'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	for $i in 1 to 7 
      	return let $d2 := $d + xs:dayTimeDuration('P1D')*$i 
      	return let $abb := format-date($d2, '[FNn,3-4]', 'en', (), ()) 
        return let $expected := ('Mon', 'Tues', 'Weds', 'Thur', 'Fri', 'Sat', 'Sun') 
        return (
         	substring($abb, 1, 3), 
         	starts-with($expected[$i], $abb) and string-length($abb) le 4 and string-length($abb) ge 3) 
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en117.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "Mon true Tue true Wed true Thu true Fri true Sat true Sun true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en118'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 to 7 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return let $abb :=
         format-date($d2, '[FNn,3-5]', 'en', (), ()) return let $expected := ('Mon', 'Tues', 'Weds',
         'Thurs', 'Fri', 'Sat', 'Sun') return (substring($abb, 1, 3), starts-with($expected[$i],
         $abb) and string-length($abb) le 5 and string-length($abb) ge 3) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-07')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en118.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "Mon true Tue true Wed true Thu true Fri true Sat true Sun true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en121'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i return
         format-date($d2, '[D1o]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('2003-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en121.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th 31st") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en122'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i return
         format-date($d2, '[Y1o]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en122.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "1990th 1991st 1992nd 1993rd 1994th 1995th 1996th 1997th 1998th 1999th 2000th 2001st 2002nd 2003rd 2004th 2005th 2006th 2007th 2008th 2009th 2010th 2011th 2012th 2013th 2014th 2015th 2016th 2017th 2018th 2019th 2020th") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en122b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i return
         format-date($d2, '[Y0001o]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en122b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "1990th 1991st 1992nd 1993rd 1994th 1995th 1996th 1997th 1998th 1999th 2000th 2001st 2002nd 2003rd 2004th 2005th 2006th 2007th 2008th 2009th 2010th 2011th 2012th 2013th 2014th 2015th 2016th 2017th 2018th 2019th 2020th") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en123'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return format-date($d2, '[DW]', 'en', (), ()), ' ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en123.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_norm_string_value(Res, "ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE THIRTEEN FOURTEEN FIFTEEN SIXTEEN SEVENTEEN EIGHTEEN NINETEEN TWENTY TWENTY ONE TWENTY TWO TWENTY THREE TWENTY FOUR TWENTY FIVE TWENTY SIX TWENTY SEVEN TWENTY EIGHT TWENTY NINE THIRTY THIRTY ONE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_norm_string_value(Res, "ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE THIRTEEN FOURTEEN FIFTEEN SIXTEEN SEVENTEEN EIGHTEEN NINETEEN TWENTY TWENTY-ONE TWENTY-TWO TWENTY-THREE TWENTY-FOUR TWENTY-FIVE TWENTY-SIX TWENTY-SEVEN TWENTY-EIGHT TWENTY-NINE THIRTY THIRTY-ONE") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en124'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return format-date($d2, '[Dw]', 'en', (), ()), ' ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en124.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_norm_string_value(Res, "one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty twenty one twenty two twenty three twenty four twenty five twenty six twenty seven twenty eight twenty nine thirty thirty one") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_norm_string_value(Res, "one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty twenty-one twenty-two twenty-three twenty-four twenty-five twenty-six twenty-seven twenty-eight twenty-nine thirty thirty-one") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en125'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return format-date($d2, '[DWw]', 'en', (), ()), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en125.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_norm_string_value(Res, "One; Two; Three; Four; Five; Six; Seven; Eight; Nine; Ten; Eleven; Twelve; Thirteen; Fourteen; Fifteen; Sixteen; Seventeen; Eighteen; Nineteen; Twenty; Twenty One; Twenty Two; Twenty Three; Twenty Four; Twenty Five; Twenty Six; Twenty Seven; Twenty Eight; Twenty Nine; Thirty; Thirty One") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_norm_string_value(Res, "One; Two; Three; Four; Five; Six; Seven; Eight; Nine; Ten; Eleven; Twelve; Thirteen; Fourteen; Fifteen; Sixteen; Seventeen; Eighteen; Nineteen; Twenty; Twenty-One; Twenty-Two; Twenty-Three; Twenty-Four; Twenty-Five; Twenty-Six; Twenty-Seven; Twenty-Eight; Twenty-Nine; Thirty; Thirty-One") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en126'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " 
         string-join( 
            for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
              return replace(format-date($d2, '[YW]', 'en', (), ()), ' AND ', ' '),
            '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en126.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_norm_string_value(Res, "ONE THOUSAND NINE HUNDRED NINETY; ONE THOUSAND NINE HUNDRED NINETY ONE; ONE THOUSAND NINE HUNDRED NINETY TWO; ONE THOUSAND NINE HUNDRED NINETY THREE; ONE THOUSAND NINE HUNDRED NINETY FOUR; ONE THOUSAND NINE HUNDRED NINETY FIVE; ONE THOUSAND NINE HUNDRED NINETY SIX; ONE THOUSAND NINE HUNDRED NINETY SEVEN; ONE THOUSAND NINE HUNDRED NINETY EIGHT; ONE THOUSAND NINE HUNDRED NINETY NINE; TWO THOUSAND; TWO THOUSAND ONE; TWO THOUSAND TWO; TWO THOUSAND THREE; TWO THOUSAND FOUR; TWO THOUSAND FIVE; TWO THOUSAND SIX; TWO THOUSAND SEVEN; TWO THOUSAND EIGHT; TWO THOUSAND NINE; TWO THOUSAND TEN; TWO THOUSAND ELEVEN; TWO THOUSAND TWELVE; TWO THOUSAND THIRTEEN; TWO THOUSAND FOURTEEN; TWO THOUSAND FIFTEEN; TWO THOUSAND SIXTEEN; TWO THOUSAND SEVENTEEN; TWO THOUSAND EIGHTEEN; TWO THOUSAND NINETEEN; TWO THOUSAND TWENTY") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_norm_string_value(Res, "ONE THOUSAND NINE HUNDRED NINETY; ONE THOUSAND NINE HUNDRED NINETY-ONE; ONE THOUSAND NINE HUNDRED NINETY-TWO; ONE THOUSAND NINE HUNDRED NINETY-THREE; ONE THOUSAND NINE HUNDRED NINETY-FOUR; ONE THOUSAND NINE HUNDRED NINETY-FIVE; ONE THOUSAND NINE HUNDRED NINETY-SIX; ONE THOUSAND NINE HUNDRED NINETY-SEVEN; ONE THOUSAND NINE HUNDRED NINETY-EIGHT; ONE THOUSAND NINE HUNDRED NINETY-NINE; TWO THOUSAND; TWO THOUSAND ONE; TWO THOUSAND TWO; TWO THOUSAND THREE; TWO THOUSAND FOUR; TWO THOUSAND FIVE; TWO THOUSAND SIX; TWO THOUSAND SEVEN; TWO THOUSAND EIGHT; TWO THOUSAND NINE; TWO THOUSAND TEN; TWO THOUSAND ELEVEN; TWO THOUSAND TWELVE; TWO THOUSAND THIRTEEN; TWO THOUSAND FOURTEEN; TWO THOUSAND FIFTEEN; TWO THOUSAND SIXTEEN; TWO THOUSAND SEVENTEEN; TWO THOUSAND EIGHTEEN; TWO THOUSAND NINETEEN; TWO THOUSAND TWENTY") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en127'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return replace(format-date($d2, '[Yw]', 'en', (), ()), ' and ', ' '), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en127.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_norm_string_value(Res, "one thousand nine hundred ninety; one thousand nine hundred ninety one; one thousand nine hundred ninety two; one thousand nine hundred ninety three; one thousand nine hundred ninety four; one thousand nine hundred ninety five; one thousand nine hundred ninety six; one thousand nine hundred ninety seven; one thousand nine hundred ninety eight; one thousand nine hundred ninety nine; two thousand; two thousand one; two thousand two; two thousand three; two thousand four; two thousand five; two thousand six; two thousand seven; two thousand eight; two thousand nine; two thousand ten; two thousand eleven; two thousand twelve; two thousand thirteen; two thousand fourteen; two thousand fifteen; two thousand sixteen; two thousand seventeen; two thousand eighteen; two thousand nineteen; two thousand twenty") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_norm_string_value(Res, "one thousand nine hundred ninety; one thousand nine hundred ninety-one; one thousand nine hundred ninety-two; one thousand nine hundred ninety-three; one thousand nine hundred ninety-four; one thousand nine hundred ninety-five; one thousand nine hundred ninety-six; one thousand nine hundred ninety-seven; one thousand nine hundred ninety-eight; one thousand nine hundred ninety-nine; two thousand; two thousand one; two thousand two; two thousand three; two thousand four; two thousand five; two thousand six; two thousand seven; two thousand eight; two thousand nine; two thousand ten; two thousand eleven; two thousand twelve; two thousand thirteen; two thousand fourteen; two thousand fifteen; two thousand sixteen; two thousand seventeen; two thousand eighteen; two thousand nineteen; two thousand twenty") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en128'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return replace(format-date($d2, '[YWw]', 'en', (), ()), ' [Aa]nd ', ' '), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en128.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_norm_string_value(Res, "One Thousand Nine Hundred Ninety; One Thousand Nine Hundred Ninety One; One Thousand Nine Hundred Ninety Two; One Thousand Nine Hundred Ninety Three; One Thousand Nine Hundred Ninety Four; One Thousand Nine Hundred Ninety Five; One Thousand Nine Hundred Ninety Six; One Thousand Nine Hundred Ninety Seven; One Thousand Nine Hundred Ninety Eight; One Thousand Nine Hundred Ninety Nine; Two Thousand; Two Thousand One; Two Thousand Two; Two Thousand Three; Two Thousand Four; Two Thousand Five; Two Thousand Six; Two Thousand Seven; Two Thousand Eight; Two Thousand Nine; Two Thousand Ten; Two Thousand Eleven; Two Thousand Twelve; Two Thousand Thirteen; Two Thousand Fourteen; Two Thousand Fifteen; Two Thousand Sixteen; Two Thousand Seventeen; Two Thousand Eighteen; Two Thousand Nineteen; Two Thousand Twenty") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_norm_string_value(Res, "One Thousand Nine Hundred Ninety; One Thousand Nine Hundred Ninety-One; One Thousand Nine Hundred Ninety-Two; One Thousand Nine Hundred Ninety-Three; One Thousand Nine Hundred Ninety-Four; One Thousand Nine Hundred Ninety-Five; One Thousand Nine Hundred Ninety-Six; One Thousand Nine Hundred Ninety-Seven; One Thousand Nine Hundred Ninety-Eight; One Thousand Nine Hundred Ninety-Nine; Two Thousand; Two Thousand One; Two Thousand Two; Two Thousand Three; Two Thousand Four; Two Thousand Five; Two Thousand Six; Two Thousand Seven; Two Thousand Eight; Two Thousand Nine; Two Thousand Ten; Two Thousand Eleven; Two Thousand Twelve; Two Thousand Thirteen; Two Thousand Fourteen; Two Thousand Fifteen; Two Thousand Sixteen; Two Thousand Seventeen; Two Thousand Eighteen; Two Thousand Nineteen; Two Thousand Twenty") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en129'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return translate(format-date($d2, '[DWo]', 'en', (), ()), '- ', ''), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en129.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "FIRST; SECOND; THIRD; FOURTH; FIFTH; SIXTH; SEVENTH; EIGHTH; NINTH; TENTH; ELEVENTH; TWELFTH; THIRTEENTH; FOURTEENTH; FIFTEENTH; SIXTEENTH; SEVENTEENTH; EIGHTEENTH; NINETEENTH; TWENTIETH; TWENTYFIRST; TWENTYSECOND; TWENTYTHIRD; TWENTYFOURTH; TWENTYFIFTH; TWENTYSIXTH; TWENTYSEVENTH; TWENTYEIGHTH; TWENTYNINTH; THIRTIETH; THIRTYFIRST") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en130'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return translate(format-date($d2, '[Dwo]', 'en', (), ()), '- ', ''), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en130.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "first; second; third; fourth; fifth; sixth; seventh; eighth; ninth; tenth; eleventh; twelfth; thirteenth; fourteenth; fifteenth; sixteenth; seventeenth; eighteenth; nineteenth; twentieth; twentyfirst; twentysecond; twentythird; twentyfourth; twentyfifth; twentysixth; twentyseventh; twentyeighth; twentyninth; thirtieth; thirtyfirst") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en131'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:dayTimeDuration('P1D')*$i
         return translate(format-date($d2, '[DWwo]', 'en', (), ()), '- ', ''), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en131.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "First; Second; Third; Fourth; Fifth; Sixth; Seventh; Eighth; Ninth; Tenth; Eleventh; Twelfth; Thirteenth; Fourteenth; Fifteenth; Sixteenth; Seventeenth; Eighteenth; Nineteenth; Twentieth; TwentyFirst; TwentySecond; TwentyThird; TwentyFourth; TwentyFifth; TwentySixth; TwentySeventh; TwentyEighth; TwentyNinth; Thirtieth; ThirtyFirst") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en132'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return translate(replace(format-date($d2, '[YWo]', 'en', (), ()), ' AND ', ' '), '- ', ''), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en132.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "ONETHOUSANDNINEHUNDREDNINETIETH; ONETHOUSANDNINEHUNDREDNINETYFIRST; ONETHOUSANDNINEHUNDREDNINETYSECOND; ONETHOUSANDNINEHUNDREDNINETYTHIRD; ONETHOUSANDNINEHUNDREDNINETYFOURTH; ONETHOUSANDNINEHUNDREDNINETYFIFTH; ONETHOUSANDNINEHUNDREDNINETYSIXTH; ONETHOUSANDNINEHUNDREDNINETYSEVENTH; ONETHOUSANDNINEHUNDREDNINETYEIGHTH; ONETHOUSANDNINEHUNDREDNINETYNINTH; TWOTHOUSANDTH; TWOTHOUSANDFIRST; TWOTHOUSANDSECOND; TWOTHOUSANDTHIRD; TWOTHOUSANDFOURTH; TWOTHOUSANDFIFTH; TWOTHOUSANDSIXTH; TWOTHOUSANDSEVENTH; TWOTHOUSANDEIGHTH; TWOTHOUSANDNINTH; TWOTHOUSANDTENTH; TWOTHOUSANDELEVENTH; TWOTHOUSANDTWELFTH; TWOTHOUSANDTHIRTEENTH; TWOTHOUSANDFOURTEENTH; TWOTHOUSANDFIFTEENTH; TWOTHOUSANDSIXTEENTH; TWOTHOUSANDSEVENTEENTH; TWOTHOUSANDEIGHTEENTH; TWOTHOUSANDNINETEENTH; TWOTHOUSANDTWENTIETH") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en133'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return translate(replace(format-date($d2, '[Ywo]', 'en', (), ()), ' and ', ' '), '- ', ''), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en133.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "onethousandninehundredninetieth; onethousandninehundredninetyfirst; onethousandninehundredninetysecond; onethousandninehundredninetythird; onethousandninehundredninetyfourth; onethousandninehundredninetyfifth; onethousandninehundredninetysixth; onethousandninehundredninetyseventh; onethousandninehundredninetyeighth; onethousandninehundredninetyninth; twothousandth; twothousandfirst; twothousandsecond; twothousandthird; twothousandfourth; twothousandfifth; twothousandsixth; twothousandseventh; twothousandeighth; twothousandninth; twothousandtenth; twothousandeleventh; twothousandtwelfth; twothousandthirteenth; twothousandfourteenth; twothousandfifteenth; twothousandsixteenth; twothousandseventeenth; twothousandeighteenth; twothousandnineteenth; twothousandtwentieth") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en134'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " string-join( for $i in 0 to 30 return let $d2 := $d + xs:yearMonthDuration('P1Y')*$i
         return translate(replace(format-date($d2, '[YWwo]', 'en', (), ()), ' [Aa]nd ', ' '), '- ', ''), '; ') ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d","xs:date","xs:date('1990-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en134.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_norm_string_value(Res, "OneThousandNineHundredNinetieth; OneThousandNineHundredNinetyFirst; OneThousandNineHundredNinetySecond; OneThousandNineHundredNinetyThird; OneThousandNineHundredNinetyFourth; OneThousandNineHundredNinetyFifth; OneThousandNineHundredNinetySixth; OneThousandNineHundredNinetySeventh; OneThousandNineHundredNinetyEighth; OneThousandNineHundredNinetyNinth; TwoThousandth; TwoThousandFirst; TwoThousandSecond; TwoThousandThird; TwoThousandFourth; TwoThousandFifth; TwoThousandSixth; TwoThousandSeventh; TwoThousandEighth; TwoThousandNinth; TwoThousandTenth; TwoThousandEleventh; TwoThousandTwelfth; TwoThousandThirteenth; TwoThousandFourteenth; TwoThousandFifteenth; TwoThousandSixteenth; TwoThousandSeventeenth; TwoThousandEighteenth; TwoThousandNineteenth; TwoThousandTwentieth") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en141'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " format-date($d1, '[Y][EN]', 'en', (), ()), format-date($d2, '[Y][EN]', 'en', (), ()) ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"d1","xs:date","xs:date('1990-12-01')"}, 
{"d2","xs:date","xs:date('-0055-12-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en141.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"\"1990AD\", \"55BC\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"\"1990CE\", \"55BCE\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"\"1990A.D.\", \"55B.C.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"\"1990C.E.\", \"55B.C.E.\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en151'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date($b, '[MNn]', 'xib', (), ())", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"b","xs:date","xs:date('2006-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en151.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"matches($result, \"en\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"matches($result, \"March\")") of 
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
'format-date-en152'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"calendar:CB"}. 
'format-date-en153'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	format-date($b, '[M01]', 'en', 'Q{http://calendar.example.com/non-existent-calendar}CB', ())
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"b","xs:date","xs:date('2006-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en153.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en154'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	declare namespace cal = \"http://calendar.example.com/non-existent-calendar\"; 
      	format-date(xs:date('2006-03-01'), '[M01]', 'en', 'cal:CB', ())
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en154.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en155'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	format-date($b, '[M01]', 'en', 'Q{}ZODIAC', ())
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"b","xs:date","xs:date('2006-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en155.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en156'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	format-date($b, '[M01]', 'en', 'ZODIAC', ())
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"b","xs:date","xs:date('2006-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en156.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en157'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	format-date($b, '[M01]', 'en', ':w', ())
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"b","xs:date","xs:date('2006-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en157.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-en158'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	format-date($b, '[M01]', 'en', 'Q{}1', ())
      ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"b","xs:date","xs:date('2006-03-01')"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-en158.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-inpt-er1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date('abc', '[bla]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-inpt-er1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-inpt-er2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[bla]', 'en', (), (), 6)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-inpt-er2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-inpt-er3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[bla]', 'en', (), 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-inpt-er3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-inpt-er4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), \"[D01]\", \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-inpt-er4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'format-date-1340err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "format-date(current-date(), '[yY]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "format-date-1340err.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOFD1340") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.