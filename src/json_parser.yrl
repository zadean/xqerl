Nonterminals 
   root
   object 
   array 
   value 
   values 
   member 
   members.

Terminals  
   false 
   true 
   null 
   number 
   string 
   array_begin 
   array_end 
   object_begin 
   object_end 
   name_sep 
   value_sep.

Rootsymbol root.

root -> object : '$1'.
root -> array  : '$1'.
root -> string : str_val('$1').
root -> number : list_to_number(val('$1')).
root -> false  : false.
root -> null   : [].
root -> true   : true.

object -> object_begin members object_end : {object, '$2'}.
object -> object_begin         object_end : {object, []}.
array  -> array_begin values array_end    : {array, '$2'}.
array  -> array_begin        array_end    : {array, []}.

members -> member value_sep members : ['$1'|'$3'].
members -> member                   : ['$1'].

member -> string name_sep value : {str_val('$1'), '$3'}.

values -> value value_sep values : ['$1'|'$3'].
values -> value                  : ['$1'].
 
value -> false  : false.
value -> null   : [].
value -> true   : true.
value -> object : '$1'.
value -> array  : '$1' .
value -> number : list_to_number(val('$1')).
value -> string : str_val('$1').


Erlang code.
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

%% @doc  JSON parser (RFC7159).

-include("xqerl.hrl").

val({_,_,Token}) when hd(Token) == $" ->
    lists:reverse(tl(lists:reverse(tl(Token))));
val({_,_,Token}) ->
   %   string:strip(Token, both, $").
   Token.

str_val(Val) ->
   ?dbg("Val",val(Val)),
   N = norm_str(val(Val)),
   ?dbg("N",N),
   N.
   %unicode:characters_to_list(norm_str(val(Val))).


list_to_number(List) ->
%?dbg("List",List),
   case catch list_to_float(List) of
      {'EXIT',_} ->
         case catch float(list_to_integer(List)) of
            {'EXIT',_} ->
               #xqAtomicValue{value = V} = xqerl_types:cast_as(#xqAtomicValue{type = 'xs:string', value = List}, 'xs:double'),
               V;
            F ->
               F
         end;
      Num ->
         Num
   end.

norm_str([]) -> [];
norm_str([$\\,$"|T]) -> [$" |norm_str(T)];
norm_str([$\\,$\\|T])-> [$\\|norm_str(T)];
norm_str([$\\,$/|T]) -> [$/|norm_str(T)];
norm_str([$\\,$b|T]) -> [$\b|norm_str(T)];
norm_str([$\\,$f|T]) -> [$\f|norm_str(T)];
norm_str([$\\,$n|T]) -> [$\n|norm_str(T)];
norm_str([$\\,$r|T]) -> [$\r|norm_str(T)];
norm_str([$\\,$t|T]) -> [$\t|norm_str(T)];
norm_str([$\\,$u,A,B,C,D|T]) ->
  [list_to_integer([A,B,C,D],16)|norm_str(T)];

norm_str([H|T]) ->
  [H|norm_str(T)].
