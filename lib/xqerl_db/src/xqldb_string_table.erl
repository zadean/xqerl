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

%% A string table is a lookup for each distinct string and a 32 bit integer.
%% The ID for the string is made up of a hash followed by a pigeonhole
%% offset value in case of collision.
%% When a collision occurs, the offset is increased and appended to the hash.
%% When there is no collision, 0 is appended. 
%% Looking up a value by string means getting its hash value, appending
%% min and max (all 1 bits) tails, and then selecting each possible ID until it 
%% is found. This means that there is a maximum nr. of collisions possible, 
%% so the table should not get too large. (95% max size?)
%% Linear Probing 
%% Every value is written to file. This can slow down insert operations.  

%% Note: For all intents and purposes, a 'string' is a UTF8 binary value. 

-module(xqldb_string_table).

-behaviour(gen_server).

-include("xqerl_db.hrl").
-include_lib("kernel/include/file.hrl").

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

-type(state() :: 
            #{heap_file => file:io_device(),
              indx_file => file:io_device(),
              leaf_file => file:io_device(),
              indx_log  => file:io_device(),
              leaf_log  => file:io_device(),
              indx_logn => string(),
              leaf_logn => string(),
              header    => {binary(), binary()},
              level_1   => ets:tid(),
              level_2   => map(),
              leaves    => map(),
              cache     => _,
              id_cache  => _,
              next_heap => non_neg_integer(),
              next_indx => non_neg_integer(),
              next_leaf => non_neg_integer(),
              updates   => non_neg_integer(),
              status    => atom()
             }).

-type(server() :: Pid::pid()).

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
-spec stop(server()) -> ok | {ok, _}.

stop(Pid) when is_pid(Pid) ->
   gen_server:stop(Pid).

%% Returns the binary value for the given ID, or error if no such ID exists.
-spec lookup(server(), Id::non_neg_integer()) -> 
         Value::binary() | error.

lookup(Pid, Id) when is_pid(Pid) ->
   gen_server:call(Pid, {lookup, Id}).

%% Returns the ID for a binary value in the table.
%% If no such value exists, creates a new value in the table and returns its ID.
-spec insert(server(), Value::binary()) -> Id::non_neg_integer().

insert(Pid, Value) when is_pid(Pid) ->
   gen_server:call(Pid, {insert, Value}).

%% ====================================================================
%% Internal functions
%% ====================================================================


%%% ~655 million with no offset overflow possible when all are perfectly hashed. 
 

