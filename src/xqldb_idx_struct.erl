-module(xqldb_idx_struct).
-include("xqerl_db.hrl").


%% ====================================================================
%% API functions
%% ====================================================================
-export([index_doc/5,
         negate/1,
         add/2,
         delta/2,
         prune/1
         ]).

-record(st, {max_index_text_length = 
               element(2,application:get_env(xqerl_db,max_index_text_length)),
             max_index_distinct_value = 
               element(2,application:get_env(xqerl_db,max_index_distinct_value))
             }).

-type entries() :: #{count => integer(),
                     type  => str | dbl | int,
                     entries => entry()}.
-type entry() :: {} | #{binary() => integer()}.
-type children() :: #{count => integer()} | 
                    #{count => integer(),
                      children => 
                        #{element() | attribute() | pi() | text() | comment() =>
                            entries() | children()
                          }
                     }.
-type namespace_id() :: integer().
-type localname_id() :: integer().

-type element()   :: {element,   namespace_id(), localname_id()}.
-type attribute() :: {attribute, namespace_id(), localname_id()}.
-type pi()        :: {pi, localname_id()}.
-type text()      :: text.
-type comment()   :: comment.
-type document()  :: document.

-type index() :: #{document() => children()}.

-export_type([index/0]).


%% Returns the entire structure summary of the given document
-spec 
index_doc(Doc :: binary(), Attributes :: array:array(),
          Text :: binary(), Comment :: binary(),
          Data :: binary()) -> index().
index_doc(?DMTM = Doc, Attributes, Text, Comment, Data) ->
   CurrId = 0,
   ExpSize = (byte_size(Doc) div ?BSZ) - 1,
   {<<>>, ExpSize, Children} = index_doc(Rest, Attributes, Text, Comment, Data, CurrId, #{}, #st{}),
   #{document => 
       #{count => 1,
         children => Children}
    }.

%% Negates all counters in an index. Useful when diff-ing indexes.
-spec 
negate(Idx :: index()) -> index().
negate(Idx) ->
   do_negate_index(Idx).

%% Adds all counters in two indexes when matched. Merges when not.
-spec 
add(Idx1 :: index(), Idx2 :: index()) -> index().
add(Idx1,Idx2) ->
   add_merge_maps(Idx1,Idx2).

%% Returns only the differences between two indexes. Useful when updating
%% an index. Returns diff of Old and New for adding to global index. 
-spec 
delta(Old :: index(), New :: index()) -> index().
delta(Old,New) ->
   NOld = negate(Old),
   NNew = add(NOld, New),
   prune(NNew).

% prune all leaves/branches with 0 counts (tombstones from online updates).
% used with deltas and index cleanups
-spec 
prune(Idx :: index()) -> index().
prune(Idx) ->
   do_prune(Idx).

%% ====================================================================
%% Internal functions
%% ====================================================================

% empty entry
-define(ee, {}).

index_doc(?TXTM, Attributes, Text, Comment, Data, LastId, Map, State) ->
   ThisId = LastId + 1,
   Val = binary_part(Text, __Pos, __Len),
   NewMap = add_text(Val,Map,State),
   case next_depth(Rest) of
      __Dpt ->
         index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
      _ ->
         {Rest, ThisId, NewMap}
   end;

index_doc(?CMTM, Attributes, Text, Comment, Data, LastId, Map, State) ->
   ThisId = LastId + 1,
   Val = binary_part(Comment, __Pos, __Len),
   NewMap = add_comment(Val,Map,State),
   case next_depth(Rest) of
      __Dpt ->
         index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
      _ ->
         {Rest, ThisId, NewMap}
   end;

index_doc(?PINM, Attributes, Text, Comment, Data, LastId, Map, State) ->
   ThisId = LastId + 1,
   Val = binary_part(Data, __Pos, __Len),
   NewMap = add_process_inst(__Ln,Val,Map,State),
   case next_depth(Rest) of
      __Dpt ->
         index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
      _ ->
         {Rest, ThisId, NewMap}
   end;

