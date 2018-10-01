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

-include_lib("kernel/include/logger.hrl").

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

-define(BSZ,13).
-define(BUSZ,104).

-define(dbg(A,B),?LOG_DEBUG("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(info(A,B),?LOG_INFO("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(trace(A,B),io:format("~p: ~p~n",[A,B])).




-record(xqAtomicValue,
        {
         type  = undefined :: atom(),
         value = undefined :: term() | []
        }).
-record(xqNode, {
      doc   :: pid() | term(),
      node  :: [integer()] | binary()
   }).

-define(IS_LOCAL(Ref), erlang:node(Ref) == erlang:node()).

-define(ATTS, "attr").
-define(ATT_TABLE(Database), {Database, ?ATTS}).
-define(ATT_TABLE_P(Database), maps:get(attrs, Database)).

-define(TEXT, "text").
-define(TEXT_TABLE(Database), {Database, ?TEXT}).
-define(TEXT_TABLE_P(Database), maps:get(texts, Database)).

-define(NAME, "name").
-define(NAME_TABLE(Database), {Database, ?NAME}).
-define(NAME_TABLE_P(Database), maps:get(names, Database)).

-define(NMSP, "nmsp").
-define(NMSP_TABLE(Database), {Database, ?NMSP}).
-define(NMSP_TABLE_P(Database), maps:get(namespaces, Database)).

-define(NS_NODE, "nss").
-define(NS_NODE_TABLE(Database), {Database, ?NS_NODE}).
-define(NS_NODE_TABLE_P(Database), maps:get(ns_nodes, Database)).

-define(STRUCT, "struct").
-define(STRUCT_INDEX(Database), {Database, ?STRUCT}).
-define(STRUCT_INDEX_P(Database), maps:get(structure, Database)).

-define(PATH, "path").
-define(PATH_TABLE(Database), {Database, ?PATH}).
-define(PATH_TABLE_P(Database), maps:get(paths, Database)).

-define(JSON, json).
-define(JSON_TABLE(Database), {Database, ?JSON}).
-define(JSON_TABLE_P(Database), maps:get(json, Database)).

-define(NODES, nodes).
-define(NODE_TABLE(Database), {Database, ?NODES}).
-define(NODE_TABLE_P(Database), maps:get(nodes, Database)).

-define(RESOURCES, res).
-define(RESOURCES_TABLE(Database), {Database, ?RESOURCES}).
-define(RESOURCES_TABLE_P(Database), maps:get(resources, Database)).

-define(DBURI(Database), maps:get(db_uri, Database)).
-define(DBNAME(Database), maps:get(db_name, Database)).
-define(DBLOCK(Database), maps:get(db_lock, Database)).

-type res_type() :: xml | json | res | item | link.

-type(name_rec() ::
   {
    Id::non_neg_integer(),
    {Local::binary(), Prefix::binary()}
   } |
   {
    {Local::binary(), Prefix::binary()},
    Count::non_neg_integer(),
    Id::non_neg_integer()
   }).

-type(string_rec() ::
   {
    % phash and pigeon-hole int
    Id::non_neg_integer(), 
    % binary value of prefix and loc in heap file for large values
    Value::binary() | 
      {Prefix::binary(),Pos::non_neg_integer(),Len::non_neg_integer()},
    TypedVal::string | {int, integer()} | {dbl, float()}
   }).

-type(namespace_idx() ::
   {
    Pos::non_neg_integer(),                           % pre of element
    Ns::[{N::non_neg_integer(),P::non_neg_integer()}],% list of ns and px ids
    [namespace_idx()]                                 % sub-elements
   } |
   {
    Pos::non_neg_integer(),
    Ns::[{N::non_neg_integer(),P::non_neg_integer()}]
   }).


-type(temp_state() ::
   #{name    => binary(),  % name of the DB, also absolute path
     table   => binary(),  % positional binary with nodes
     strings => pid(), % lookup table for unique string values
     names   => pid(), % table for element names
     atts    => pid(), % table for attribute names
     paths   => [path()],  % aggregated paths for all documents
     docs    => ets:tid(), % doc uri -> position in table
     res     => ets:tid(), % store for resources
     info    => map(),     % any statistic infos
     open    => [pid()], % list of processes reading
     waiting => [any()]    % list of commands waiting to respond
    }).

-type(path() :: 
   #{kind   => atom(),
     name   => non_neg_integer(),                 % name id
     nmsp   => non_neg_integer(),                 % namespace id
     count  => non_neg_integer(),                 % occurances in DB
     type   => string | integer | double | empty, % type every value can cast to
     leaf   => boolean(),                         % every occurence is leaf
     vals   => [{binary(),non_neg_integer()}],    % [{string, count}]
     child  => [path()]                           % list of child paths
    }
).


%% String Table State Object
%% ========================== 
%% #{heap_file => HeapFile,
%%   indx_file => IndxFile,
%%   leaf_file => LeafFile,
%%   indx_log  => IndxLogF,
%%   leaf_log  => LeafLogF,
%%   head_log  => HeadLogF,
%%   header    => Header,
%%   level_1   => Level1,
%%   level_2   => #{},
%%   leaves    => #{},
%%   cache     => xqldb_kv_cache:new(),
%%   next_heap => NextHeap,
%%   next_indx => NextIndx,
%%   next_leaf => NextLeaf
%%  }.






