
-module(xqldb_idx_mi).

-include("xqerl_db.hrl").

-type(index() :: path | node | path_doc | namespace).
-type(key() :: term()).
-type(value() :: any()).
-type(posting() :: {Index :: index(),
                    Key   :: key(),
                    Value :: value()}).

%% set {node, {DocId, NodeId}, {NodeBin, PathId} }

%% bag {path, {DocId, PathId}, NodeId}
%% bag {namespace, {DocId, NodeId}, {UriId, Prefix}}
%% bag {path_doc, PathId, DocId}

% Props = [{b, NodeBin},
%          {d, DocId},
%          {p, PathId}]
%{doc,  DocId, xqldb_nodes:trunc_id(NodeId), NodeId, Props, Timestamp}

%{path, DocId, PathId,                       NodeId, Props, Timestamp},
%{namespace, DocId, NodeId, {NodeId, UriId, Prefix}, [], Timestamp}
%{path, doc, PathId, DocId, [], Timestamp}

%Timestamp = erlang:system_time(microsecond)

% node to be returned 
-type db_node() :: {NodeId :: [integer()], 
                    [{b, NodeBin :: binary()} |
                     {d, DocId   :: term()} |
                     {p, PathId  :: integer()}]}.

-define(MAX_ITER, 800).

%% API 
-export([start_link/1,
         stop/1,
         index/2,
         delete/2,
         lookup_namespaces/3,
         lookup_tree/3,
         lookup_node/3,
         lookup_children/3,
         lookup_following/3,
         lookup_preceding/3,
         lookup_path/3
         
         ]).

%% Internal 
-export([]).

%% ====================================================================
%% API functions
%% ====================================================================

%% @doc Start a new server.
-spec start_link(string()) -> {ok, Pid::pid()} | ignore | {error, Error::any()}.
start_link(Args) -> 
   merge_index:start_link(Args).   

%% @doc Stop the server.
-spec stop(db() | pid()) -> ok.
stop(Server) when is_pid(Server) ->
   gen_server:stop(Server);
stop(#{index := Server}) ->
   gen_server:stop(Server).


%% @doc Returns a map of #{Prefix => Uri} for a given node.
-spec lookup_namespaces(db(), term(), term()) -> map().
lookup_namespaces(#{index := Index,
                    names := NmspMap},  DocId, NodeId) ->
   List = merge_index:lookup_sync(Index, namespace, DocId, NodeId, true),
   List1 = [begin
               #{UriId := Ns} = NmspMap,
               {Prefix, Ns}
            end || {{_, UriId, Prefix},_} <- List],
   maps:from_list(List1).

