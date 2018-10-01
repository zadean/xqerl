%% 10 bit integer
-module(xqldb_namespace_table).

-behaviour(gen_server).

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

-type(state() :: #{tab => ets:tid(),
                   next => non_neg_integer(),
                   file => file:io_device()}).

-type(server() :: {Pid::pid(), Tid::ets:tid()}).

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

stop({Pid,_Tid}) when is_pid(Pid) ->
   gen_server:stop(Pid).

%% Returns the binary value for the given ID, or error if no such ID exists.
-spec lookup(server(), Id::non_neg_integer()) -> 
         Value::binary() | error.

lookup({Pid,_Tid}, Id) when is_pid(Pid) -> 
   gen_server:call(Pid, {lookup, Id}).


%% Returns the ID for a binary value in the table.
%% If no such value exists, creates a new value in the table and returns its ID.
-spec insert(server(), Value::binary()) -> Id::non_neg_integer().

insert({Pid,_Tid}, Value) when is_pid(Pid) ->
   gen_server:call(Pid, {insert, Value}).

%% ====================================================================
%% Internal functions
%% ====================================================================

-define(MAX_ID, 1023).

%% Creates a new string table in the DBDirectory in the DB DBName,
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
   Table = ets:new(list_to_atom(TableName), 
                   [public, set, {read_concurrency,true},
                             {write_concurrency,true}]),
   #{tab  => Table,
     next => 1,
     file => HeapFile}.

%% Opens an existing string table in the DBDirectory in the DB DBName,
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
   Table = ets:new(list_to_atom(TableName), 
                   [public, set, {read_concurrency,true},
                             {write_concurrency,true}]),
   ok = heap_to_ets(HeapFile,Table),
   Nxt = get_next_id(Table),
   #{tab  => Table,
     next => Nxt,
     file => HeapFile}.

% given file and value, writes to file end and returns {pos,len}
append_file(File,Id,Value) ->
   {ok,Eof} = file:position(File, eof),
   Size = byte_size(Value),
   ok = file:write(File, [<<Id:32/integer>>,
                          <<Size:32/integer>>,
                          Value]),
   {Eof + 8,Size}.

get_next_id(Tab) ->
   M = [{{'$1','_'},[{is_integer,'$1'}],['$1']}],
   L = ets:select(Tab, M),
   case L of
      [] -> 1;
      _ -> lists:max(L) + 1
   end.

heap_to_ets(File,Tab) ->
   % last action should be an ets insert, true
   true = read_heap_to_ets(Tab,read(File),0,[]),
   ok.

read_heap_to_ets(Tab,eof,_,Acc) -> ets:insert(Tab,Acc);
read_heap_to_ets(Tab,{<<Id:32/integer,Size:32/integer,
                        Value:Size/binary,Rest/binary>>,Cont},Pos,Acc) ->
   NewPos = Pos + 8 + Size,
   Cpy = binary_c(Value),
   read_heap_to_ets(Tab,{Rest,Cont},NewPos,[{Id,Cpy},{Cpy,Id}|Acc]);
read_heap_to_ets(Tab,{<<>>,Cont},Pos,Acc) ->
   read_heap_to_ets(Tab,Cont(),Pos,Acc);
read_heap_to_ets(Tab,{Rest,Cont},Pos,Acc) ->
   {New,Cont2} = Cont(),
   ets:insert(Tab,Acc),
   read_heap_to_ets(Tab,{<<Rest/binary,New/binary>>,Cont2},Pos,[]).

% do not allow sub-binaries in ets 
binary_c(Bin) ->
   binary:copy(Bin).

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
                                      next := Next,
                                      file := HeapFile} = State) ->
   case ets:insert_new(Table, {Value, Next}) of
      true -> % not already there
         true = ets:insert_new(Table, {Next, Value}),
         _ = append_file(HeapFile,Next,Value),
         {reply, Next, State#{next := Next + 1}};
      false ->
         [{_,Id}] = ets:lookup(Table, Value),
         {reply, Id, State}
   end;
handle_call({lookup, Id}, _From, #{tab  := Table} = State) ->
   Reply = case ets:lookup(Table, Id) of
            [{Id,Value}] ->
               Value;
            [] ->
               error
           end,
   {reply,Reply,State}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
