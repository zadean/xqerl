%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
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
-module(xqldb_namespace_server).
-behaviour(gen_server).

-include("xqerl_db.hrl").

-export([init/1, 
         handle_call/3, 
         handle_cast/2,
         handle_info/2, 
         terminate/2, 
         code_change/3]).

-define(COUNTER, xqldb_counter  ).
-define(TABLE,   xqldb_namespace).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0]).
-export([get/1,
         clear/0]).

start_link() ->
   gen_server:start_link({local,?MODULE}, ?MODULE, [], []).

get(Name) ->
   gen_server:call(?MODULE, {get,Name}).

clear() ->
   gen_server:cast(?MODULE, clear).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
    {ok, #{}}.

handle_call({get,Name}, _From, Names) ->
   case maps:find(Name, Names) of
      error ->
         NId = get_id(Name),
         NState = Names#{Name => NId},
         {reply, NId, NState};
      {ok,Id} ->
         {reply, Id, Names}
   end.

handle_cast(clear, _State) -> {noreply, #{}};
handle_cast(_Msg, State) -> {noreply, State}.

handle_info(_Info, State) -> {noreply, State}.

terminate(_Reason, _State) -> ok.

code_change(_OldVsn, State, _Extra) -> {ok, State}.


%% ====================================================================
%% Internal functions
%% ====================================================================

next_id() ->
   mnesia:dirty_update_counter(?COUNTER, ?TABLE, 1).

get_id(Name) ->
   Match = #xqldb_namespace{uri=Name, id='$1'},
   F = fun() ->
             Obj = mnesia:select(?TABLE,[{Match, [], ['$1']}]),
             case Obj of 
                [] ->
                   NId = next_id(),
                   Rec = #xqldb_namespace{uri=Name, id=NId},
                   ok = mnesia:write(Rec),
                   NId;
                [Id] ->
                   ?dbg("found",{Id,Name}),
                   Id
             end
       end,
   mnesia:activity(transaction, F).

