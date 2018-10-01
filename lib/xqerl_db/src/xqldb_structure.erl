-module(xqldb_structure).
-include("xqerl_db.hrl").


%% ====================================================================
%% API functions
%% ====================================================================
-export([index_doc/1,
         index_file/1,
         
         index_text/1,
         
         negate/1,
         add/2,
         delta/2,
         prune/1
         ]).

-record(st, {max_index_distinct_value = 1024
               %element(2,application:get_env(xqerl_db,max_index_distinct_value))
             }).

-type entries() :: #{count => integer(),
                     entries => entry()}.
-type entry() :: {} | #{integer() => integer()}. % string id => count
-type children() :: #{count => integer()} | 
                    #{count => integer(),
                      children => 
                        #{element() => children(),
                          attribute() | pi() | text() | comment() => entries()
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


%% Returns the entire structure summary of the given (single) document
-spec index_doc(Doc :: binary()) -> index().

%% index_doc(#{kind := ?element, chld := []} =  E) -> E;
%% index_doc(#{kind := ?element, 
%%             bin := Bin,
%%             chld := Chld} =  E) ->
%%    {CBin, Children} = index_doc(Chld, #{}, #st{}),
%%    E#{chld := Children,
%%       bin  := <<Bin/binary,CBin/binary>>};
index_doc(<<?document:3,_:32/integer,_:32/integer,0:19/integer,0:10/integer,
           0:1,0:7/integer,Chld/binary>>) ->
   Children = index_doc(Chld, #{}, #st{}),
   #{document =>
       #{count => 1,
         children => Children}
    }.

index_file(FileName) ->
   {ok,Fd} = file:open(FileName, [raw,binary,{read_ahead, 1 bsl 16}]),
   {ok,_} = file:read(Fd, 13),
   Chld = read_all(Fd, <<>>),
   _ = file:close(Fd),
   Children = index_doc(Chld, #{}, #st{}),
   #{document =>
       #{count => 1,
         children => Children}
    }.

%%% testing function for string index
index_text(FileName) ->
   {ok,Fd} = file:open(FileName, [raw,binary,{read_ahead, 1 bsl 16}]),
   {ok,_} = file:read(Fd, 13),
   Chld = read_all(Fd, <<>>),
   _ = file:close(Fd),
   Tab = ets:new(testing_string_indx, []),
   _ = [ets:update_counter(Tab, TextRef, 1, {TextRef, 1}) ||        
         <<?text:3,TextRef:32/integer,_:32/integer,0:19/integer,0:10,0:1,0:7>> <= Chld ],
   ok.

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

read_all(Fd, Acc) ->
   case file:read(Fd,1 bsl 16) of
      {ok,Bin} ->
         read_all(Fd, <<Acc/binary, Bin/binary>>);
      eof ->
         Acc
   end.

% empty entry
-define(ee, {}).

index_doc(<<?element:3,_:32/integer,Size:32/integer,
            NameRef:19/integer,NsRef:10/integer,_:1,
            _:7/integer,Chld:Size/binary-unit:?BUSZ,Rest/binary>>, Map, State) ->
   Key = {element,NsRef,NameRef},
   case maps:find(Key, Map) of
      {ok, #{count := Cnt,
             children := ChildMap} = Fnd} -> % already there with children
         NewChildMap = index_doc(Chld,ChildMap,State),
         NewSelf = Fnd#{count := Cnt + 1,
                        children := NewChildMap},
         NewMap = Map#{Key := NewSelf},
         index_doc(Rest, NewMap, State);
      {ok, #{count := Cnt} = Fnd} when Chld == <<>> -> 
         % already there with no children, no new
         NewSelf = Fnd#{count := Cnt + 1},
         NewMap = Map#{Key := NewSelf},
         index_doc(Rest, NewMap, State);
      {ok, #{count := Cnt} = Fnd} -> 
         % already there with no children, has new
         NewChildMap = index_doc(Chld,#{},State),
         NewSelf = Fnd#{count := Cnt + 1,
                        children => NewChildMap},
         NewMap = Map#{Key := NewSelf},
         index_doc(Rest, NewMap, State);
      error when Chld == <<>> ->  % new element, no children
         NewSelf = #{count => 1},
         NewMap = Map#{Key => NewSelf},
         index_doc(Rest, NewMap, State);
      error ->  % new element, has children
         NewChildMap = index_doc(Chld,#{},State),
         NewSelf = #{count => 1,
                     children => NewChildMap},
         NewMap = Map#{Key => NewSelf},
         index_doc(Rest, NewMap, State)
   end;
index_doc(<<?attribute:3,TextRef:32/integer,_:3/integer,0:29/integer,
           NameRef:19/integer,NsRef:10,0:1,_:7,Rest/binary>>, Map, State) ->
   NewMap = add_attribute(NsRef, NameRef, TextRef, Map, State),
   index_doc(Rest, NewMap, State);
index_doc(<<?text:3,TextRef:32/integer,_:32/integer,
           0:19/integer,0:10,0:1,0:7,Rest/binary>>, Map, State) ->
   NewMap = add_text(TextRef,Map,State),
   index_doc(Rest, NewMap, State);
index_doc(<<?comment:3,TextRef:32/integer,_:32/integer,
           0:19/integer,0:10,0:1,0:7,Rest/binary>>, Map, State) ->
   NewMap = add_comment(TextRef,Map,State),
   index_doc(Rest, NewMap, State);
index_doc(<<?proc_inst:3,TextRef:32/integer,_:32/integer,
           NameRef:19/integer,0:10,0:1,0:7,Rest/binary>>, Map, State) ->
   NewMap = add_process_inst(NameRef,TextRef,Map,State),
   index_doc(Rest, NewMap, State);
index_doc(<<>>, Map, _) -> Map.

add_attribute(Namespace, LocalName, Value, ChildrenMap, State) ->
   Key = {attribute, Namespace, LocalName},
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
   ?dbg("Unknown negate",M),
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
add_fun(entries, Val1, Val2) when is_map(Val1),
                                  is_map(Val2) ->
   add_merge_maps(Val1, Val2, #st{});
add_fun(_Key, Val1, Val2) when is_map(Val1),
                               is_map(Val2) ->
   add_merge_maps(Val1, Val2);
add_fun(_Key, Val1, ?ee) when is_map(Val1) -> ?ee;
add_fun(_Key, ?ee, Val2) when is_map(Val2) -> ?ee;
add_fun(_Key, ?ee, ?ee) -> ?ee;
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

add_merge_maps(Map1,Map2, St) ->
   maps_merge_with(fun add_fun/3,Map1,Map2,St).

maps_merge_with(F,Map1,Map2) ->
   O1 = orddict:from_list(maps:to_list(Map1)),
   O2 = orddict:from_list(maps:to_list(Map2)),
   O3 = orddict:merge(F, O1, O2),
   maps:from_list(O3).

maps_merge_with(F,Map1,Map2,#st{max_index_distinct_value = Max}) ->
   O1 = orddict:from_list(maps:to_list(Map1)),
   O2 = orddict:from_list(maps:to_list(Map2)),
   O3 = orddict:merge(F, O1, O2),
   Sz = orddict:size(O3),
   if Sz > Max ->
         ?ee;
      true ->
         maps:from_list(O3)
   end.



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
do_prune(#{count   := 0,
           entries := ?ee}) -> empty;
do_prune(#{count   := _,
           entries := ?ee} = Entries) -> Entries;
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
do_prune(#{count := 0}) -> empty;
do_prune(#{count := _} = Tag) -> Tag;
do_prune(#{document := Doc}) ->
   #{document => do_prune(Doc)}.

