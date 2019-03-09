%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
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

-include_lib("kernel/include/logger.hrl").
-include("xqerl_item.hrl").

% node kinds
-define(fragment, 7). % non-conformant xml
-define(document, 0).
-define(element,  1).
-define(attribute,2).
-define(namespace,3).
-define(proc_inst,4).
-define(comment,  5).
-define(text,     6).

-define(att_str,  0).
-define(att_id,   1).
-define(att_idref,2).


-record(xqldb_doc,
        {uri,
         bin}).

-record(xqldb_res,
        {uri,
         bin}).

-record(xqldb_collection,
        {uri,
         uris}).

-record(xqldb_namespace,
        {uri,
         id}).

-record(xqldb_name,
        {name,
         id}).

% for use with mnesia:dirty_update_counter
-record(xqldb_counter,
        {key,
         value}).

%-define(BSZ,13).
%-define(BUSZ,104).

-define(dbg(A,B),?LOG_DEBUG("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(info(A,B),?LOG_INFO("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(trace(A,B),io:format("~p: ~p~n",[A,B])).

-define(IS_LOCAL(Ref), erlang:node(Ref) == erlang:node()).

-define(TEXT, "text").
-define(TEXT_TABLE(Database), {Database, ?TEXT}).
-define(TEXT_TABLE_P(Database), maps:get(texts, Database)).

-define(NAME, "name").
-define(NAME_TABLE(Database), {Database, ?NAME}).
-define(NAME_TABLE_P(Database), maps:get(names, Database)).

-define(NMSP, "nmsp").
-define(NMSP_TABLE(Database), {Database, ?NMSP}).
-define(NMSP_TABLE_P(Database), maps:get(namespaces, Database)).

-define(STRUCT, "struct").
-define(STRUCT_INDEX(Database), {Database, ?STRUCT}).
-define(STRUCT_INDEX_P(Database), maps:get(structure, Database)).

-define(PATH, "path").
-define(PATH_TABLE(Database), {Database, ?PATH}).
-define(PATH_TABLE_P(Database), maps:get(paths, Database)).

-define(JSON, json).
-define(JSON_TABLE(Database), {Database, ?JSON}).
-define(JSON_TABLE_P(Database), maps:get(json, Database)).

-define(RESOURCES, res).
-define(RESOURCES_TABLE(Database), {Database, ?RESOURCES}).
-define(RESOURCES_TABLE_P(Database), maps:get(resources, Database)).

-define(DBURI(Database), maps:get(db_uri, Database)).
-define(DBNAME(Database), maps:get(db_name, Database)).
-define(DBLOCK(Database), maps:get(db_lock, Database)).

-type res_type() :: xml | json | res | item | link.

