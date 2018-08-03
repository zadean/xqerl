%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
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
-module(xqldb_res).

-behaviour(gen_server).
-include("xqerl_db.hrl").

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

%% all callbacks have timeouts to offload this process back to persistent data 
%% 

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/1,
         load/1,
         insert/1,
         export/1,
         delete/1]).

-export([%serialize/1,
         string_to_json/1,% lib fun
         get_json/1,
         get_binary/1,
         get_text/1]).

-define(TIMEOUT, 30000).

start_link(FileUri) ->
   gen_server:start_link(?MODULE, [FileUri], []).

% return {ok,Pid}
load(FileUriOrState) ->
   xqldb_res_sup:start_child({FileUriOrState,load}).

insert(FileUriOrState) ->
   xqldb_res_sup:start_child({FileUriOrState, insert}).

export(Pid) ->
   gen_server:call(Pid, export, ?TIMEOUT).

delete(Pid) ->
   gen_server:call(Pid, delete, ?TIMEOUT).

get_json(Pid) ->
   gen_server:call(Pid, get_json, ?TIMEOUT).

get_text(Pid) ->
   gen_server:call(Pid, get_text, ?TIMEOUT).

get_binary(Pid) ->
   gen_server:call(Pid, get_binary, ?TIMEOUT).

%% % serialize
%% serialize(Pid) ->
%%    gen_server:call(Pid, serialize, ?TIMEOUT).


%% ====================================================================
%% Behavioural functions
%% ====================================================================
-record(state, 
        {uri,
         hits    = 0,
         doc
        }).

-spec init(Args :: term()) -> Result when
	Result :: {ok, State}
			| {ok, State, Timeout}
			| {ok, State, hibernate}
			| {stop, Reason :: term()}
			| ignore,
	State :: term(),
	Timeout :: non_neg_integer() | infinity.

init([{OldState,load}]) when is_binary(OldState) ->
   State = binary_to_term(OldState, [safe]),
   %State = #state{doc = Doc},
   {ok, State, ?TIMEOUT};
init([{{Uri,FileUri},insert}]) ->
   State = #state{uri = {Uri,FileUri}},
   Self = self(),
   ok = gen_server:cast(Self, from_file),
   {ok, State, ?TIMEOUT};
init([Doc]) when is_tuple(Doc), not is_atom(element(1,Doc)) ->
   State = #state{doc = Doc},
   {ok, State, ?TIMEOUT};

init([FileUri]) ->
   State = #state{uri = FileUri},
   Self = self(),
   ok = gen_server:cast(Self, from_file),
   {ok, State, ?TIMEOUT}.


-spec handle_call(Request :: term(), 
                  From :: {pid(), Tag :: term()}, 
                  State :: term()) -> Result when
	Result :: {reply, Reply, NewState}
			| {reply, Reply, NewState, Timeout}
			| {reply, Reply, NewState, hibernate}
			| {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason, Reply, NewState}
			| {stop, Reason, NewState},
	Reply :: term(),
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity,
	Reason :: term().


handle_call(delete, _From, State) ->
   {stop, normal, State};
handle_call(export, _From, State) ->
   Bin = term_to_binary(State, [{compressed,1},{minor_version, 2}]),
   {reply, {ok,Bin}, State, ?TIMEOUT};

%% handle_call(serialize, _From, State) ->
%%    Reply = xqldb_json:serialize(State#state.doc),
%%    {reply, Reply, State, ?TIMEOUT};

handle_call(get_json, _From, State) ->
   Reply = string_to_json(State#state.doc),
   {reply, Reply, State, ?TIMEOUT};

handle_call(get_text, _From, State) ->
   Reply = unicode:characters_to_list(State#state.doc),
   {reply, Reply, State, ?TIMEOUT};

handle_call(get_binary, _From, State) ->
   Reply = State#state.doc,
   {reply, Reply, State, ?TIMEOUT};

handle_call(Request, _From, State) ->
   ?dbg("unexpected call: ",Request),
   Reply = ok,
   {reply, Reply, State, ?TIMEOUT}.


-spec handle_cast(Request :: term(), State :: term()) -> Result when
	Result :: {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason :: term(), NewState},
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity.

% self called load
handle_cast(from_file, State) ->
   State1 = do_from_file(State),
   {noreply, State1, ?TIMEOUT};

handle_cast(Msg, State) ->
   ?dbg("unexpected cast: ",Msg),
   {noreply, State, ?TIMEOUT}.


-spec handle_info(Info :: timeout | term(), State :: term()) -> Result when
	Result :: {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason :: term(), NewState},
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity.

handle_info(timeout, State) ->
   {stop, normal, State};

% adding an index should cause a new save of the state
handle_info(touch, State) ->
   {noreply, State, ?TIMEOUT};
handle_info(Info, State) ->
   ?dbg("unexpected info: ",Info),
   {noreply, State, ?TIMEOUT}.


-spec terminate(Reason, State :: term()) -> Any :: term() when
	Reason :: normal
			| shutdown
			| {shutdown, term()}
			| term().

terminate(_Reason, State) -> 
   xqldb_resstore:deactivate(State#state.uri,State).


-spec code_change(OldVsn, State :: term(), Extra :: term()) -> Result when
	Result :: {ok, NewState :: term()} | {error, Reason :: term()},
	OldVsn :: Vsn | {down, Vsn},
	Vsn :: term().

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.


%% ====================================================================
%% Internal functions
%% ====================================================================


get_file_uri(State) ->
   State#state.uri.

add_doc_to_state(Doc, State) ->
   State#state{doc = Doc}.

do_from_file(State) ->
   case get_file_uri(State) of
      {Uri,FileUri} ->
         Doc = read_file_1(FileUri),
         add_doc_to_state(Doc, State#state{uri = Uri});
      Uri ->
         Doc = read_file_1(Uri),
         add_doc_to_state(Doc, State)
   end.

read_file_1(<<"file://", _/binary>> = File) ->
   read_file_1(xqldb_lib:uri_to_filename(File));
read_file_1("file://" ++ Filename) ->
   read_file_1(xqldb_lib:uri_to_filename("file://" ++ Filename));
read_file_1(Filename) ->
   ?dbg("Filename",Filename),
   {ok,Bin} = file:read_file(Filename),
   Bin.

string_to_json(Bin) when is_binary(Bin) ->
   string_to_json(unicode:characters_to_list(Bin));
string_to_json(String) ->
   try
      ?dbg("String",String),
      {_,Tks,_} = json_scanner:string(String),
      ?dbg("Tks",Tks),
      {ok,Obj} = json_parser:parse(Tks),
      ?dbg("Obj",Obj),
      Obj
   catch
      _:_ ->
         {error,invalid_json}
   end.
