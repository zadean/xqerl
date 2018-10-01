%% @author Zack
%% @doc @todo Add description to xqldb_sup.


-module(xqldb_sup).
-behaviour(supervisor).
-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0]).

start_link() ->
   supervisor:start_link(?MODULE, []).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
   SupFlags = #{strategy => rest_for_one},
   Server = child_map(worker, xqldb_db_server, []),
   Super  = child_map(supervisor, xqldb_db_sup, []),
   
   {ok, {SupFlags, [Server, Super]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

child_map(Type, Module, Args) ->
   #{id        => Module,
     type      => Type,
     shutdown  => brutal_kill,
     start     => {Module, start_link, Args},
     modules   => [Module]}.