index_doc(?ELMM, Attributes, Text, Comment, Data, LastId, Map, State) ->
   Key = {element, __Ns, __Ln},
   ThisId = LastId + 1,
   NxtDepth = next_depth(Rest),
   NodeAtts = get_attributes(__Att, ThisId, Attributes),
   AttAdd = fun({N,L,V}, M) ->
                  add_attribute(N, L, V, M, State)
            end,
   case maps:find(Key, Map) of
      {ok, #{count := Cnt,
             children := Children} = Fnd} -> % already there with children
         Children1 = lists:foldl(AttAdd, Children, NodeAtts),
         % first get any children on the stack
         {Rest2,Id2,Children2} = 
           if NxtDepth == __Dpt + 1 ->
                 index_doc(Rest, Attributes, Text, Comment, Data, ThisId, Children1, State);
              true ->
                 {Rest,ThisId,Children1}
           end,
         % now any siblings
         NxtDepth1 = next_depth(Rest2),
         NewMap = Map#{Key :=
                         Fnd#{count := Cnt + 1,
                              children := Children2}
                      },
         if NxtDepth1 == __Dpt -> % sibling
               index_doc(Rest2, Attributes, Text, Comment, Data, Id2, NewMap, State);
            true -> % done
               {Rest2,Id2,NewMap}
         end;
      {ok, #{count := Cnt} = Fnd} -> % already there with no children yet
         if NodeAtts == [] andalso NxtDepth < __Dpt -> % no children, no siblings
               NewMap = Map#{Key := Fnd#{count := Cnt + 1}},
               {Rest,ThisId,NewMap};
            NodeAtts == [] andalso NxtDepth == __Dpt -> % no children, has siblings
               NewMap = Map#{Key := Fnd#{count := Cnt + 1}},
               index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
            NodeAtts == [] andalso NxtDepth == __Dpt + 1 -> % has children, no atts
               {Rest2,Id2,Children2} = index_doc(Rest, Attributes, Text, Comment, Data, ThisId, #{}, State),
               NewMap = Map#{Key := Fnd#{count    := Cnt + 1,
                                         children => Children2}},
               NxtDepth1 = next_depth(Rest2),
               if NxtDepth1 == __Dpt -> % sibling
                     index_doc(Rest2, Attributes, Text, Comment, Data, Id2, NewMap, State);
                  true -> % done
                     {Rest2,Id2,NewMap}
               end;
            NxtDepth == __Dpt -> % has atts, has siblings
               Children1 = lists:foldl(AttAdd, #{}, NodeAtts),
               NewMap = Map#{Key := Fnd#{count := Cnt + 1,
                                         children => Children1}},
               index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
            NxtDepth == __Dpt + 1 -> % has children, has atts
               Children1 = lists:foldl(AttAdd, #{}, NodeAtts),
               {Rest2,Id2,Children2} = index_doc(Rest, Attributes, Text, Comment, Data, ThisId, Children1, State),
               NewMap = Map#{Key := Fnd#{count    := Cnt + 1,
                                         children => Children2}},
               NxtDepth1 = next_depth(Rest2),
               if NxtDepth1 == __Dpt -> % sibling
                     index_doc(Rest2, Attributes, Text, Comment, Data, Id2, NewMap, State);
                  true -> % done
                     {Rest2,Id2,NewMap}
               end;
            true ->
               NewMap = Map#{Key := Fnd#{count := Cnt + 1}},
               {Rest,ThisId,NewMap}
         end;
      error -> % none yet
         if NodeAtts == [] andalso NxtDepth < __Dpt -> % no children, no siblings
               NewMap = Map#{Key => #{count => 1}},
               {Rest,ThisId,NewMap};
            NodeAtts == [] andalso NxtDepth == __Dpt -> % no children, has siblings
               NewMap = Map#{Key => #{count => 1}},
               index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
            NodeAtts == [] andalso NxtDepth == __Dpt + 1 -> % has children, no atts
               {Rest2,Id2,Children2} = index_doc(Rest, Attributes, Text, Comment, Data, ThisId, #{}, State),
               NewMap = Map#{Key => #{count    => 1,
                                      children => Children2}},
               NxtDepth1 = next_depth(Rest2),
               if NxtDepth1 == __Dpt -> % sibling
                     index_doc(Rest2, Attributes, Text, Comment, Data, Id2, NewMap, State);
                  true -> % done
                     {Rest2,Id2,NewMap}
               end;
            NxtDepth == __Dpt -> % has atts, has siblings
               Children1 = lists:foldl(AttAdd, #{}, NodeAtts),
               NewMap = Map#{Key => #{count => 1,
                                      children => Children1}},
               index_doc(Rest, Attributes, Text, Comment, Data, ThisId, NewMap, State);
            NxtDepth == __Dpt + 1 -> % has children, has atts
               Children1 = lists:foldl(AttAdd, #{}, NodeAtts),
               {Rest2,Id2,Children2} = index_doc(Rest, Attributes, Text, Comment, Data, ThisId, Children1, State),
               NewMap = Map#{Key => #{count    => 1,
                                      children => Children2}},
               NxtDepth1 = next_depth(Rest2),
               if NxtDepth1 == __Dpt -> % sibling
                     index_doc(Rest2, Attributes, Text, Comment, Data, Id2, NewMap, State);
                  true -> % done
                     {Rest2,Id2,NewMap}
               end;
            true ->
               NewMap = Map#{Key => #{count => 1}},
               {Rest,ThisId,NewMap}
         end
   end.

