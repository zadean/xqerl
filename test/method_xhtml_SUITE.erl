-module('method_xhtml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-xhtml-1'/1]).
-export(['Serialization-xhtml-1a'/1]).
-export(['Serialization-xhtml-2'/1]).
-export(['Serialization-xhtml-3'/1]).
-export(['Serialization-xhtml-4'/1]).
-export(['Serialization-xhtml-18'/1]).
-export(['Serialization-xhtml-19a'/1]).
-export(['Serialization-xhtml-19b'/1]).
-export(['Serialization-xhtml-19c'/1]).
-export(['Serialization-xhtml-20'/1]).
-export(['Serialization-xhtml-21'/1]).
-export(['Serialization-xhtml-22'/1]).
-export(['Serialization-xhtml-23'/1]).
-export(['Serialization-xhtml-24'/1]).
-export(['Serialization-xhtml-25'/1]).
-export(['Serialization-xhtml-26'/1]).
-export(['Serialization-xhtml-27'/1]).
-export(['Serialization-xhtml-27a'/1]).
-export(['Serialization-xhtml-28'/1]).
-export(['Serialization-xhtml-29'/1]).
-export(['Serialization-xhtml-30'/1]).
-export(['Serialization-xhtml-31'/1]).
-export(['Serialization-xhtml-32'/1]).
-export(['Serialization-xhtml-33'/1]).
-export(['Serialization-xhtml-34'/1]).
-export(['Serialization-xhtml-35'/1]).
-export(['Serialization-xhtml-36'/1]).
-export(['Serialization-xhtml-36a'/1]).
-export(['Serialization-xhtml-37'/1]).
-export(['Serialization-xhtml-37a'/1]).
-export(['Serialization-xhtml-38'/1]).
-export(['Serialization-xhtml-39'/1]).
-export(['Serialization-xhtml-40'/1]).
-export(['Serialization-xhtml-41'/1]).
-export(['Serialization-xhtml-42'/1]).
-export(['Serialization-xhtml-50'/1]).
-export(['Serialization-xhtml-51'/1]).
-export(['Serialization-xhtml-52'/1]).
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
   __BaseDir = filename:join(TD, "ser"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Serialization-xhtml-1', 
'Serialization-xhtml-1a', 
'Serialization-xhtml-2', 
'Serialization-xhtml-3', 
'Serialization-xhtml-4', 
'Serialization-xhtml-18', 
'Serialization-xhtml-19a', 
'Serialization-xhtml-19b', 
'Serialization-xhtml-19c', 
'Serialization-xhtml-20', 
'Serialization-xhtml-21', 
'Serialization-xhtml-22', 
'Serialization-xhtml-23', 
'Serialization-xhtml-24', 
'Serialization-xhtml-25', 
'Serialization-xhtml-26', 
'Serialization-xhtml-27', 
'Serialization-xhtml-27a', 
'Serialization-xhtml-28', 
'Serialization-xhtml-29', 
'Serialization-xhtml-30', 
'Serialization-xhtml-31', 
'Serialization-xhtml-32', 
'Serialization-xhtml-33', 
'Serialization-xhtml-34', 
'Serialization-xhtml-35', 
'Serialization-xhtml-36', 
'Serialization-xhtml-36a', 
'Serialization-xhtml-37', 
'Serialization-xhtml-37a', 
'Serialization-xhtml-38', 
'Serialization-xhtml-39', 
'Serialization-xhtml-40', 
'Serialization-xhtml-41', 
'Serialization-xhtml-42', 
'Serialization-xhtml-50', 
'Serialization-xhtml-51', 
'Serialization-xhtml-52'
].

'Serialization-xhtml-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-1a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-19a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-19b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-19c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-27a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-36a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-37a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xhtml-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.