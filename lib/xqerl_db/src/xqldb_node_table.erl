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

%% 
-module(xqldb_node_table).

-behaviour(gen_server).

-include("xqerl_db.hrl").

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

-export([start_link/3,
         stop/1,
         clear/1,
         delete/3,
         insert/2,
         base_uri/2, base_uri/3,
         nodes/3,
         node/2,
         nodes_sync/2]).

-type state()::#{'$node_cache' => cache(),
                 free_space => [{Len::non_neg_integer(),
                                 Pos::non_neg_integer()}],
                 file => file:io_device(),
                 last => {Page::non_neg_integer(), Data::binary()}}.
-type server() :: Pid::pid().
-type cache()::{Count::non_neg_integer(), queue:queue(), map()}.
 

-define(NODE_SIZE, ?BSZ).
-define(NODE_SHIFT, 12).
-define(CHUNK_SIZE, ((1 bsl ?NODE_SHIFT) * ?NODE_SIZE)).
-define(CACHE_SIZE, 32). % could be memory-driven


%% ====================================================================
%% API functions
%% ====================================================================

start_link(new, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

stop(Pid) ->
   gen_server:stop(Pid).

clear(Pid) ->
   gen_server:cast(Pid, clear).

%% returns entire binary table for a node at Pos and the path to root
%% {Binary, PathToRoot}
node(Pid, Pos) ->
   gen_server:call(Pid, {get_node, Pos}).

nodes(Pid, Ref, PosList) ->
   gen_server:call(Pid, {lookup, Ref, PosList}).

nodes_sync(Pid, PosList) ->
   gen_server:call(Pid, {lookup, PosList}).

insert(Pid, Bin) ->
   gen_server:call(Pid, {insert, Bin}).

base_uri(Pid, Pos) ->
   gen_server:call(Pid, {base_uri, Pos}).

base_uri(Pid, Pos, XmlBase) ->
   gen_server:call(Pid, {base_uri, Pos, XmlBase}).


-spec delete(Server::server(), 
             Pos::non_neg_integer(), Len::non_neg_integer()) -> ok.

delete(Pid, Pos, Len) ->
   gen_server:cast(Pid, {delete, Pos, Len}).


-spec lookup(State::state(), list(non_neg_integer())) ->
         list(binary()).

lookup(#{last := {Last,Data}} = State, [Pos|T]) when Last == Pos bsr ?NODE_SHIFT ->
   Off = (Pos * ?NODE_SIZE) rem ?CHUNK_SIZE,
   <<_:Off/binary,V:?NODE_SIZE/binary,_/binary>> = Data,
   [V|lookup(State,T)];
lookup(#{file := File} = State, [Pos|T]) ->
   Page = Pos bsr ?NODE_SHIFT,
   Off = (Pos * ?NODE_SIZE) rem ?CHUNK_SIZE,
   {State1,Data} = 
     case cached_val(State,Page) of
        [] ->
           {ok,Data0} = file:pread(File, Page * ?CHUNK_SIZE, ?CHUNK_SIZE),
           State2 = add_cache_val(State, Page, Data0),
           {State2,Data0};
        Data0 ->
           {State,Data0}
     end,
   V = case Data of
         <<_:Off/binary,Val:?NODE_SIZE/binary,_/binary>> when Off =/= 0 ->
            Val;
         <<Val:?NODE_SIZE/binary,_/binary>> ->
            Val;
         <<Val:?NODE_SIZE/binary>> ->
            Val
       end,
   [V|lookup(State1#{last => {Page, Data}},T)];
lookup(_, []) -> [].


get_base_uri(State, Pos) ->
   [Node] = lookup(State, [Pos]),
   Path = nodes_to_root(Node, Pos, State),
   lists:reverse(do_get_base_uri(State, [Node|Path])).

get_base_uri(State, Pos, XmlBase) ->
   [Node] = lookup(State, [Pos]),
   Path = path_to_root(Node, Pos, State),
   %?dbg("Path",Path),
   lists:reverse(do_get_base_uri(State, XmlBase, [Pos|Path])).

do_get_base_uri(State, [Node|Poss]) ->
   case Node of
      <<?document:3,ValId:32/integer,_:69>> ->
         [ValId];
      _ ->
         do_get_base_uri(State, Poss)
   end;
do_get_base_uri(_, []) ->
  [].

do_get_base_uri(State, XmlBase, [Pos|Poss]) ->
   [Node] = lookup(State, [Pos]),
   case Node of
      <<?element:3,_:94,0:7>> ->
         do_get_base_uri(State, XmlBase, Poss);
      <<?element:3,_:94,AttCnt:7>> ->
         B = fun(<<?attribute:3,ValId:32/integer,_:32,XmlB:19/integer,_:18>>) when XmlB == XmlBase ->
                   {true,ValId};
                (_) ->
                   false
             end,
         Atts = lookup(State, lists:seq(1 + Pos, AttCnt + Pos)),
         Base = lists:filtermap(B, Atts),
         if Base == [] ->
               do_get_base_uri(State, XmlBase, Poss);
            true ->
               [hd(Base)|do_get_base_uri(State, XmlBase, Poss)]
         end;
      <<?document:3,ValId:32/integer,_:69>> ->
         [ValId];
      _ ->
         do_get_base_uri(State, XmlBase, Poss)
   end;
do_get_base_uri(_, _, []) ->
  [].

get_node(State, Pos) ->
   [Node] = lookup(State, [Pos]),
   Path = path_to_root(Node, Pos, State),
   NdSz = xqldb_nodes:node_size(Node),
   ByteSize = (NdSz + 1) * ?NODE_SIZE, % + self
   {get_node(State, Pos, ByteSize, <<>>), Path}.

get_node(#{file := File} = State, Pos, ByteSize, Acc) ->
   Page = Pos bsr ?NODE_SHIFT,
   Off = (Pos * ?NODE_SIZE) rem ?CHUNK_SIZE,
   {State1,Data} = 
     case cached_val(State, Page) of
        [] ->
           {ok,Data0} = file:pread(File, Page * ?CHUNK_SIZE, ?CHUNK_SIZE),
           State2 = add_cache_val(State, Page, Data0),
           {State2,Data0};
        Data0 ->
           {State,Data0}
     end,
   case Data of
      <<_:Off/binary>> ->
         Acc;
      <<_:Off/binary,Val:ByteSize/binary,_/binary>> ->
         <<Acc/binary,Val/binary>>;
      <<_:Off/binary,Val/binary>> ->
         VSz = byte_size(Val),
         get_node(State1, Pos + (VSz div ?NODE_SIZE), 
                  ByteSize - VSz, <<Acc/binary,Val/binary>>)
   end.

path_to_root(Node, Pos, State) ->
   case xqldb_nodes:node_kind(Node) of
      document -> [];
      _ ->
         Off = xqldb_nodes:node_offset(Node),
         Par = Pos - Off,
         [ParNode] = lookup(State, [Par]),
         [Par|path_to_root(ParNode, Par, State)]
   end.

nodes_to_root(Node, Pos, State) ->
   case xqldb_nodes:node_kind(Node) of
      document -> [];
      _ ->
         Off = xqldb_nodes:node_offset(Node),
         Par = Pos - Off,
         [ParNode] = lookup(State, [Par]),
         [ParNode|nodes_to_root(ParNode, Par, State)]
   end.

%% parent_pos(Pos, State) ->
%%    [Node] = lookup(State, Pos),
%%    case xqldb_nodes:node_kind(Node) of
%%       document -> [];
%%       _ ->
%%          Off = xqldb_nodes:node_offset(Node),
%%          Pos - Off
%%    end.


%% Creates a new name table in the DBDirectory 
%% with the name TableName. Deletes any existing DB file with the same name.  
-spec new(DBDirectory::file:name_all(), 
          TableName::atom()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, 
                                    atom_to_list(TableName) ++ ".heap"),
   % delete any old data
   {ok,Trunc} = file:open(HeapName, [write]), file:close(Trunc),
   % new heap
   {ok,HeapFile} = file:open(HeapName, 
                             [read,write,binary,read_ahead,delayed_write,raw]),
   clear_cache(#{file => HeapFile,
                 free_space => []}).

%% Opens an existing table in the DBDirectory
%% with the name TableName.   
-spec open(DBDirectory::file:name_all(), 
           TableName::atom()) ->
          state().

open(DBDirectory, TableName) when is_binary(DBDirectory) ->
   open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, 
                                    atom_to_list(TableName) ++ ".heap"),
   {ok,HeapFile} = file:open(HeapName, 
                             [read,write,binary,read_ahead,delayed_write,raw]),
   
   clear_cache(#{file => HeapFile,
                 free_space => []}).

%% Closes this table. 
-spec close(State::state()) -> ok.

close(#{file := HeapFile}) ->
   ok = file:close(HeapFile),
   ok.

%% ====================================================================
%% Internal functions
%% ====================================================================
 
clear_cache(State) ->
   State#{'$node_cache' => {0,queue:new(),#{}}}.
  
cached_val(#{'$node_cache' := {_,_,M}}, Key) ->
   maps:get(Key, M, []).

add_cache_val(#{'$node_cache' := {L,Q,M}} = State, Key, Val) 
  when L > ?CACHE_SIZE ->
   {{value,Del},Q2} = queue:out(Q),
   New = {L,queue:in(Key, Q2), maps:put(Key, Val, maps:remove(Del, M))}, % round-robin 
   State#{'$node_cache' := New};
add_cache_val(#{'$node_cache' := {L,Q,M}} = State, Key, Val) ->
   New = {L + 1,queue:in(Key, Q),M#{Key => Val}},
   State#{'$node_cache' := New}.

%% ====================================================================
%% Callbacks
%% ====================================================================
 
init([new, DBDirectory, TableName]) ->
   State = new(DBDirectory, TableName),
   {ok,State};
init([open, DBDirectory, TableName]) ->
   State = open(DBDirectory, TableName),
   {ok,State}.

terminate(_Reason,State) ->
   close(State).

handle_cast({delete,Pos,Len}, #{free_space := Fs} = State) ->
   NewFs = lists:sort([{Len,Pos}|Fs]),
   {noreply,State#{free_space := NewFs}};
handle_cast(clear, State) -> 
   State1 = clear_cache(State),
   {noreply,State1};
handle_cast(_Request, State) -> {noreply,State}.

handle_call({base_uri, Pos}, _From, State) ->
   Reply = get_base_uri(State, Pos),
   {reply,Reply,State};
handle_call({base_uri, Pos, XmlBase}, _From, State) ->
   Reply = get_base_uri(State, Pos, XmlBase),
   {reply,Reply,State};
handle_call({get_node, Pos}, _From, State) -> 
   Reply = get_node(State, Pos),
   {reply,Reply,State};
handle_call({lookup, PosList}, _From, State) -> 
   Reply = lookup(State, PosList),
   {reply,Reply,State};
%TODO look for free space that can fit this doc
handle_call({insert, Bin}, _From, #{file := File} = State) ->
   {ok,Pos} = file:position(File, eof),
   ok = file:write(File, Bin),
   {reply, Pos div ?NODE_SIZE, clear_cache(State)}.


handle_info(_Request, State) -> {noreply,State}.


code_change(_, State, _) -> {ok, State}. 