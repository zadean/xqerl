%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implements namespace http://xqerl.org/modules/database

-module(xqerl_mod_db).

-include("xqerl.hrl").

-define(NS,<<"http://xqerl.org/modules/database">>).
-define(PX,<<"db">>).

-define(XL,<<"http://www.w3.org/2012/xquery">>).
-define(ND,<<"updating">>).

-'module-namespace'({?NS,?PX}).
-variables([]).
-functions([
 {{qname, ?NS, ?PX, <<"put">>}, 
  {seqType, 'empty-sequence', zero}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'put', 3}, 2, 
  [{seqType, item, one_or_many},{seqType, 'xs:string', one}]},
 {{qname, ?NS, ?PX, <<"link">>}, 
  {seqType, 'empty-sequence', zero}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'link_', 3}, 2, 
  [{seqType, 'xs:string', one},{seqType, 'xs:string', one}]},
 {{qname, ?NS, ?PX, <<"get">>}, 
  {seqType, item, one}, [], 
  {'get_', 2}, 1, 
  [{seqType, 'xs:string', one}]},
 {{qname, ?NS, ?PX, <<"delete">>},
  {seqType, 'empty-sequence', zero}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'delete', 2}, 1, 
  [{seqType, 'xs:string', one}]},
 {{qname, ?NS, ?PX, <<"delete-collection">>},
  {seqType, 'empty-sequence', zero}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'delete', 2}, 1, 
  [{seqType, 'xs:string', one}]}
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([put/3,
         link_/3,
         get_/2,
         delete/2,
         delete_collection/2
        ]).


put(Ctx, [Item], Uri) ->
    put(Ctx, Item, Uri);
put(Ctx, #{nk := _} = Node, Uri) ->
    xqerl_mod_fn:put(Ctx, Node, Uri);
put(#{'base-uri' := BaseUri0} = Ctx, Item, Uri0) -> 
    Uri = xqerl_types:value(Uri0),
    BaseUri = xqerl_types:value(BaseUri0),
    AbsUri = resolve_uri(BaseUri, Uri),
    {DbUri, Name} = xqldb_uri:split_uri(AbsUri),
    DB = xqldb_db:database(DbUri),
    do_put(Ctx, Item, DB, Name).

do_put(Ctx, Item, DB, Name) when is_binary(Item) ->
    xqerl_update:add(Ctx, {put, text, Item, DB, Name});
do_put(Ctx, #xqAtomicValue{type = StrType, value = Item}, DB, Name) 
  when ?xs_string(StrType) ->
    xqerl_update:add(Ctx, {put, text, Item, DB, Name});
do_put(Ctx, #xqAtomicValue{type = BinType,
                           value = Item}, DB, Name) 
  when BinType =:= 'xs:base64Binary';
       BinType =:= 'xs:hexBinary' ->
    xqerl_update:add(Ctx, {put, raw, Item, DB, Name});
do_put(Ctx, Items, DB, Name) when is_list(Items) ->
    _ = [throw_error(node) || #{nk := _} <- Items],
    xqerl_update:add(Ctx, {put, item, Items, DB, Name});
do_put(Ctx, Item, DB, Name) ->
    xqerl_update:add(Ctx, {put, item, Item, DB, Name}).

link_(Ctx, [Item], Uri) ->
    link_(Ctx, Item, Uri);
link_(#{'base-uri' := BaseUri0} = Ctx, Item, Uri0) -> 
    Uri = xqerl_types:value(Uri0),
    BaseUri = xqerl_types:value(BaseUri0),
    AbsUri = resolve_uri(BaseUri, Uri),
    {DbUri, Name} = xqldb_uri:split_uri(AbsUri),
    DB = xqldb_db:database(DbUri),
    do_link(Ctx, Item, DB, Name).

do_link(Ctx, Filename, DB, Name) ->
    xqerl_update:add(Ctx, {put, link, Filename, DB, Name}).

get_(#{'base-uri' := BaseUri0} = Ctx, Uri0) ->
    Uri = xqerl_types:value(Uri0),
    BaseUri = xqerl_types:value(BaseUri0),
    AbsUri = resolve_uri(BaseUri, Uri),
    xqldb_dml:select(Ctx, AbsUri).


delete(#{'base-uri' := BaseUri0,
          trans      := Agent} = Ctx, Uri0) -> 
    Uri = xqerl_types:value(Uri0),
    BaseUri = xqerl_types:value(BaseUri0),
    AbsUri = resolve_uri(BaseUri, Uri),
    {DbUri, Name} = xqldb_uri:split_uri(AbsUri),
    #{db_name := DbPid} = DB = xqldb_db:database(DbUri),
    xqerl_update:add(Ctx, {delete, item, {DB, Name}}).

delete_collection(#{'base-uri' := BaseUri0,
                    trans      := Agent} = Ctx, Uri0) -> 
    Uri = xqerl_types:value(Uri0),
    BaseUri = xqerl_types:value(BaseUri0),
    AbsUri = resolve_uri(BaseUri, Uri),
    DBs = xqldb_db:databases(AbsUri),
    Locks = [{[DbPid, write], write} || 
             #{db_name := DbPid} <- DBs],
    locks:lock_objects(Agent, Locks),
    F = fun(DB) ->
               xqerl_update:add(Ctx, {delete, all, DB})
        end,
    ok = lists:foreach(F, DBs),
    [].

resolve_uri(BaseUri, Uri) ->
    try 
        xqerl_lib:resolve_against_base_uri(BaseUri, Uri)
    catch
        _:_ ->
            throw_error(bad_uri, Uri)
    end.

throw_error(bad_uri, Uri) ->
    E = #xqError{name = #qname{namespace = ?NS, 
                               prefix = ?PX, 
                               local_name = <<"invalid-uri">>},
                 description = <<"Not a valid lexical representation of the xs:anyURI type">>,
                 value = Uri},
    ?err(E).

throw_error(node) ->
    E = #xqError{name = #qname{namespace = ?NS, 
                               prefix = ?PX, 
                               local_name = <<"node-sequence">>},
                 description = <<"Nodes are not allowed in mixed sequences.">>},
    ?err(E).


