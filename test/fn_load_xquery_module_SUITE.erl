-module('fn_load_xquery_module_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-load-xquery-module-001'/1]).
-export(['fn-load-xquery-module-002'/1]).
-export(['fn-load-xquery-module-003'/1]).
-export(['fn-load-xquery-module-004'/1]).
-export(['fn-load-xquery-module-005'/1]).
-export(['fn-load-xquery-module-006'/1]).
-export(['fn-load-xquery-module-007'/1]).
-export(['fn-load-xquery-module-008'/1]).
-export(['fn-load-xquery-module-009'/1]).
-export(['fn-load-xquery-module-010'/1]).
-export(['fn-load-xquery-module-011'/1]).
-export(['fn-load-xquery-module-012'/1]).
-export(['fn-load-xquery-module-013'/1]).
-export(['fn-load-xquery-module-014'/1]).
-export(['fn-load-xquery-module-015'/1]).
-export(['fn-load-xquery-module-016'/1]).
-export(['fn-load-xquery-module-017'/1]).
-export(['fn-load-xquery-module-018'/1]).
-export(['fn-load-xquery-module-019'/1]).
-export(['fn-load-xquery-module-020'/1]).
-export(['fn-load-xquery-module-021'/1]).
-export(['fn-load-xquery-module-022'/1]).
-export(['fn-load-xquery-module-023'/1]).
-export(['fn-load-xquery-module-024'/1]).
-export(['fn-load-xquery-module-025'/1]).
-export(['fn-load-xquery-module-026'/1]).
-export(['fn-load-xquery-module-027'/1]).
-export(['fn-load-xquery-module-028'/1]).
-export(['fn-load-xquery-module-029'/1]).
-export(['fn-load-xquery-module-030'/1]).
-export(['fn-load-xquery-module-031'/1]).
-export(['fn-load-xquery-module-032'/1]).
-export(['fn-load-xquery-module-033'/1]).
-export(['fn-load-xquery-module-034'/1]).
-export(['fn-load-xquery-module-035'/1]).
-export(['fn-load-xquery-module-036'/1]).
-export(['fn-load-xquery-module-037'/1]).
-export(['fn-load-xquery-module-038'/1]).
-export(['fn-load-xquery-module-040'/1]).
-export(['fn-load-xquery-module-041'/1]).
-export(['fn-load-xquery-module-042'/1]).
-export(['fn-load-xquery-module-043'/1]).
-export(['fn-load-xquery-module-044'/1]).
-export(['fn-load-xquery-module-045'/1]).
-export(['fn-load-xquery-module-046'/1]).
-export(['fn-load-xquery-module-050'/1]).
-export(['fn-load-xquery-module-051'/1]).
-export(['fn-load-xquery-module-052'/1]).
-export(['fn-load-xquery-module-053'/1]).
-export(['fn-load-xquery-module-054'/1]).
-export(['fn-load-xquery-module-055'/1]).
-export(['fn-load-xquery-module-056'/1]).
-export(['fn-load-xquery-module-057'/1]).
-export(['fn-load-xquery-module-060'/1]).
-export(['fn-load-xquery-module-061'/1]).
-export(['fn-load-xquery-module-062'/1]).
-export(['fn-load-xquery-module-063'/1]).
-export(['fn-load-xquery-module-064'/1]).
-export(['fn-load-xquery-module-065'/1]).
-export(['fn-load-xquery-module-066'/1]).
-export(['fn-load-xquery-module-067'/1]).
-export(['fn-load-xquery-module-068'/1]).
-export(['fn-load-xquery-module-069'/1]).
-export(['fn-load-xquery-module-070'/1]).
-export(['fn-load-xquery-module-071'/1]).
-export(['fn-load-xquery-module-072'/1]).
-export(['fn-load-xquery-module-073'/1]).
-export(['fn-load-xquery-module-901'/1]).
-export(['fn-load-xquery-module-902'/1]).
-export(['fn-load-xquery-module-903'/1]).
-export(['fn-load-xquery-module-904'/1]).
-export(['fn-load-xquery-module-905'/1]).
-export(['fn-load-xquery-module-906'/1]).
-export(['fn-load-xquery-module-907'/1]).
-export(['fn-load-xquery-module-908'/1]).
-export(['fn-load-xquery-module-909'/1]).
-export(['fn-load-xquery-module-910'/1]).
-export(['fn-load-xquery-module-911'/1]).
-export(['fn-load-xquery-module-912'/1]).
-export(['fn-load-xquery-module-913'/1]).
-export(['fn-load-xquery-module-914'/1]).
-export(['fn-load-xquery-module-915'/1]).
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
'fn-load-xquery-module-001', 
'fn-load-xquery-module-002', 
'fn-load-xquery-module-003', 
'fn-load-xquery-module-004', 
'fn-load-xquery-module-005', 
'fn-load-xquery-module-006', 
'fn-load-xquery-module-007', 
'fn-load-xquery-module-008', 
'fn-load-xquery-module-009', 
'fn-load-xquery-module-010', 
'fn-load-xquery-module-011', 
'fn-load-xquery-module-012', 
'fn-load-xquery-module-013', 
'fn-load-xquery-module-014', 
'fn-load-xquery-module-015', 
'fn-load-xquery-module-016', 
'fn-load-xquery-module-017', 
'fn-load-xquery-module-018', 
'fn-load-xquery-module-019', 
'fn-load-xquery-module-020', 
'fn-load-xquery-module-021', 
'fn-load-xquery-module-022', 
'fn-load-xquery-module-023', 
'fn-load-xquery-module-024', 
'fn-load-xquery-module-025', 
'fn-load-xquery-module-026', 
'fn-load-xquery-module-027', 
'fn-load-xquery-module-028', 
'fn-load-xquery-module-029', 
'fn-load-xquery-module-030', 
'fn-load-xquery-module-031', 
'fn-load-xquery-module-032', 
'fn-load-xquery-module-033', 
'fn-load-xquery-module-034', 
'fn-load-xquery-module-035', 
'fn-load-xquery-module-036', 
'fn-load-xquery-module-037', 
'fn-load-xquery-module-038', 
'fn-load-xquery-module-040', 
'fn-load-xquery-module-041', 
'fn-load-xquery-module-042', 
'fn-load-xquery-module-043', 
'fn-load-xquery-module-044', 
'fn-load-xquery-module-045', 
'fn-load-xquery-module-046', 
'fn-load-xquery-module-050', 
'fn-load-xquery-module-051', 
'fn-load-xquery-module-052', 
'fn-load-xquery-module-053', 
'fn-load-xquery-module-054', 
'fn-load-xquery-module-055', 
'fn-load-xquery-module-056', 
'fn-load-xquery-module-057', 
'fn-load-xquery-module-060', 
'fn-load-xquery-module-061', 
'fn-load-xquery-module-062', 
'fn-load-xquery-module-063', 
'fn-load-xquery-module-064', 
'fn-load-xquery-module-065', 
'fn-load-xquery-module-066', 
'fn-load-xquery-module-067', 
'fn-load-xquery-module-068', 
'fn-load-xquery-module-069', 
'fn-load-xquery-module-070', 
'fn-load-xquery-module-071', 
'fn-load-xquery-module-072', 
'fn-load-xquery-module-073', 
'fn-load-xquery-module-901', 
'fn-load-xquery-module-902', 
'fn-load-xquery-module-903', 
'fn-load-xquery-module-904', 
'fn-load-xquery-module-905', 
'fn-load-xquery-module-906', 
'fn-load-xquery-module-907', 
'fn-load-xquery-module-908', 
'fn-load-xquery-module-909', 
'fn-load-xquery-module-910', 
'fn-load-xquery-module-911', 
'fn-load-xquery-module-912', 
'fn-load-xquery-module-913', 
'fn-load-xquery-module-914', 
'fn-load-xquery-module-915'
].
environment('hats',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../prod/SchemaImport/hats.xsd"),"http://www.w3.org/XQueryTest/hats"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('abf',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../prod/SchemaImport/abf.xsd"),"http://www.w3.org/XQueryTest/abf"}]}, 
{resources, []}, 
{modules, []}
].
'fn-load-xquery-module-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-060'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-061'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-062'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-063'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-064'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-065'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-066'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-067'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-068'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-069'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-070'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-071'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-072'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-073'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-901'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-902'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-903'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-904'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-905'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-906'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-907'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-908'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-909'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-910'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-911'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-912'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-913'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-914'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}. 
'fn-load-xquery-module-915'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"fn-load-xquery-module"}.