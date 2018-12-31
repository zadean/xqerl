-module('fn_xml_to_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['xml-to-json-001'/1]).
-export(['xml-to-json-002'/1]).
-export(['xml-to-json-003'/1]).
-export(['xml-to-json-004'/1]).
-export(['xml-to-json-005'/1]).
-export(['xml-to-json-006'/1]).
-export(['xml-to-json-007'/1]).
-export(['xml-to-json-008'/1]).
-export(['xml-to-json-009'/1]).
-export(['xml-to-json-010'/1]).
-export(['xml-to-json-011'/1]).
-export(['xml-to-json-012'/1]).
-export(['xml-to-json-013'/1]).
-export(['xml-to-json-014'/1]).
-export(['xml-to-json-015'/1]).
-export(['xml-to-json-016'/1]).
-export(['xml-to-json-017'/1]).
-export(['xml-to-json-021'/1]).
-export(['xml-to-json-022'/1]).
-export(['xml-to-json-023'/1]).
-export(['xml-to-json-024'/1]).
-export(['xml-to-json-025'/1]).
-export(['xml-to-json-026'/1]).
-export(['xml-to-json-027'/1]).
-export(['xml-to-json-028'/1]).
-export(['xml-to-json-029'/1]).
-export(['xml-to-json-030'/1]).
-export(['xml-to-json-031'/1]).
-export(['xml-to-json-032'/1]).
-export(['xml-to-json-033'/1]).
-export(['xml-to-json-034'/1]).
-export(['xml-to-json-035'/1]).
-export(['xml-to-json-036'/1]).
-export(['xml-to-json-037'/1]).
-export(['xml-to-json-038'/1]).
-export(['xml-to-json-039'/1]).
-export(['xml-to-json-040'/1]).
-export(['xml-to-json-041'/1]).
-export(['xml-to-json-042'/1]).
-export(['xml-to-json-043'/1]).
-export(['xml-to-json-044'/1]).
-export(['xml-to-json-045'/1]).
-export(['xml-to-json-046'/1]).
-export(['xml-to-json-047'/1]).
-export(['xml-to-json-048'/1]).
-export(['xml-to-json-049'/1]).
-export(['xml-to-json-050'/1]).
-export(['xml-to-json-051'/1]).
-export(['xml-to-json-052'/1]).
-export(['xml-to-json-053'/1]).
-export(['xml-to-json-054'/1]).
-export(['xml-to-json-055'/1]).
-export(['xml-to-json-056'/1]).
-export(['xml-to-json-057'/1]).
-export(['xml-to-json-058'/1]).
-export(['xml-to-json-059'/1]).
-export(['xml-to-json-060'/1]).
-export(['xml-to-json-061'/1]).
-export(['xml-to-json-062'/1]).
-export(['xml-to-json-063'/1]).
-export(['xml-to-json-064'/1]).
-export(['xml-to-json-065'/1]).
-export(['xml-to-json-066'/1]).
-export(['xml-to-json-067'/1]).
-export(['xml-to-json-068'/1]).
-export(['xml-to-json-069'/1]).
-export(['xml-to-json-070'/1]).
-export(['xml-to-json-071'/1]).
-export(['xml-to-json-072'/1]).
-export(['xml-to-json-073'/1]).
-export(['xml-to-json-074'/1]).
-export(['xml-to-json-075'/1]).
-export(['xml-to-json-076'/1]).
-export(['xml-to-json-077'/1]).
-export(['xml-to-json-078'/1]).
-export(['xml-to-json-079'/1]).
-export(['xml-to-json-080'/1]).
-export(['xml-to-json-C-001'/1]).
-export(['xml-to-json-C-002'/1]).
-export(['xml-to-json-C-003'/1]).
-export(['xml-to-json-C-004'/1]).
-export(['xml-to-json-C-005'/1]).
-export(['xml-to-json-C-006'/1]).
-export(['xml-to-json-C-007'/1]).
-export(['xml-to-json-C-008'/1]).
-export(['xml-to-json-C-009'/1]).
-export(['xml-to-json-C-010'/1]).
-export(['xml-to-json-C-011'/1]).
-export(['xml-to-json-C-012'/1]).
-export(['xml-to-json-C-013'/1]).
-export(['xml-to-json-C-014'/1]).
-export(['xml-to-json-C-015'/1]).
-export(['xml-to-json-C-016'/1]).
-export(['xml-to-json-C-017'/1]).
-export(['xml-to-json-C-018'/1]).
-export(['xml-to-json-D-001'/1]).
-export(['xml-to-json-D-002'/1]).
-export(['xml-to-json-D-003'/1]).
-export(['xml-to-json-D-004'/1]).
-export(['xml-to-json-D-005'/1]).
-export(['xml-to-json-D-006'/1]).
-export(['xml-to-json-D-007'/1]).
-export(['xml-to-json-D-008'/1]).
-export(['xml-to-json-D-009'/1]).
-export(['xml-to-json-D-010'/1]).
-export(['xml-to-json-D-011'/1]).
-export(['xml-to-json-D-012'/1]).
-export(['xml-to-json-D-013'/1]).
-export(['xml-to-json-D-014'/1]).
-export(['xml-to-json-D-016'/1]).
-export(['xml-to-json-D-101'/1]).
-export(['xml-to-json-D-102'/1]).
-export(['xml-to-json-D-103'/1]).
-export(['xml-to-json-D-104'/1]).
-export(['xml-to-json-D-201'/1]).
-export(['xml-to-json-D-202'/1]).
-export(['xml-to-json-D-203'/1]).
-export(['xml-to-json-D-204'/1]).
-export(['xml-to-json-D-205'/1]).
-export(['xml-to-json-D-206'/1]).
-export(['xml-to-json-D-301'/1]).
-export(['xml-to-json-D-302'/1]).
-export(['xml-to-json-D-303'/1]).
-export(['xml-to-json-D-401'/1]).
-export(['xml-to-json-D-402'/1]).
-export(['xml-to-json-D-403'/1]).
-export(['xml-to-json-D-404'/1]).
-export(['xml-to-json-D-405'/1]).
-export(['xml-to-json-D-406'/1]).
-export(['xml-to-json-D-407'/1]).
-export(['xml-to-json-D-501'/1]).
-export(['xml-to-json-D-502'/1]).
-export(['xml-to-json-D-503'/1]).
-export(['xml-to-json-D-504'/1]).
-export(['xml-to-json-D-505'/1]).
-export(['xml-to-json-D-506'/1]).
-export(['xml-to-json-D-507'/1]).
-export(['xml-to-json-D-508'/1]).
-export(['xml-to-json-D-509'/1]).
-export(['xml-to-json-D-510'/1]).
-export(['xml-to-json-D-511'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'xml-to-json-001', 
'xml-to-json-002', 
'xml-to-json-003', 
'xml-to-json-004', 
'xml-to-json-005', 
'xml-to-json-006', 
'xml-to-json-007', 
'xml-to-json-008', 
'xml-to-json-009', 
'xml-to-json-010', 
'xml-to-json-011', 
'xml-to-json-012', 
'xml-to-json-013', 
'xml-to-json-014', 
'xml-to-json-015', 
'xml-to-json-016', 
'xml-to-json-017', 
'xml-to-json-021', 
'xml-to-json-022', 
'xml-to-json-023', 
'xml-to-json-024', 
'xml-to-json-025', 
'xml-to-json-026', 
'xml-to-json-027', 
'xml-to-json-028', 
'xml-to-json-029', 
'xml-to-json-030', 
'xml-to-json-031', 
'xml-to-json-032', 
'xml-to-json-033', 
'xml-to-json-034', 
'xml-to-json-035', 
'xml-to-json-036', 
'xml-to-json-037', 
'xml-to-json-038', 
'xml-to-json-039', 
'xml-to-json-040', 
'xml-to-json-041', 
'xml-to-json-042', 
'xml-to-json-043', 
'xml-to-json-044', 
'xml-to-json-045', 
'xml-to-json-046', 
'xml-to-json-047', 
'xml-to-json-048', 
'xml-to-json-049', 
'xml-to-json-050', 
'xml-to-json-051', 
'xml-to-json-052', 
'xml-to-json-053', 
'xml-to-json-054', 
'xml-to-json-055', 
'xml-to-json-056', 
'xml-to-json-057', 
'xml-to-json-058', 
'xml-to-json-059', 
'xml-to-json-060', 
'xml-to-json-061', 
'xml-to-json-062', 
'xml-to-json-063', 
'xml-to-json-064', 
'xml-to-json-065', 
'xml-to-json-066', 
'xml-to-json-067', 
'xml-to-json-068', 
'xml-to-json-069', 
'xml-to-json-070', 
'xml-to-json-071', 
'xml-to-json-072', 
'xml-to-json-073', 
'xml-to-json-074', 
'xml-to-json-075', 
'xml-to-json-076', 
'xml-to-json-077', 
'xml-to-json-078', 
'xml-to-json-079', 
'xml-to-json-080', 
'xml-to-json-C-001', 
'xml-to-json-C-002', 
'xml-to-json-C-003', 
'xml-to-json-C-004', 
'xml-to-json-C-005', 
'xml-to-json-C-006', 
'xml-to-json-C-007', 
'xml-to-json-C-008', 
'xml-to-json-C-009', 
'xml-to-json-C-010', 
'xml-to-json-C-011', 
'xml-to-json-C-012', 
'xml-to-json-C-013', 
'xml-to-json-C-014', 
'xml-to-json-C-015', 
'xml-to-json-C-016', 
'xml-to-json-C-017', 
'xml-to-json-C-018', 
'xml-to-json-D-001', 
'xml-to-json-D-002', 
'xml-to-json-D-003', 
'xml-to-json-D-004', 
'xml-to-json-D-005', 
'xml-to-json-D-006', 
'xml-to-json-D-007', 
'xml-to-json-D-008', 
'xml-to-json-D-009', 
'xml-to-json-D-010', 
'xml-to-json-D-011', 
'xml-to-json-D-012', 
'xml-to-json-D-013', 
'xml-to-json-D-014', 
'xml-to-json-D-016', 
'xml-to-json-D-101', 
'xml-to-json-D-102', 
'xml-to-json-D-103', 
'xml-to-json-D-104', 
'xml-to-json-D-201', 
'xml-to-json-D-202', 
'xml-to-json-D-203', 
'xml-to-json-D-204', 
'xml-to-json-D-205', 
'xml-to-json-D-206', 
'xml-to-json-D-301', 
'xml-to-json-D-302', 
'xml-to-json-D-303', 
'xml-to-json-D-401', 
'xml-to-json-D-402', 
'xml-to-json-D-403', 
'xml-to-json-D-404', 
'xml-to-json-D-405', 
'xml-to-json-D-406', 
'xml-to-json-D-407', 
'xml-to-json-D-501', 
'xml-to-json-D-502', 
'xml-to-json-D-503', 
'xml-to-json-D-504', 
'xml-to-json-D-505', 
'xml-to-json-D-506', 
'xml-to-json-D-507', 
'xml-to-json-D-508', 
'xml-to-json-D-509', 
'xml-to-json-D-510', 
'xml-to-json-D-511'
].
environment('xml-to-json-C',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "xml-to-json/xml-to-json-C.xsl"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('xml-to-json-D',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "xml-to-json/xml-to-json-D.xsl"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'xml-to-json-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('null',map{'liberal':true()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('null',map{'liberal':true()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('null',map{'liberal':true()}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('true'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"true\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('false'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"false\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('93.7'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"93.7\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
           declare variable $in := '\"London\"';
          xml-to-json(json-to-xml($in))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"London\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
           declare variable $in := '\"\"';
          xml-to-json(json-to-xml($in))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('[]'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('[34]'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[34]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('[true, false]'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[true,false]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('[\"A\", \"B\", \"C\", \"D\", \"E\"]'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"A\",\"B\",\"C\",\"D\",\"E\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('{}'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('{\"A\":true}'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":true}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('{\"A\":1, \"B\":2, \"C\":3, \"D\":4, \"E\":5}'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":1,\"B\":2,\"C\":3,\"D\":4,\"E\":5}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('{\"A\":[1,2], \"B\":[true,false], \"C\":[\"Paris\",\"London\",\"Berlin\"], \"D\":[1, true, \"on\"], \"E\":[null, null]}'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":[1,2],\"B\":[true,false],\"C\":[\"Paris\",\"London\",\"Berlin\"],\"D\":[1,true,\"on\"],\"E\":[null,null]}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(json-to-xml('\"\\\\\\/\\\"\\r\\t\\n\\u0020\"'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\/\\\"\\r\\t\\n \"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<null xmlns=\"http://www.w3.org/2005/xpath-functions\"/>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"null\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\">true</boolean>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"true\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\">23</number>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"23\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">banana</string>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"banana\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\"> false </boolean>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"false\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\"> +005 </number>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">   </string>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"   \"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<array xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null/> <!--comma--> <null/>   </array>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"[null,null]\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null key=\"a\"/> <!--comma--> <null key=\"b\"/>   </map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"a\":null,\"b\":null}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(document{<array xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/><null/></array>})
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"[null,null]\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(document{<jj:array xmlns:jj=\"http://www.w3.org/2005/xpath-functions\"><jj:null/><jj:null/></jj:array>})
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"[null,null]\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(document{<jj:array xmlns:jj=\"http://www.w3.org/2005/xpath-functions/not-json\"><jj:null/><jj:null/></jj:array>})
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null key=\"a\" yek=\"z\"/> <null key=\"b\"/>   </map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"> <null key=\"a\"/> <null key=\"b\"/> <yek key=\"c\"/>  </map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/><null/></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><null key=\"a\"/><null key=\"a\"/></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">ban<!--c-->ana</string>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"banana\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\">2<!--c-->7</number>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'27'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\">tr<!--c-->ue</boolean>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'true'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">ok<null/></string>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<number xmlns=\"http://www.w3.org/2005/xpath-functions\">17<string>qq</string></number>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare boundary-space preserve;
        xml-to-json(<boolean xmlns=\"http://www.w3.org/2005/xpath-functions\">true<string>qq</string></boolean>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<null xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/></null>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<null xmlns=\"http://www.w3.org/2005/xpath-functions\"><null/></null>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<number xsi:type=\"xs:short\" xmlns=\"http://www.w3.org/2005/xpath-functions\" 
            xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" 
            xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">231</number>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"231\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'xml-to-json-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'xml-to-json-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'xml-to-json-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<string xmlns=\"http://www.w3.org/2005/xpath-functions\">abc&#xa;def</string>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-049.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"abc\\ndef\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'xml-to-json-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"><string key=\"&#x9;\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-051.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped-key=\"true\" key=\"\\t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-052.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped-key=\"0\" key=\"\\t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-053.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\">
            <string escaped=\"1\" key=\"t1\">\\t</string>
            <string escaped=\"0\" key=\"t2\">\\t</string>
            <string escaped=\"1\" key=\"t3\">&#x9;</string>
            <string escaped=\"0\" key=\"t4\">&#x9;</string>
        </map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-054.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"t1\":\"\\t\",\"t2\":\"\\\\t\",\"t3\":\"\\t\",\"t4\":\"\\t\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped=\"false\" key=\"tab\">\\t</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-055.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"tab\":\"\\\\t\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':true()})
        return translate(normalize-space($result), ' ', '')
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-056.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"a\":1,\"b\":2}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':true()})
        return normalize-space($result) eq $result
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-057.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-058'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':false()})
        return normalize-space($result) eq $result
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-058.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-059'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':()})
        return normalize-space($result) eq $result
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-059.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-060'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $result := xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><number key=\"a\">1</number><number key=\"b\">2</number></map>, map{'indent':false(), 'outdent':true()})
        return normalize-space($result) eq $result
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-060.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-061'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'xml-to-json-062'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped-key=\"bonkers\" key=\"\\t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-062.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-063'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        ><string escaped=\"potty\" key=\"\\t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-063.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-064'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
        escaped-key=\"0\"><string key=\"\\t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-064.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-065'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
         escaped=\"0\"><string key=\"\\t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-065.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-066'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-066.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-067'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json((), map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-067.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-068'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\"
         xml:base=\"http://www.w3.org\"><string key=\"t\">tab</string></map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-068.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"t\":\"tab\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-069'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xml-to-json(<j:map xmlns:j=\"http://www.w3.org/2005/xpath-functions\"
         j:base=\"http://www.w3.org\"><j:string key=\"t\">tab</j:string></j:map>)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-069.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-070'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $x := json-to-xml('[{ \"givenNames\": [\"Michael\", \"Howard\"], \"surname\": \"Kay\"}]')
         return xml-to-json($x//*[@key='givenNames'])
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-070.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"Michael\",\"Howard\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-071'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\\\\\b\\f\\n\\r\\t\\/\\\\\\u00a0\\u00A0\\ud83d\\udc4A\\\\</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-071.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\b\\f\\n\\r\\t\\/\\\\\\u00a0\\u00A0\\ud83d\\udc4A\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-072'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'xml-to-json-073'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'xml-to-json-074'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\x22</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-074.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-075'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\(\\)</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-075.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-076'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\'</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-076.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-077'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\uABC</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-077.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-078'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\u\\n</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-078.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-079'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\\\\\\"\\\\</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-079.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\\"\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-080'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(<fn:string escaped=\"true\">\\\\\\/\\\\</fn:string>)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-080.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\/\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t001\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t002\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t003\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t004\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t005\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t006\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t007\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t008\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t009\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t010\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t011\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t012\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t013\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t014\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t015\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t016\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"xxxx\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t017\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-C-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t018\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-C',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-C-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t001\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"a\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t002\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"a\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t003\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\"\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t004\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t005\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\uD834\\uDD1E\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t006\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\\"\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t007\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\\\\\\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t008\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"\\\\uD834\\\\uDD1E\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t009\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"  \"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t010\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\\"-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t011\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-011.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\n-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t012\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\r-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t013\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\t-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t014\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\u007F-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t014\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'\"-\\u007F-\"'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t101\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'false'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t102\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'true'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t103\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'false'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t104\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'true'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-201'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t201\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-201.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'7'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-202'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t202\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-202.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-0'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-203'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t203\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-203.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'1.0E6'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-204'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t204\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-204.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'-0.000001'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-205'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t205\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-205.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'0.001'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-206'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t206\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-206.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'23'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-301'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t301\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-301.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'null'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-302'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t302\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-302.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'null'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-303'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t303\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-303.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'null'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-401'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t401\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-401.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-402'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t402\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-402.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-403'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t403\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-403.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-404'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t404\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-404.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[null]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-405'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t405\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-405.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"(\",null,null,\")\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-406'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t406\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-406.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[\"(\",null,null,\")\"]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-407'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t407\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-407.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'[null]'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-501'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t501\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-501.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-502'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t502\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-502.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-503'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t503\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-503.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOJS0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-504'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t504\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-504.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\"\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-505'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t505\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-505.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\\\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-506'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t506\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-506.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\uD834\\uDD1E\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-507'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t507\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-507.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"\\\"\":\"1\",\"\\\\\\\"\":\"0\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-508'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t508\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-508.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"A\":\"1\",\"B\":\"  \"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-509'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t509\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-509.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"-\\n-\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-510'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t510\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-510.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"-\\r-\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xml-to-json-D-511'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xml-to-json(//*:template[@name=\"t511\"]/*:variable/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('xml-to-json-D',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "xml-to-json-D-511.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"'{\"-\\t-\":\"1\"}'") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.