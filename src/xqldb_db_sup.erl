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

-module(xqldb_db_sup).

-behaviour(supervisor).

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0,
         start_child/1]).

start_link() ->
   supervisor:start_link({local, ?MODULE}, ?MODULE, []).

start_child(Uri) ->
   try
      case xqldb_db_server:new(Uri) of
         {error, Err0} ->
            throw(Err0);
         {open, P, Id} ->
            {ok, P, Id};
         {closed, DBDirectory, Id} ->
            {ok, P} = supervisor:start_child(?MODULE, [DBDirectory, Uri]),
            {ok, P, Id};
         {opening, Id} ->
            {error, {already_started, Id}};
         {DBDirectory, Id} ->
            ok = filelib:ensure_dir(DBDirectory ++ "/x"),
            {ok, P} = supervisor:start_child(?MODULE, [DBDirectory, Uri]),
            ok = xqldb_db_server:open(Uri, P),
            {ok, P, Id}
      end
   catch 
      _ : Err : Stack ->
         io:format("~p~n", [Stack]),
         ok = xqldb_db:close(Uri),
         throw(Err)
   end.

   
%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
   SupFlags = #{strategy => simple_one_for_one},
   ChildSpec = #{id       => xqldb_db,
                 shutdown => brutal_kill,
                 type     => supervisor,
                 start    => {xqldb_db, create_or_open, []}},
   {ok,{SupFlags, [ChildSpec]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