%% Creates a new string table in the DBDirectory in the DB DBName,
%% with the name TableName. Deletes any existing DB file with the same name.  
-spec new(DBDirectory::file:name_all(),
          TableName::string()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   init_state(DBDirectory, TableName, true).

file_opts(log) ->
   [read,write,binary,raw];
file_opts(_) ->
   [read,write,binary,raw].

%% Opens an existing string table in the DBDirectory in the DB DBName,
%% with the name TableName.   
-spec open(DBDirectory::file:name_all(), 
           TableName::string()) ->
          state().

open(DBDirectory, TableName) when is_binary(DBDirectory) ->
   open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
   init_state(DBDirectory, TableName, false).

-define(HEADER_BYTES, 8704).
-define(INDEX_BYTES,  928).
-define(LEAF_BYTES,   52).

init_state(DBDirectory, TableName, Trunc) ->
   AbsTabName = filename:join(DBDirectory,TableName),
   ok = filelib:ensure_dir(AbsTabName),
   
   HeapName = AbsTabName ++ ".heap",
   IndxName = AbsTabName ++ "i.dat",
   LeafName = AbsTabName ++ "l.dat",
   IndxLogN = AbsTabName ++ "i.log",
   LeafLogN = AbsTabName ++ "l.log",
   
   IndxPosFun = fun(Pos) -> (Pos * ?INDEX_BYTES) + ?HEADER_BYTES end,
   LeafPosFun = fun(Pos) -> Pos * ?LEAF_BYTES end,

   {ok,HeapFile} = file:open(HeapName, file_opts(data)),
   {ok,IndxFile} = file:open(IndxName, file_opts(data)),
   {ok,LeafFile} = file:open(LeafName, file_opts(data)),
   
   {ok,IndxLogF} = file:open(IndxLogN, file_opts(log)),
   {ok,LeafLogF} = file:open(LeafLogN, file_opts(log)),

   ok = commit_log_file(IndxLogF, IndxFile, ?INDEX_BYTES, IndxPosFun),
   ok = commit_log_file(LeafLogF, LeafFile, ?LEAF_BYTES , LeafPosFun),
   
   if Trunc ->
         _ = 
           [file:truncate(F) ||
              F <- [HeapFile, IndxFile, LeafFile]],
         ok;
      true ->
         ok
   end,
 
   {ok, HeapInfo} = file:read_file_info(HeapName),
   {ok, IndxInfo} = file:read_file_info(IndxName),
   {ok, LeafInfo} = file:read_file_info(LeafName),
   
   NextHeap = HeapInfo#file_info.size,
   NextIndx = case IndxInfo#file_info.size of
                 0 -> 0;
                 S -> (S - ?HEADER_BYTES) div ?INDEX_BYTES
              end,
   NextLeaf = LeafInfo#file_info.size div ?LEAF_BYTES,
   
   Header = read_header(IndxFile),
   Level1 = init_level_1_cache(Header, IndxFile),

   #{heap_file => HeapFile,
     indx_file => IndxFile,
     leaf_file => LeafFile,
     indx_log  => IndxLogF,
     leaf_log  => LeafLogF,
     indx_logn => IndxLogN,
     leaf_logn => LeafLogN,
     header    => Header,
     level_1   => Level1,
     level_2   => #{},
     leaves    => #{},
     cache     => xqldb_kv_cache:new(),
     id_cache  => xqldb_kv_cache:new(),
     next_heap => NextHeap,
     next_indx => NextIndx,
     next_leaf => NextLeaf,
     updates   => 0,
     status    => commited
    }.

commit_logs(#{indx_file := IndxFile,
              leaf_file := LeafFile,
              indx_log  := IndxLogF,
              leaf_log  := LeafLogF
             } = State) ->
   try
      IndxPosFun = fun(Pos) -> (Pos * ?INDEX_BYTES) + ?HEADER_BYTES end,
      LeafPosFun = fun(Pos) -> Pos * ?LEAF_BYTES end,
      
      ok = commit_log_file(IndxLogF, IndxFile, ?INDEX_BYTES, IndxPosFun),
      ok = commit_log_file(LeafLogF, LeafFile, ?LEAF_BYTES , LeafPosFun),
   
      State#{level_2 := #{},
             leaves  := #{},
             status   := commited,
             updates  := 0}
   catch
      _:_:S ->
         ?trace("S",S),
         State
   end.

% int keys should be incremental and expanded to actual position somewhere else.
write_log_file(LogFile, Int32Key, {Val1, Val2}) ->
   %?trace("writing", [<<Int32Key:32/integer>>, Val1, Val2]),
   file:write(LogFile, [<<Int32Key:32/integer>>, Val1, Val2]);
write_log_file(LogFile, Int32Key, Value) ->
   file:write(LogFile, [<<Int32Key:32/integer>>, Value]).

