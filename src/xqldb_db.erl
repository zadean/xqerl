%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
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
-export([
    open/1,
    close/1,
    %
    database/1,
    databases/1,
    exists/1
]).

% internal
-export([create_or_open/2]).

%% Opens a closed DB or creates a new one.
open(Uri) when is_list(Uri) ->
    open(unicode:characters_to_binary(Uri));
open(Uri) ->
    case get_pid(Uri) of
        {Id, Pid} when is_pid(Pid) ->
            {ok, Pid, Id};
        opening ->
            timer:sleep(1),
            open(Uri);
        _Other ->
            %io:format("~p~n", [Other]),
            case xqldb_db_sup:start_child(Uri) of
                {ok, Pid, Id} ->
                    {ok, Pid, Id};
                {error, {already_started, _}} ->
                    % could have been started under our nose
                    timer:sleep(1),
                    open(Uri)
            end
    end.

%% Closes an open DB
close(Uri) when is_list(Uri) ->
    close(unicode:characters_to_binary(Uri));
close(Uri) ->
    case get_pid(Uri) of
        {Id, Pid} when is_pid(Pid) ->
            xqldb_db_server:close({Uri, Id}),
            % close index nicely then sup
            #{index := Ind} = db_ref(Pid),
            xqldb_idx_mi:stop(Ind),
            _ = supervisor:terminate_child(xqldb_db_sup, Pid),
            ok;
        _ ->
            ok
    end.

%% Returns the DB for a given URI, or not_exists, or closed
%% closed or nonexistant can be opened with open/1
database(Uri) when is_list(Uri) ->
    database(unicode:characters_to_binary(Uri));
database(Uri) when is_binary(Uri) ->
    case get_pid(Uri) of
        {Id, Pid} when is_pid(Pid) ->
            db_ref(Pid, Uri, Id);
        _ ->
            {ok, Pid, Id} = open(Uri),
            db_ref(Pid, Uri, Id)
    end;
database(SupPid) when is_pid(SupPid) ->
    db_ref(SupPid).

%% Returns a list of all DBs under the given URI, opens any closed.
databases(Uri) when is_list(Uri) ->
    databases(unicode:characters_to_binary(Uri));
databases(Uri) ->
    UPids = xqldb_db_server:get_open(Uri),
    [
        begin
            DBPath = xqldb_uri:join(Uri, RelU),
            {ok, Pid, Id} = open(DBPath),
            db_ref(Pid, DBPath, Id)
        end
        || RelU <- UPids
    ].

%% Returns if there is an existing DB at URI.
exists(Uri) when is_list(Uri) -> exists(unicode:characters_to_binary(Uri));
exists(Uri) -> xqldb_db_server:exists(Uri).

%% ====================================================================
%% Internal API functions
%% ====================================================================
create_or_open(DBDirectory, Uri) ->
    {ok, Sup} = supervisor:start_link(?MODULE, [DBDirectory, Uri]),
    xqldb_db_server:open(Uri, Sup),
    {ok, Sup}.

%% ====================================================================
%% Behavioural functions
%% ====================================================================

get_pid(Uri) ->
    case xqldb_db_server:info(Uri) of
        {error, _} ->
            error;
        {opening, _, _} ->
            opening;
        {closed, _, _} ->
            closed;
        {open, I, Pid} ->
            {I, Pid}
    end.

init([DBDirectory, Uri]) ->
    % restart all if one goes down
    SupFlags = #{strategy => one_for_all},
    NewOpen =
        case filelib:is_dir(filename:join(DBDirectory, "ind")) of
            true -> open;
            false -> new
        end,
    Strct = child_map(structure, xqldb_structure_index, [NewOpen, DBDirectory, ?STRUCT]),
    Names = child_map(names, xqldb_name_table, [NewOpen, DBDirectory, ?NAME]),
    Texts = child_map(texts, xqldb_string_table2, [NewOpen, DBDirectory, ?TEXT]),
    Paths = child_map(paths, xqldb_path_table, [NewOpen, DBDirectory, ?PATH, Uri]),
    Ress = child_map(resources, xqldb_resource_table, [NewOpen, DBDirectory, ?RESOURCES]),
    Index = child_map(index, ?INDEX, [DBDirectory ++ "/ind"]),
    PIndx = child_map(pindex, ?PINDEX, [
        DBDirectory ++ "/emp",
        [{spawn_opt, [{fullsweep_after, 50}]}]
    ]),
    Qry = child_map(queries, xqldb_query_server, []),

    {ok, {SupFlags, [Strct, Names, Texts, Paths, Ress, Index, PIndx, Qry]}}.

%% ====================================================================
%% Internal functions
%% ====================================================================

child_map(Id, Module, Args) ->
    #{
        id => Id,
        %shutdown  => 1000,
        shutdown => brutal_kill,
        start => {Module, start_link, Args},
        modules => [Module]
    }.

db_ref(SupRef) ->
    Children = supervisor:which_children(SupRef),
    get_pid_tids(Children, #{db_name => SupRef}).

db_ref(SupRef, Uri, Id) ->
    Children = supervisor:which_children(SupRef),
    get_pid_tids(Children, #{
        db_id => Id,
        db_name => SupRef,
        db_uri => Uri
    }).

get_pid_tids([], Map) -> Map;
get_pid_tids([{Id, Pid, _, _} | T], Map) -> get_pid_tids(T, Map#{Id => Pid}).
