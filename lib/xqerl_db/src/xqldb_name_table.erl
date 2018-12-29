%% A name table is a lookup for each distinct node name.


-module(xqldb_name_table).

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
         match/2]).

-export([tid/1]).

-type(state() :: #{tab => ets:tid(),
                   file => file:io_device(),
                   next => non_neg_integer()}).
-type(server() :: {Pid::pid(), Tid::ets:tid()}).
-type(name() :: prefixed_name() | unprefixed_name()).
-type(prefixed_name() :: {LocalName::binary(), Prefix::binary()}).
-type(unprefixed_name() :: {LocalName::binary(), <<>>}).

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

%% Returns the ID for a name in the table.
%% If no such value exists, creates a new value in the table and returns its ID.
-spec insert(server(), Value::name()) -> Id::non_neg_integer().

insert({Pid, Tid}, Value) when is_pid(Pid), ?IS_LOCAL(Pid) ->
   case ets:lookup(Tid, Value) of
      [{Value,Id}] ->
         Id;
      [] ->
         gen_server:call(Pid, {insert, Value})
   end;
insert({Pid, _Tid}, Value) when is_pid(Pid) ->
   gen_server:call(Pid, {insert, Value}).


%% Returns the {LocalName,Prefix} value for the given ID, 
%% or the ID for the given {LocalName,Prefix} tuple or error.
-spec lookup(server(), Id::non_neg_integer() | name()) -> 
         Name::name() | non_neg_integer() | error.

lookup({Pid,_Tid}, Id) when is_pid(Pid) ->
   gen_server:call(Pid, {lookup, Id}).

%% Returns a list of IDs for all names that contain the LocalName.
-spec match(server(), LocalName::binary()) -> 
         [non_neg_integer()].

match({Pid,_Tid}, LocalName) when is_pid(Pid) ->
   gen_server:call(Pid, {match, LocalName}).

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
   Table = ets:new(list_to_atom(TableName), [public, set, {read_concurrency,true},
                             {write_concurrency,true}]),
   #{tab  => Table,
     file => HeapFile,
     next => 1}.

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
   Table = ets:new(list_to_atom(TableName), [public, set, {read_concurrency,true},
                             {write_concurrency,true}]),
   ok = heap_to_ets(HeapFile,Table),
   Nxt = get_next_id(Table),
   #{tab  => Table,
     next => Nxt,
     file => HeapFile}.
 
% given file and value, writes to file end and returns ok
append_file(File,Id,Value) ->
   Bin = term_to_binary(Value),
   Size = byte_size(Bin),
   file:write(File, [<<Id:16/integer>>,
                     <<Size:32/integer>>,
                     Bin]).

get_next_id(Tab) ->
   M = [{{'$1','_'},[{is_integer,'$1'}],['$1']}],
   L = ets:select(Tab, M),
   case L of
      [] -> 1;
      _ -> lists:max(L) + 1
   end.

heap_to_ets(File,Tab) ->
   % last action should be an ets insert, true
   true = read_heap_to_ets(Tab,read(File),[]),
   ok.

read_heap_to_ets(Tab,eof,Acc) -> ets:insert(Tab,Acc);
read_heap_to_ets(Tab,{<<Id:16/integer,Size:32/integer,
                        Value:Size/binary,Rest/binary>>,Cont},Acc) ->
   Term = binary_to_term(Value),
   read_heap_to_ets(Tab,{Rest,Cont},[{Term,Id},{Id,Term}|Acc]);
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
 
init([new,DBDirectory, TableName]) ->
   State = new(DBDirectory, TableName),
   {ok,State};
init([open,DBDirectory, TableName]) ->
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
   case ets:lookup(Table, Id) of
      [{Id,Value}] ->
         {reply,Value,State};
      [] ->
         {reply,error,State}
   end;
handle_call({match, LocalName}, _From, #{tab  := Table} = State) ->
   Ids = ets:match(Table, {{LocalName,'_'},'$1'}),
   {reply,lists:flatten(Ids),State}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
  
