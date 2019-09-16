-module('xs_dateTimeStamp_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['xs-dateTimeStamp-1'/1]).
-export(['xs-dateTimeStamp-2'/1]).
-export(['xs-dateTimeStamp-3'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "xs"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'xs-dateTimeStamp-1', 
    'xs-dateTimeStamp-2', 
    'xs-dateTimeStamp-3']}].

'xs-dateTimeStamp-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"xsd-version:1.1"}. 
'xs-dateTimeStamp-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"xsd-version:1.1"}. 
'xs-dateTimeStamp-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"xsd-version:1.1"}.