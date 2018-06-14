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
-module(xqerl_db).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([install/1]).
-export([load/0]).

install(Nodes) ->
   _ = application:stop(mnesia),
   ok = mnesia:delete_schema(Nodes),
   ok = mnesia:create_schema(Nodes),
   application:start(mnesia),
   {atomic,ok} = mnesia:create_table(
                   xqldb_namespace,
                   [{attributes, record_info(fields, xqldb_namespace)},
                    {disc_copies, Nodes},
                    {index, [#xqldb_namespace.id]}
                   ]),
   {atomic,ok} = mnesia:create_table(
                   xqldb_name,
                   [{attributes, record_info(fields, xqldb_name)},
                    {disc_copies, Nodes},
                    {index, [#xqldb_name.id]}
                   ]),
   {atomic,ok} = mnesia:create_table(
                   xqldb_counter,
                   [{attributes, record_info(fields, xqldb_counter)},
                    {disc_copies, Nodes}
                   ]),
   {atomic,ok} = mnesia:create_table(
                   xqldb_doc,
                   [{attributes, record_info(fields, xqldb_doc)},
                    {disc_copies, Nodes}
                   ]),
   {atomic,ok} = mnesia:create_table(
                   xqldb_res,
                   [{attributes, record_info(fields, xqldb_res)},
                    {disc_copies, Nodes}
                   ]),
   {atomic,ok} = mnesia:create_table(
                   xqldb_collection,
                   [{attributes, record_info(fields, xqldb_collection)},
                    {disc_copies, Nodes}
                   ]),
   ok.


%% ====================================================================
%% Internal functions
%% ====================================================================


load() ->
   [load(M) || {M,_} <- code:all_loaded()].


load(Mod) ->
   {Mod, Bin, File} = code:get_object_code(Mod), 
   {_, _} = rpc:multicall(nodes(), code, load_binary, [Mod, File, Bin]),
   ok.

