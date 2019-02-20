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

%% Structure index holds the structure of all documents combined.
%% Mapping of Unique Path to Path ID / Path ID to Unique Path.
-module(xqldb_structure_index).

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
         add/2,
         get/2]).

%% TODO: API functions for path expansion. One 'get' call, then local process.
%% The index should be 'relatively' small. 

-type(state() :: #{idx   => list(),
                   table => dets:tab()}).

-type(server() :: {DBName::string(), TableName::string()} | pid()).

-type(xpath() :: [{UriId::integer(), NameId::integer()}]).

%% Open or create a new structure index server.  
-spec start_link(open | new,
                 DBDirectory::file:name_all(),
                 {DBName::file:name_all(), TableName::string()}) ->
         {ok,Pid::pid()}.
start_link(new, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Shutdown this server. 
-spec stop(server()) -> ok.

stop(Pid) when is_pid(Pid) ->
   gen_server:stop(Pid).

%% Adds Path to DB, returning its ID.
-spec add(server(), Path::xpath()) -> integer().

add(Pid, Path) when is_pid(Pid) ->
   gen_server:call(Pid, {add, Path}).

%% Returns all paths beginning with Pattern.
-spec get(server(), [{integer(), integer()}]) -> [{integer(), Path::xpath()}].

get(Pid, Pattern) when is_pid(Pid) ->
   gen_server:call(Pid, {get, Pattern}).


%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new structure index in the DBDirectory in the DB DBName.
%% Uses dets.
-spec new(DBDirectory::file:name_all(), 
          TableName::string()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   HeapName = filename:join(DBDirectory, TableName ++ ".idx"),
   {ok, Tab} = dets:open_file(HeapName, []),
   dets:insert(Tab, [{counter,0}]),
   ETab = ets:new(?MODULE, [ordered_set]),
   #{idx   => ETab,
     table => Tab}.

%% Opens an existing name table in the DBDirectory in the DB DBName,
%% with the name TableName.   
-spec open(DBDirectory::file:name_all(), 
           TableName::string()) ->
          state().

open(DBDirectory, TableName) when is_binary(DBDirectory) ->
   open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
   HeapName = filename:join(DBDirectory, TableName ++ ".idx"),
   {ok, Tab} = dets:open_file(HeapName),
   ETab = ets:new(?MODULE, [ordered_set]),
   dets:to_ets(Tab, ETab),
   #{idx   => ETab,
     table => Tab}.
 
traverse_prefix(Tab, Pattern) when is_list(Pattern) ->
   MPattern = Pattern ++ ['_'],
   MatchSpec = [{{Pattern,'_'},[],['$_']},
                {{MPattern,'_'},[],['$_']}],
   ets:select(Tab, MatchSpec);
traverse_prefix(Tab, Key) when is_integer(Key) ->
   [{Key, OPattern}] = ets:lookup(Tab, Key),
   MPattern = OPattern ++ ['_'],
   MatchSpec = [{{MPattern,'_'},[],['$_']},
                {{'$1','$2'},[{'==','$1',Key}],[{{'$2','$1'}}]}],
   ets:select(Tab, MatchSpec);
traverse_prefix(Tab, all) ->
   MatchSpec = [{{'$1','$2'},[{is_list,'$1'}],[{{'$1','$2'}}]}],
   ets:select(Tab, MatchSpec).

%%    case ets:lookup(Tab, Pattern) of
%%       [] ->
%%          [];
%%       [_] = R ->
%%          traverse_prefix(Tab, Pattern, ets:next(Tab, Pattern), R)
%%    end.
%% 
%% traverse_prefix(_, _, '$end_of_table', Acc) ->
%%    lists:reverse(Acc);
%% traverse_prefix(Tab, Pattern, Key, Acc) ->
%%    case lists:prefix(Pattern, Key) of
%%       true ->
%%          [LU] = ets:lookup(Tab, Key),
%%          traverse_prefix(Tab, Pattern, ets:next(Tab, Key), [LU|Acc]);
%%       false ->
%%          lists:reverse(Acc)
%%    end.


%% ====================================================================
%% Callbacks
%% ====================================================================
 
init([new, DBDirectory, TableName]) ->
   State = new(DBDirectory, TableName),
   {ok,State};
init([open, DBDirectory, TableName]) ->
   State = open(DBDirectory, TableName),
   {ok,State}.

terminate(_Reason, #{table := Name} = _State) ->
   ok = dets:close(Name),
   ok.

handle_cast(_Request, State) -> {noreply,State}.

handle_call({get, Pattern}, _From, #{idx := Idx} = State) ->
   {reply, traverse_prefix(Idx, Pattern), State};
handle_call({add, Value}, _From, #{idx   := Idx,
                                   table := Name} = State) ->
   Reply = 
      case ets:lookup(Idx, Value) of
         [] ->
            NextId = dets:update_counter(Name, counter, 1),
            ok = dets:insert(Name, [{NextId, Value}, {Value, NextId}]),
            true = ets:insert(Idx, [{NextId, Value}, {Value, NextId}]),
            NextId;
         [{_, Id}] ->
            Id
      end,
   {reply, Reply, State}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
  
