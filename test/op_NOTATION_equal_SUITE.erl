-module('op_NOTATION_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['Comp-notation-1'/1]).
-export(['Comp-notation-2'/1]).
-export(['Comp-notation-3'/1]).
-export(['Comp-notation-4'/1]).
-export(['Comp-notation-5'/1]).
-export(['Comp-notation-6'/1]).
-export(['Comp-notation-7'/1]).
-export(['Comp-notation-8'/1]).
-export(['Comp-notation-9'/1]).
-export(['Comp-notation-10'/1]).
-export(['Comp-notation-11'/1]).
-export(['Comp-notation-12'/1]).
-export(['Comp-notation-13'/1]).
-export(['Comp-notation-14'/1]).
-export(['Comp-notation-15'/1]).
-export(['Comp-notation-16'/1]).
-export(['Comp-notation-17'/1]).
-export(['Comp-notation-18'/1]).
-export(['Comp-notation-19'/1]).
-export(['Comp-notation-20'/1]).
-export(['Comp-notation-21'/1]).
-export(['Comp-notation-22'/1]).
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
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'Comp-notation-1', 
    'Comp-notation-2', 
    'Comp-notation-3', 
    'Comp-notation-4', 
    'Comp-notation-5', 
    'Comp-notation-6', 
    'Comp-notation-7', 
    'Comp-notation-8', 
    'Comp-notation-9', 
    'Comp-notation-10', 
    'Comp-notation-11', 
    'Comp-notation-12', 
    'Comp-notation-13', 
    'Comp-notation-14', 
    'Comp-notation-15', 
    'Comp-notation-16', 
    'Comp-notation-17', 
    'Comp-notation-18', 
    'Comp-notation-19', 
    'Comp-notation-20', 
    'Comp-notation-21', 
    'Comp-notation-22']}].
environment('notation',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "NOTATION-equal/notation.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "NOTATION-equal/notationschema.xsd"),"http://www.example.com/notation"}]}, 
{resources, []}, 
{modules, []}
].
'Comp-notation-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}. 
'Comp-notation-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation, feature:schemaImport"}.