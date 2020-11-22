-module(xqerl_trace_h).

-behaviour(gen_event).

-export([init/1, handle_event/2, handle_call/2, handle_info/2, terminate/2, code_change/3]).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
    {ok, #{}}.

handle_event({trace, Label, Value}, State) ->
    io:format("*** TRACE ***~n~s:~p~n", [Label, Value]),
    {ok, State};
handle_event({trace, Value}, State) ->
    io:format("*** TRACE ***~n~p~n", [Value]),
    {ok, State};
handle_event(Unknown, State) ->
    io:format("*** UNKNOWN TRACE ***~n~p~n", [Unknown]),
    {ok, State}.

handle_call(_Request, State) ->
    Reply = ok,
    {ok, Reply, State}.

handle_info(_Info, State) -> {ok, State}.

terminate(_, _) -> ok.

code_change(_OldVsn, State, _Extra) -> {ok, State}.
