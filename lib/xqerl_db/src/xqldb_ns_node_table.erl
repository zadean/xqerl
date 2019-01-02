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

%% All namespace nodes in a DB. ETS is bag, not set.
-module(xqldb_ns_node_table).

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
         lookup/2]).

-type state() :: #{tab => gb_sets:set(_),
                   file => file:io_device()}.
-type server() :: Pid::pid().
-type namespace() :: {MinPos::non_neg_integer(),
                      MaxPos::non_neg_integer(),
                      Prefix::binary(),
                      NsId::non_neg_integer()}.

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
-spec stop(server()) -> ok.

stop(Pid) when is_pid(Pid) ->
   gen_server:stop(Pid).

%% Inserts list of namespace nodes for a document.
-spec insert(server(), Values::[namespace()]) -> ok.

insert(Pid, Values) when is_pid(Pid) ->
   gen_server:call(Pid, {insert, Values}).

%% Returns in-scope namespaces for a given node ID.
-spec lookup(server(), Pos::non_neg_integer()) -> 
         [{Prefix::binary(),NsId::non_neg_integer()}].

lookup(Pid, Pos) when is_pid(Pid) ->
   gen_server:call(Pid, {lookup, Pos}).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new name table in the DBDirectory in the DB DBName,
%% with the name TableName. Deletes any existing DB file with the same name.  
-spec new(DBDirectory::file:name_all(), 
          TableName::string()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
   % delete any old data
   {ok,Trunc} = file:open(HeapName, [write]), file:close(Trunc),
   % new heap
   {ok,HeapFile} = file:open(HeapName, 
                             [read,write,binary,read_ahead,delayed_write,raw]),
   %Table = ets:new(list_to_atom(TableName), [public, bag, {read_concurrency,true},
   %                          {write_concurrency,true}]),
   Table = gb_sets:new(),
   #{tab  => Table,
     file => HeapFile}.

%% Opens an existing name table in the DBDirectory in the DB DBName,
%% with the name TableName.   
-spec open(DBDirectory::file:name_all(), 
           TableName::string()) ->
          state().

open(DBDirectory, TableName) when is_binary(DBDirectory) ->
   open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, TableName ++ ".heap"),
   {ok,HeapFile} = file:open(HeapName, 
                             [read,write,binary,read_ahead,delayed_write,raw]),
   %Table = ets:new(list_to_atom(TableName), [public, bag, {read_concurrency,true},
   %                          {write_concurrency,true}]),
   Table = heap_to_set(HeapFile),
   #{tab  => Table,
     file => HeapFile}.
 

% given file and value, writes to file end and returns ok
append_file(File, Values) ->
   Bin = term_to_binary(Values),
   Size = byte_size(Bin),
   file:write(File, [<<Size:32/integer>>,
                     Bin]).

heap_to_set(File) ->
   % last action should be an ets insert, true
   read_heap_to_set(read(File), []).

read_heap_to_set(eof,Acc) -> 
   List = [B || A <- Acc, B <- A],
   gb_sets:from_list(List);
read_heap_to_set({<<Size:32/integer,
                    Value:Size/binary,Rest/binary>>,Cont},Acc) ->
   Term = binary_to_term(Value),
   read_heap_to_set({Rest,Cont}, [Term | Acc]);
read_heap_to_set({<<>>,Cont},Acc) ->
   read_heap_to_set(Cont(),Acc);
read_heap_to_set({Rest,Cont},Acc) ->
   {New,Cont2} = Cont(),
   read_heap_to_set({<<Rest/binary,New/binary>>,Cont2},Acc).

read(Fd) ->
   case file:read(Fd,1 bsl 15) of
      {ok,Bin} ->
         {Bin, fun() -> read(Fd) end};
      Other ->
         Other
   end.

%% match_spec(Pos) ->
%%    [{{'$1','$2','$3','$4'},
%%      [{'=<','$1',Pos},{'>=','$2',Pos}], 
%%      [{{'$1','$2','$3','$4'}}]}].

flatten_namespaces(Nss) ->
   Ord = lists:sort(Nss),
   Fun = fun({_,_,Px,Ns}, Acc) ->
               orddict:store(Px,Ns,Acc)
         end,
   orddict:to_list(lists:foldl(Fun,orddict:new(),Ord)).


%% ====================================================================
%% Callbacks
%% ====================================================================
 
init([new, DBDirectory, TableName]) ->
   State = new(DBDirectory, TableName),
   {ok,State};
init([open, DBDirectory, TableName]) ->
   State = open(DBDirectory, TableName),
   {ok,State}.

terminate(_Reason,#{tab  := Table,
                    file := HeapFile}) ->
   ok = file:close(HeapFile),
   true = ets:delete(Table),
   ok.

handle_cast(_Request, State) -> {noreply,State}.

handle_call({lookup, Pos}, _From, #{tab  := Table} = State) ->
   Fil = fun({A,B,_,_}) when A =< Pos, Pos =< B -> true;
            (_) -> false
         end,              
   List = gb_sets:to_list(gb_sets:filter(Fil, Table)),
   Reply = flatten_namespaces(List),   
   {reply, Reply, State};
handle_call({insert, Values}, _From, #{tab  := Table,
                                       file := HeapFile} = State) ->
   Fun = fun(E, A) ->
               gb_sets:add(E, A)
         end,
   ok = append_file(HeapFile, Values),
   Table1 = lists:foldl(Fun, Table, Values),
   {reply, ok, State#{tab  := Table1}}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
  
