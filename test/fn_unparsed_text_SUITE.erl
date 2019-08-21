-module('fn_unparsed_text_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['fn-unparsed-text-001'/1]).
-export(['fn-unparsed-text-002'/1]).
-export(['fn-unparsed-text-003'/1]).
-export(['fn-unparsed-text-004'/1]).
-export(['fn-unparsed-text-005'/1]).
-export(['fn-unparsed-text-006'/1]).
-export(['fn-unparsed-text-007'/1]).
-export(['fn-unparsed-text-008'/1]).
-export(['fn-unparsed-text-009'/1]).
-export(['fn-unparsed-text-010'/1]).
-export(['fn-unparsed-text-011'/1]).
-export(['fn-unparsed-text-012'/1]).
-export(['fn-unparsed-text-013'/1]).
-export(['fn-unparsed-text-014'/1]).
-export(['fn-unparsed-text-015'/1]).
-export(['fn-unparsed-text-016'/1]).
-export(['fn-unparsed-text-017'/1]).
-export(['fn-unparsed-text-018'/1]).
-export(['fn-unparsed-text-019'/1]).
-export(['fn-unparsed-text-020'/1]).
-export(['fn-unparsed-text-021'/1]).
-export(['fn-unparsed-text-022'/1]).
-export(['fn-unparsed-text-023'/1]).
-export(['fn-unparsed-text-024'/1]).
-export(['fn-unparsed-text-025'/1]).
-export(['fn-unparsed-text-026'/1]).
-export(['fn-unparsed-text-027'/1]).
-export(['fn-unparsed-text-028'/1]).
-export(['fn-unparsed-text-029'/1]).
-export(['fn-unparsed-text-030'/1]).
-export(['fn-unparsed-text-031'/1]).
-export(['fn-unparsed-text-032'/1]).
-export(['fn-unparsed-text-033'/1]).
-export(['fn-unparsed-text-034'/1]).
-export(['fn-unparsed-text-035'/1]).
-export(['fn-unparsed-text-036'/1]).
-export(['fn-unparsed-text-037'/1]).
-export(['fn-unparsed-text-038'/1]).
-export(['fn-unparsed-text-039'/1]).
-export(['fn-unparsed-text-040'/1]).
-export(['fn-unparsed-text-041'/1]).
-export(['fn-unparsed-text-042'/1]).
-export(['fn-unparsed-text-043'/1]).
-export(['fn-unparsed-text-044'/1]).
-export(['fn-unparsed-text-045'/1]).
-export(['fn-unparsed-text-046'/1]).
-export(['fn-unparsed-text-047'/1]).
-export(['fn-unparsed-text-048'/1]).
-export(['fn-unparsed-text-049'/1]).
-export(['fn-unparsed-text-050'/1]).
-export(['fn-unparsed-text-051'/1]).
-export(['fn-unparsed-text-052'/1]).
-export(['fn-unparsed-text-053'/1]).
-export(['fn-unparsed-text-054'/1]).
-export(['fn-unparsed-text-055'/1]).
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
   {group, group_2}
   ].
groups() -> [
   {group_0, [parallel], [
    'fn-unparsed-text-001', 
    'fn-unparsed-text-002', 
    'fn-unparsed-text-003', 
    'fn-unparsed-text-004', 
    'fn-unparsed-text-005', 
    'fn-unparsed-text-006', 
    'fn-unparsed-text-007', 
    'fn-unparsed-text-008', 
    'fn-unparsed-text-009', 
    'fn-unparsed-text-010', 
    'fn-unparsed-text-011', 
    'fn-unparsed-text-012', 
    'fn-unparsed-text-013', 
    'fn-unparsed-text-014', 
    'fn-unparsed-text-015', 
    'fn-unparsed-text-016', 
    'fn-unparsed-text-017', 
    'fn-unparsed-text-018', 
    'fn-unparsed-text-019', 
    'fn-unparsed-text-020', 
    'fn-unparsed-text-021', 
    'fn-unparsed-text-022', 
    'fn-unparsed-text-023']}, 
   {group_1, [parallel], [
    'fn-unparsed-text-024', 
    'fn-unparsed-text-025', 
    'fn-unparsed-text-026', 
    'fn-unparsed-text-027', 
    'fn-unparsed-text-028', 
    'fn-unparsed-text-029', 
    'fn-unparsed-text-030', 
    'fn-unparsed-text-031', 
    'fn-unparsed-text-032', 
    'fn-unparsed-text-033', 
    'fn-unparsed-text-034', 
    'fn-unparsed-text-035', 
    'fn-unparsed-text-036', 
    'fn-unparsed-text-037', 
    'fn-unparsed-text-038', 
    'fn-unparsed-text-039', 
    'fn-unparsed-text-040', 
    'fn-unparsed-text-041', 
    'fn-unparsed-text-042', 
    'fn-unparsed-text-043', 
    'fn-unparsed-text-044', 
    'fn-unparsed-text-045', 
    'fn-unparsed-text-046', 
    'fn-unparsed-text-047']}, 
   {group_2, [parallel], [
    'fn-unparsed-text-048', 
    'fn-unparsed-text-049', 
    'fn-unparsed-text-050', 
    'fn-unparsed-text-051', 
    'fn-unparsed-text-052', 
    'fn-unparsed-text-053', 
    'fn-unparsed-text-054', 
    'fn-unparsed-text-055']}].
