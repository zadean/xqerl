-module('method_html_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-html-1'/1]).
-export(['Serialization-html-2'/1]).
-export(['Serialization-html-3'/1]).
-export(['Serialization-html-4'/1]).
-export(['Serialization-html-5'/1]).
-export(['Serialization-html-6'/1]).
-export(['Serialization-html-7'/1]).
-export(['Serialization-html-8'/1]).
-export(['Serialization-html-9'/1]).
-export(['Serialization-html-10'/1]).
-export(['Serialization-html-11'/1]).
-export(['Serialization-html-12'/1]).
-export(['Serialization-html-13'/1]).
-export(['Serialization-html-14'/1]).
-export(['Serialization-html-15'/1]).
-export(['Serialization-html-16'/1]).
-export(['Serialization-html-17'/1]).
-export(['Serialization-html-18'/1]).
-export(['Serialization-html-19a'/1]).
-export(['Serialization-html-19b'/1]).
-export(['Serialization-html-19c'/1]).
-export(['Serialization-html-20'/1]).
-export(['Serialization-html-21'/1]).
-export(['Serialization-html-22'/1]).
-export(['Serialization-html-23'/1]).
-export(['Serialization-html-24'/1]).
-export(['Serialization-html-25'/1]).
-export(['Serialization-html-26'/1]).
-export(['Serialization-html-27'/1]).
-export(['Serialization-html-28'/1]).
-export(['Serialization-html-29'/1]).
-export(['Serialization-html-30'/1]).
-export(['Serialization-html-31'/1]).
-export(['Serialization-html-32'/1]).
-export(['Serialization-html-33'/1]).
-export(['Serialization-html-34'/1]).
-export(['Serialization-html-35'/1]).
-export(['Serialization-html-36'/1]).
-export(['Serialization-html-37'/1]).
-export(['Serialization-html-38'/1]).
-export(['Serialization-html-39'/1]).
-export(['Serialization-html-40'/1]).
-export(['Serialization-html-41'/1]).
-export(['Serialization-html-42'/1]).
-export(['Serialization-html-43'/1]).
-export(['Serialization-html-44'/1]).
-export(['Serialization-html-45'/1]).
-export(['Serialization-html-46'/1]).
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
'Serialization-html-1', 
'Serialization-html-2', 
'Serialization-html-3', 
'Serialization-html-4', 
'Serialization-html-5', 
'Serialization-html-6', 
'Serialization-html-7', 
'Serialization-html-8', 
'Serialization-html-9', 
'Serialization-html-10', 
'Serialization-html-11', 
'Serialization-html-12', 
'Serialization-html-13', 
'Serialization-html-14', 
'Serialization-html-15', 
'Serialization-html-16', 
'Serialization-html-17', 
'Serialization-html-18', 
'Serialization-html-19a', 
'Serialization-html-19b', 
'Serialization-html-19c', 
'Serialization-html-20', 
'Serialization-html-21', 
'Serialization-html-22', 
'Serialization-html-23', 
'Serialization-html-24', 
'Serialization-html-25', 
'Serialization-html-26', 
'Serialization-html-27', 
'Serialization-html-28', 
'Serialization-html-29', 
'Serialization-html-30', 
'Serialization-html-31', 
'Serialization-html-32', 
'Serialization-html-33', 
'Serialization-html-34', 
'Serialization-html-35', 
'Serialization-html-36', 
'Serialization-html-37', 
'Serialization-html-38', 
'Serialization-html-39', 
'Serialization-html-40', 
'Serialization-html-41', 
'Serialization-html-42', 
'Serialization-html-43', 
'Serialization-html-44', 
'Serialization-html-45', 
'Serialization-html-46'
].

'Serialization-html-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-19a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-19b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-19c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-html-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.