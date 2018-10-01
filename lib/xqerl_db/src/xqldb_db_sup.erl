%% @author Zack
%% @doc @todo Add description to xqldb_db_sup.


-module(xqldb_db_sup).

-behaviour(supervisor).

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0,
         start_child/1]).

start_link() ->
   supervisor:start_link({local, ?MODULE}, ?MODULE, []).

start_child(Uri) ->
   DBDirectory = xqldb_db_server:new(Uri),
   ok = filelib:ensure_dir(DBDirectory ++ "/x"),
   supervisor:start_child(?MODULE, [DBDirectory, Uri]).

   
%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
   SupFlags = #{strategy => simple_one_for_one},
   ChildSpec = #{id       => xqldb_db,
                 shutdown => brutal_kill,
                 type     => supervisor,
                 start    => {xqldb_db, create_or_open, []}},
   {ok,{SupFlags, [ChildSpec]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