environment('unparsed-text',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "unparsed-text/text-with-surrogates.txt"),"http://www.w3.org/fots/unparsed-text/text-with-surrogates.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-16be-bom-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom-lines.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-16le-bom-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom-lines.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-lines.txt"}, 
{"", filename:join(__BaseDir, "unparsed-text/unknown-encoding.txt"),"http://www.w3.org/fots/unparsed-text/unknown-encoding.txt"}, 
{"text/xml", filename:join(__BaseDir, "unparsed-text/invalid-xml.xml"),"http://www.w3.org/fots/unparsed-text/invalid-xml.xml"}, 
{"", filename:join(__BaseDir, "unparsed-text/non-xml-character.txt"),"http://www.w3.org/fots/unparsed-text/non-xml-character.txt"}, 
{"text/xml", filename:join(__BaseDir, "unparsed-text/text-xml-iso-8859-1.xml"),"http://www.w3.org/fots/unparsed-text/text-xml-iso-8859-1.xml"}, 
{"text/xml", filename:join(__BaseDir, "unparsed-text/text-xml-utf-16.xml"),"http://www.w3.org/fots/unparsed-text/text-xml-utf-16.xml"}, 
{"text/xml", filename:join(__BaseDir, "unparsed-text/text-xml-utf-8.xml"),"http://www.w3.org/fots/unparsed-text/text-xml-utf-8.xml"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom-invalid.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-invalid.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-iso-8859-1.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-iso-8859-1.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-16be-bom.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-16le-bom.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom.txt"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
]; 
environment('unparsed-text-with-base-uri',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
]; 
environment('unparsed-text-with-base-uri-2',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
].
'fn-unparsed-text-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text#0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:exists( fn:unparsed-text#1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:exists( fn:unparsed-text#2 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(static-base-uri(), \"utf-8\", \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text#3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-unparsed-text-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:unparsed-text( if (current-date() eq xs:date('1900-01-01'))
                                then \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\"
                                else 1 ),
              fn:unparsed-text( if (current-date() eq xs:date('1900-01-01'))
                                then 1
                                else \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-unparsed-text-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:unparsed-text( \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
                                if (current-date() eq xs:date('1900-01-01'))
                                then \"utf-8\"
                                else 1 ),
              fn:unparsed-text( \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
                                if (current-date() eq xs:date('1900-01-01'))
                                then 1
                                else \"utf-8\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-unparsed-text-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:unparsed-text( \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
                                if (current-date() eq xs:date('1900-01-01'))
                                then \"utf-8\"
                                else () ),
              fn:unparsed-text( \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
                                if (current-date() eq xs:date('1900-01-01'))
                                then ()
                                else \"utf-8\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.example.org/#fragment\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.example.org/#fragment\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.example.org/%gg\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.example.org/%gg\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\":/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\":/\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text( \"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text( \"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"surely-nobody-supports-this:/path.txt\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"surely-nobody-supports-this:/path.txt\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"unparsed-text/text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"unparsed-text/text-plain-utf-8.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"does-not-exist.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"does-not-exist.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"text-plain-utf-8.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"C:\\file-might-exist.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"C:\\file-might-exist.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-with-base-uri-2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-with-base-uri-2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/does-not-exists.txt"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/does-not-exists.txt"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\"))[1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-035.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1170") of 
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
'fn-unparsed-text-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\", \"123\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/unknown-encoding.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-037.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-invalid.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-038.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/non-xml-character.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-039.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/invalid-xml.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-040.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"utf-16\"?><text>hello world
") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-043.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-044.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-iso-8859-1.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-045.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-xml-utf-8.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-046.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"utf-8\"?><text>hello world</text>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-xml-utf-16.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-047.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"utf-16\"?><text>hello world</text>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-xml-iso-8859-1.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?><text>hello world</text>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-length(fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-lines.txt\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-049.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "400") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-length(fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines.txt\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-050.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "400") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-length(fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom-lines.txt\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-051.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "400") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-length(fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom-lines.txt\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-052.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "400") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text($href)", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
{'context-item', [""]}, 
{vars, [{"href","xs:string","'unparsed-text/text-plain-utf-8.txt'"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-053.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"remote_http"}. 
'fn-unparsed-text-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         string-length(unparsed-text('http://www.w3.org/fots/unparsed-text/text-with-surrogates.txt')) 
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-unparsed-text-055.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2048") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.