-module('method_xml_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['K2-Serialization-1'/1]).
-export(['K2-Serialization-2'/1]).
-export(['K2-Serialization-3'/1]).
-export(['K2-Serialization-4'/1]).
-export(['K2-Serialization-5'/1]).
-export(['K2-Serialization-6'/1]).
-export(['K2-Serialization-7'/1]).
-export(['K2-Serialization-7a'/1]).
-export(['K2-Serialization-8'/1]).
-export(['K2-Serialization-8a'/1]).
-export(['K2-Serialization-9'/1]).
-export(['K2-Serialization-10'/1]).
-export(['K2-Serialization-11'/1]).
-export(['K2-Serialization-12'/1]).
-export(['K2-Serialization-13'/1]).
-export(['K2-Serialization-14'/1]).
-export(['K2-Serialization-15'/1]).
-export(['K2-Serialization-16'/1]).
-export(['K2-Serialization-17'/1]).
-export(['K2-Serialization-18'/1]).
-export(['K2-Serialization-20'/1]).
-export(['K2-Serialization-21'/1]).
-export(['K2-Serialization-22'/1]).
-export(['K2-Serialization-23'/1]).
-export(['K2-Serialization-24'/1]).
-export(['K2-Serialization-25'/1]).
-export(['K2-Serialization-26'/1]).
-export(['K2-Serialization-27'/1]).
-export(['K2-Serialization-28'/1]).
-export(['K2-Serialization-29'/1]).
-export(['K2-Serialization-30'/1]).
-export(['K2-Serialization-31'/1]).
-export(['K2-Serialization-32'/1]).
-export(['K2-Serialization-33'/1]).
-export(['K2-Serialization-34'/1]).
-export(['K2-Serialization-35'/1]).
-export(['K2-Serialization-36'/1]).
-export(['K2-Serialization-37'/1]).
-export(['K2-Serialization-38'/1]).
-export(['K2-Serialization-39'/1]).
-export(['Serialization-xml-01'/1]).
-export(['Serialization-xml-02'/1]).
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
'K2-Serialization-1', 
'K2-Serialization-2', 
'K2-Serialization-3', 
'K2-Serialization-4', 
'K2-Serialization-5', 
'K2-Serialization-6', 
'K2-Serialization-7', 
'K2-Serialization-7a', 
'K2-Serialization-8', 
'K2-Serialization-8a', 
'K2-Serialization-9', 
'K2-Serialization-10', 
'K2-Serialization-11', 
'K2-Serialization-12', 
'K2-Serialization-13', 
'K2-Serialization-14', 
'K2-Serialization-15', 
'K2-Serialization-16', 
'K2-Serialization-17', 
'K2-Serialization-18', 
'K2-Serialization-20', 
'K2-Serialization-21', 
'K2-Serialization-22', 
'K2-Serialization-23', 
'K2-Serialization-24', 
'K2-Serialization-25', 
'K2-Serialization-26', 
'K2-Serialization-27', 
'K2-Serialization-28', 
'K2-Serialization-29', 
'K2-Serialization-30', 
'K2-Serialization-31', 
'K2-Serialization-32', 
'K2-Serialization-33', 
'K2-Serialization-34', 
'K2-Serialization-35', 
'K2-Serialization-36', 
'K2-Serialization-37', 
'K2-Serialization-38', 
'K2-Serialization-39', 
'Serialization-xml-01', 
'Serialization-xml-02'
].

'K2-Serialization-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-7a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-8a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'K2-Serialization-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xml-01'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-xml-02'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.