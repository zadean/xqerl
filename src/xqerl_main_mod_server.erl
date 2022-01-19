%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019-2020 Zachary N. Dean  All Rights Reserved.
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
-module(xqerl_main_mod_server).

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

handle_call({available, Args }, _From, #{available := Available} = State) ->
    Reply = xqerl:run(Available,Args),
    {reply, Reply, State};
handle_call({create, Args }, _From, #{create := Create} = State) ->
    Reply = xqerl:run(Create,Args),
    {reply, Reply, State};
handle_call({list, Args}, _From, #{list := List} = State) ->
    Reply = xqerl:run(List,Args),
    {reply, Reply, State};
handle_call({retrieve, Args}, _From, #{retrieve := Retrieve} = State) ->
    Reply = xqerl:run(Retrieve,Args),
    {reply, Reply, State};
handle_call({delete, Args }, _From, #{delete := Delete} = State) ->
    Reply = xqerl:run(Delete,Args),
    {reply, Reply, State};
handle_call({update, Args }, _From, #{update := Update} = State) ->
    Reply = xqerl:run(Update,Args),
    {reply, Reply, State};

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
  MainDir = filename:join([PrivDir, "modules"]),
  Greeter  = xqerl:compile(filename:join([MainDir, "greeter.xq"])),
  Available  = xqerl:compile(filename:join([MainDir, "db_available.xq"])),
  Create  = xqerl:compile(filename:join([MainDir, "db_create.xq"])),
  List  = xqerl:compile(filename:join([MainDir, "db_list.xq"])),
  Retrieve  = xqerl:compile(filename:join([MainDir, "db_retrieve.xq"])),
  Delete  = xqerl:compile(filename:join([MainDir, "db_delete.xq"])),
  Update  = xqerl:compile(filename:join([MainDir, "db_update.xq"])),
 #{
  available => Available,
  create => Create, 
  list => List, 
  retrieve => Retrieve,
  delete => Delete, 
  update => Update, 
  greeter => Greeter
 }.

