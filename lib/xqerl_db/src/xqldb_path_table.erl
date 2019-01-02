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

%% Path to each document.
%% {{MinPos, MaxPos}, Uri} ordered_set

-module(xqldb_path_table).

-behaviour(gen_server).

-include("xqerl_db.hrl").

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/3,
         stop/1,
         insert/2,
         lookup/2,
         all/1,
         delete/2,
         delete_all/1]).

-type state() :: #{tab => dets:tab_name(),
                   next => non_neg_integer()}.
-type server() :: pid().

%% Open or create a new string table server.  
-spec start_link(open | new,
                 DBDirectory::file:name_all(),
                 TableName::string()) ->
         {ok,Pid::pid()}.
start_link(new, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Shutdown this server. 
-spec stop(server()) -> ok | {ok,_}.

stop(Pid) when is_pid(Pid) ->
   gen_server:stop(Pid).

%% Insert new value
-spec insert(server(), {Name :: binary(), 
                        Type :: res_type(),
                        Pos :: non_neg_integer(), 
                        Size :: non_neg_integer()}) -> ok.

insert(Pid, {_,_,_,_} = Value) when is_pid(Pid) ->
   gen_server:call(Pid, {insert, Value}).

%% Delete all values with Name
-spec delete(server(), {Name :: binary(), Type :: res_type()}) -> ok.

delete(Pid, {_,_} = Req) when is_pid(Pid) ->
   gen_server:call(Pid, {delete, Req}).

%% Returns [{Pos, Size}] values for the given Name and Type.
-spec lookup(server(), {Name :: binary(), Type :: res_type() | res_or_link}) -> 
         [{Pos :: non_neg_integer(), Size :: non_neg_integer()}].

lookup(Pid, {_,_} = Req) when is_pid(Pid) ->
   gen_server:call(Pid, {lookup, Req}).

%% Returns all names in the table.
-spec all(server()) -> [{Name :: binary(), 
                        Type :: res_type(),
                        Pos :: non_neg_integer(), 
                        Size :: non_neg_integer()}].

all(Pid) when is_pid(Pid) ->
   gen_server:call(Pid, all).

%% Delete all names in the table.
-spec delete_all(server()) -> ok | {error,_}.

delete_all(Pid) when is_pid(Pid) ->
   gen_server:call(Pid, delete_all).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new name table in the DBDirectory
%% with the name TableName. Deletes any existing DB file with the same name.  
-spec new(DBDirectory::file:name_all(), 
          TableName::string()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
   % new heap
   {ok,HeapFile} = dets:open_file(HeapName, [{type, bag}]),
   #{tab  => HeapFile}.

%% Opens an existing name table in the DBDirectory
%% with the name TableName.   
-spec open(DBDirectory::file:name_all(), 
           TableName::string()) ->
          state().

open(DBDirectory, TableName) when is_binary(DBDirectory) ->
   open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
   {ok,HeapFile} = dets:open_file(HeapName),
   #{tab  => HeapFile}.

%% ====================================================================
%% Callbacks
%% ====================================================================
 
init([new, DBDirectory, TableName]) ->
   State = new(DBDirectory, TableName),
   {ok,State};
init([open, DBDirectory, TableName]) ->
   State = open(DBDirectory, TableName),
   {ok,State}.

terminate(_Reason,#{tab  := HeapFile}) ->
   ok = dets:close(HeapFile),
   ok.

handle_call({insert, {Name, Type, Pos, Size}}, 
            _From, #{tab  := HeapFile} = State) ->
   ok = dets:insert(HeapFile, {Name, {Type, Pos, Size}}),
   {reply, ok, State};

handle_call(delete_all, _From, #{tab  := HeapFile} = State) ->
   Reply = dets:delete_all_objects(HeapFile),
   {reply, Reply, State};

handle_call(all, _From, #{tab  := HeapFile} = State) ->
   MatchSpec = [{{'$1',{'$2','$3','$4'}},[],[{{'$1','$2','$3','$4'}}]}],
   Got = dets:select(HeapFile, MatchSpec),
   {reply, lists:sort(lists:flatten(Got)), State};

handle_call({delete, {Name, Type}}, _From, #{tab  := HeapFile} = State) ->
   Pattern = {Name, {Type, '_', '_'}},
   ok = dets:match_delete(HeapFile, Pattern),
   {reply, ok, State};

handle_call({lookup, {Name, res_or_link}}, _From, #{tab  := HeapFile} = State) ->
   MatchSpec = [{{Name,{'$1','$2','$3'}},[{'=:=','$1',res}],[{{'$2','$3'}}]},
                {{Name,{'$1','$2','$3'}},[{'=:=','$1',link}],[{{'$2','$3'}}]}],
   Got = dets:select(HeapFile, MatchSpec),
   {reply, lists:flatten(Got), State};
handle_call({lookup, {Name, Type}}, _From, #{tab  := HeapFile} = State) ->
   MatchSpec = [{{Name,{Type,'$1','$2'}},[],[{{'$1','$2'}}]}],
   Got = dets:select(HeapFile, MatchSpec),
   {reply, lists:flatten(Got), State}.

handle_cast(_Request, State) -> {noreply,State}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
  
