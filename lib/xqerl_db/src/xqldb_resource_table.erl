%% 
-module(xqldb_resource_table).

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
         insert/2,
         get/2]).

-type state()::#{free_space => [{Len::non_neg_integer(),
                                 Pos::non_neg_integer()}],
                 file => file:io_device(),
                 tail => Pos::non_neg_integer()}.

-type server() :: Pid::pid().
 
%% ====================================================================
%% API functions
%% ====================================================================

start_link(new, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Shutdown this server. 
-spec stop(server()) -> ok | {ok,_}.
stop(Pid) ->
   gen_server:stop(Pid).

%% returns entire binary for a Resource with PosSize
%% returns Binary
-spec get(server(), {Pos :: non_neg_integer(), Size :: non_neg_integer()}) -> 
         binary().
get(Pid, PosSize) ->
   gen_server:call(Pid, {get_bin, PosSize}).

% inserts new resource as binary, returns Position and Size
-spec insert(server(), binary()) -> 
         {Pos :: non_neg_integer(), Size :: non_neg_integer()}.
insert(Pid, Bin) ->
   gen_server:call(Pid, {insert, Bin}).

%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new name table in the DBDirectory 
%% with the name TableName. Deletes any existing DB file with the same name.  
-spec new(DBDirectory::file:name_all(), 
          TableName::atom()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   HeapName = filename:absname_join(DBDirectory, atom_to_list(TableName) ++ ".heap"),
   % delete any old data
   {ok,Trunc} = file:open(HeapName, [write]), file:close(Trunc),
   % new heap
   {ok,HeapFile} = file:open(HeapName, 
                             [read,write,binary,read_ahead,delayed_write,raw]),
   #{file => HeapFile,
     tail => 0}.

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
   {ok, EOF} = file:position(HeapFile, eof),
   #{file => HeapFile,
     free_space => [],
     tail => EOF}.

%% Closes this table. 
-spec close(State::state()) -> ok.

close(#{file := HeapFile}) ->
   ok = file:close(HeapFile),
   ok.

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

handle_cast(_Request, State) -> {noreply,State}.

handle_call({get_bin, {Pos,Size}}, _From, #{file := File} = State) -> 
   Reply = case file:pread(File, Pos, Size) of
              {ok,Data} -> Data;
              _ -> error
           end,
   {reply,Reply,State};
handle_call({insert, Bin}, _From, #{file := File,
                                    tail := Tail} = State) ->
   Size = byte_size(Bin),
   ok = file:pwrite(File, Tail, Bin),
   {reply, {Tail, Size} , State#{tail := Tail + Size}}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}. 