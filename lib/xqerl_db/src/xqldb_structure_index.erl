%% Structure index holds the structure of all documents combined.
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
         remove/2,
         get/1]).

%% TODO: API functions for path expansion. One 'get' call, then local process.
%% The index should be 'relatively' small. 

-type(state() :: #{idx  => map(),
                   file => file:filename_all()}).
-type(server() :: {DBName::string(), TableName::string()} | pid()).

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

%% Adds DocIndex to DB Index.
-spec add(server(), DocIndex::map()) -> ok | error.

add(Pid, DocIndex) when is_pid(Pid) ->
   gen_server:call(Pid, {add, DocIndex}).

%% Removes DocIndex from DB Index.
-spec remove(server(), DocIndex::map()) -> ok | error.

remove(Pid, DocIndex) when is_pid(Pid) ->
   NegIndex = xqldb_structure:negate(DocIndex),
   gen_server:call(Pid, {add, NegIndex}).

%% Returns DB Index.
-spec get(server()) -> DocIndex::map().

get(Pid) when is_pid(Pid) ->
   gen_server:call(Pid, get).


%% ====================================================================
%% Internal functions
%% ====================================================================

%% Creates a new structure index in the DBDirectory in the DB DBName.
-spec new(DBDirectory::file:name_all(), 
          TableName::string()) ->
         state().

new(DBDirectory, TableName) when is_binary(DBDirectory) ->
   new(binary_to_list(DBDirectory), TableName);
new(DBDirectory, TableName) ->
   HeapName = filename:join(DBDirectory, TableName ++ ".idx"),
   ok = write_file(HeapName, #{}),
   #{idx  => #{},
     file => HeapName}.

%% Opens an existing name table in the DBDirectory in the DB DBName,
%% with the name TableName.   
-spec open(DBDirectory::file:name_all(), 
           TableName::string()) ->
          state().

open(DBDirectory, TableName) when is_binary(DBDirectory) ->
   open(binary_to_list(DBDirectory), TableName);
open(DBDirectory, TableName) ->
   HeapName = filename:join(DBDirectory, TableName ++ ".idx"),
   Idx = read_file(HeapName),
   #{idx  => Idx,
     file => HeapName}.
 

% given file and value, writes to file end and returns ok
write_file(File, Value) ->
   Bin = term_to_binary(Value, [compressed]),
   file:write_file(File, Bin).

% Returns the index from file.
read_file(File) ->
   case file:read_file(File) of
      {ok,IdxBin} ->
         binary_to_term(IdxBin);
      {error,enoent} ->
         #{}
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

terminate(_Reason, #{idx  := Idx,
                     file := File} = _State) ->
   ok = write_file(File, Idx),  
   ok.

handle_cast(_Request, State) -> {noreply,State}.

handle_call(get, _From, #{idx := Idx} = State) ->
   {reply,Idx,State};
handle_call({add, Value}, _From, #{idx  := Idx,
                                   file := _File} = State) ->
   NewIdx = xqldb_structure:add(Idx, Value),
%ok = write_file(File, NewIdx),
%% TODO fix this
   {reply,ok,State#{idx := NewIdx}}.

handle_info(_Request, State) -> {noreply,State}.

code_change(_, State, _) -> {ok, State}.
  
