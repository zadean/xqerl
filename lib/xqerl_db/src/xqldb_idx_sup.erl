%% @author Zack
%% @doc @todo Add description to xqldb_idx_sup.


-module(xqldb_idx_sup).
-behaviour(supervisor).

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================

-export([start_link/0,
         start_child/1
        ]).

start_link() ->
   supervisor:start_link({local,?MODULE}, ?MODULE, []).

start_child(DatabaseName) ->
   Name = ensure_name(DatabaseName),
   AbsDir = data_dir(),
   IdxName = Name ++ "/index",
   ChildSpec = #{id      => Name,
                 start   => {merge_index, start_link, [filename:join(AbsDir,IdxName)]},
                 restart => permanent},
   Ret = supervisor:start_child(?MODULE, ChildSpec),
   io:format("Starting: ~p~n",[Ret]),
   Ret.

%% ====================================================================
%% Behavioural functions
%% ====================================================================


init(_) ->
   AbsDir = data_dir(),
   _ = make_lookup(),
   _ = load_index_names(AbsDir),
   
   SupFlags = #{strategy  => one_for_one,
                intensity => 10,
                period    => 3},
   ChildSpecs = [],
   {ok, {SupFlags, ChildSpecs}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

%ensure_name(Name) when is_atom(Name) -> atom_to_list(Name);
ensure_name(Name) when is_list(Name) -> Name.

make_lookup() ->
   ets:new(?MODULE, []).

load_index_names(AbsDir) ->
   Idxs = filelib:wildcard("*/index", AbsDir),
   lists:foreach(
     fun(Name) ->
           [N,_] = string:split(Name, "/", trailing),
           ets:insert(?MODULE, {N,[]})
     end, Idxs).

data_dir() ->
   {ok,BaseDir} = application:get_env(xqerl, base_data_dir),
   filename:absname(BaseDir).
  