%% @doc Index `Postings'.
-spec index(db(), [posting()]) -> ok.
index(#{index := Server,
        pindex := PServer}, Postings) -> 
   Timestamp = erlang:system_time(microsecond),
   
   {SetPostings, BagPostings} = split_transform_postings(Postings, Timestamp, [], []),
   _ = ?PINDEX:batch(PServer, SetPostings),
   _ = merge_index:index(Server, BagPostings),
   ok.

%% @doc Delete Doc from Index.
-spec delete(db(), DocId :: term()) -> ok.
delete(DB, DocId) -> 
   maybe_delete_doc_ref(DB, DocId).

-spec lookup_node(db(), DocId :: term(), NodeId :: [integer()]) -> [db_node()].
lookup_node(#{pindex := Server}, DocId, NodeId) ->
   Key = sext:encode({DocId, NodeId}),
   case ?PINDEX:get(Server, Key) of
      not_found ->
         [];
      {ok, Value} ->
         {NodeBin, PathId} = binary_to_term(Value),
         [{NodeId, [{b, NodeBin}, {d, DocId}, {p, PathId}]}]
   end.

%% @doc Lookup a node`s children 
-spec lookup_children(db(), DocId :: term(), NodeId :: [integer()]) -> [db_node()].
lookup_children(#{pindex := Server}, DocId, NodeId) ->
   Bp = length(NodeId) + 1,
   Prefix = sext:prefix({DocId, NodeId ++ ['_']}),
   FilterMap = 
      fun({Key, Value}) when Bp == 1 ->
            {_, NodeId0} = sext:decode(Key),
            {NodeBin, PathId} = binary_to_term(Value),
            IsText = xqldb_nodes:is_text('_', NodeBin),
            if IsText ->
                  false;
               true ->
                  {true, {NodeId0, [{b, NodeBin},
                                    {d, DocId}, 
                                    {p, PathId}]}}
            end;
         ({Key, Value}) ->
            {_, NodeId0} = sext:decode(Key),
            {NodeBin, PathId} = binary_to_term(Value),
            case length(NodeId0) of
               Bp ->
                  IsAtt = xqldb_nodes:is_attribute({'_','_'}, '_', NodeBin),
                  if IsAtt ->
                        false;
                     true ->
                        {true, {NodeId0, [{b, NodeBin}, 
                                          {d, DocId}, 
                                          {p, PathId}]}}
                  end;
               _ ->
                  false
            end
      end,
   ?PINDEX:prefix(Server, Prefix, FilterMap).

-spec lookup_tree(db(), DocId :: term(), NodeId :: [integer()]) -> [db_node()].
lookup_tree(#{pindex := Server}, DocId, NodeId) ->
   Prefix = sext:prefix({DocId, NodeId ++ ['_']}),
   FilterMap = 
      fun({Key, Value}) ->
            {_, NodeId0} = sext:decode(Key),
            {NodeBin, PathId} = binary_to_term(Value),
            {true, {NodeId0, [{b, NodeBin},
                              {d, DocId},
                              {p, PathId}]}}
      end,
   ?PINDEX:prefix(Server, Prefix, FilterMap).

-spec lookup_following(db(), DocId :: term(), NodeId :: [integer()]) -> [db_node()].
lookup_following(#{pindex := Server}, DocId, NodeId) ->
   {_Low, High} = get_node_id_range(NodeId),
   Prefix = sext:prefix({DocId, '_'}),
   FilterMap = 
      fun({Key, Value}) ->
            {_, NodeId0} = sext:decode(Key),
            if NodeId0 >= High ->
                  {NodeBin, PathId} = binary_to_term(Value),
                  IsAtt = xqldb_nodes:is_attribute({'_','_'}, '_', NodeBin),
                  if IsAtt -> false;
                     true ->
                        IsText = xqldb_nodes:is_text('_', NodeBin), % block document text
                        if IsText andalso length(NodeId0) == 1 ->
                              false;
                           true ->
                              {true, 
                               {NodeId0, [{b, NodeBin},
                                          {d, DocId},
                                          {p, PathId}]}}
                        end
                  end;
               true ->
                  false
            end            
      end,
   ?PINDEX:prefix(Server, Prefix, FilterMap).

-spec lookup_preceding(db(), DocId :: term(), NodeId :: [integer()]) -> [db_node()].
lookup_preceding(#{pindex := Server}, DocId, NodeId) ->
   AnsIds = xqldb_nodes:ids_to_root(NodeId),
   Low = sext:encode({DocId, []}),
   High = sext:encode({DocId, NodeId}),
   % key_range record from emoji
   Range = {key_range, Low, false, High, false, undefined},
   Filter = fun({K, V}) ->
                  {_, NodeId0} = sext:decode(K),
                  {NodeBin, PathId} = binary_to_term(V),
                  case not xqldb_nodes:is_attribute({'_','_'}, '_', NodeBin) 
                     andalso not lists:member(NodeId0, AnsIds) of
                     false ->
                        false;
                     true ->
                        {true,
                         {NodeId0, [{b, NodeBin},
                                    {d, DocId},
                                    {p, PathId}]}}
                  end
            end,
   ?PINDEX:range(Server, Range, Filter).

-spec lookup_path(db(), DocId :: term(), PathId :: integer()) -> [db_node()].
lookup_path(#{index := Server,
              pindex := NodeServer}, DocId, PathId) ->
   Iter = merge_index:lookup(Server, path, DocId, PathId, true),
   %?dbg("Iter",Iter),
   lookup_node_from_iter(NodeServer, DocId, Iter).



get_node_id_range([]) -> {undefined, undefined};
get_node_id_range(NodeId) ->
   [Last|Rest] = lists:reverse(NodeId),
   High = lists:reverse([(Last + 1) | Rest]),
   {NodeId, High}.


%% ====================================================================
%% Internal functions
%% ====================================================================


maybe_delete_doc_ref(#{index := IndexPid,
                       pindex := PIndexPid} = DB, DocId) ->
   Stamp = erlang:system_time(),
   io:format("~p~n", [{?LINE, erlang:system_time()}]),
   F1 = fun() ->
              %io:format("~p~n", [{?LINE, erlang:system_time()}]),
              Paths = merge_index:range_term(IndexPid, path, DocId, undefined, undefined, both, true),
              ok = delete_index_vals(path, DocId, Paths, IndexPid, Stamp, []),
              ok
        end,
   F2 = fun() ->
              %io:format("~p~n", [{?LINE, erlang:system_time()}]),
              Namespaces = merge_index:range_term(IndexPid, namespace, DocId, undefined, undefined, both, true),
              ok = delete_index_vals(namespace, DocId, Namespaces, IndexPid, Stamp, []),
              F1()
        end,
   F3 = fun() ->
              %io:format("~p~n", [{?LINE, erlang:system_time()}]),
              PathCollect = erlang:spawn(fun() -> 
                                               path_collector(#{})
                                         end),
              MinusCounts = node_delete(PIndexPid, DocId, PathCollect),
              %io:format("~p~n", [{?LINE, erlang:system_time()}]),
              _ = xqldb_structure_index:incr_counts(DB, MinusCounts),
              ok
        end,
   _ = spawn(F2),
   _ = spawn(F3),
   _ = xqldb_query_server:delete(DB, DocId),
   ok.

node_delete(PIndexPid, DocId, PathCollect) ->
   DelPid = erlang:spawn_link(fun() -> delete_collector(PIndexPid) end),
   Fun = fun({K,V}) ->
               DelPid ! K,
               {_, PathId} = binary_to_term(V),
               PathCollect ! {path, PathId},
               false         
         end,
   Prefix = sext:prefix({DocId, '_'}),
   _ = ?PINDEX:prefix(PIndexPid, Prefix, Fun),
   DelPid ! {done, PIndexPid},
   PathCollect ! {done, self()},
   receive {counts, X} -> X end.

delete_collector(PIndex) ->
   delete_collector(PIndex, [], 0).

delete_collector(PIndex, Acc, Cnt) ->
   receive
      Key when is_binary(Key), Cnt > 10000 ->
         ?PINDEX:batch(PIndex, Acc),
         delete_collector(PIndex, [{delete, Key}], 0);
      Key when is_binary(Key) ->
         delete_collector(PIndex, [{delete, Key}|Acc], Cnt + 1);
      {done, PIndex} ->
         ?PINDEX:batch(PIndex, Acc),
         ok
   end.

path_collector(Acc) ->
   receive
      {path, P} ->
         path_collector(maps:update_with(P, fun update_counter/1, 1, Acc));
      {done, Dest} ->
         Dest ! {counts, [{K, -V} || {K,V} <- maps:to_list(Acc)]},
         ok
   after 
      60000 ->
         ok 
   end.

update_counter(Val) -> Val + 1.

delete_index_vals(I, F, List, IndexPid, Stamp, Acc) when length(Acc) > ?MAX_ITER ->
   merge_index:index(IndexPid, Acc),
   delete_index_vals(I, F, List, IndexPid, Stamp, []);
delete_index_vals(I, F, [{T,V,_}|Rest], IndexPid, Stamp, Acc) ->
   New = {I, F, T, V, undefined, Stamp},
   delete_index_vals(I, F, Rest, IndexPid, Stamp, [New|Acc]);
delete_index_vals(I, F, Entries, IndexPid, Stamp, Acc) when is_function(Entries) ->
   delete_index_vals(I, F, Entries(), IndexPid, Stamp, Acc);
delete_index_vals(_, _, [], IndexPid, _, Acc) ->
   merge_index:index(IndexPid, Acc),
   ok.


%% Transform and split postings into {SetPostings, BagPostings}
split_transform_postings([{node, Key, Value}|Ps], 
                         Timestamp, SetAcc, BagAcc) ->
   Set = {put, Key, Value},
   split_transform_postings(Ps, Timestamp, [Set|SetAcc], BagAcc);
split_transform_postings([{path, {DocId, PathId}, NodeId}|Ps], 
                         Timestamp, SetAcc, BagAcc) ->
   Bag = {path, DocId, PathId, NodeId, [], Timestamp},
   split_transform_postings(Ps, Timestamp, SetAcc, [Bag|BagAcc]);
split_transform_postings([{namespace, {DocId, NodeId}, {UriId, Prefix}}|Ps], 
                         Timestamp, SetAcc, BagAcc) ->
   Bag = {namespace, DocId, NodeId, {NodeId, UriId, Prefix}, [], Timestamp},
   split_transform_postings(Ps, Timestamp, SetAcc, [Bag|BagAcc]);
split_transform_postings([{path_doc, PathId, DocId}|Ps], 
                         Timestamp, SetAcc, BagAcc) ->
   Bag = {path, doc, PathId, DocId, [], Timestamp},
   split_transform_postings(Ps, Timestamp, SetAcc, [Bag|BagAcc]);
split_transform_postings([], _, SetAcc, BagAcc) ->
   {SetAcc, BagAcc}.


lookup_node_from_iter(_, _, []) -> [];
lookup_node_from_iter(NodeServer, DocId, [{NodeId, _}|T]) ->
   Key = sext:encode({DocId, NodeId}),
   case ?PINDEX:get(NodeServer, Key) of
      not_found ->
         ?dbg("Key not found! ", Key),
         lookup_node_from_iter(NodeServer, DocId, T);
      {ok, Value} ->
         {NodeBin, PathId} = binary_to_term(Value),
         [{NodeId, [{b, NodeBin}, {d, DocId}, {p, PathId}]} | 
            lookup_node_from_iter(NodeServer, DocId, T)]
   end;
lookup_node_from_iter(NodeServer, DocId, Iter) when is_function(Iter) ->
   lookup_node_from_iter(NodeServer, DocId, Iter()).


   
   