% read LogFile and pwrite it into DataFile using fun PosFun to translate
% Id to file position, Each log record is LogSize bytes.
commit_log_file(LogFile, DataFile, LogSize, PosFun) ->
   _ = file:position(LogFile, 0),
   Map = file_chunk_map(LogFile, #{}, LogSize),
   List = merge_pos_list(maps:to_list(Map)),
   LocBytes = [{PosFun(P), B} || {P, B} <- List, B =/= <<>>],
   ok = file:pwrite(DataFile, LocBytes),
   _ = file:position(LogFile, 0),
   ok = file:truncate(LogFile),
   ok.

file_chunk_map(File, Map, ChunkSize) ->
   case file:read(File, ChunkSize + 4) of
      {ok, <<Page:32/integer,Bin/binary>>} ->
         file_chunk_map(File, Map#{Page => Bin}, ChunkSize);
      eof ->
         Map
   end.

merge_pos_list(List) ->
   merge_pos_list(lists:sort(List), 0, <<>>, 0).

merge_pos_list([{P,B}|T],L,A,F) when P == L + 1 ->
   merge_pos_list(T,L,<<A/binary,B/binary>>,F);
merge_pos_list([{P,B}|T],_L,A,F) ->
   [{F,A}|merge_pos_list(T,P,B,P)];
merge_pos_list([],L,A,_) ->
   [{L,A}].


init_level_1_cache(Header, IndxFile) ->
   Tab = ets:new(level_1, []),
   Got = [{V, read_index_block(IndxFile, V)} ||
          P <- lists:seq(0, 4095),
          V <- [get_header_value(P, Header)],
          V =/= error],
   ets:insert(Tab, Got),
   Tab.

lookup_string_from_id(Id, #{id_cache  := Cache,
                            heap_file := HeapFile,
                            header    := Header,
                            level_1   := Level1
                           } = State) ->
   case xqldb_kv_cache:lookup(Id, Cache) of
      {error,_} ->
         try
         {Root, Lv1, Lv2, Lv3} = get_index_id_pointer(Id),
         Lvl1BlckLoc = get_header_value(Root, Header),
         Lvl1Block = get_level_1_cache(Lvl1BlckLoc, Level1),
         Lvl2BlckLoc = get_index_block_value(Lv1, Lvl1Block),
         Lvl2Block = get_index_block(Lvl2BlckLoc, State),
         LeafBlockLoc =  get_index_block_value(Lv2, Lvl2Block),
         LeafBlock = get_leaf_block(LeafBlockLoc, State),
         LeafRec = get_leaf_block_value(Lv3, LeafBlock),
         Str = read_heap_value_from_leaf(HeapFile, LeafRec),
         Cache1 = xqldb_kv_cache:insert(Id, Str, Cache),
         {Str, State#{cache := Cache1}}
         catch
            _:_:S ->
               ?trace("S",S),
               %throw(E)
               error
         end;
      {Reply, Cache1} ->
         {Reply, State#{cache := Cache1}}
   end.

upsert_string_value(String, #{indx_file := IndxFile,
                              header    := Header,
                              next_indx := NextIndx,
                              cache     := Cache} = State) ->
   case xqldb_kv_cache:lookup(String, Cache) of
      {error,_} ->
         {Root, Lv1, Lv2} = get_index_pointer(String),
         case get_header_value(Root, Header) of
            error ->
               State1 = create_level_1_2(Lv1, Lv2, String, State),
               Header1 = set_header_value(Root, NextIndx, Header),
               ok = write_header(IndxFile, Header1),
               Reply = pointer_to_id({Root, Lv1, Lv2, 0}),
               %Cache1 = xqldb_kv_cache:insert(String, Reply, Cache),
               State2 = State1#{header  := Header1},
                                %cache   := Cache1},
               {Reply, State2};
            Lvl1Id ->
               case upsert_existing_level_1(Lvl1Id, Lv1, Lv2, String, State) of
                  {ok, Id, State1} ->
                     Reply = pointer_to_id({Root, Lv1, Lv2, Id}),
                     Cache1 = xqldb_kv_cache:insert(String, Reply, Cache),
                     {Reply, State1#{cache := Cache1}};
                  {Id, State1} ->
                     Reply = pointer_to_id({Root, Lv1, Lv2, Id}),
                     {Reply, State1}
               end                     
         end;
      {Reply, Cache1} ->
         {Reply, State#{cache := Cache1}}
   end.

% returns {ID, State}
upsert_existing_level_1(Lvl1Id, Lv1, Lv2, String, 
                        #{indx_log  := IndxLogF,
                          next_indx := NextIndx,
                          level_1   := Lvl1Cache} = State) ->
   Level1Bin = get_level_1_cache(Lvl1Id, Lvl1Cache),
   %#{Lvl1Id := Level1Bin} = Lvl1Cache,
   case get_index_block_value(Lv1, Level1Bin) of
      error ->
         State1 = create_level_2(Lv2, String, State),
         Level1Block = set_index_block_value(Lv1, NextIndx, Level1Bin),
         % append the log
%?trace(?FUNCTION_NAME,?LINE),
         ok = write_log_file(IndxLogF, Lvl1Id, Level1Block),
         % add new block to cache
         Lvl1Cache1 = set_level_1_cache(Lvl1Id, Level1Block, Lvl1Cache),
         %  Lvl1Cache#{Lvl1Id => Level1Block},
         {0, State1#{level_1 := Lvl1Cache1}};
      Lvl2Id ->
         upsert_existing_level_2(Lvl2Id, Lv2, String, State)
   end.   
   
% returns {ID, State}
upsert_existing_level_2(Lvl2Id, Lv2, String, #{indx_log  := IndxLogF,
                                               level_2   := Lvl2Cache,
                                               next_leaf := NextLeaf} = State) ->
   Level2Bin = get_index_block(Lvl2Id, State),
   case get_index_block_value(Lv2, Level2Bin) of
      error ->
         State1 = create_leaf(String, State),
         Level2Block = set_index_block_value(Lv2, NextLeaf, Level2Bin),
         % append the log
%?trace(?FUNCTION_NAME,?LINE),
         ok = write_log_file(IndxLogF, Lvl2Id, Level2Block),
         % add new block to cache
         Lvl2Cache1 = Lvl2Cache#{Lvl2Id => Level2Block},
         {0, State1#{level_2 := Lvl2Cache1}};
      LeafId ->
         Length = byte_size(String),
         upsert_existing_leaf(LeafId, String, Length, 0, State)
   end.

% the leaf ID is known and was found in the index, so go find the string,
% or make a new StringID. Leaf could be in the cache or only in the file.
% returns {ID, State}
upsert_existing_leaf(LeafId, String, Length, Depth, #{leaf_log  := LeafLogF,
                                                      next_heap := NextHeap,
                                                      heap_file := HeapFile,
                                                      next_leaf := NextLeaf,
                                                      updates   := Upds
                                                     } = State) ->
   LeafBin = get_leaf_block(LeafId, State),
   case scan_leaf_block(LeafBin, Length, String, State) of
      {next_pos, Pos} when Length =< 11 ->
         Pad = binary:copy(<<0>>, 11 - Length),
         LeafRec = <<1:1,Length:7/integer,String:Length/binary,Pad/binary>>,
         LeafBin1 = set_leaf_block_value(Pos, LeafRec, LeafBin),
%?trace(?FUNCTION_NAME,?LINE),
         ok = write_log_file(LeafLogF, LeafId, LeafBin1),
         State1 = set_leaf_block(LeafId, LeafBin1, State),
         {Depth * 4 + Pos, State1#{updates := Upds + 1}};
      {next_pos, Pos} ->
         NextHeap1 = NextHeap + Length,
         ok = append_heap_value(HeapFile, NextHeap, String),
         LeafRec = <<0:1,NextHeap:63/integer,Length:32/integer>>,
         LeafBin1 = set_leaf_block_value(Pos, LeafRec, LeafBin),
%?trace(?FUNCTION_NAME,?LINE),
         ok = write_log_file(LeafLogF, LeafId, LeafBin1),
         State1 = set_leaf_block(LeafId, LeafBin1, State),
         {Depth * 4 + Pos, State1#{next_heap := NextHeap1,
                                   updates   := Upds + 1}};
      new_block when Depth == 3 -> throw({error, hash_collision});
      new_block ->
         State1 = create_leaf(String, State),
         LeafBin1 = set_leaf_block_next(LeafBin, NextLeaf),
         ok = write_log_file(LeafLogF, LeafId, LeafBin1),
         State2 = set_leaf_block(LeafId, LeafBin1, State1),
         {Depth * 4, State2};
      {next_block, NextLeafId} ->
         upsert_existing_leaf(NextLeafId, String, Length, Depth + 1, State);
      Pos when is_integer(Pos) ->
         {ok, Depth * 4 + Pos, State} % send ok to show it was already there
   end.

% returns State
create_level_1_2(Lv1, Lv2, String, #{indx_log  := IndxLogF,
                                     level_1   := Lvl1Cache,
                                     next_indx := NextIndx} = State) ->
   % no level 1 also means no level 2 or leaf
   NextIndx1 = NextIndx + 1,
   State1 = create_level_2(Lv2, String, State#{next_indx := NextIndx1}),
   Level1Block = set_index_block_value(Lv1, NextIndx1, empty_index_block()),
   % append the log
%?trace(?FUNCTION_NAME,?LINE),
   ok = write_log_file(IndxLogF, NextIndx, Level1Block),
   % add new block to cache
   Lvl1Cache1 = set_level_1_cache(NextIndx, Level1Block, Lvl1Cache),
   %Lvl1Cache1 = Lvl1Cache#{NextIndx => Level1Block},
   State1#{level_1 := Lvl1Cache1}.

% returns State
create_level_2(Lv2, String, #{indx_log  := IndxLogF,
                              level_2   := Lvl2Cache,
                              next_indx := NextIndx,
                              next_leaf := NextLeaf} = State) ->
   % no level 2 also means no leaf
   State1 = create_leaf(String, State),
   % now create the new index block with Lv2 set to the new record
   Level2Block = set_index_block_value(Lv2, NextLeaf, empty_index_block()),
   % append the log
%?trace(?FUNCTION_NAME,?LINE),
   ok = write_log_file(IndxLogF, NextIndx, Level2Block),
   % add new block to cache
   Lvl2Cache1 = Lvl2Cache#{NextIndx => Level2Block},
   State1#{next_indx := NextIndx + 1,
           level_2   := Lvl2Cache1}.

