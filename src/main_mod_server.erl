-module(main_mod_server).

-behaviour(gen_server).

-export([code_change/3, 
         handle_call/3, 
         handle_cast/2,
         handle_info/2, 
         init/1, 
         terminate/2]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0]).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) -> 
    State = load(),
    {ok, State}.

handle_call(greeter, _From, #{greeter := Greeter} = State) ->
    Reply = xqerl:run(Greeter),
    {reply, Reply, State}.

handle_cast(_Msg, State) -> {noreply, State}.

handle_info(_Info, State) -> {noreply, State}.

terminate(_Reason, _State) -> ok.

code_change(_OldVsn, State, _Extra) -> {ok, State}.

%% ====================================================================
%% Internal functions
%% ====================================================================

load() ->
  PrivDir = code:priv_dir(xqerl),
  % main modules
  MainDir = filename:join([PrivDir, "modules"]),
  Greeter  = xqerl:compile(filename:join([MainDir, "greeter.xq"])),
  Dispatch = cowboy_router:compile( [{'_', [{"/",  handler_greeter, #{}}]}] ),
  _ = cowboy:set_env(xqerl_listener, dispatch, Dispatch),
  #{ greeter => Greeter}.
