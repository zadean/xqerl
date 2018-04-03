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
% node kinds
-define(fragment, 7). % non-conformant xml
-define(document, 0).
-define(element,  1).
-define(attribute,2).
-define(namespace,3).
-define(proc_inst,4).
-define(comment,  5).
-define(text,     6).

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


-define(dbg(A,B),io:format("~p:~p(~p): ~p ~p~n",[?MODULE,?FUNCTION_NAME,?LINE,A,B])).





-record(xqAtomicValue,
        {
         type  = undefined :: atom(),
         value = undefined :: term() | []
        }).
-record(xqNode, {
      doc   :: pid() | term(),
      node  :: [integer()] | binary()
   }).