% create a new leaf block and add string to it, returns State
create_leaf(String, #{heap_file := HeapFile,
                      leaf_log  := LeafLogF,
                      leaves    := LeafCache,
                      next_heap := NextHeap,
                      next_leaf := NextLeaf,
                      updates   := Upds} = State) ->
   % 512 are in one segment
   Len = byte_size(String),
   {LeafRec, NextHeap1} = 
     if Len =< 11 ->
           Pad = binary:copy(<<0>>, 11 - Len),
           {<<1:1,Len:7/integer,String/binary,Pad/binary>>, NextHeap};
        true ->
           ok = append_heap_value(HeapFile, NextHeap, String),
           NextHeap2 = NextHeap + Len,
           {<<0:1,NextHeap:63,Len:32/integer>>, NextHeap2}
     end,
   NextLeaf1 = NextLeaf + 1,
   LeafBlock = <<LeafRec/binary,0:3/unit:96,0:32>>,
   LeafCache1 = LeafCache#{NextLeaf => LeafBlock},
   % append the leaf log
%?trace(?FUNCTION_NAME,?LINE),
   ok = write_log_file(LeafLogF, NextLeaf, LeafBlock),   
   State#{next_leaf := NextLeaf1,
          next_heap := NextHeap1,
          leaves    := LeafCache1,
          updates   := Upds + 1}.

