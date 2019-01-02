%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

%% Process lock monitor for read and write queries on a DB.
-module(xqldb_lock).

-behaviour(gen_statem).

-export([init/1, 
         handle_event/4, 
         terminate/3, 
         code_change/4, 
         callback_mode/0]).

-define(TIMEOUT, 3000).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0,
         stop/1,
         read/2, read/3,
         write/2, write/3,
         clear/2, clear/3]).

start_link() ->
   gen_statem:start_link(?MODULE, [], []).

stop(Pid) when is_pid(Pid) ->
   gen_statem:stop(Pid).

read(LockPid, QueryPid) when is_pid(LockPid) ->
   gen_statem:call(LockPid, {read, QueryPid}, ?TIMEOUT).

read(LockPid, QueryPid, Timeout) when is_pid(LockPid) ->
   gen_statem:call(LockPid, {read, QueryPid}, Timeout).

write(LockPid, QueryPid) when is_pid(LockPid) ->
   gen_statem:call(LockPid, {write, QueryPid}, ?TIMEOUT).

write(LockPid, QueryPid, Timeout) when is_pid(LockPid) ->
   gen_statem:call(LockPid, {write, QueryPid}, Timeout).

clear(LockPid, QueryPid) when is_pid(LockPid) ->
   gen_statem:call(LockPid, {clear, QueryPid}, ?TIMEOUT).

clear(LockPid, QueryPid, Timeout) when is_pid(LockPid) ->
   gen_statem:call(LockPid, {clear, QueryPid}, Timeout).


%% ====================================================================
%% Behavioural functions
%% ====================================================================

init(_) ->
   Data = orddict:new(),
   {ok, free, Data}.

callback_mode() -> handle_event_function.

terminate(_Reason, _State, _Data) -> ok.

code_change(_OldVsn, State, Data, _Extra) ->
   {ok, State, Data}.

% states : free, reading, {writing, Pid}, {waiting, From, Pid}

% State writing, blocking all until done
handle_event({call,From}, {write, QueryPid}, {writing,QueryPid} = State, Data) -> 
   {next_state, State, Data, [{reply, From, ok}]};
handle_event({call,_}, {write, _}, {writing,_} = State, Data) -> 
   {next_state, State, Data, [postpone]};
handle_event({call,From}, {read, QueryPid}, {writing,QueryPid} = State, Data) -> 
   {next_state, State, Data, [{reply, From, ok}]};
handle_event({call,_}, {read, _}, {writing,_} = State, Data) -> 
   {next_state, State, Data, [postpone]};
handle_event({call,From}, {clear, QueryPid}, {writing,QueryPid}, Data) ->
   {next_state, free, Data, [{reply, From, ok}, hibernate]};
handle_event({call,_}, {clear, _}, {writing,_} = State, Data) -> 
   {next_state, State, Data, [postpone]};

% State waiting, waiting for reads to finish before allowing write
handle_event({call,_}, {write, _}, {waiting,_,_} = State, Data) -> 
   {next_state, State, Data, [postpone]};
handle_event({call,_}, {read, _}, {waiting,_,_} = State, Data) -> 
   {next_state, State, Data, [postpone]};
handle_event({call,From}, {clear, QueryPid}, {waiting,_,QueryPid}, Data) ->
   {next_state, reading, Data, [{reply, From, ok}]};
handle_event({call,From}, {clear, QueryPid}, {waiting,_,WPid} = State, Data) ->
   NewData = orddict:erase(QueryPid, Data),
   % check if all reading gone
   if NewData == [] ->
         {next_state, {writing, WPid}, NewData, [{reply, From, ok}]};
      true ->
         {next_state, State, NewData, [{reply, From, ok}]}
   end;

% State reading, some reading processes exist
handle_event({call,From}, {write, QueryPid}, reading, Data) -> 
   case orddict:find(QueryPid, Data) of
      {ok, _} ->
         % already there
         NewData = orddict:erase(QueryPid,Data),
         if NewData == [] ->
               {next_state, {writing, QueryPid}, NewData, [{reply, From, ok}]};
            true ->
               {next_state, {waiting, From, QueryPid}, Data}
         end;
      error ->
         _ = erlang:monitor(process, QueryPid),
         {next_state, {waiting, From, QueryPid}, Data}
   end;
handle_event({call,From}, {read, QueryPid}, reading, Data) ->
   case orddict:find(QueryPid, Data) of
      {ok, _} ->
         % already there
         {next_state, reading, Data, [{reply, From, ok}]};
      error ->
         Ref = erlang:monitor(process, QueryPid),
         NewData = orddict:store(QueryPid, Ref, Data),
         {next_state, reading, NewData, [{reply, From, ok}]}
   end;
handle_event({call,From}, {clear, QueryPid}, reading, Data) -> 
   NewData = 
      case orddict:find(QueryPid, Data) of
         {ok,Ref} ->
            erlang:demonitor(Ref),
            orddict:erase(QueryPid,Data);
         error ->
            Data
      end,
   if NewData == [] -> 
         {next_state, free, NewData, [{reply, From, ok}, hibernate]}; 
      true -> 
         {next_state, reading, NewData, [{reply, From, ok}]} 
   end;
  
% State free, anything goes
handle_event({call,From}, {write, QueryPid}, free, Data) -> 
   _ = erlang:monitor(process, QueryPid),
   {next_state, {writing, QueryPid}, Data, [{reply, From, ok}]};

handle_event({call,From}, {read, QueryPid}, free, Data) -> 
   Ref = erlang:monitor(process, QueryPid),
   NewData = orddict:store(QueryPid, Ref, Data),
   {next_state, reading, NewData, [{reply, From, ok}]};

% DOWN messages
handle_event(info, {'DOWN', _, process, Pid, _}, {writing, Pid}, Data) ->
   % writing process stopped
   {next_state, reading, Data};
handle_event(info, {'DOWN', _, process, Pid, _}, {writing, _} = State, Data) ->
   NewData = orddict:erase(Pid, Data),
   {next_state, State, NewData};

handle_event(info, {'DOWN', _, process, Pid, _}, {waiting, _, Pid}, Data) ->
   % waiting process stopped
   {next_state, reading, Data};
handle_event(info, {'DOWN', _, process, Pid, _}, {waiting, FPid, WPid}, Data) ->
   NewData = orddict:erase(Pid, Data),
   % check if all reading gone
   if NewData == [] ->
         gen_statem:reply(FPid, ok);
      true ->
         ok
   end,
   {next_state, {writing, WPid}, NewData};

handle_event(info, {'DOWN', _, process, Pid, _}, reading, Data) ->
   NewData = orddict:erase(Pid, Data),
   % check if all reading gone
   if NewData == [] ->
         {next_state, free, NewData, [hibernate]};
      true ->
         {next_state, reading, NewData}
   end;

handle_event(info, {'DOWN', _, process, _, _}, free, Data) ->
   {next_state, free, Data, [hibernate]};

handle_event(From, Event, State, Data) ->
   io:format("~p~n",[{"Unexpected: ",From, Event, State, Data}]),
   {next_state, State, Data}.



%% ====================================================================
%% Internal functions
%% ====================================================================