%% 
%% after adding self,  
%% next depth can be 
%% more (child), new call with children map, then check for sibling 
%% same (sibling), call with same map as called with (augmented with self)
%% less (done) return rest and map

-define(NEXTDEPTH,<<?tp(_),?dpt(Dpt),_/binary>>).

next_depth(<<>>) -> 0;
next_depth(?NEXTDEPTH) -> Dpt.


get_attributes(4294967295, _ParId, _Attributes) -> []; % -1 32 bit
get_attributes(Att, ParId, Attributes) ->
   case array:get(Att, Attributes) of
      ?ATT = A when __APar == ParId ->
         [transform_att(A)|get_attributes(Att + 1, ParId, Attributes)];
      _ ->
         []
   end.

transform_att(?ATT) ->
   case __AVal of
      {_,V} ->
         {__ANs, __ALn, V};
      V ->
         {__ANs, __ALn, V}
   end.



add_attribute(Namespace, LocalName, Value, ChildrenMap, State) when is_binary(Value) ->
   Key = {attribute, Namespace, LocalName},
   case maps:find(Key, ChildrenMap) of
      {ok, #{type    := Type,
             count   := Count,
             entries := EntriesMap} = Fnd} ->
         case as_type(Type, Value) of
            {Type, _} ->
               EntriesMap1 = add_entry(Value, EntriesMap, State),
               ChildrenMap#{Key := Fnd#{count   := Count + 1,
                                        entries := EntriesMap1}
                           };
            {OType, _} ->
               EntriesMap1 = add_entry(Value, EntriesMap, State),
               ChildrenMap#{Key := Fnd#{type    := OType,
                                        count   := Count + 1,
                                        entries := EntriesMap1}
                           }
         end;
      error ->
         {Type, _} = as_type(int, Value),
         EntriesMap1 = add_entry(Value, #{}, State),
         ChildrenMap#{Key => #{type    => Type,
                               count   => 1,
                               entries => EntriesMap1}
                     }
   end;
add_attribute(Namespace, LocalName, Value, ChildrenMap, State) ->
   add_attribute(Namespace, LocalName, 
                 unicode:characters_to_binary(Value), ChildrenMap, State).


add_process_inst(LocalName, Value, ChildrenMap, State) ->
   Key = {pi, LocalName},
   case maps:find(Key, ChildrenMap) of
      {ok, #{count   := Count,
             entries := EntriesMap} = Fnd} ->
         EntriesMap1 = add_entry(Value, EntriesMap, State),
         ChildrenMap#{Key := Fnd#{count   := Count + 1,
                                  entries := EntriesMap1}
                     };
      error ->
         EntriesMap1 = add_entry(Value, #{}, State),
         ChildrenMap#{Key => #{count   => 1,
                               entries => EntriesMap1}
                     }
   end.

add_text(Value, ChildrenMap, State) ->
   Key = text,
   case maps:find(Key, ChildrenMap) of
      {ok, #{type    := Type,
             count   := Count,
             entries := EntriesMap} = Fnd} ->
         case as_type(Type, Value) of
            {Type, _} ->
               EntriesMap1 = add_entry(Value, EntriesMap, State),
               ChildrenMap#{Key := Fnd#{count   := Count + 1,
                                        entries := EntriesMap1}
                           };
            {OType, _} ->
               EntriesMap1 = add_entry(Value, EntriesMap, State),
               ChildrenMap#{Key := Fnd#{type    := OType,
                                        count   := Count + 1,
                                        entries := EntriesMap1}
                           }
         end;
      error ->
         {Type, _} = as_type(int, Value),
         EntriesMap1 = add_entry(Value, #{}, State),
         ChildrenMap#{Key => #{type    => Type,
                               count   => 1,
                               entries => EntriesMap1}
                     }
   end.

