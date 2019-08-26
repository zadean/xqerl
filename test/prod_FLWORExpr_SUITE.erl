-module('prod_FLWORExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['ForExprType010'/1]).
-export(['ForExprType025'/1]).
-export(['ForExprType026'/1]).
-export(['ForExprType027'/1]).
-export(['ForExprType037'/1]).
-export(['ForExprType038'/1]).
-export(['ForExprType039'/1]).
-export(['ForExprType040'/1]).
-export(['ForExprType041'/1]).
-export(['ForExprType042'/1]).
-export(['ForExprType043'/1]).
-export(['ForExprType044'/1]).
-export(['ForExprType048'/1]).
-export(['ForExprType049'/1]).
-export(['ForExprType050'/1]).
-export(['ForExprType051'/1]).
-export(['ForExprType052'/1]).
-export(['ForExprType053'/1]).
-export(['step-expr-si-1'/1]).
-export(['step-expr-si-2'/1]).
-export(['step-expr-si-3'/1]).
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
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'ForExprType010', 
    'ForExprType025', 
    'ForExprType026', 
    'ForExprType027', 
    'ForExprType037', 
    'ForExprType038', 
    'ForExprType039', 
    'ForExprType040', 
    'ForExprType041', 
    'ForExprType042', 
    'ForExprType043', 
    'ForExprType044', 
    'ForExprType048', 
    'ForExprType049', 
    'ForExprType050', 
    'ForExprType051', 
    'ForExprType052', 
    'ForExprType053', 
    'step-expr-si-1', 
    'step-expr-si-2', 
    'step-expr-si-3']}].
environment('SpecialTypes',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "ForClause/SpecialTypes.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ForClause/SpecialTypes.xsd"),"http://www.example.com/typedecl"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('orderData',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "OrderByClause/orderData.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "OrderByClause/orderData.xsd"),"http://www.w3.org/XQueryTestOrderBy"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('extendedTypes',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "FLWORExpr/extendedTypes.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "FLWORExpr/extendedTypes.xsd"),"http://www.example.com/XQueryTest/extendedTypes"}]}, 
{resources, []}, 
{modules, []}
].
'ForExprType010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'ForExprType053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'step-expr-si-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'step-expr-si-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'step-expr-si-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}.