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
   esc_string 
   array_begin 
   array_end 
   object_begin 
   object_end 
   name_sep 
   value_sep.

Rootsymbol root.

root -> object     : '$1'.
root -> array      : '$1'.
root -> string     : val('$1').
root -> esc_string : str_val('$1').
root -> number     : list_to_number(val('$1')).
root -> false      : false.
root -> null       : null.
root -> true       : true.

object -> object_begin members object_end : {object, '$2'}.
object -> object_begin         object_end : {object, []}.
array  -> array_begin values array_end    : {array, '$2'}.
array  -> array_begin        array_end    : {array, []}.

members -> member value_sep members : ['$1'|'$3'].
members -> member                   : ['$1'].

member -> string     name_sep value : {val('$1'), '$3'}.
member -> esc_string name_sep value : {str_val('$1'), '$3'}.

values -> value value_sep values : ['$1'|'$3'].
values -> value                  : ['$1'].
 
value -> false  : false.
value -> null   : null.
value -> true   : true.
value -> object : '$1'.
value -> array  : '$1' .
value -> number : list_to_number(val('$1')).
value -> string : val('$1').
value -> esc_string : str_val('$1').


Erlang code.
%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
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

%% @doc  JSON parser (RFC7159).

-compile([{hipe,[{regalloc,linear_scan}]}]).
-include("xqerl_db.hrl").

val({_,_,Token}) when hd(Token) == $" ->
    unicode:characters_to_binary(tl(lists:droplast(Token)));
val({_,_,Token}) ->
   unicode:characters_to_binary(Token).

str_val(Val) ->
   norm_str(val(Val),<<>>).
   %unicode:characters_to_list(norm_str(val(Val))).


list_to_number(List) ->
  {xqerl_numeric:double(List), List}.

norm_str(<<>>,Acc) -> Acc;
norm_str(<<$\\,$",T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$" >>);
norm_str(<<$\\,$\\,T/binary>>,Acc)-> norm_str(T,<<Acc/binary,$\\>>);
norm_str(<<$\\,$/,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$/ >>);
norm_str(<<$\\,$b,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\b>>);
norm_str(<<$\\,$f,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\f>>);
norm_str(<<$\\,$n,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\n>>);
norm_str(<<$\\,$r,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\r>>);
norm_str(<<$\\,$t,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\t>>);
norm_str(<<$\\,$u,A,B,C,D,$\\,$u,A2,B2,C2,D2,T/binary>>,Acc) ->
   High = list_to_integer([A,B,C,D],16),
   Low  = list_to_integer([A2,B2,C2,D2],16),
   if High >= 16#D800, High =< 16#DFFF, Low >= 16#D800, Low =< 16#DFFF ->
         New = from_surrogates(High, Low),
         NewC = maybe_utf(New),
         norm_str(T, <<Acc/binary,NewC/binary>>);
      true ->
         HighC = maybe_utf(High),
         LowC = maybe_utf(Low),
         norm_str(T, <<Acc/binary,HighC/binary,LowC/binary>>)
   end;
norm_str(<<$\\,$u,A,B,C,D,T/binary>>,Acc) ->
   Int = list_to_integer([A,B,C,D],16),
   H = maybe_utf(Int),
   norm_str(T, <<Acc/binary,H/binary>>);
norm_str(<<H/utf8,T/binary>>,Acc) ->
   norm_str(T, <<Acc/binary,H/utf8>>).


from_surrogates(High, Low) ->
   HC = (High - 16#D800) bsl 10,
   LC = Low - 16#DC00,
   HC bor LC + 16#10000.

maybe_utf(Char) ->
   try <<Char/utf8>> of H ->
      H
   catch _:_ ->
      <<$\\,$u,(integer_to_binary(Char,16))/binary>>
      %<<0/utf8>>
   end.
  