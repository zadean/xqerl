-module('fn_element_with_id_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-element-with-id-1'/1]).
-export(['fn-element-with-id-2'/1]).
-export(['fn-element-with-id-3'/1]).
-export(['fn-element-with-id-4'/1]).
-export(['fn-element-with-id-5'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-element-with-id-1', 
'fn-element-with-id-2', 
'fn-element-with-id-3', 
'fn-element-with-id-4', 
'fn-element-with-id-5'
].
environment('id-idref2',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "id/id2.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest/ididrefs","ids"}]},
{schemas, [{filename:join(__BaseDir, "id/id.xsd"),"http://www.w3.org/XQueryTest/ididrefs"}]}, 
{resources, []}, 
{modules, []}
].
'fn-element-with-id-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-element-with-id-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-element-with-id-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-element-with-id-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'fn-element-with-id-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.