% string to index pointer 12 - 8 - 8
get_index_pointer(Bin) when is_binary(Bin) ->
   Hash = erlang:phash2(Bin, 1 bsl 28),
   Root = Hash bsr 16,
   Lv1  = (Hash band 16#FF00) bsr 8,
   Lv2  = Hash band 16#FF,
   {Root, Lv1, Lv2}.

get_index_id_pointer(Int) when is_integer(Int) ->
   Root = Int bsr 20,
   Lv1  = (Int band 16#FF000) bsr 12,
   Lv2  = (Int band 16#FF0  ) bsr 4,
   Lv3  =  Int band 16#F,
   {Root, Lv1, Lv2, Lv3}.

pointer_to_id({Root, Lv1, Lv2, Lv3}) ->
   Lv3 + (Lv2 bsl 4) + (Lv1 bsl 12) + (Root bsl 20).

set_level_1_cache(Id, Value, Cache) ->
   true = ets:insert(Cache, {Id, Value}),
   Cache.

get_level_1_cache(Id, Cache) ->
   ets:lookup_element(Cache, Id, 2).
   
-define(HEADER_RECS,  4096).
-define(HEADER_WIDTH, 16).

-define(INDEX_RECS,  256).
-define(INDEX_WIDTH, 28).

-define(LEAF_WIDTH, 96).

read_header(IndexFile) ->
   Raw = file:pread(IndexFile,0,?HEADER_BYTES),
   Width = ?HEADER_RECS * ?HEADER_WIDTH div 8,
   MapB = ?HEADER_RECS div 8,
   case Raw of
      {ok, <<Map:MapB/binary, Recs:Width/binary>>} ->
         {Map,Recs};
      {error,_} = Err ->
         ?trace("throwing", Err),
         throw(Err);
      eof -> % new header
         Emp = empty_header(),
         write_header(IndexFile, Emp),
         Emp
   end.

write_header(IndexFile, {Map, Recs}) ->
   Ok = file:pwrite(IndexFile,0,[Map, Recs]),
   case Ok of
      ok ->
         ok;
      {error,_} = Err ->
         ?trace("throwing", Err),
         throw(Err)
   end.

empty_header() ->
   {<<0:?HEADER_RECS>>, <<0:?HEADER_RECS/unit:?HEADER_WIDTH>>}.

set_header_value(Pos, Val, {Map, Recs}) ->
   <<PreMap:Pos/bits,_:1,PostMap/bits>> = Map,
   NewMap = <<PreMap/bits,1:1,PostMap/bits>>,
   PosWidth = ?HEADER_WIDTH * Pos,
   <<PreRecs:PosWidth/bits,_:?HEADER_WIDTH,PostRecs/bits>> = Recs,
   NewRecs = <<PreRecs/bits,Val:?HEADER_WIDTH/integer,PostRecs/bits>>,
   {NewMap, NewRecs}.

get_header_value(Pos, {Map, Recs}) ->
   case is_used(Pos, Map) of
      false ->
         error;
      true ->
         PosW = Pos * ?HEADER_WIDTH,
         <<_:PosW,Val:?HEADER_WIDTH/integer,_/bits>> = Recs,
         Val
   end.

index_block_position(Block) ->
   ?HEADER_BYTES + (Block * ?INDEX_BYTES).

% return Bin
get_index_block(Lvl2Id, #{level_2   := Level2Cache,
                          indx_file := IndxFile}) ->
   case Level2Cache of
      #{Lvl2Id := Block} ->
         Block;
      _ ->
         read_index_block(IndxFile, Lvl2Id)
   end.

read_index_block(IndexFile, Block) ->
   Pos = index_block_position(Block),
   Raw = file:pread(IndexFile,  Pos, ?INDEX_BYTES),
   RecW = ?INDEX_RECS * ?INDEX_WIDTH,
   case Raw of
      {ok, <<Map:?INDEX_RECS/bits, Recs:RecW/bits>>} ->
         {Map,Recs};
      {error,_} = Err ->
         throw(Err);
      eof -> % HERE
         throw({error, Pos, Block})
   end.

empty_index_block() ->
   RecsW = ?INDEX_WIDTH * ?INDEX_RECS,
   {<<0:?INDEX_RECS>>, <<0:RecsW>>}.

set_index_block_value(Pos, Val, {Map, Recs}) ->
   <<PreMap:Pos/bits,_:1,PostMap/bits>> = Map,
   NewMap = <<PreMap/bits,1:1,PostMap/bits>>,
   PreBits = Pos * ?INDEX_WIDTH,
   <<PreRecs:PreBits/bits,_:?INDEX_WIDTH,PostRecs/bits>> = Recs,
   NewRecs = <<PreRecs/bitstring,Val:?INDEX_WIDTH/integer,PostRecs/bits>>,
   {NewMap, NewRecs}.

get_index_block_value(Pos, {Map, Recs}) ->
   case is_used(Pos, Map) of
      false ->
         error;
      true ->
         PosW = Pos * ?INDEX_WIDTH,
         <<_:PosW,Val:?INDEX_WIDTH/integer,_/bits>> = Recs,
         Val
   end.

leaf_block_position(Block) ->
   Block * ?LEAF_BYTES.

% returns Bin
get_leaf_block(LeafId, #{leaves    := LeafCache,
                         leaf_file := LeafFile}) ->
   case LeafCache of
      #{LeafId := Bin} ->
         Bin;
      _ ->
         read_leaf_block(LeafFile, LeafId)
   end.
   
% returns State
set_leaf_block(LeafId, LeafBin, #{leaves    := LeafCache} = State) ->
   LeafCache1 = LeafCache#{LeafId => LeafBin}, 
   State#{leaves := LeafCache1}.
   
read_leaf_block(LeafFile, LeafId) ->
   Pos = leaf_block_position(LeafId),
   Raw = file:pread(LeafFile, Pos, ?LEAF_BYTES),
   %?trace("Block",{?LINE, Block, Pos}),
   case Raw of
      {ok, Bin} ->
         Bin;
      {error,_} = Err ->
         throw(Err);
      eof -> % HERE TOO
         throw({error, Pos, LeafId})
   end.

set_leaf_block_next(<<Head:48/binary,_:32/integer>>, NextLeaf) ->
   <<Head/binary,NextLeaf:32/integer>>.

set_leaf_block_value(Pos, LeafRec, LeafBin) ->
   Off = Pos * ?LEAF_WIDTH,
   <<Head:Off/bits,_:?LEAF_WIDTH,Tail/bits>> = LeafBin,
   <<Head:Off/bits,LeafRec:?LEAF_WIDTH/bits,Tail/bits>>.

get_leaf_block_value(Pos, LeafBin) ->
   Off = Pos * ?LEAF_WIDTH,
   case LeafBin of
       <<_:Off/bits,0:?LEAF_WIDTH/integer,_/bits>> ->
         error;
       <<_:Off/bits,Val:?LEAF_WIDTH/bits,_/bits>> ->
         Val
   end.

is_used(Num, Map) -> 
   case Map of
      <<_:Num,1:1,_/bitstring>> -> true;
      _ -> false
   end.

% retrieves the value from the heap file
read_heap_value_from_leaf(HeapFile, LeafRec) ->
   case LeafRec of
      <<1:1,Len:7,Str:Len/binary,_/binary>> ->
         Str;
      <<0:1,Position:63/integer,Len:32/integer>> ->
         read_heap_value(HeapFile, Position, Len);
      _ ->
         error
   end.
   
% retrieves the value from the heap file
read_heap_value(HeapFile, Position, Len) ->
   {ok,B} = file:pread(HeapFile, Position, Len),
   B.
   
% return ok
append_heap_value(HeapFile, Position, Value) ->
   case file:pwrite(HeapFile, Position, Value) of
      ok -> ok;
      {error,_} = Err -> throw(Err)
   end.

% returns Pos (0 to 3) | new_block | {next_block, BlockId} | {next_pos, Pos}
scan_leaf_block(LeafBin, Length, String, #{heap_file := HeapFile}) ->
   <<Rec_1:96/bits, Rec_2:96/bits, Rec_3:96/bits, Rec_4:96/bits,
     Next:32/integer>> = LeafBin,
   List = [Rec_1, Rec_2, Rec_3, Rec_4],
   Pos = if Length =< 11 ->
               scan_inline_leaf_block(List, Length, String, 0);
            true ->
               scan_heap_leaf_block(List, Length, String, 0, HeapFile)
         end,
   if Pos == none, Next == 0 ->
         new_block;
      Pos == none ->
         {next_block, Next};
      true ->
         Pos
   end.

% <<1:1,Len:7,Str:Len/binary,_/binary>>
scan_inline_leaf_block([<<1:1,Len:7/integer,Str:Len/binary,_/binary>>|T], 
                       Length, String, Cnt) ->
   if Str == String ->
         Cnt;
      true ->
         scan_inline_leaf_block(T, Length, String, Cnt + 1)
   end;
scan_inline_leaf_block([<<0:96/integer>>|_], _, _, Cnt) ->
   {next_pos, Cnt};
scan_inline_leaf_block([_|T], Length, String, Cnt) ->
   scan_inline_leaf_block(T, Length, String, Cnt + 1);
scan_inline_leaf_block([], _, _, _) -> none.

% <<0:1,Position:63/integer,Len:32/integer>>
scan_heap_leaf_block([<<0:1,Position:63/integer,Len:32/integer>>|T], 
                     Length, String, Cnt, HeapFile) when Len == Length ->
   case read_heap_value(HeapFile, Position, Len) of
      String ->
         Cnt;
      _ ->
         scan_heap_leaf_block(T, Length, String, Cnt + 1, HeapFile)
   end;
scan_heap_leaf_block([<<0:96/integer>>|_], _, _, Cnt, _) ->
   {next_pos, Cnt};
scan_heap_leaf_block([_|T], Length, String, Cnt, HeapFile) ->
   scan_heap_leaf_block(T, Length, String, Cnt + 1, HeapFile);
scan_heap_leaf_block([], _, _, _, _) -> none.

   
%% ====================================================================
%% Callbacks
%% ====================================================================
 
init([new, DBDirectory, TableName]) ->
   State = new(DBDirectory, TableName),
   {ok,State};
init([open, DBDirectory, TableName]) ->
   State = open(DBDirectory, TableName),
   {ok,State}.

terminate(_Reason, #{heap_file := HeapFile,
                     indx_file := IndxFile,
                     leaf_file := LeafFile,
                     indx_log  := IndxLogF,
                     leaf_log  := LeafLogF}) ->
   ok = file:close(HeapFile),
   ok = file:close(IndxFile),
   ok = file:close(LeafFile),
   try
      ok = file:close(IndxLogF),
      ok = file:close(LeafLogF),
      ok
   catch _:_ -> ok
   end.

handle_cast(commit_logs, State) ->
   State1 = commit_logs(State),
   {noreply, State1};
handle_cast(_Request, State) -> {noreply,State}.

handle_call({insert, Value}, From, #{status  := Stat,
                                     updates := Upds} = State) 
   when Stat =/= waiting,
        Upds > 100 -> % commit after 100+ updates
   _ = gen_server:cast(self(), commit_logs),
   handle_call({insert, Value}, From, State#{status := waiting});
handle_call({insert, Value}, _From, State) ->
   {Reply, State1} = upsert_string_value(Value, State),
   {reply, Reply, State1};

handle_call({lookup, Ids}, _From, State) when is_list(Ids) ->
   Fun = fun(Id, St) ->
               {Str, St2} = lookup_string_from_id(Id, St),
               {{Id, Str}, St2}
         end,
   {List, State1} = lists:mapfoldl(Fun, State, Ids),
   {reply, maps:from_list(List), State1};
handle_call({lookup, Id}, _From, State) ->
   {Reply, State1} = lookup_string_from_id(Id, State),
   {reply, Reply, State1}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
