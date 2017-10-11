%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implementation of the "http://www.w3.org/2005/xpath-functions/map" namespace.

-module(xqerl_map).

-include("xqerl.hrl").

-define(sin(V), ?seq:singleton(V)).
-define(val(V), ?seq:singleton_value(V)).

-export(['contains'/3]).
-export(['entry'/3]).
-export(['find'/3]).
-export(['for-each'/3]).
-export(['get'/3]).
-export(['keys'/2]).
-export(['merge'/2,'merge'/3]).
-export(['put'/4]).
-export(['remove'/3]).
-export(['size'/2]).

-'module-namespace'({"http://www.w3.org/2005/xpath-functions/map","map"}).
-namespaces([{"http://www.w3.org/2005/xpath-functions", "fn"}, {"xqerl_xs", "xs"},{"http://www.w3.org/2005/xpath-functions/map","map"}]).

-variables([]).

-functions([
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "contains"},{xqSeqType, 'xs:boolean', one}, [], 
 {'contains', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "entry"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'entry', 3}, 2,[{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "find"},{xqSeqType, {xqFunTest, array, [], undefined, any, any},one},[], 
 {'find', 3}, 2,[{xqSeqType, item, zero_or_many},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "for-each"},{xqSeqType, item, zero_or_many}, [], 
 {'for-each', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType,{xqFunTest, function, [], undefined,[{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, item, zero_or_many}],{xqSeqType, item, zero_or_many}},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "get"},{xqSeqType, item, zero_or_many}, [], 
 {'get', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "keys"},{xqSeqType, 'xs:anyAtomicType', zero_or_many}, [],
 {'keys', 2}, 1,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "merge"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'merge', 2}, 1,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "merge"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'merge', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},zero_or_many},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "put"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'put', 4}, 3,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', one},{xqSeqType, item, zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "remove"},{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},[], 
 {'remove', 3}, 2,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one},{xqSeqType, 'xs:anyAtomicType', zero_or_many}]},
{{qname, "http://www.w3.org/2005/xpath-functions/map", "map", "size"},{xqSeqType, 'xs:integer', one}, [], 
 {'size', 2}, 1,[{xqSeqType, {xqFunTest, map, [], undefined, any, any},one}]}]).



