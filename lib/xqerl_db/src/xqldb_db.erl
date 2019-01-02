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
-module(xqldb_db).

-behaviour(supervisor).

-include("xqerl_db.hrl").

-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([open/1,
         close/1,
         %
         database/1,
         databases/1,
         paths/1,
         exists/1]).

-export([create_or_open/2]). % internal

%% Opens a closed DB or creates a new one.
open(Uri) when is_list(Uri) -> open(unicode:characters_to_binary(Uri));
open(Uri) ->
   case get_pid(Uri) of
      Pid when is_pid(Pid) ->
         {ok, Pid};
      _ ->
         xqldb_db_sup:start_child(Uri)
   end.

%% Closes an open DB
close(Uri) when is_list(Uri) -> close(unicode:characters_to_binary(Uri));
close(Uri) ->
   case get_pid(Uri) of
      Pid when is_pid(Pid) ->
         xqldb_db_server:close(Uri),
         _ = supervisor:terminate_child(xqldb_db_sup, Pid),
         ok;
      _ ->
         ok
   end.

%% Returns the DB for a given URI, or not_exists, or closed
%% closed or nonexistant can be opened with open/1
database(Uri) when is_list(Uri) -> database(unicode:characters_to_binary(Uri));
database(Uri) when is_binary(Uri) ->
   case get_pid(Uri) of
      Pid when is_pid(Pid) ->
         db_ref(Pid, Uri);
      _ ->
         {ok,Pid} = open(Uri),
         db_ref(Pid, Uri)
   end.

%% Returns a list of all DBs under the given URI, opens any closed.
databases(Uri) when is_list(Uri) -> databases(unicode:characters_to_binary(Uri));
databases(Uri) ->
   UPids = xqldb_db_server:get_open(Uri),
   [begin
       DBPath = xqldb_uri:join(Uri, RelU),
       Pid2 = if Pid == closed ->
                    {ok,P} = open(DBPath),
                    P;
                 true ->
                    Pid
              end,
       db_ref(Pid2, DBPath)
    end || {RelU, Pid} <- UPids].

%% Returns a list of all paths under the given URI.
paths(Uri) when is_list(Uri) -> paths(unicode:characters_to_binary(Uri));
paths(Uri) ->
   UPids = xqldb_db_server:get_open(Uri),
   Fun = fun({RelU, Pid}) ->
               DBPath = xqldb_uri:join(Uri, RelU),
               Pid2 = if Pid == closed ->
                            {ok,P} = open(DBPath),
                            P;
                         true ->
                            Pid
                      end,               
               DB = db_ref(Pid2, DBPath),
               [P || {P,_,_,_} <- xqldb_path_table:all(?PATH_TABLE_P(DB))]
         end,
   lists:flatmap(Fun, UPids).

%% Returns if there is an existing DB at URI.
exists(Uri) when is_list(Uri) -> exists(unicode:characters_to_binary(Uri));
exists(Uri) ->
   xqldb_db_server:exists(Uri).


%% ====================================================================
%% Internal API functions
%% ====================================================================
create_or_open(DBDirectory, Uri) ->
   {ok, Sup} = supervisor:start_link(?MODULE, [DBDirectory]),
   xqldb_db_server:open(Uri, Sup),
   {ok, Sup}.

%% ====================================================================
%% Behavioural functions
%% ====================================================================

get_pid(Uri) ->
   case xqldb_db_server:info(Uri) of
      {error,_} ->
         error;
      {opening,_,none} ->
         get_pid(Uri);
      {_,_,Pid} ->
         Pid
   end.

init([DBDirectory]) ->
   SupFlags = #{strategy => one_for_all}, % restart all if one goes down
   NewOpen = case filelib:is_file(filename:join(DBDirectory, "nodes.heap")) of
                true -> open;
                false -> new
             end,
   Locks = child_map(db_lock, xqldb_lock, []), 
   Strct = child_map(structure, xqldb_structure_index, [NewOpen, DBDirectory, ?STRUCT]), 
   Names = child_map(names, xqldb_name_table, [NewOpen, DBDirectory, ?NAME]), 
   NmSps = child_map(namespaces, xqldb_namespace_table, [NewOpen, DBDirectory, ?NMSP]),
   NSNds = child_map(ns_nodes, xqldb_ns_node_table, [NewOpen, DBDirectory, ?NS_NODE]), 
   Texts = child_map(texts, xqldb_string_table, [NewOpen, DBDirectory, ?TEXT]), 
   Attrs = child_map(attrs, xqldb_string_table, [NewOpen, DBDirectory, ?ATTS]),
   Paths = child_map(paths, xqldb_path_table, [NewOpen, DBDirectory, ?PATH]),
   Ress  = child_map(resources, xqldb_resource_table, [NewOpen, DBDirectory, ?RESOURCES]),
   JSON  = child_map(json, xqldb_json_table, [NewOpen, DBDirectory, ?JSON]),
   Nodes = child_map(nodes, xqldb_node_table, [NewOpen, DBDirectory, ?NODES]),
   
   {ok, {SupFlags, 
         [Locks, Strct, Names, NmSps, NSNds, Texts, Attrs, Paths, JSON, Ress, Nodes]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================


child_map(Id, Module, Args) ->
   #{id        => Id,
     shutdown  => brutal_kill,
     start     => {Module, start_link, Args},
     modules   => [Module]}.


db_ref(SupRef, Uri) ->
   Children = supervisor:which_children(SupRef),
   get_pid_tids(Children, #{db_name => SupRef,
                            db_uri => Uri}).

get_pid_tids([], Map) -> Map;
get_pid_tids([{Id,Pid,_,[Mod]}|T], Map) when Id == names;
                                             Id == namespaces ->
   get_pid_tids(T, Map#{Id => {Pid, Mod:tid(Pid)}});
get_pid_tids([{Id,Pid,_,_}|T], Map) ->
   get_pid_tids(T, Map#{Id => Pid}).

