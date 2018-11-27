-module('method_text_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-text-1'/1]).
-export(['Serialization-text-2'/1]).
-export(['Serialization-text-3'/1]).
-export(['Serialization-text-4'/1]).
-export(['Serialization-text-5'/1]).
-export(['Serialization-text-6'/1]).
-export(['Serialization-text-7'/1]).
-export(['Serialization-text-7a'/1]).
-export(['Serialization-text-8'/1]).
-export(['Serialization-text-8a'/1]).
-export(['Serialization-text-9'/1]).
-export(['Serialization-text-10'/1]).
-export(['Serialization-text-11'/1]).
-export(['Serialization-text-13'/1]).
-export(['Serialization-text-14'/1]).
-export(['Serialization-text-15'/1]).
-export(['Serialization-text-16'/1]).
-export(['Serialization-text-17'/1]).
-export(['Serialization-text-18'/1]).
-export(['Serialization-text-19'/1]).
-export(['Serialization-text-20'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "ser"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Serialization-text-1', 
'Serialization-text-2', 
'Serialization-text-3', 
'Serialization-text-4', 
'Serialization-text-5', 
'Serialization-text-6', 
'Serialization-text-7', 
'Serialization-text-7a', 
'Serialization-text-8', 
'Serialization-text-8a', 
'Serialization-text-9', 
'Serialization-text-10', 
'Serialization-text-11', 
'Serialization-text-13', 
'Serialization-text-14', 
'Serialization-text-15', 
'Serialization-text-16', 
'Serialization-text-17', 
'Serialization-text-18', 
'Serialization-text-19', 
'Serialization-text-20'
].

'Serialization-text-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-7a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-8a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.