%% Tests whether a supplied map contains an entry for a given key 
'contains'(_Ctx,Map,Key) when is_map(Map) ->
   ?sin(#xqAtomicValue{type = 'xs:boolean', value = maps:is_key(xqerl_operators:key_val(Key), Map)});
'contains'(_Ctx,Map,Key) ->
   IMap = ?val(Map),
   if is_map(IMap) ->
         'contains'(_Ctx,IMap,Key);
      true ->
         xqerl_error:error('XPTY0004')
   end.

%% Returns a map that contains a single entry (a key-value pair). 
'entry'(_Ctx,Key0,Value0) -> 
   Key = xqerl_operators:key_val(Key0),
   ?sin(maps:put(Key, {Key0, Value0}, maps:new())).

%% Searches the supplied input sequence and any contained maps and arrays for a map entry with the supplied key, and returns the corresponding values. 
'find'(_Ctx,Input,Key) ->
   L = find1(Input,Key, []),
   #array{data = lists:reverse(L)}.

%% Applies a supplied function to every entry in a map, returning the concatenation of the results. 
'for-each'(_Ctx,Map,Action) when is_map(Map) ->
   lists:map(fun({K,V}) ->
                   Action(K,V)
             end, maps:values(?val(Map)));
'for-each'(_Ctx,Map,Action) ->
   IMap = ?val(Map),
   if is_map(IMap) ->
         'for-each'(_Ctx,IMap,Action);
      true ->
         xqerl_error:error('XPTY0004')
   end.

%% Returns the value associated with a supplied key in a given map. 
'get'(_Ctx,Map,Key) when is_map(Map) -> 
   case maps:find(xqerl_operators:key_val(Key), Map) of
           error ->
              ?seq:empty();
           {ok, {_,V}} ->
              V
        end;
'get'(_Ctx,Map,Key) -> 
   IMap = ?val(Map),
   if is_map(IMap) ->
         'get'(_Ctx,IMap,Key);
      true ->
         xqerl_error:error('XPTY0004')
   end.

%% Returns a sequence containing all the keys present in a map 
'keys'(_Ctx,Map) ->
   % true keys are in position 1 in value
   ?seq:from_list(
   maps:fold(fun(_K,V,L) ->
                  [element(1, V) | L]
            end, [], ?val(Map))).

%% Returns a map that combines the entries from a number of existing maps. 
'merge'(_Ctx,Maps) when is_map(Maps) ->
   Maps;
'merge'(_Ctx,Maps) ->
   OptionMap = maps:put(duplicates, 'use-first', maps:new()),
   'merge'(_Ctx,Maps,OptionMap).
'merge'(_Ctx,Maps,Options) -> 
   Dup = case maps:get(duplicates, Options) of
      {'EXIT',_} ->
         xqerl_error:error('FOJS0005');
      O ->
         O
   end,
   lists:foldl(fun(In,Out) ->
                     combine_maps(Out, In, Dup)
               end, [], ?seq:to_list(?seq:reverse(Maps))).

%% Returns a map containing all the contents of the supplied map, but with an additional entry, which replaces any existing entry for the same key. 
'put'(_Ctx,Map,Key,Value) -> 
   Key1 = ?val(Key),
   maps:put(Key1, {Key, Value}, ?val(Map)).

%% Returns a map containing all the entries from a supplied map, except those having a specified key. 
'remove'(_Ctx,Map,Keys) -> 
   ?sin(
   lists:foldl(fun(K,M) ->
                     maps:remove(xqerl_operators:key_val(K), M)
               end, ?val(Map), ?seq:to_list(Keys))).

%% Returns the number of entries in the supplied map. 
'size'(_Ctx,Map) -> 
   ?sin(#xqAtomicValue{type='xs:integer', value = maps:size(?val(Map)) }).

combine_maps(Map1, [], _Any) ->
   Map1;
combine_maps([], Map1, _Any) ->
   Map1;
combine_maps(Map1, Map2, 'use-first') ->
   maps:merge(Map2, Map1);
combine_maps(Map1, Map2, 'use-any') ->
   maps:merge(Map2, Map1);
combine_maps(Map1, Map2, 'use-last') ->
   maps:merge(Map1, Map2);
combine_maps(Map1, Map2, 'reject') ->
   case maps:size(maps:with(maps:keys(Map2), Map1)) of
      0 ->
         maps:merge(Map2, Map1);
      _ ->
         xqerl_error:error('FOJS0003')
   end;
combine_maps(Map1, Map2, 'combine') ->
   maps:fold(fun(K,V,M) ->
                   case maps:is_key(K, M) of
                      false ->
                         maps:put(K, V, M);
                      _ ->
                         Ov = maps:get(K, M),
                         Ov1 = element(2, Ov),
                         Ov2 = element(2, V),
                         Ov3 = {element(1, V), Ov1 ++ Ov2},
                         maps:update(K, Ov3, M)
                   end
             end, Map1, Map2);
combine_maps(_, _, _) -> xqerl_error:error('FOJS0005').

find1(Input,Key, Array) when is_list(Input) ->
   lists:foldl(fun(M, A) when is_map(M) ->
                     case get([], M, Key) of
                        [] ->
                           find1(maps:values(M), Key, A);
                        V ->
                           find1(maps:values(M), Key, [V|A])
                     end;
                ([M], A) when is_map(M) ->
                     case get([], M, Key) of
                        [] ->
                           find1(maps:values(M), Key, A);
                        V ->
                           find1(maps:values(M), Key, [V|A])
                     end;
                (#array{data = L}, A) ->
                   find1(L, Key, A);
                (L, A) when is_list(L) ->
                   find1(L, Key, A);
                (_, A) ->
                   A
             end, Array, Input);
find1(Input,Key, Array) ->
   find1(?seq:to_list(Input),Key, Array).