add_comment(Value, ChildrenMap, State) ->
   Key = comment,
   case maps:find(Key, ChildrenMap) of
      {ok, #{count   := Count,
             entries := EntriesMap} = Fnd} ->
         EntriesMap1 = add_entry(Value, EntriesMap, State),
         ChildrenMap#{Key := Fnd#{count   := Count + 1,
                                  entries := EntriesMap1}
                     };
      error ->
         EntriesMap1 = add_entry(Value, #{}, State),
         ChildrenMap#{Key => #{count   => 1,
                               entries => EntriesMap1}
                     }
   end.





%% adds an entry to an entry map.
%% if the entry is too long, or there are too many entries, return empty entry
add_entry(_, ?ee, #st{}) ->
   %?dbg("was empty", true),
   ?ee;
add_entry(Bin, _, #st{max_index_text_length = ML}) when byte_size(Bin) > ML ->
   %?dbg("too long", {ML,Bin}),
   ?ee;
add_entry(Bin, Map, #st{max_index_distinct_value = MV}) ->
   case maps:find(Bin, Map) of
      {ok, Cnt} ->
         Map#{Bin := Cnt  + 1};
      error when map_size(Map) >= MV ->
         ?ee;
      error ->
         Map#{Bin => 1}
   end.

as_type(str, Bin) -> {str, Bin}; 
as_type(dbl, Bin) ->
   case catch binary_to_float(Bin) of
      {'EXIT',_} ->
         {str, Bin};
      _ ->
         {dbl, Bin}
   end;
as_type(int, Bin) ->
   case catch binary_to_integer(Bin) of
      {'EXIT',_} ->
         as_type(dbl, Bin);
      _ ->
         {int, Bin}
   end.

do_negate_index(#{document := Document}) ->
   #{document => do_negate_index(Document)};
do_negate_index(#{count := Cnt,
                  children := Children } = O) ->
   Fun = fun(K,V,M) ->
               M#{K := do_negate_index(V)}
         end,
   O#{children := maps:fold(Fun, Children, Children),
      count := -Cnt};
do_negate_index(#{count := Cnt,
                  entries := Entries} = M) ->
   M#{count := -Cnt,
      entries := negate_entries(Entries)};
do_negate_index(#{count := Cnt} = M) ->
   M#{count := -Cnt};

do_negate_index(M) ->
   ?dbg("M",M),
   M.

negate_entries(?ee) -> ?ee;
negate_entries(Map) ->
   F = fun(K,V,M) ->
         M#{K := -V}
       end,
   maps:fold(F, Map, Map).

add_fun(_Key, Val1, Val2) when is_integer(Val1),
                               is_integer(Val2) ->
   Val1 + Val2;
add_fun(_Key, Val1, Val2) when is_map(Val1),
                               is_map(Val2) ->
   add_merge_maps(Val1, Val2);
add_fun(_Key, Val1, ?ee) when is_map(Val1) ->
   ?ee;
add_fun(_Key, ?ee, Val2) when is_map(Val2) ->
   ?ee;
add_fun(_Key, ?ee, ?ee) ->
   ?ee;
add_fun(_Key, Val1, Val2) when is_atom(Val1),
                               is_atom(Val2) ->
   if Val1 == str;
      Val2 == str ->
         str;
      Val1 == dbl;
      Val2 == dbl ->
         dbl;
      true ->
         int
   end.

add_merge_maps(Map1,Map2) ->
   maps_merge_with(fun add_fun/3,Map1,Map2).

maps_merge_with(F,Map1,Map2) ->
   O1 = orddict:from_list(maps:to_list(Map1)),
   O2 = orddict:from_list(maps:to_list(Map2)),
   O3 = orddict:merge(F, O1, O2),
   maps:from_list(O3).



do_prune(#{children := Chldn,
           count    := Cnt} = Children) ->
   L = [{K,P} || 
        {K,V} <- maps:to_list(Chldn),
        P <- [do_prune(V)],
        P =/= empty],
   case L of
      [] when Cnt == 0 ->
         empty;
      _ ->
         Children#{children := maps:from_list(L)}
   end;

do_prune(#{count   := Cnt,
           entries := ?ee} = Entries) ->
   if Cnt == 0 ->
         empty;
      true ->
         Entries
   end;
do_prune(#{count   := Cnt,
           entries := Ents} = Entries) ->
   L = [{K,V} || 
        {K,V} <- maps:to_list(Ents),
        V =/= 0],
   case L of
      [] when Cnt == 0 ->
         empty;
      _ ->
         Entries#{entries := maps:from_list(L)}
   end;
do_prune(#{count := Cnt} = Tag) ->
   if Cnt == 0 ->
         empty;
      true ->
         Tag
   end;
do_prune(#{document := Doc}) ->
   #{document => do_prune(Doc)}.

