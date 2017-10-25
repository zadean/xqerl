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

%% @doc  JSON related functions for de-encoding from/to map/array

-module(xqerl_json).

-include("xqerl.hrl").

-define(err(Code),xqerl_error:error(Code)).
-record(state, {liberal    = false, % ignored, no liberal parsing
                duplicates = use_first,
                escape     = true,
                fallback   = fun(_) -> [16#FFFD] end}).


%% ====================================================================
%% API functions
%% ====================================================================
-export([string/2]).

string(String, Options) ->
   State = parse_options(#state{},Options),
   Tks = case catch json_scanner:string(String) of
            {'EXIT',_} ->
               ?err('FOJS0001');
            {_,J,_} ->
               J
         end,
   Term = case catch json_parser:parse(Tks) of
             {ok,Obj} ->
                Obj;
             _ ->
                ?err('FOJS0001')
          end,  
   json_to_map(State, Term).


%% ====================================================================
%% Internal functions
%% ====================================================================

json_to_map(State, {array, Values}) ->
   {array,lists:map(fun(V) ->
                          json_to_map(State,V)
                    end, Values)};
json_to_map(#state{duplicates = Dupes} = State, {object, Members}) ->
   lists:foldl(fun({K,V},Map) ->
                     NormKey = normalize_string(State, K),
                     if Dupes == reject ->
                           case maps:is_key(NormKey, Map) of
                              true ->
                                 ?err('FOJS0003');
                              _ ->
                                 ATString = #xqAtomicValue{type = 'xs:string', value = NormKey},
                                 Map#{NormKey => {ATString,json_to_map(State,V)}}
                           end;
                        Dupes == use_first ->
                           case maps:is_key(NormKey, Map) of
                              true ->
                                 Map;
                              _ ->
                                 ATString = #xqAtomicValue{type = 'xs:string', value = NormKey},
                                 Map#{NormKey => {ATString,json_to_map(State,V)}}
                           end;
                        true ->
                           ATString = #xqAtomicValue{type = 'xs:string', value = NormKey},
                           Map#{NormKey => {ATString,json_to_map(State,V)}}
                     end                            
               end, #{}, Members);
json_to_map(_State, true) -> #xqAtomicValue{type = 'xs:boolean', value = true};
json_to_map(_State, false) -> #xqAtomicValue{type = 'xs:boolean', value = false};
json_to_map(_State, []) -> [];
json_to_map(_State, Val) when is_float(Val) ->
   #xqAtomicValue{type = 'xs:double', value = Val};
json_to_map(State, Val) ->
   #xqAtomicValue{type = 'xs:string', value = normalize_string(State, Val)}.

normalize_string(#state{escape = Escape, fallback = Fallback}, String) ->
   if Escape ->
         ?dbg("String",String),
         escape(String, Fallback);
      true ->
         no_escape(String, Fallback)
   end.

escape([], _Fallback) -> [];
escape([H|T], Fallback) when H == $\f;
                              H == $\n;
                              H == $\r;
                              H == $\t -> 
   [H|escape(T, Fallback)];
escape([H1,H2|T], Fallback) when H1 >= 16#D800, H1 =< 16#DFFF, H2 >= 16#D800, H2 =< 16#DFFF ->
   C = from_surrogates(H1, H2),
   [C|escape(T, Fallback)];
escape([H|T], Fallback) when H >= 16#00,   H =< 16#07; % hack \b out
                             H >= 16#09,   H =< 16#1F;
                             H >= 16#7F,   H =< 16#9F -> 
   [$\\, $u | lists:flatten(string:pad(integer_to_list(H,16), 4, leading, $0))] ++ escape(T, Fallback);
escape([H|T], Fallback) ->
   case xqerl_lib:is_xschar(H) of
      true ->
         [H|escape(T, Fallback)];
      _ when H =< 65535 ->
         Str = [$\\, $u | lists:flatten(string:pad(integer_to_list(H,16), 4, leading, $0))],
         NewStr = Fallback(#xqAtomicValue{type = 'xs:string', value = Str}),
         xqerl_types:string_value(NewStr) ++ escape(T, Fallback);
      _ ->
         NewStr = Fallback(#xqAtomicValue{type = 'xs:string', value = [H]}),
         xqerl_types:string_value(NewStr) ++ escape(T, Fallback) % invalid XML, but valid JSON
   end.

no_escape([], _Fallback) -> [];
no_escape([H|T], Fallback) ->
   ?dbg("H",H),
   case xqerl_lib:is_xschar(H) of
      true ->
         [H|no_escape(T, Fallback)];
      _ ->
         try
            NewStr = Fallback(#xqAtomicValue{type = 'xs:string', value = [H]}),
            xqerl_types:string_value(NewStr) ++ no_escape(T, Fallback)
         catch
            _:#xqError{} = E ->
               throw(E);
            _:_ ->
               ?err('XPTY0004')
         end
   end.

to_surrogates(C) when C >= 16#10000, C =< 16#10FFFF ->
   CP = C - 16#10000,
   High = CP bsr 10 + 16#D800,
   Low  = CP band 16#3FF + 16#DC00,
   [High,Low].

from_surrogates(High, Low) ->
   HC = (High - 16#D800) bsl 10,
   LC = Low - 16#DC00,
   HC bor LC + 16#10000.


parse_options(State, []) ->
   State;
parse_options(State, [{liberal,Bool}|T]) ->
   parse_options(State#state{liberal = Bool}, T);
parse_options(State, [{duplicates,Bool}|T]) ->
   parse_options(State#state{duplicates = Bool}, T);
parse_options(State, [{escape,Bool}|T]) ->
   parse_options(State#state{escape = Bool}, T);
parse_options(State, [{fallback,Bool}|T]) ->
   parse_options(State#state{fallback = Bool}, T);
parse_options(State, [_|T]) ->
   parse_options(State, T).

