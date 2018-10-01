%% Path to each document.
%% {{MinPos, MaxPos}, Uri} ordered_set

-module(xqldb_json_path_table).

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

-export([tid/1]).

-type state() :: #{tab => ets:tid(),
                   file => file:io_device(),
                   next => non_neg_integer()}.
-type server() :: {pid(), ets:tid()}.
-type rec() :: {URI::binary(), Pos::non_neg_integer(), Size::non_neg_integer()}.

%% Open or create a new string table server.  
-spec start_link(open | new,
                 DBDirectory::file:name_all(),
                 TableName::string()) ->
         {ok,Pid::pid()}.
start_link(new, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [new, DBDirectory, TableName], []);
start_link(open, DBDirectory, TableName) ->
   gen_server:start_link(?MODULE, [open, DBDirectory, TableName], []).

%% Internal function 
-spec tid(pid()) -> ets:tid().

tid(Pid) when is_pid(Pid) ->
   gen_server:call(Pid, tid).

%% Shutdown this server. 
-spec stop(server()) -> ok.

stop({Pid,_}) when is_pid(Pid) ->
   gen_server:stop(Pid).

%% Insert new value
-spec insert(server(), Value::rec()) -> ok.

insert({Pid, _Tid}, Value) when is_pid(Pid) ->
   gen_server:call(Pid, {insert, Value}).

%% Returns {Pos, Size} value for the given URI.
-spec lookup(server(), URI::binary()) -> 
         rec() | error.

lookup({Pid, Tid}, URI) when is_pid(Pid), ?IS_LOCAL(Pid) ->
   case ets:lookup(Tid, URI) of
      [P] -> P;
      _ -> []
   end;
lookup({Pid, Tid}, URI) when is_pid(Pid) ->
   case rpc:call(erlang:node(Tid), ets, lookup, [Tid, URI]) of
      [P] -> P;
      _ -> []
   end.

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
   % delete any old data
   {ok,Trunc} = file:open(HeapName, [write]), file:close(Trunc),
   % new heap
   {ok,HeapFile} = file:open(HeapName, 
                             [read,write,binary,read_ahead,delayed_write,raw]),
   Table = ets:new(list_to_atom(TableName), [public, ordered_set, {read_concurrency,true},
                             {write_concurrency,true}]),
   #{tab  => Table,
     file => HeapFile}.

%% Opens an existing name table in the DBDirectory
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
   Table = ets:new(list_to_atom(TableName), [public, ordered_set, 
                                             {read_concurrency,true},
                                             {write_concurrency,true}]),
   ok = heap_to_ets(HeapFile,Table),
   #{tab  => Table,
     file => HeapFile}.

% given file and {Pos, Size, URI}, writes to file end and returns ok
append_file(File, {URI, Pos, Size}) ->
   Len = byte_size(URI),
   file:write(File, [<<Len:32/integer>>, URI, 
                     <<Pos:32/integer>>, <<Size:32/integer>>]).

heap_to_ets(File,Tab) ->
   % last action should be an ets insert, true
   true = read_heap_to_ets(Tab,read(File),[]),
   ok.

read_heap_to_ets(Tab,eof,Acc) -> ets:insert(Tab,Acc);
read_heap_to_ets(Tab, {<<Len:32/integer,URI:Len/binary,
                         Pos:32/integer,Size:32/integer,
                         Rest/binary>>,Cont},Acc) ->
   Term = {URI, Pos, Size},
   read_heap_to_ets(Tab,{Rest,Cont},[Term|Acc]);
read_heap_to_ets(Tab,{<<>>,Cont},Acc) ->
   read_heap_to_ets(Tab,Cont(),Acc);
read_heap_to_ets(Tab,{Rest,Cont},Acc) ->
   {New,Cont2} = Cont(),
   ets:insert(Tab,Acc),
   read_heap_to_ets(Tab,{<<Rest/binary,New/binary>>,Cont2},[]).

read(Fd) ->
   case file:read(Fd,1 bsl 15) of
      {ok,Bin} ->
         {Bin, fun() -> read(Fd) end};
      Other ->
         Other
   end.

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

handle_call(tid, _From, #{tab  := Table} = State) ->
   {reply,Table,State};
handle_call({insert, Value}, _From, #{tab  := Table,
                                      file := HeapFile} = State) ->
   _ = append_file(HeapFile, Value),
   true = ets:insert_new(Table, Value),
   {reply,ok,State}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
  
