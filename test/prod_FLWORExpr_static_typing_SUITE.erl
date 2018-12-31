-module('prod_FLWORExpr_static_typing_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['statictyping-21'/1]).
-export(['statictyping-22'/1]).
-export(['statictyping-23'/1]).
-export(['statictyping-24'/1]).
-export(['ST-WhereExpr001'/1]).
-export(['ST-WhereExpr002'/1]).
-export(['statictyping-1'/1]).
-export(['statictyping-2'/1]).
-export(['statictyping-3'/1]).
-export(['statictyping-4'/1]).
-export(['statictyping-5'/1]).
-export(['statictyping-6'/1]).
-export(['statictyping-7'/1]).
-export(['statictyping-8'/1]).
-export(['statictyping-9'/1]).
-export(['statictyping-10'/1]).
-export(['statictyping-11'/1]).
-export(['statictyping-12'/1]).
-export(['statictyping-13'/1]).
-export(['statictyping-14'/1]).
-export(['statictyping-15'/1]).
-export(['statictyping-16'/1]).
-export(['statictyping-17'/1]).
-export(['statictyping-18'/1]).
-export(['statictyping-19'/1]).
-export(['statictyping-20'/1]).
-export(['ST-PITest-01'/1]).
-export(['ST-PITest-02'/1]).
suite() -> [{timetrap,{seconds, 5}}].
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
'statictyping-21', 
'statictyping-22', 
'statictyping-23', 
'statictyping-24', 
'ST-WhereExpr001', 
'ST-WhereExpr002', 
'statictyping-1', 
'statictyping-2', 
'statictyping-3', 
'statictyping-4', 
'statictyping-5', 
'statictyping-6', 
'statictyping-7', 
'statictyping-8', 
'statictyping-9', 
'statictyping-10', 
'statictyping-11', 
'statictyping-12', 
'statictyping-13', 
'statictyping-14', 
'statictyping-15', 
'statictyping-16', 
'statictyping-17', 
'statictyping-18', 
'statictyping-19', 
'statictyping-20', 
'ST-PITest-01', 
'ST-PITest-02'
].
environment('fsx',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "ForClause/fsx.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('fsx_NS',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "ForClause/fsx_NS.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'statictyping-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'ST-WhereExpr001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'ST-WhereExpr002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'statictyping-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'ST-PITest-01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'ST-PITest-02'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}.