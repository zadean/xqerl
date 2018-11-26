-module('xs_error_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['xs-error-001'/1]).
-export(['xs-error-002'/1]).
-export(['xs-error-003'/1]).
-export(['xs-error-004'/1]).
-export(['xs-error-005'/1]).
-export(['xs-error-006'/1]).
-export(['xs-error-007'/1]).
-export(['xs-error-008'/1]).
-export(['xs-error-009'/1]).
-export(['xs-error-010'/1]).
-export(['xs-error-011'/1]).
-export(['xs-error-012'/1]).
-export(['xs-error-013'/1]).
-export(['xs-error-014'/1]).
-export(['xs-error-015'/1]).
-export(['xs-error-016'/1]).
-export(['xs-error-017'/1]).
-export(['xs-error-018'/1]).
-export(['xs-error-019'/1]).
-export(['xs-error-020'/1]).
-export(['xs-error-021'/1]).
-export(['xs-error-022'/1]).
-export(['xs-error-023'/1]).
-export(['xs-error-024'/1]).
-export(['xs-error-025'/1]).
-export(['xs-error-026'/1]).
-export(['xs-error-027'/1]).
-export(['xs-error-028'/1]).
-export(['xs-error-029'/1]).
-export(['xs-error-030'/1]).
-export(['xs-error-031'/1]).
-export(['xs-error-032'/1]).
-export(['xs-error-033'/1]).
-export(['xs-error-034'/1]).
-export(['xs-error-035'/1]).
-export(['xs-error-036'/1]).
-export(['xs-error-037'/1]).
-export(['xs-error-038'/1]).
-export(['xs-error-039'/1]).
-export(['xs-error-040'/1]).
-export(['xs-error-041'/1]).
-export(['xs-error-042'/1]).
-export(['xs-error-043'/1]).
-export(['xs-error-044'/1]).
-export(['xs-error-045'/1]).
-export(['xs-error-046'/1]).
-export(['xs-error-047'/1]).
-export(['xs-error-048'/1]).
-export(['xs-error-049'/1]).
-export(['xs-error-050'/1]).
-export(['xs-error-051'/1]).
-export(['xs-error-052'/1]).
-export(['xs-error-053'/1]).
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
   __BaseDir = filename:join(TD, "xs"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'xs-error-001', 
'xs-error-002', 
'xs-error-003', 
'xs-error-004', 
'xs-error-005', 
'xs-error-006', 
'xs-error-007', 
'xs-error-008', 
'xs-error-009', 
'xs-error-010', 
'xs-error-011', 
'xs-error-012', 
'xs-error-013', 
'xs-error-014', 
'xs-error-015', 
'xs-error-016', 
'xs-error-017', 
'xs-error-018', 
'xs-error-019', 
'xs-error-020', 
'xs-error-021', 
'xs-error-022', 
'xs-error-023', 
'xs-error-024', 
'xs-error-025', 
'xs-error-026', 
'xs-error-027', 
'xs-error-028', 
'xs-error-029', 
'xs-error-030', 
'xs-error-031', 
'xs-error-032', 
'xs-error-033', 
'xs-error-034', 
'xs-error-035', 
'xs-error-036', 
'xs-error-037', 
'xs-error-038', 
'xs-error-039', 
'xs-error-040', 
'xs-error-041', 
'xs-error-042', 
'xs-error-043', 
'xs-error-044', 
'xs-error-045', 
'xs-error-046', 
'xs-error-047', 
'xs-error-048', 
'xs-error-049', 
'xs-error-050', 
'xs-error-051', 
'xs-error-052', 
'xs-error-053'
].

'xs-error-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}. 
'xs-error-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XSD 1.1"}.