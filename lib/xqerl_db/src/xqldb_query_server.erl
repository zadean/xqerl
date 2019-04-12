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

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

-define(STALE, 60000).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0,
         sweep/1,
         get/4,
         put/5]).


start_link() ->
   {ok, Pid} = gen_server:start_link(?MODULE, [], []),
   sweep(Pid),
   {ok, Pid}.

%% do a sweep of the cache, clearing out old stuff
sweep(Server) ->
   Now = erlang:system_time(),
   Then = Now - ?STALE,
   gen_server:cast(Server, {sweep, Then}),
   timer:apply_after(?STALE, ?MODULE, ?FUNCTION_NAME, [Server]),
   ok.

% try to get the ets table id for this doc/query, return undefined if not there.
get(Server, DocId, InPathId, Steps) ->
   gen_server:call(Server, {get, DocId, InPathId, Steps}).

put(Server, DocId, InPathId, Steps, Results) ->
   gen_server:call(Server, {put, DocId, InPathId, Steps, Results}).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init([]) ->
   Tab = ets:new(?MODULE, []),
   {ok, #{tab => Tab}}.


handle_call({put, DocId, InPathId, Steps, Results}, _, #{tab := Tab} = State) ->
   Key = {DocId, InPathId, Steps},
   Now = erlang:system_time(),
   _ = ets:insert(Tab, {Key, Results, Now}),
   %io:format("~p~n", [{?LINE, Now}]),
   {reply, ok, State};
   
handle_call({get, DocId, InPathId, Steps}, _, #{tab := Tab} = State) ->
   Key = {DocId, InPathId, Steps},
   Now = erlang:system_time(),
   Reply = case ets:lookup(Tab, Key) of
      [] ->
         undefined;
      [{_, undefined, _}] ->
         undefined;
      [{_, T, _}] ->
         %io:format("~p~n", [{?LINE, T}]),
         ets:update_element(Tab, Key, {3, Now}),
         T
   end,
   {reply, Reply, State};
handle_call(_Request, _From, State) ->
   Reply = ok,
   {reply, Reply, State}.

handle_cast({sweep, Then}, #{tab := Tab} = State) ->
   MS = [{{'$1','$2','$3'},
          [{'<','$3',Then},{'=/=','$3',undefined}],
          [{{'$1','$2'}}]}],
   ToDel = ets:select(Tab, MS),
   Del = fun({K, T}) ->
               ets:delete(T),
               ets:insert(Tab, {K, undefined, undefined})
         end,               
   ok = lists:foreach(Del, ToDel),
   {noreply, State};
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







%% should be able to save queries similarly to RDBMS 
% first time a query comes into a DB, it is analyzed and then cached somewhere. 
% Then following queries for the cached statement use the cached version.
% think 'cursor' views in other DBs
% what is cached is a fun/1 that takes the context node.
% this should all make the analysis phase rather cheap for any given node.
% also, statistics can be updated, meaning that the cache is dropped and rebuilt
% the next time each statement is run. this adds some overhead after a 
% statistics run, but also makes for a smaller cache and better plans later.

%%% XXX
%% path statements in `for` loops should cache results for all items in list
%% grouped by item id. then use a map to find the results for each id
% document has path []  
%% predicates can function the same way. The predicate runs first, and filters
% the actual items that could match. A predicate should be smaller or the
% same size as the orignal list.
%% where statements act as predicates on the variable tuple. See if they
% can also be used as a predicate


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

%%% CARDINALITY-COST from AXIS
%% ancestor          : depth - 1
%% ancestor-or-self  : depth
%% attribute         : count
%% child             : count
%% descendant        : count
%% descendant-or-self: count
%% following         : all node count - id (last)
%% following-sibling : sibling
%% parent            : count
%% preceding         : id (last)
%% preceding-sibling : sibling
%% self              : 1

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
% paths statement should be list of {axis, node-kind, node-name, [filters (on built items)]}
% initial function is fn(Nodes, PathList)

%% think RDBMS cursor with binding varaibles

%%% PATH ANALYSIS
%% path analysis gives a list of path statments, each with reference to each other
% this can be used to find all path ids that will occur.
% each sub-selection becomes a fun that uses the prefix from the original node
% and the known path as a filter.
%% each fun can be created when the first nodes are selected, then passed around 
% as variables when needed.
%% single attribute on unknown node can be select nodeid len + 1, where att
% multiple att for same node can all be selected at once


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
% makes each data access iterator do append joins in document-order

%% 1. get all path IDs that can point to the nodes, the count of paths might be high...
%% 2. do an iterator join on selection of every path, this gives node ids and paths

%% predicates with paths... multiple selections of node ids, joined at the returned node id
%% path is LHS, Path + Pred is RHS
%% /a/b/c[d] == 
%% {a,b,c} + {a,b,c,d} = all c from first where c == c from second (common prefix)

%% /a/b/c == [{_,a},{_,b},{_,c}]
%% /a//c  == [{_,a}|_] where lists:last() = c
%% /a//b/c  == [{_,a}|_] where ends with [{_,b},{_,c}]


%% logical query transformation == static-time full path resolution

% Path unknown == hard-way, path known == easy way  (path knowledge happens at static time)
% paths hidden in function are done the hard way unless can be easily found statically

% perhaps, build nodes after a flwor statement?? once all else is unknown
% they will most-likely be used in constructors anyway...

%% try to use the `return` portion as the driving factor with path expressions.

%% path on variable used in a for expression is grouped at the level of the for variable
%% predicates are grouped at level of the context item

% imagine a tree of functions, each calling callbacks with each tuple
% data access iterators can be handed to functions, each doing something
% and then calling other functions at the end, or returning....

% a `for` or `let` statement that is a path with no predicate is equal to just 
% the path id for follow on expressions

% an unfiltered `for` with follow-on paths, means pull all at the follow-on 
% paths, group by variable path depth
% caveate here is if there is a where filtering the `for` path statement
% this can mean pulling in a LOT of data when only a small portion is needed.
%  Maybe, for now, allow this to suck, and force the programmer to put this in
%  a predicate?

% truly need a FLWOR re-write of path statements to reverse lookups on 
% filtered results

% TODO figure out how to put `where` statements in a predicate, if possible
% conditional statements in a where are split into two `let` statements.

% a filtered `for` with follow on paths, means pull all the ids for the loop 
% make a function for each follow on that takes the ID as a parameter

% if nodes are collection, split all by DB, then doc
% function returned from each access by the query-server could start:
% 1. get node path from input node
% 2. check if path is cached for this db (if not get it)
% 3. add new path/s to this path
% 4. check cost for the statement
% 5. do which ever is cheapest (path -> structure, structure -> path, value -> path, etc.)
% 6. return node list as iterator, also put the returned nodes in record-format.
% 
% ** calling process can shoot off as many calls it needs at once.
%     then loop all those calls to build the lists.

%% in-mem nodes also go through the fun-making process, only these functions
% take the node tree and return whatever is needed by traversing the tree.
% the functions made here are done in the calling process, not a server.


%% the calling process has to keep the path function for each call to the same DB, for the same path (caching)
% input may not be sorted, should be before first path statement
% these calls should be done in parallel accross different DBs
% a query should know if it is handling collection calls, then it can split the 
% queries in static time, or add a DB split function when nodes are selected
% a query may also know that all nodes are coming from only one location, if
% that is the case, simplify everything.


% making dynamic funs is easy, use a map of all values and use the map as the 
% match out.

% path analysis part, get all paths that can answer a query from all locations
%  example, all paths that when given a child with name N answer the query.
%  this list of all paths is put in a map and used in a fun as the match
% path 1,2,3 can answer .//x then #{1 => x, 2 => x, 3 => x}
% fun(Path) when is_map_key(Path, Map) -> NewPath; (_) -> [] end.
% could make this fun for all axes and names... 




%%% NODEID from AXIS
%% ancestor          : split up of current ID
%% ancestor-or-self  : split up of current ID, plus self 
%% attribute         : ID longer by one position and is attribute, element has att count in Bin
%% child             : ID longer by one position and is NOT attribute
%% descendant        : All IDs in Range self and self + 1 @ last position non-inclusive 
%% descendant-or-self: descendant plus own ID
%% following         : ID greater than self, self not prefix
%% following-sibling : ID same length, same prefix(len - 1), less than ID
%% parent            : prefix(len - 1)
%% preceding         : ID less than self, not ancestor
%% preceding-sibling : ID same length, same prefix(len - 1), greater than ID
%% self              : ID




%% path statement using node id: find the 'highest' path expression
% meaning the closest to the root of the tree. Then go get all the nodes...
% use that list as the base for the following steps one-by-one
% this could suck, but that is likely the fault of crappy queries and not
% having crazy path rewrite optimizations...

% queries can use the structure index if the list of paths is small.
% also structure queries should only happen with simple forward axes (or maybe parent)
% where the base node-id can be filtered on.
