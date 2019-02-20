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

%% @doc @todo Future home of xqldb_query_server.
%% server for compiling XPath statements to use indexes, etc.


-module(xqldb_query_server).
-behaviour(gen_server).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2, terminate/2, code_change/3]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([]).


   

%% ====================================================================
%% Behavioural functions
%% ====================================================================
-record(state, {}).

init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    Reply = ok,
    {reply, Reply, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.


%% ====================================================================
%% Internal functions
%% ====================================================================


%% Given a unique list of namespaces
%% return a map of namespace => namespace ID
get_all_namespaces([], _) -> #{};
get_all_namespaces(List, Server) -> 
   maps:from_list(
      [{Ns, Id} ||
       Ns <- List,
       Id <- [xqldb_namespace_table:lookup(Server, Ns)]
       ]).

%% Given a unique list of name IDs
%% return a map of local-name => name IDs
get_all_names([], _) -> #{};
get_all_names(List, Server) -> 
   [xqldb_namespace_table:lookup(Server, Id) ||
    Id <- List].

%%% PATH from AXIS
%% ancestor          : all paths to root
%% ancestor-or-self  : all paths to root, plus self path
%% attribute         : current path , plus {att, Ns, Ln}
%% child             : current path plus one, can limit by node type
%% descendant        : all with prefix of current path
%% descendant-or-self: all with prefix of current path, plus self
%% following         : ALL document paths, except root! can maybe find by name
%% following-sibling : all with prefix of current path minus last, with same length
%% parent            : current path minus last
%% preceding         : ALL document paths, except root! can maybe find by name
%% preceding-sibling : all with prefix of current path minus last, with same length
%% self              : current path

%%% NODEID from AXIS
%% ancestor          : split up of current ID
%% ancestor-or-self  : split up of current ID, plus self 
%% attribute         : ID longer by one position and is attribute, element has att count in Bin
%% child             : ID longer by one position and is NOT attribute
%% descendant        : All IDs in Range self and self + 1 @ last position non-inclusive 
%% descendant-or-self: descendant plus own ID
%% following         : ID greater than self, self not prefix, not ancestor
%% following-sibling : ID same length, same prefix(len - 1), less than ID
%% parent            : prefix(len - 1)
%% preceding         : ID less than self, not ancestor
%% preceding-sibling : ID same length, same prefix(len - 1), greater than ID
%% self              : ID

%% need to make decision on whether to use path of node id
%% known path from root, or descendant skips == use PATH because it is known
%% following/preceding NEVER path, but could be in filter when name known
%% PATH can be used in `lists:member` filter from node id  

%% API
% paths statement should be list of {axis, type, name, [filters]}
% initial function is Node, PathList




% scope     : database or document
% path      : known path to node
% rel_path  : partially known path to node -> causes unions
% node_value: value lookup to node
% doc_value : value lookup to node in document

% all axes can be done using the dewey id
% node name and value id can be in properties of a node record

% index levels : DB and DOC
% fields       : path, str_value, dbl_value, int_value (values are map val to string id)
%                string_id -> node/doc
%                nodes => node_id to node body/type/name/etc.
% node id == [DocId, Path, To, Node] upon build, DBId (Node/Num) prepended to Id

%% collection should return list of {node(), DBs}
%% at collection level, we need to find the documents that could answer the query, 
%% then use the document ids in following queries

%% first focus on document level queries, adding DB layer on top is easy.

%% 1. get all path IDs that can point to the nodes, the count of paths might be high...
%% 2. do an iterator join on selection of every path, this gives node ids and paths

%% predicates with paths... multiple selections of node ids, joined at the returned node id
%% path is LHS, Path + Pred is RHS
%% /a/b/c[d] == 
%% {a,b,c} + {a,b,c,d} = all c from first where c == c from second (common prefix)

%% /a/b/c == [{_,a},{_,b},{_,c}]
%% /a//c  == [{_,a}|_] where lists:last() = c
%% /a//b/c  == [{_,a}|_] where ends with [{_,b},{_,c}]

