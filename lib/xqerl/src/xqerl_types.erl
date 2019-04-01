%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Functions for casting types (Very messy!).

-module(xqerl_types).
-compile(inline_list_funcs).

-export([return_value/1,
         return_value/2,
         rest_return_value/2]).

-export([value/1]).
-export([atomize/1]).
-export([string_value/1]).
-export([type/1]).

-export([promote/2]).
-export([ensure_empty/1]).
-export([construct_as/2]).
-export([cast_as/2]).
-export([cast_as/3]).
%% -export([as_seq/2]).
-export([cast_as_seq/2]).
-export([treat_as_seq/2]).
-export([cast_as_seq/3]).
-export([instance_of/2]).
-export([castable/2]).
-export([castable/3]).
-export([subtype_of/2]).
-export([seq_type_val_match/2]).
-export([is_ns_sensitive/1]).

-export([is_date_type/1]).

-export([scan_ncname/1]).

-include("xqerl.hrl").

-define(digit(H), H >= $0; H =< $9).
-define(MINFLOAT, -3.4028235e38).
-define(MAXFLOAT,  3.4028235e38).
-define(MAXFLOATPREC,  1.175494351e-38).
-define(true,  true).
-define(false, false).
-define(xav(T,V),  #xqAtomicValue{type = T, value = V}).
-define(ERROR_MATCH(E),
        _:#xqError{name = #xqAtomicValue{value=#qname{local_name = E}}}).

is_date_type('xs:duration')               -> true;
is_date_type('xs:dateTime')               -> true;
is_date_type('xs:time')                   -> true;
is_date_type('xs:date')                   -> true;
is_date_type('xs:gYearMonth')             -> true;
is_date_type('xs:gYear')                  -> true;
is_date_type('xs:gMonthDay')              -> true;
is_date_type('xs:gDay')                   -> true;
is_date_type('xs:gMonth')                 -> true;
is_date_type('xs:yearMonthDuration')      -> true;
is_date_type('xs:dayTimeDuration')        -> true;
is_date_type('xs:dateTimeStamp')          -> true;
is_date_type(_Type) -> false.

atomize([]) -> [];
atomize(#xqAtomicValue{} = A) -> A;
atomize(true) -> true;
atomize(false) -> false;
atomize(A) when is_binary(A);
                is_number(A);
                is_atom(A) -> A;
atomize(#array{} = A) -> xqerl_array:flatten(#{}, A);
atomize(#{nk := Nk,
          id := Id} = Node) ->
   Str = case Id of
            {_,_} ->
               xqldb_mem_nodes:string_value(Node);
            {_,_,_} ->
               xqldb_nodes:string_value(Node)
         end,
   if Nk =:= comment;
      Nk =:= namespace;
      Nk =:= 'processing-instruction' ->
         Str;
      true ->
         ?xav('xs:untypedAtomic', Str)
   end;
atomize(L) when is_list(L) -> 
   lists:map(fun atomize/1, L);
atomize(O) ->
   ?dbg("O",O),
   ?err('XPTY0004').

%% make_node_external(#{nk := element,
%%                      at := Int} = Node) when is_integer(Int) ->
%%    Node;
%% make_node_external(#{nk := element,
%%                      nn := {Ns,Px,_}} = Node) ->
%%    Ats = maps:get(at, Node, []),
%%    F = fun(#{nn := {_,<<>>,_}}, M) ->
%%              M;
%%           (#{nn := {Ns1,Px1,_}}, M) ->
%%              M#{Px1 => Ns1}          
%%        end,
%%    Nss = lists:foldl(F, #{Px => Ns}, Ats),
%%    NoP = maps:remove(pt, Node),
%%    NsSet = NoP#{ns => Nss}, 
%%    make_node_external_1(NsSet, Nss);
make_node_external(Node) ->
   maps:remove(pt, Node).

%% make_node_external_1(#{nk := element,
%%                        nn := {Ns,Px,_}, 
%%                        ch := Ch} = Node, Nss) ->
%%    Ats = maps:get(at, Node, []),
%%    F = fun(#{nn := {_,<<>>,_}}, M) ->
%%              M;
%%           (#{nn := {Ns1,Px1,_}}, M) ->
%%              M#{Px1 => Ns1}
%%        end,
%%    Nss1 = lists:foldl(F, Nss#{Px => Ns}, Ats),
%%    Node#{ch := make_node_external_1(Ch, Nss1),
%%          ns => Nss1};
%% make_node_external_1(#{nk := _} = Node, _Nss) ->
%%    Node;
%% make_node_external_1([Node|T], Nss) ->
%%    [make_node_external_1(Node, Nss)|make_node_external_1(T, Nss)];
%% make_node_external_1([], _) -> [].


return_value([]) -> xqerl_seq3:empty();
return_value(#xqAtomicValue{} = A) -> A;
return_value(#array{} = A) -> A;
return_value(#xqRange{} = R) -> xqerl_seq3:to_list(R);
return_value(#xqFunction{} = F) -> F;
%return_value(#xqFunction{}) -> ?err('XPTY0004');
return_value(Fun) when is_function(Fun) -> Fun;
return_value(#{nk := _} = Map) -> % remove parent node
   make_node_external(Map);
return_value(Map) when is_map(Map) -> Map;
return_value([Other]) ->
   return_value(Other);
return_value(List) when is_list(List) ->
   M = lists:map(fun(I) -> return_value(I) end, List),
   xqerl_seq3:flatten(M);
return_value(Other) -> 
   Other.

return_value([Seq], Ctx) ->
   return_value(Seq, Ctx);
return_value(Seq, #{pul := Pul} = Ctx) ->
   ok = xqerl_update:apply_updates(Ctx, Pul),
   return_value(Seq, maps:remove(pul, Ctx));
return_value(Seq, #{options := Opts}) ->
   if is_map_key(method, Opts) ->
         Seq2 = xqerl_seq3:flatten(Seq),
         xqerl_serialize:serialize(Seq2, Opts);
      true ->
         return_value(Seq)
   end.

rest_return_value([Seq], Ctx) ->
   rest_return_value(Seq, Ctx);
rest_return_value(Seq, #{options := Opts}) ->
   Seq2 = xqerl_seq3:flatten(Seq),
   xqerl_serialize:serialize(Seq2, Opts).

string_value([]) -> <<>>;
string_value(Bin) when is_binary(Bin) -> Bin;
%string_value([H|T]) when is_integer(H) -> [H|T];
string_value(#xqError{} = E) -> E;
string_value(#xqRange{} = R) -> 
   string_value(xqerl_seq3:expand(R));
string_value(#array{data = L}) -> string_value(L);
string_value([V]) -> string_value(V);
%% string_value({Doc,Node}) when is_map(Doc), is_binary(Node) ->
%%    xqldb_doc:string_value(Doc, Node);
string_value({Error,_}) ->
   {Error};
%% string_value([At]) ->
%%    string_value(At);
% QName hack
string_value(#qname{} = Q) ->
   Str = cast_as(#xqAtomicValue{type = 'xs:QName', value = Q}, 'xs:string'),
   string_value(Str);
string_value(true) -> <<"true">>;
string_value(false) -> <<"false">>;
string_value(#xqAtomicValue{} = At) ->
   cast_as(At, 'xs:string');
string_value(At) when is_number(At);
                      is_atom(At) ->
   cast_as(At, 'xs:string');

string_value(N) when is_record(N, xqElementNode);
                     is_record(N, xqDocumentNode);
                     is_record(N, xqAttributeNode);
                     is_record(N, xqCommentNode);
                     is_record(N, xqTextNode);
                     is_record(N, xqProcessingInstructionNode);
                     is_record(N, xqNamespaceNode) ->
   string_value(cast_as(xqerl_node:atomize_nodes(N), 'xs:string'));
string_value(#{nk := _} = Nd) ->
   string_value(cast_as(Nd, 'xs:string'));
string_value(#xqFunction{}) ->
   ?err('FOTY0013');
string_value(Map) when is_map(Map) ->
   ?err('FOTY0013');
string_value(Fun) when is_function(Fun) ->
   ?err('XPTY0004');
string_value([H|T]) ->
   T2 = << <<" ", (string_value(Av))/binary>> || Av <- T  >>, 
   << (string_value(H))/binary, T2/binary >>.

value(#{nk := _} = N) ->
   value(atomize(N));
value(#xqFunction{body = V}) -> V;
value([#xqFunction{body = V}]) -> V;
value(#xqAtomicValue{value = V}) -> V;
value([]) -> [];
value([#xqAtomicValue{value = V}]) -> V;
value([Seq]) -> Seq;
value(V) -> V.

type({not_implemented_maybe_later,L}) ->
   {not_implemented_maybe_later,L};
type({not_implemented,L}) ->
   {not_implemented,L};
type([]) ->
   [];
type(#xqRange{}) ->
   'xs:integer';
type(#xqAtomicValue{type = T}) ->
   T;
type(V) when is_integer(V) ->
   'xs:integer';
type(V) when is_float(V) ->
   'xs:double';
type(V) when V == nan;
             V == neg_zero;
             V == infinity;
             V == neg_infinity ->
   'xs:double';
type(V) when is_binary(V) ->
   'xs:string';
type(Seq) ->
   #xqSeqType{type = T, occur = _One} = xqerl_seq3:get_seq_type(Seq),
   T.

ensure_empty({array, []} = A) -> A;
ensure_empty(M) when is_map(M) -> 
   case maps:size(M) of
      0 ->
         M;
      _ ->
         ?err('XPTY0004')
   end;
ensure_empty(_) -> ?err('XPTY0004').
  

% this function is for promoting/checking sequences for their types
cast_as_seq(Vals, SeqType) when is_atom(SeqType) ->
   cast_as_seq(Vals, #xqSeqType{type = SeqType});
cast_as_seq([Vals], SeqType) ->
   cast_as_seq(Vals, SeqType);
cast_as_seq(Vals, []) ->
   Vals;
cast_as_seq(Fn, #xqSeqType{type = #xqFunTest{kind = function}}) 
   when is_function(Fn) ->
   Fn;
cast_as_seq(Fn, #xqSeqType{type = #xqFunTest{kind = function}}) 
   when is_map(Fn) ->
   Fn;
cast_as_seq(#xqFunction{} = Fn, 
            #xqSeqType{type = #xqFunTest{kind = function}}) ->
   Fn;
cast_as_seq(#array{} = Array, 
            #xqSeqType{type = #xqFunTest{kind = array}}) ->
   Array;
cast_as_seq(Map, #xqSeqType{type = #xqFunTest{kind = map}}) ->
   Map;
cast_as_seq(Av, #xqSeqType{type = 'xs:boolean'}) when not is_list(Av) ->
   cast_as(Av, 'xs:boolean');
cast_as_seq(#xqAtomicValue{type = 'xs:anyURI'} = Av, 
            #xqSeqType{type = 'xs:string'}) ->
   cast_as(Av,'xs:string');
cast_as_seq(#xqAtomicValue{} = Av, 
            #xqSeqType{type = 'xs:anyAtomicType'}) ->
   Av;
cast_as_seq(Av, #xqSeqType{type = 'xs:anyAtomicType'})
   when is_boolean(Av);
        is_number(Av);
        is_binary(Av) ->
   Av;
cast_as_seq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Av, 
            #xqSeqType{type = Type}) ->
   cast_as(Av,Type);
cast_as_seq(#xqAtomicValue{type = AType} = Av, 
            #xqSeqType{type = Type}) 
   when ?xs_numeric(AType), ?xs_numeric(Type) ->
   cast_as(Av,Type);
cast_as_seq(Av, #xqSeqType{type = Type}) when is_number(Av), 
                                              ?xs_numeric(Type) ->
   cast_as(Av,Type);
cast_as_seq(#xqAtomicValue{type = AType} = Av, 
            #xqSeqType{type = Type}) ->
   SubType = subtype_of(AType, Type),
   if SubType ->
         Av;
      true ->
         ?err('FORG0001')
   end;
cast_as_seq(#{nk := _} = Av, SeqType) ->
   cast_as(Av, SeqType);
cast_as_seq(Vals, []) ->
   Vals;
cast_as_seq(Vals, _SeqType) when is_function(Vals) ->
   Vals;
cast_as_seq(Vals, #xqSeqType{type = #xqFunTest{kind = function}}) 
   when is_list(Vals) ->
   All = lists:all(fun(Fn) when is_function(Fn) ->
                         true;
                      (#xqFunction{body = Fn}) when is_function(Fn) ->
                         true;
                      (_) ->
                         false
             end, Vals),
   if All ->
         Vals;
      true ->
         ?err('FORG0001')
   end;
cast_as_seq(Vals, #xqSeqType{type = #xqFunTest{kind = array}}) 
   when is_list(Vals) ->
   All = lists:all(fun(#array{}) ->
                         true;
                      (_) ->
                         false
             end, Vals),
   if All ->
         Vals;
      true ->
         ?err('FORG0001')
   end;
cast_as_seq(Seq, #xqSeqType{type = 'xs:anyAtomicType'}) 
   when is_list(Seq) ->
   lists:map(fun(#xqAtomicValue{} = Av) ->
                   Av;
                (Av) when is_binary(Av);
                          is_number(Av);
                          is_boolean(Av) ->
                   Av;
                (Item) ->
                   cast_as(Item, 'xs:anyAtomicType')
             end, Seq);
cast_as_seq(Seq, #xqSeqType{type = Type, occur = Occ} = SType) 
   when is_list(Seq), Occ =/= one ->
   lists:map(fun(#xqAtomicValue{type = AType} = Av) ->
                   case subtype_of(AType, Type) of
                      true ->
                         Av;
                      _ ->
                         cast_as_seq(Av, SType)
                   end;
                (Item) ->
                   cast_as(Item, Type)
             end, Seq);
cast_as_seq([], #xqSeqType{occur = zero_or_one}) -> [];
cast_as_seq(Seq, #xqSeqType{type = Type} = TargetSeqType) ->
   SeqType = xqerl_seq3:get_seq_type(Seq),
   case seq_type_val_match(TargetSeqType, SeqType) of
      nocast ->
         Seq;
      true when Type == 'xs:anyAtomicType' ->
         Seq;
      true when Type == 'item' ->
         Seq;
      true ->
         case is_ns_sensitive(Type) of
            true ->
               NF = fun(#{nk := _}) -> ?err('XPTY0117');
                       ('xs:untypedAtomic') -> ?err('XPTY0117');
                       (Val) ->
                          try
                             cast_as(Val, Type)
                          catch _:_ -> ?err('FORG0001')
                          end
                    end,
               lists:map(NF, Seq);
            _ ->
               M = fun(Val) -> cast_as(Val, Type) end,
               try
                  lists:map(M, Seq)
               catch
                  _:#xqError{} = E -> throw(E);
                  _:_ -> ?err('FORG0001')
               end
         end;
      _ ->
         ?err('FORG0001')
   end.

cast_as_seq(Vals, [], _) -> Vals.

treat_as_seq(Vals, SeqType) ->
   try 
      cast_as_seq(Vals, SeqType)
   catch 
      _:_ ->
         ?err('XPDY0050')
   end.

name_match(_,undefined) ->
   true;
name_match(_,#qname{namespace = <<"*">>,local_name = <<"*">>}) ->
   true;
name_match(#qname{namespace = Ns1,local_name = Ln1},
           #qname{namespace = Ns2,local_name = Ln2}) ->
   Ns1 == Ns2 andalso Ln1 == Ln2.

kind_test_match(#xqSeqType{type = #xqKindTest{kind = Kind1,
                                              name = Name1,
                                              type = Type1},
                           occur = O1} = Kt1,
                #xqSeqType{type = #xqKindTest{kind = Kind2,
                                              name = Name2,
                                              type = Type2},
                           occur = O2} = Kt2) ->
   OM = if O2 == zero_or_many, O1 == zero_or_one ->
              false;
           O2 == zero_or_many, O1 == one ->
              false;
           O2 == one_or_many, O1 == zero_or_one ->
              false;
           O2 == one_or_many, O1 == one ->
              false;
           true ->
              true
        end,
   case seq_type_val_match(Kt1,Kt2) of
      _ when not OM ->
         false;
      false ->
         false;
      nocast ->
         %?dbg("nocast",nocast),
         true;
      _ -> % maybe, so check name and type
         ST = subtype_of(Kt2#xqSeqType.type, Kt1#xqSeqType.type),         
         %?dbg("ST",ST),
         if Kind1 == Kind2 orelse ST ->
               NameMatch = name_match(Name2, Name1),
               if NameMatch ->
                     %?dbg("Type match",{Type1,Type2}),
                     if Type2 == undefined ->
                           true;
                        true ->
                           case seq_type_val_match(Type2,Type1) of
                              false ->
                                 false;
                              nocast ->
                                 true;
                              _ ->
                                 derives_from(Type1,Type2)
                           end
                     end;
                  true ->
                     false
               end;
            true ->
               false
         end
   end.

%TODO expand to parameters
fun_test_match(#xqSeqType{type = #xqFunTest{kind   = Kind1,
                                            params = _Params1,
                                            type   = Type1}} = _Ft1,
               #xqSeqType{type = #xqFunTest{kind   = Kind2,
                                            params = _Params2,
                                            type   = Type2}} = _Ft2) ->
   % maybe, so check name and type
   if Kind1 =:= Kind2;
      Kind1 =:= function ->
         M = seq_type_val_match(Type1,Type2),
         %?dbg("M",M),
         case M of
            false when Type1 =:= any ->
               true;
            false ->
               false;
            nocast ->
               true;
            _ ->
               derives_from(Type1,Type2)
         end;
      true ->
         false
   end.

seq_type_val_match(T, T) -> 
   nocast;
seq_type_val_match(#xqSeqType{type = 'xs:error', occur = zero_or_one}, 
                   #xqSeqType{type = 'empty-sequence'}) -> 
   % xs:error is an empty-sequence
   nocast;
seq_type_val_match(#xqSeqType{type = 'empty-sequence'}, 
                   #xqSeqType{type = 'empty-sequence'}) ->
   nocast;
seq_type_val_match(#xqSeqType{type = _Type, occur = one}, 
                   #xqSeqType{type = 'empty-sequence'}) ->
   false;
seq_type_val_match(#xqSeqType{type = _Type, occur = one_or_many}, 
                   #xqSeqType{type = 'empty-sequence'}) ->
   false;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_one}, 
                   #xqSeqType{type = 'empty-sequence'}) ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one}, 
                   #xqSeqType{type = AType, occur = one}) 
   when TType == AType;
        TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = #xqKindTest{kind = TType} , occur = one}, 
                   #xqSeqType{type = AType, occur = one}) 
   when TType == AType ->
   true;
seq_type_val_match(#xqSeqType{type = #xqKindTest{kind = TType} , occur = one}, 
                   #xqSeqType{type = #xqKindTest{kind = AType}, occur = one}) 
   when TType == AType ->
   true;
seq_type_val_match(#xqSeqType{type = TType, occur = zero_or_one}, 
                   #xqSeqType{type = AType, occur = one}) 
   when TType == AType;
        TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one_or_many}, 
                   #xqSeqType{type = AType, occur = one}) 
   when TType == AType;
        TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one_or_many}, 
                   #xqSeqType{type = AType, occur = one_or_many}) 
   when TType == AType;
        TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = zero_or_many}, 
                   #xqSeqType{type = AType}) 
   when TType == AType;
        TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{occur = one}, 
                   #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{occur = one}, 
                   #xqSeqType{occur = zero_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{occur = one}, 
                   #xqSeqType{occur = zero_or_one}) ->
   true;
seq_type_val_match(#xqSeqType{occur = zero_or_one}, 
                   #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{occur = zero_or_one}, 
                   #xqSeqType{occur = zero_or_one}) ->
   true;
seq_type_val_match(#xqSeqType{occur = zero_or_one}, 
                   #xqSeqType{occur = zero_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{type = Type, occur = one_or_many}, 
                   #xqSeqType{type = Type, occur = one}) ->
   nocast;
seq_type_val_match(#xqSeqType{occur = one_or_many}, 
                   #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{occur = one_or_many}, 
                   #xqSeqType{occur = one_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{occur = zero_or_many}, _) ->
   true;
seq_type_val_match(_A, _B) ->
   false.

promote([],#xqSeqType{occur = zero}) -> [];
promote([],#xqSeqType{occur = zero_or_one}) -> [];
promote([],#xqSeqType{occur = zero_or_many}) -> [];
promote(_,#xqSeqType{occur = zero}) ->
   ?err('XPTY0004');
promote([At],Type) ->
   promote(At,Type);
promote(List,#xqSeqType{occur = Occ}) 
   when is_list(List) andalso Occ =:= zero;
        is_list(List) andalso Occ =:= one;
        is_list(List) andalso Occ =:= zero_or_one ->
   ?err('XPTY0004');
promote(List,#xqSeqType{occur = Occ} = T) 
   when is_list(List) andalso Occ =:= one_or_many;
        is_list(List) andalso Occ =:= zero_or_many ->
   [promote(L, T)|| L <- List];
promote(At,#xqSeqType{type = item}) ->
   At;
promote(#xqRange{} = At,#xqSeqType{type = 'xs:anyAtomicType'}) -> At;
promote(#xqRange{} = R, #xqSeqType{} = T) ->
   case instance_of(R, T) of
      ?true ->
         R;
      _ ->
         ?err('XPTY0004')
   end;
promote(#xqAtomicValue{} = At,#xqSeqType{type = 'xs:anyAtomicType'}) ->
   At;
promote(At, #xqSeqType{type = 'xs:anyAtomicType'}) when is_boolean(At);
                                                        is_binary(At);
                                                        is_number(At) ->
   At;
promote(At, #xqSeqType{type = 'xs:boolean'}) when is_boolean(At) ->
   At;
promote(At, #xqSeqType{type = 'xs:numeric'}) when is_number(At) ->
   At;
promote(At, #xqSeqType{type = TT}) when is_integer(At),
                                        ?xs_integer(TT) ->
   At;
promote(At, #xqSeqType{type = 'xs:double'}) when is_float(At) ->
   At;
promote(At, #xqSeqType{type = 'xs:double'}) when is_integer(At) ->
   cast_as(At, 'xs:double');
promote(At, #xqSeqType{type = 'xs:float'}) when is_integer(At) ->
   cast_as(At, 'xs:float');
promote(At, #xqSeqType{type = 'xs:decimal'}) when is_integer(At) ->
   cast_as(At, 'xs:decimal');
promote(At, #xqSeqType{type = TT}) when is_binary(At),
                                        ?xs_string(TT) ->
   At;
promote(#{nk := _} = N,#xqSeqType{type = T} = St) 
   when T == 'xs:anyAtomicType';
        ?xs_string(T) ->
   promote(atomize(N), St);
promote(#{nk := _} = N,#xqSeqType{type = Kind} = T) ->
   case instance_of(N, T) of
      ?true ->
         N;
      ?false when is_record(Kind, xqKindTest) ->
         ?err('XPTY0004');
      _ ->
         try cast_as_seq(N,T) 
         catch
            _:#xqError{} = E ->
               throw(E);
            _:_ -> ?err('XPTY0004') 
         end
   end;
promote(#array{} = N,#xqSeqType{type = 'xs:anyAtomicType'}) ->
   atomize(N);
promote(List0,#xqSeqType{type = 'xs:anyAtomicType'}) when is_list(List0) ->
   %?dbg("List0",List0),
   List = xqerl_seq3:expand(List0),
   Fun = fun(#xqAtomicValue{} = A) ->
               A;
            (#{nk := _} = N) ->
               atomize(N);
            (_) ->
               ?err('XPTY0004')
         end,
   lists:map(Fun, List);
promote(#xqAtomicValue{type = Num1} = At,#xqSeqType{type = Num2}) 
   when ?xs_numeric(Num1) andalso ?xs_numeric(Num2) ->
   %?dbg("{Num1,Num2}",{Num1,Num2}),
   case subtype_of(Num1,Num2) of
      true ->
         At;
      _ ->
         V2 = cast_as_seq(At,Num2),
         case subtype_of(Num2,Num1) of
            true -> % possible precision loss
               Eq = xqerl_operators:equal(At, V2),
               case Eq of
                  ?true -> V2;
                  _ -> ?err('XPTY0004')
               end;
            _ ->
               V2
         end                     
   end;
promote(#xqAtomicValue{type = 'xs:untypedAtomic'} = At,Type) ->
   cast_as_seq(At,Type);
promote(#xqAtomicValue{type = 'xs:anyURI'} = At,
        #xqSeqType{type = 'xs:string'} = Type) ->
   cast_as_seq(At,Type);
promote(Map,#xqSeqType{type = #xqFunTest{kind = map,
                                         params = P,
                                         type = T}}) when is_map(Map) ->
   %?dbg("{P,T,Map}", {P,T,Map}),
   Check = fun(V,#xqSeqType{type = #xqFunTest{}} = Ty) ->
                 promote(V,Ty);
              (V,Ty) ->
                 case instance_of(V,Ty) of
                    ?true -> true;
                    _ -> 
                       ?err('XPTY0004')
                 end
           end,
   case {P,T} of
      {any,any} ->
         ok;
      {[any],any} ->
         ok;
      {any,_} ->
         _ = [Check(V, T) || {_,{_,V}} <- maps:to_list(Map)],
         ok;
      {[any],_} ->
         _ = [Check(V, T) || {_,{_,V}} <- maps:to_list(Map)],
         ok;
      {[Kt],any} ->
         _ = [Check(K, Kt) || {_,{K,_}} <- maps:to_list(Map)],
         ok;
      {[Kt],_} ->
         _ = [{Check(K, Kt),Check(V, T)} || {_,{K,V}} <- maps:to_list(Map)],
         ok
   end,
   Map;
promote({array,_} = A, #xqSeqType{type = #xqFunTest{kind = array,
                                                    type = any}}) ->
   A;
promote({array,Vs}, #xqSeqType{type = #xqFunTest{kind = array,
                                                 type = Ty}}) ->
   Vs1 = [promote(V, Ty) || V <- Vs],
   %?dbg("Vs1",Vs1),
   {array,Vs1};
promote(#xqFunction{} = A,#xqSeqType{type = #xqFunTest{kind = function,
                                                       params = P,
                                                       type = T} = B}) ->
   % function coercion
   [FA] = fun_to_fun_test([A]),
   case subtype_of(FA,B) of
   %case subtype_of(B, FA) of
      true ->
         A#xqFunction{params = P, type = T};
      _ ->
         ?dbg("XPTY0004",{FA,B}),
         ?err('XPTY0004')
   end;
% cannot cast to duration
promote(#xqAtomicValue{type = AType} = At, #xqSeqType{type = 'xs:duration'}) ->
   case subtype_of(AType,'xs:duration') of
      true ->
         At;
      _ ->
         ?err('XPTY0004')
   end;
promote(#xqAtomicValue{type = AType} = At, #xqSeqType{type = TType} = Type) ->
   case subtype_of(AType,TType) of
      true ->
         cast_as(At,Type);
      _ ->
         ?err('XPTY0004')
   end;
promote(At, #xqSeqType{type = TType} = Type) when is_number(At);
                                                  is_binary(At);
                                                  is_atom(At) ->
   AType =  if is_binary(At) ->
                  'xs:string';
               is_integer(At) ->
                  'xs:integer';
               is_float(At);
               At == infinity;
               At == neg_infinity;
               At == neg_zero;
               At == nan ->
                  'xs:float'
            end,
   case subtype_of(AType,TType) of
      true ->
         cast_as(At,Type);
      _ ->
         ?err('XPTY0004')
   end;
promote(At,#xqSeqType{type = TType} = Type) ->
   InType = type(At),
   %?dbg("InType",{At,InType,TType}),
   case subtype_of(InType,TType) of
      true when is_list(At) andalso InType =:= function ->
         Tests = fun_to_fun_test(At),
         case subtype_of(Tests, TType) of
            true ->
               At;
            _ ->
               ?err('XPTY0004')
         end;
      true when is_list(At) ->
         At;
      true when is_record(At, xqFunction) ->
         At;
      true when is_function(At) ->
         At;
      true when is_map(At) ->
         At;
      true ->
         #xqAtomicValue{type = TType, value = value(At)};
      _ when is_map(At) ->
         ?err('XPTY0004');
      _ when is_record(TType, xqFunTest) ->
         ?err('XPTY0004');
      _ when InType =:= 'xs:untypedAtomic' ->
         try cast_as_seq(At,Type) catch _:_ -> ?err('FORG0001') end;
      _ when ?xs_numeric(InType) andalso ?xs_numeric(TType) ->
         cast_as_seq(At,Type);
      _ ->
         try cast_as_seq(At,Type) catch _:_ -> ?err('FORG0001') end
   end.


fun_to_fun_test([]) -> [];
fun_to_fun_test([#xqFunction{annotations = An, params = P, type = Ty }|T]) ->
   [#xqFunTest{kind = function, 
               annotations = An, 
                 %if An == undefined -> []; true -> An end, 
               params = P, 
               type = Ty}|fun_to_fun_test(T)].

% params subtype, type
% subtype substitution allowed when true 
% (don't cast the value, keep original type)
% instance of returns true with this function
subtype_of(T, T) -> true;
subtype_of(#xqFunTest{} = F1, #xqFunTest{} = F2) ->
   fun_check(F1,F2);
subtype_of(Fs, #xqFunTest{} = F2) when is_list(Fs) ->
   lists:all(fun(F) ->
                   fun_check(F,F2)
             end, Fs);
subtype_of(T, #xqKindTest{kind = T}) -> true;
subtype_of(T, #xqFunTest{kind = T}) -> true;
subtype_of(T, #xqFunTest{kind = T}) -> true;
subtype_of(map, #xqFunTest{kind = function, type = any}) -> true;
subtype_of(#xqKindTest{kind = node}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = 'document-node'}, 
           #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = element}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = comment}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = text}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = attribute}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = namespace}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = 'processing-instruction'}, 
           #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = element, name = N1}, 
           #xqKindTest{kind = element, name = N2}) -> 
   has_name(N1, N2);
subtype_of(#xqKindTest{kind = attribute, name = N1}, 
           #xqKindTest{kind = attribute, name = N2}) -> 
   has_name(N1, N2);
subtype_of(#xqKindTest{kind = 'processing-instruction', name = N1}, 
           #xqKindTest{kind = 'processing-instruction', name = N2}) -> 
   has_name(N1, N2);
subtype_of('empty-sequence', _) -> true;
subtype_of(_, item) -> true;
subtype_of(Node, #xqKindTest{kind = Node}) -> true;
subtype_of('document-node', #xqKindTest{kind = node}) -> true;
subtype_of('element', #xqKindTest{kind = node}) -> true;
subtype_of('comment', #xqKindTest{kind = node}) -> true;
subtype_of('text', #xqKindTest{kind = node}) -> true;
subtype_of('attribute', #xqKindTest{kind = node}) -> true;
subtype_of('processing-instruction', #xqKindTest{kind = node}) -> true;
subtype_of('element', 'xs:QName')   -> ?err('XPTY0117'); % namespace sensitive
subtype_of('attribute', 'xs:QName') -> ?err('XPTY0117'); % namespace sensitive

subtype_of(map, 'xs:anyAtomicType') -> false;
subtype_of(_, 'xs:anyAtomicType') -> true;
subtype_of('xs:dateTimeStamp'     , 'xs:dateTime') -> true;
subtype_of('xs:dayTimeDuration'   , 'xs:duration') -> true;
subtype_of('xs:yearMonthDuration' , 'xs:duration') -> true;
subtype_of('xs:normalizedString'  , 'xs:string') -> true;
subtype_of('xs:token'             , 'xs:normalizedString') -> true;
subtype_of('xs:token'             , 'xs:string') -> true;
subtype_of('xs:language'          , 'xs:token') -> true;
subtype_of('xs:language'          , 'xs:normalizedString') -> true;
subtype_of('xs:language'          , 'xs:string') -> true;
subtype_of('xs:NMTOKEN'           , 'xs:token') -> true;
subtype_of('xs:NMTOKEN'           , 'xs:normalizedString') -> true;
subtype_of('xs:NMTOKEN'           , 'xs:string') -> true;
subtype_of('xs:Name'              , 'xs:token') -> true;
subtype_of('xs:Name'              , 'xs:normalizedString') -> true;
subtype_of('xs:Name'              , 'xs:string') -> true;
subtype_of('xs:NCName'            , 'xs:Name') -> true;
subtype_of('xs:NCName'            , 'xs:token') -> true;
subtype_of('xs:NCName'            , 'xs:normalizedString') -> true;
subtype_of('xs:NCName'            , 'xs:string') -> true;
subtype_of('xs:ID'                , 'xs:NCName') -> true;
subtype_of('xs:ID'                , 'xs:Name') -> true;
subtype_of('xs:ID'                , 'xs:token') -> true;
subtype_of('xs:ID'                , 'xs:normalizedString') -> true;
subtype_of('xs:ID'                , 'xs:string') -> true;
subtype_of('xs:IDREF'             , 'xs:NCName') -> true;
subtype_of('xs:IDREF'             , 'xs:Name') -> true;
subtype_of('xs:IDREF'             , 'xs:token') -> true;
subtype_of('xs:IDREF'             , 'xs:normalizedString') -> true;
subtype_of('xs:IDREF'             , 'xs:string') -> true;
subtype_of('xs:IDREFS'            , 'xs:IDREF') -> true;
subtype_of('xs:IDREFS'            , 'xs:NCName') -> true;
subtype_of('xs:IDREFS'            , 'xs:Name') -> true;
subtype_of('xs:IDREFS'            , 'xs:token') -> true;
subtype_of('xs:IDREFS'            , 'xs:normalizedString') -> true;
subtype_of('xs:IDREFS'            , 'xs:string') -> true;
subtype_of('xs:ENTITY'            , 'xs:NCName') -> true;
subtype_of('xs:ENTITY'            , 'xs:Name') -> true;
subtype_of('xs:ENTITY'            , 'xs:token') -> true;
subtype_of('xs:ENTITY'            , 'xs:normalizedString') -> true;
subtype_of('xs:ENTITY'            , 'xs:string') -> true;
subtype_of('xs:ENTITIES'          , 'xs:ENTITY') -> true;
subtype_of('xs:ENTITIES'          , 'xs:NCName') -> true;
subtype_of('xs:ENTITIES'          , 'xs:Name') -> true;
subtype_of('xs:ENTITIES'          , 'xs:token') -> true;
subtype_of('xs:ENTITIES'          , 'xs:normalizedString') -> true;
subtype_of('xs:ENTITIES'          , 'xs:string') -> true;
subtype_of('xs:double'            , 'xs:numeric') -> true;
subtype_of('xs:float'             , 'xs:numeric') -> true;
subtype_of('xs:integer'           , 'xs:decimal') -> true;
subtype_of('xs:integer'           , 'xs:numeric') -> true;
subtype_of('xs:decimal'           , 'xs:numeric') -> true;
subtype_of('xs:nonPositiveInteger', 'xs:integer') -> true;
subtype_of('xs:nonPositiveInteger', 'xs:decimal') -> true;
subtype_of('xs:nonPositiveInteger', 'xs:numeric') -> true;
subtype_of('xs:negativeInteger'   , 'xs:nonPositiveInteger') -> true;
subtype_of('xs:negativeInteger'   , 'xs:integer') -> true;
subtype_of('xs:negativeInteger'   , 'xs:decimal') -> true;
subtype_of('xs:negativeInteger'   , 'xs:numeric') -> true;
subtype_of('xs:long'              , 'xs:integer') -> true;
subtype_of('xs:long'              , 'xs:decimal') -> true;
subtype_of('xs:long'              , 'xs:numeric') -> true;
subtype_of('xs:int'               , 'xs:long') -> true;
subtype_of('xs:int'               , 'xs:integer') -> true;
subtype_of('xs:int'               , 'xs:decimal') -> true;
subtype_of('xs:int'               , 'xs:numeric') -> true;
subtype_of('xs:short'             , 'xs:int') -> true;
subtype_of('xs:short'             , 'xs:long') -> true;
subtype_of('xs:short'             , 'xs:integer') -> true;
subtype_of('xs:short'             , 'xs:decimal') -> true;
subtype_of('xs:short'             , 'xs:numeric') -> true;
subtype_of('xs:byte'              , 'xs:short') -> true;
subtype_of('xs:byte'              , 'xs:int') -> true;
subtype_of('xs:byte'              , 'xs:long') -> true;
subtype_of('xs:byte'              , 'xs:integer') -> true;
subtype_of('xs:byte'              , 'xs:decimal') -> true;
subtype_of('xs:byte'              , 'xs:numeric') -> true;
subtype_of('xs:nonNegativeInteger', 'xs:integer') -> true;
subtype_of('xs:nonNegativeInteger', 'xs:decimal') -> true;
subtype_of('xs:nonNegativeInteger', 'xs:numeric') -> true;
subtype_of('xs:unsignedLong'      , 'xs:nonNegativeInteger') -> true;
subtype_of('xs:unsignedLong'      , 'xs:integer') -> true;
subtype_of('xs:unsignedLong'      , 'xs:decimal') -> true;
subtype_of('xs:unsignedLong'      , 'xs:numeric') -> true;
subtype_of('xs:unsignedInt'       , 'xs:unsignedLong') -> true;
subtype_of('xs:unsignedInt'       , 'xs:nonNegativeInteger') -> true;
subtype_of('xs:unsignedInt'       , 'xs:integer') -> true;
subtype_of('xs:unsignedInt'       , 'xs:decimal') -> true;
subtype_of('xs:unsignedInt'       , 'xs:numeric') -> true;
subtype_of('xs:unsignedShort'     , 'xs:unsignedInt') -> true;
subtype_of('xs:unsignedShort'     , 'xs:unsignedLong') -> true;
subtype_of('xs:unsignedShort'     , 'xs:nonNegativeInteger') -> true;
subtype_of('xs:unsignedShort'     , 'xs:integer') -> true;
subtype_of('xs:unsignedShort'     , 'xs:decimal') -> true;
subtype_of('xs:unsignedShort'     , 'xs:numeric') -> true;
subtype_of('xs:unsignedByte'      , 'xs:unsignedShort') -> true;
subtype_of('xs:unsignedByte'      , 'xs:unsignedInt') -> true;
subtype_of('xs:unsignedByte'      , 'xs:unsignedLong') -> true;
subtype_of('xs:unsignedByte'      , 'xs:nonNegativeInteger') -> true;
subtype_of('xs:unsignedByte'      , 'xs:integer') -> true;
subtype_of('xs:unsignedByte'      , 'xs:decimal') -> true;
subtype_of('xs:unsignedByte'      , 'xs:numeric') -> true;
subtype_of('xs:positiveInteger'   , 'xs:nonNegativeInteger') -> true;
subtype_of('xs:positiveInteger'   , 'xs:integer') -> true;
subtype_of('xs:positiveInteger'   , 'xs:decimal') -> true;
subtype_of('xs:positiveInteger'   , 'xs:numeric') -> true;
subtype_of( _AT, _ET ) -> 
   false.

castable(#{nk := _} = Seq, TargetSeqType) ->
   castable(atomize(Seq), TargetSeqType);
castable(#xqAtomicValue{} = Seq, TargetSeqType) ->
   castable([Seq], TargetSeqType);
castable(Seq, #xqSeqType{type = Type} = TargetSeqType) ->
   #xqSeqType{occur = O} = SeqType = xqerl_seq3:get_seq_type(Seq),
   if O == one_or_many ->
         ?false;
      true ->
         case seq_type_val_match(TargetSeqType, SeqType) of
            nocast ->
               ?true;
            true ->
               try_cast(Seq, Type);
            _ ->
               ?false
         end
   end;
castable( Av, Type ) -> 
   #xqSeqType{occur = O} = xqerl_seq3:get_seq_type(Av),
   if O == one_or_many ->
         ?false;
      true ->
         try_cast(Av, Type)
   end.

%% castable([], TargetSeqType, Namespaces) ->
%%    castable(xqerl_seq3:empty(), TargetSeqType, Namespaces);
castable(#xqAtomicValue{} = Seq, TargetSeqType, Namespaces) ->
   castable(xqerl_seq3:singleton(Seq), TargetSeqType, Namespaces);
castable(Seq, #xqSeqType{type = Type} = TargetSeqType, Namespaces) ->
   #xqSeqType{occur = O} = SeqType = xqerl_seq3:get_seq_type(Seq),
   if O == one_or_many ->
         ?false;
      true ->
         case seq_type_val_match(TargetSeqType, SeqType) of
            nocast ->
               ?true;
            true ->
               try_cast(Seq, Type, Namespaces);
            _ ->
               ?false
         end
   end;
castable( Av, Type, Namespaces) -> 
   #xqSeqType{occur = O} = xqerl_seq3:get_seq_type(Av),
   if O == one_or_many;
      O == zero ->
         ?false;
      true ->
         try_cast(Av, Type, Namespaces)
   end.

try_cast(Av, Type) ->
   try
      _ = cast_as(Av, Type),
      ?true
   catch
      ?ERROR_MATCH(<<"FORG0001">>) -> ?false;
      ?ERROR_MATCH(<<"XPTY0004">>) -> ?false;
      ?ERROR_MATCH(<<"FODT0001">>) -> ?false;
      ?ERROR_MATCH(<<"FODT0002">>) -> ?false;
      ?ERROR_MATCH(<<"FOCA0002">>) -> ?false;
      ?ERROR_MATCH(<<"XPST0081">>) -> ?false;
      _:E -> throw(E)            
   end.

try_cast(Av, Type, Namespaces) ->
   try
      _ = cast_as(Av, Type, Namespaces),
      ?true
   catch
      ?ERROR_MATCH(<<"FORG0001">>) -> ?false;
      ?ERROR_MATCH(<<"XPTY0004">>) -> ?false;
      ?ERROR_MATCH(<<"FODT0001">>) -> ?false;
      ?ERROR_MATCH(<<"FODT0002">>) -> ?false;
      ?ERROR_MATCH(<<"FOCA0002">>) -> ?false;
      ?ERROR_MATCH(<<"XPST0081">>) -> ?false;
      _:E -> throw(E)            
   end.

%TODO slow fix
instance_of(_, #xqSeqType{type = item, occur = zero_or_many}) ->
   ?true;
instance_of(#xqRange{cnt = C}, #xqSeqType{type = Type,
                                          occur = TOccur})
   when C =:= 1, ?xs_integer(Type) orelse Type == item, TOccur == one;
        C =:= 1, ?xs_integer(Type) orelse Type == item, TOccur == zero_or_one;
        C =:= 0, ?xs_integer(Type) orelse Type == item, TOccur == zero_or_one; 
        C > 0, ?xs_integer(Type) orelse Type == item, TOccur == one_or_many; 
        ?xs_integer(Type) orelse Type == item, TOccur == zero_or_many ->
   %?dbg("range",true),
   ?true;
instance_of(#xqRange{}, _) ->
   %?dbg("range",false),
   ?false;
instance_of([], #xqSeqType{occur = TOccur}) 
   when TOccur == none;
        TOccur == zero;
        TOccur == zero_or_one;
        TOccur == zero_or_many -> ?true;
instance_of([], #xqSeqType{}) -> ?false;
instance_of([_,_|_], #xqSeqType{occur = TOccur}) 
   when TOccur == one;
        TOccur == zero_or_one ->
   ?false;
instance_of(_, #xqSeqType{type = item,
                          occur = TOccur}) 
   when TOccur == one;
        TOccur == one_or_many;
        TOccur == zero_or_one;
        TOccur == zero_or_many -> ?true;
instance_of([Seq], #xqSeqType{type = #xqKindTest{} = TType, 
                              occur = TOccur}) 
   when TOccur == one;
        TOccur == one_or_many;
        TOccur == zero_or_one;
        TOccur == zero_or_many ->
   instance_of1(Seq, TType);
instance_of(Seq, #xqSeqType{type = #xqFunTest{} = TType,
                            occur = TOccur}) 
   when TOccur == one_or_many;
        TOccur == zero_or_many ->
   instance_of1(Seq, TType);
instance_of(Seq, #xqSeqType{type = #xqFunTest{} = TType,
                            occur = TOccur}) 
   when TOccur == one;
        TOccur == zero_or_one ->
   instance_of1(Seq, TType);
instance_of(Seq, #xqSeqType{type = TType, 
                            occur = TOccur}) 
   when is_map(Seq), TOccur == one;
        is_map(Seq), TOccur == one_or_many;
        is_map(Seq), TOccur == zero_or_one;
        is_map(Seq), TOccur == zero_or_many -> 
   instance_of1(Seq, TType);
instance_of(#{nk := _} = Seq, #xqSeqType{type = TType,
                                        occur = TOccur}) 
   when TOccur == one;
        TOccur == one_or_many;
        TOccur == zero_or_one;
        TOccur == zero_or_many -> 
   instance_of1(Seq, TType);
instance_of(#array{} = Seq, #xqSeqType{type = TType, 
                                       occur = TOccur}) 
   when TOccur == one;
        TOccur == one_or_many;
        TOccur == zero_or_one;
        TOccur == zero_or_many -> 
   instance_of1(Seq, TType);
instance_of(#xqAtomicValue{}, #xqSeqType{type = #xqKindTest{}}) ->
   ?false;
instance_of(#xqAtomicValue{}, #xqSeqType{type = #xqFunTest{}}) ->
   ?false;
instance_of(Val, #xqSeqType{type = 'xs:numeric'}) 
   when is_number(Val);
        Val == neg_zero;
        Val == infinity;
        Val == nan;
        Val == neg_infinity -> 
   ?true;
instance_of(Val, #xqSeqType{type = 'xs:double'}) when is_float(Val);
                                                      Val == neg_zero;
                                                      Val == infinity;
                                                      Val == nan;
                                                      Val == neg_infinity -> 
   ?true;
instance_of(Val, #xqSeqType{type = 'xs:decimal'}) when is_integer(Val) -> 
   ?true;
instance_of(Val, #xqSeqType{type = 'xs:integer'}) when is_integer(Val) -> 
   ?true;
instance_of(Val, #xqSeqType{type = 'xs:string'}) when is_binary(Val) -> 
   ?true;
instance_of(Bool, #xqSeqType{type = 'xs:boolean'}) when is_boolean(Bool) -> 
   ?true;
instance_of(Val, #xqSeqType{type = 'xs:anyAtomicType'}) when is_boolean(Val);
                                                             is_binary(Val);
                                                             is_number(Val) -> 
   ?true;
instance_of(#xqAtomicValue{type = IType}, 
            #xqSeqType{type = IType}) -> ?true;
instance_of(#xqAtomicValue{type = IType}, 
            #xqSeqType{type = TType, occur = TOccur}) 
   when TOccur == one;
        TOccur == one_or_many;
        TOccur == zero_or_one;
        TOccur == zero_or_many ->
   simple_type_check(IType, TType);

instance_of([Seq], Type) ->
   instance_of(Seq, Type);
instance_of(Seq, #xqSeqType{type = TType, occur = TOccur}) 
   when is_list(Seq), TOccur == one_or_many;
        is_list(Seq), TOccur == zero_or_many ->
   F = fun(Item) ->
             instance_of1(Item, TType)
       end,
   lists:all(F, Seq);
instance_of(Seq, #xqSeqType{type = TType, occur = TOccur}) 
   when TOccur == one_or_many;
        TOccur == zero_or_many -> 
   instance_of1(Seq, TType);
instance_of(_,_) ->
   ?false.

simple_type_check(I, 'xs:anyAtomicType') when ?xs_anyAtomicType(I) -> ?true;
simple_type_check(I, 'xs:ENTITY') when ?xs_ENTITY(I) -> ?true;
simple_type_check(I, 'xs:IDREF') when ?xs_IDREF(I) -> ?true;
simple_type_check(I, 'xs:NCName') when ?xs_NCName(I) -> ?true;
simple_type_check(I, 'xs:NMTOKEN') when ?xs_NMTOKEN(I) -> ?true;
simple_type_check(I, 'xs:Name') when ?xs_Name(I) -> ?true;
simple_type_check(I, 'xs:decimal') when ?xs_decimal(I) -> ?true;
simple_type_check(I, 'xs:duration') when ?xs_duration(I) -> ?true;
simple_type_check(I, 'xs:int') when ?xs_int(I) -> ?true;
simple_type_check(I, 'xs:integer') when ?xs_integer(I) -> ?true;
simple_type_check(I, 'xs:long') when ?xs_long(I) -> ?true;
simple_type_check(I, 'xs:nonNegativeInteger') when ?xs_nonNegativeInteger(I) -> ?true;
simple_type_check(I, 'xs:nonPositiveInteger') when ?xs_nonPositiveInteger(I) -> ?true;
simple_type_check(I, 'xs:normalizedString') when ?xs_normalizedString(I) -> ?true;
simple_type_check(I, 'xs:numeric') when ?xs_numeric(I) -> ?true;
simple_type_check(I, 'xs:short') when ?xs_short(I) -> ?true;
simple_type_check(I, 'xs:string') when ?xs_string(I) -> ?true;
simple_type_check(I, 'xs:token') when ?xs_token(I) -> ?true;
simple_type_check(I, 'xs:unsignedInt') when ?xs_unsignedInt(I) -> ?true;
simple_type_check(I, 'xs:unsignedLong') when ?xs_unsignedLong(I) -> ?true;
simple_type_check(I, 'xs:unsignedShort') when ?xs_unsignedShort(I) -> ?true;
simple_type_check(_, _) -> ?false.

check_param_types(_Params, any) -> true;
check_param_types(Params, Params) -> true;
check_param_types(Params, TargetParams) ->
   try
      Zipped = lists:zip(Params, TargetParams),
      %?dbg("Zipped",Zipped),
      lists:all(fun({#xqSeqType{type = #xqKindTest{}} = P,
                     #xqSeqType{type = #xqKindTest{}} = T}) ->
                      kind_test_match(P, T);
                   ({#xqSeqType{type = #xqKindTest{}},
                     #xqSeqType{type = item}}) ->
                      false;
                   ({#xqSeqType{type = #xqFunTest{}} = P,
                     #xqSeqType{type = #xqFunTest{}} = T}) ->
                      fun_test_match(P, T);
                   ({#xqSeqType{type = P},
                     #xqSeqType{type = T}}) ->
                      P == T orelse subtype_of(T, P)
                      %P == T orelse subtype_of(P, T)
                end, Zipped)
   catch
      _:_ ->
         false
   end.

%TODO - do something
check_annotations(_Annos, []) -> true;
check_annotations(_Annos, _TargetAnnos) -> true.

%TODO - do something
check_return_type(_Type, any) -> true;
check_return_type(#xqSeqType{type = Type}, #xqSeqType{type = ReturnType}) ->
   %?dbg("{Type, ReturnType}",{Type, ReturnType}),
   subtype_of(Type,ReturnType).

instance_of1(Bool, 'xs:boolean') when is_boolean(Bool) -> true;
instance_of1(Bool, 'xs:anyAtomicType') when is_boolean(Bool) -> true;
instance_of1(#xqAtomicValue{}, 'xs:anyAtomicType') -> true;
instance_of1(#xqRange{}, 'xs:anyAtomicType') -> true;
instance_of1(#xqRange{}, T) when ?xs_integer(T) -> true;
instance_of1(#{nk := _}, #xqKindTest{kind = node}) ->
   true;
instance_of1(#{nk := document} = Node, 
             #xqKindTest{kind = 'document-node', 
                         name = Qn,
                         type = Ty}) ->
   Norm = norm_name_type(Qn, Ty),
   case xqldb_xpath:self_document_node(Node, {Norm, []}) of
      [] ->
         false;
      _ ->
         true
   end;
instance_of1(#{nk := element,
               nn := {Ns, _, Ln}} = _Node, 
             #xqKindTest{kind = element, 
                         name = Qn,
                         type = Ty}) ->
   case norm_name_type(Qn, Ty) of
      {'_', '_', '_'} -> true;
      {'_', '_', 'xs:untyped'} -> true;
      {'_', Ln, '_'} -> true;
      {'_', Ln, 'xs:untyped'} -> true;
      {Ns, '_', '_'} -> true;
      {Ns, '_', 'xs:untyped'} -> true;
      {Ns, Ln, '_'} -> true;
      {Ns, Ln, 'xs:untyped'} -> true;
      %_ when is_map_key(tn, Node) -> 
      %   maps:get(tn, Node) == Ty;      
      _ -> false
   end;
instance_of1(#{nk := attribute,
               nn := {Ns, _, Ln}} = Node, 
             #xqKindTest{kind = attribute, 
                         name = Qn,
                         type = Ty}) ->
   case norm_name_type(Qn, Ty) of
      {'_', '_', '_'} -> true;
      {'_', '_', 'xs:untypedAtomic'} -> true;
      {'_', Ln, '_'} -> true;
      {'_', Ln, 'xs:untypedAtomic'} -> true;
      {Ns, '_', '_'} -> true;
      {Ns, '_', 'xs:untypedAtomic'} -> true;
      {Ns, Ln, '_'} -> true;
      {Ns, Ln, 'xs:untypedAtomic'} -> true;
      _ when is_map_key(tn, Node) -> 
         maps:get(tn, Node) == Ty;      
      _ -> false
   end;
instance_of1(#{nk := 'processing-instruction',
               nn := {_,_,NLn}}, 
             #xqKindTest{kind = 'processing-instruction', 
                         name = #qname{local_name = Ln}}) ->
   case {NLn, Ln} of
      {Ln,Ln} -> true;
      {Ln,<<"*">>} -> true;
      _ -> false
   end;
instance_of1(#{nk := 'processing-instruction'}, 
             #xqKindTest{kind = 'processing-instruction'}) ->
   true;
instance_of1(_, #xqKindTest{kind = 'processing-instruction'}) ->
   false;

instance_of1(#{nk := namespace}, #xqKindTest{kind = namespace}) -> true;
instance_of1(_, #xqKindTest{kind = namespace}) -> false;

instance_of1(#{nk := comment}, #xqKindTest{kind = comment}) -> true;
instance_of1(_, #xqKindTest{kind = comment}) -> false;

instance_of1(#{nk := text}, #xqKindTest{kind = text}) -> true;
instance_of1(_, #xqKindTest{kind = text}) -> false;

%% #xqKindTest{kind = 'schema-element',   name = WQName}.
%% #xqKindTest{kind = 'schema-attribute', name = WQName}.

%% #xqFunTest{kind = function, annotations = AnnoList, params = any | ListOfSeqTypes, type = any | SeqType} .
%% #xqFunTest{kind = map, params = any | #xqSeqType{type = BType, occur = one}, type = any | SeqType} .
%% #xqFunTest{kind = array, params = any, type = any | SeqType} .

instance_of1(Fun, #xqFunTest{kind = function, 
                             annotations = _AnnoList, 
                             params = any, 
                             type = any}) 
   when is_function(Fun);
        is_map(Fun) ->
   true;

instance_of1(#xqFunction{annotations = Annos, 
                         params = Params, 
                         type = Type}, 
             #xqFunTest{kind = function, 
                        annotations = AnnoList, 
                        params = ListOfSeqTypes, 
                        type = SeqType}) ->
   AnnoOk = check_annotations(Annos, AnnoList),
   ParamOk = check_param_types(Params, ListOfSeqTypes),
   TypeOk = check_return_type(Type, SeqType),
   if AnnoOk andalso ParamOk andalso TypeOk ->
         true;
      true ->
         %?dbg("{AnnoOk,ParamOk,TypeOk}",{AnnoOk,ParamOk,TypeOk}),
         %?dbg("Params, ListOfSeqTypes",{Params, ListOfSeqTypes}),
         false
   end;
instance_of1(Map, #xqFunTest{kind = function, 
                             type = SeqType}) 
   when is_map(Map) -> 
   % map is function(anyAtomic,V)
   instance_of1(Map, #xqFunTest{kind = map, 
                                params = [#xqSeqType{type = 'xs:anyAtomicType', 
                                                     occur = one}], 
                                type = SeqType});
instance_of1(Map, #xqFunTest{kind = map, 
                             params = any}) 
   when is_map(Map) ->
      true;
instance_of1(Map, #xqFunTest{kind = map, 
                             params = [Param], 
                             type = SeqType}) 
   when is_map(Map) ->
   KVs = maps:values(Map),
   lists:all(fun({K,V}) ->
                   instance_of(K, Param) == ?true andalso 
                     instance_of(V, SeqType) == ?true
             end, KVs);
% array is always function with single integer param
instance_of1({array,_}, #xqFunTest{kind = function, 
                                   params = [#xqSeqType{type = 'xs:integer',
                                                        occur = one}]}) -> 
   % array is a function arity 1
   true;
instance_of1({array,Array}, #xqFunTest{kind = function, params = SeqType}) -> 
   instance_of1({array,Array}, #xqFunTest{kind = array, type = SeqType});
instance_of1({array,_}, #xqFunTest{kind = array, type = any}) -> true;
instance_of1({array,Array}, #xqFunTest{kind = array, type = SeqType}) ->
   lists:all(fun(AI) ->
                   instance_of(AI, SeqType) == ?true
                   %check_return_type(get_list_type(AI), SeqType)
             end, Array);
instance_of1(Seq, Type) when is_list(Seq) ->
   F = fun(Item) ->
             instance_of1(Item, Type)
       end,
   lists:all(F, Seq);
instance_of1(Seq, Type) ->
   IType = get_item_type(Seq),
   TType = get_type(Type),
   if IType == TType ->
         true;
      true ->
         Key = {?MODULE,?FUNCTION_NAME,IType,TType},
         case xqerl_lib:lget(Key) of
            undefined ->
               BIType = xqerl_btypes:get_type(IType),
               BTType = xqerl_btypes:get_type(TType),
               Resp = xqerl_btypes:can_substitute(BIType, BTType),
               xqerl_lib:lput(Key, Resp),
               Resp;
            Ok ->
               Ok
         end
   end.

get_type(#xqSeqType{type = Type}) ->
   get_type(Type);
get_type(Type) when is_atom(Type) ->
   Type;
get_type(#xqKindTest{kind = Type}) ->
   Type;
get_type(#xqFunTest{kind = Type}) ->
   Type.

get_item_type(Val) when is_binary(Val) -> 'xs:string';
get_item_type(Val) when is_integer(Val) -> 'xs:integer';
get_item_type(Val) when is_boolean(Val) -> 'xs:boolean';
get_item_type(Val) when is_float(Val) -> 'xs:double';
get_item_type(#xqAtomicValue{type = Type}) ->
   Type;
get_item_type(#{nk := _} = Node) ->
   case xqerl_node:get_node_type(Node) of
      [T] ->
         T;
      T ->
         T
   end;
get_item_type(Fun) when is_function(Fun) ->
   function;
get_item_type(Map) when is_map(Map) ->
   map;
get_item_type({array,_}) ->
   array;
get_item_type(_) ->
   %?dbg("get_item_type",O),
   item.

%% get_list_type([]) -> #xqSeqType{type = 'empty-sequence', occur = zero};
%% get_list_type([S]) -> #xqSeqType{type = get_item_type(S),occur = one};
%% get_list_type(Types) when is_list(Types) ->
%%    get_list_type(Types, []);
%% get_list_type(S) -> #xqSeqType{type = get_item_type(S),occur = one}.
%% 
%% get_list_type([], []) ->
%%    #xqSeqType{type = 'empty-sequence', occur = zero};
%% get_list_type([], BType) ->
%%    #xqSeqType{type = xqerl_btypes:get_type(BType), occur = one_or_many};
%% get_list_type([undefined|Types], Acc) ->
%%    get_list_type(Types, Acc);
%% get_list_type([H|Types], []) ->
%%    if H == [] ->
%%          get_list_type(Types, []);
%%       is_list(H) ->
%%          #xqSeqType{type = H1} = get_list_type(H, []),
%%          get_list_type(Types, xqerl_btypes:get_type(H1));
%%       true ->
%%          get_list_type(Types, xqerl_btypes:get_type(get_item_type(H)))
%%    end;
%% get_list_type([H|Types], BType) ->
%%    if H == [] ->
%%          get_list_type(Types, BType);
%%       true ->
%%          H1 = if is_list(H) ->
%%                     get_list_type(H);
%%                  true ->
%%                     get_item_type(H)
%%               end,
%%          HType = xqerl_btypes:get_type(H1),
%%          HN = xqerl_btypes:is_numeric(HType),
%%          BN = xqerl_btypes:is_numeric(BType),
%%          if HN andalso BN ->
%%                Item = xqerl_btypes:get_type('item'),
%%                if Item == HType band BType ->
%%                      get_list_type(Types, xqerl_btypes:get_type('xs:numeric'));
%%                   true ->
%%                      get_list_type(Types, HType band BType)
%%                end;
%%             true ->
%%                get_list_type(Types, HType band BType)
%%          end
%%    end.

construct_as(At,#xqSeqType{type = 'xs:error'}) ->
   xqerl_xs:xs_error([], At);
construct_as(At,#xqSeqType{type = _Type}) ->
   At.

% dialyzer % type_check(#xqSeqType{}, undefined) -> true;
% dialyzer % type_check(undefined, #xqSeqType{}) -> true;
type_check(#xqSeqType{}, any) -> true;
type_check(any, #xqSeqType{}) -> true;
type_check(#xqSeqType{type = Type} = T1, #xqSeqType{type = TargetType} = T2) ->
   case seq_type_val_match(T2, T1) of
      nocast -> true;
      _ ->
         %?dbg("subtype_of(TargetType, Type)",{TargetType, Type}),
         subtype_of(Type,TargetType) orelse subtype_of(TargetType,Type) 
   end;
type_check(_, _) ->
   false.

param_check(_, any) -> true;
param_check(any, _) -> true;
param_check([], []) -> true;
param_check([A|L1], [B|L2]) ->
   type_check(A,B) andalso param_check(L1, L2);
param_check(_, _) ->
   false.

fun_check(#xqFunTest{kind = function, name = Name1, 
                     type = RetType1, 
                     params = Params1},
          #xqFunTest{kind = function, name = Name2, 
                     type = RetType2, 
                     params = Params2}) ->
   % this should only fail if the 1st function cannot take the types of the 2nd
   NameCheck = has_name(Name2,Name1),
   %?dbg(?LINE, {NameCheck, Name1, Name2}),
   TypeCheck = type_check(RetType1, RetType2),
   %?dbg(?LINE, {TypeCheck, RetType1, RetType2}),
   ParamCheck = param_check(Params1,Params2),
   %?dbg(?LINE, {ParamCheck, Params1, Params2}),
   NameCheck andalso TypeCheck andalso ParamCheck;
fun_check(#xqFunTest{},#xqFunTest{}) ->
   false.


cast_as_string([]) -> [];
cast_as_string(L) when is_list(L) -> ?err('XPTY0004'); % only singleton
cast_as_string(Str) when is_binary(Str) -> Str;
cast_as_string(Int) when is_integer(Int) -> integer_to_binary(Int);
cast_as_string(?xav(IntType, Val)) when ?xs_integer(IntType) -> 
   cast_as_string(Val);
cast_as_string(?xav('xs:untypedAtomic', Val)) -> Val;
cast_as_string(true) -> <<"true">>;
cast_as_string(false) -> <<"false">>;
cast_as_string(?xav('xs:anyURI', 'no-namespace')) -> <<>>;
cast_as_string(?xav('xs:anyURI', Val)) -> xqerl_lib:decode_string(Val);
cast_as_string(?xav('xs:base64Binary', Val)) -> b64bin_to_str(Val);
cast_as_string(?xav(_, #xsDateTime{string_value = Val})) -> Val;
cast_as_string(?xav('xs:decimal', Val)) -> xqerl_numeric:string(Val);
cast_as_string(infinity) -> <<"INF">>;
cast_as_string(neg_infinity) -> <<"-INF">>;
cast_as_string(neg_zero) -> <<"-0">>;
cast_as_string(nan) -> <<"NaN">>;
cast_as_string(Dbl) when is_float(Dbl) -> xqerl_numeric:string(Dbl);
cast_as_string(?xav('xs:float', infinity)) -> <<"INF">>; 
cast_as_string(?xav('xs:float', neg_infinity)) -> <<"-INF">>;
cast_as_string(?xav('xs:float', neg_zero)) -> <<"-0">>;
cast_as_string(?xav('xs:float', nan)) -> <<"NaN">>;
cast_as_string(?xav('xs:float', Val)) -> xqerl_numeric:float_string(Val);
cast_as_string(?xav('xs:hexBinary', Val)) -> hexbin_to_str(Val);
cast_as_string(?xav('xs:NMTOKEN', Val)) -> Val;
cast_as_string(?xav('xs:Name', Val)) -> Val;
cast_as_string(?xav('xs:NCName', Val)) -> Val;
cast_as_string(?xav('xs:ID', Val)) -> Val;
cast_as_string(?xav('xs:IDREF', Val)) -> Val;
cast_as_string(?xav('xs:ENTITY', Val)) -> Val;
cast_as_string(?xav('xs:NOTATION', #qname{prefix = <<>>, local_name = L})) -> L;
cast_as_string(?xav('xs:NOTATION', #qname{prefix = P, local_name = L})) -> 
   <<P/binary,":",L/binary>>;
cast_as_string(?xav('xs:QName', #qname{prefix = <<>>, local_name = L})) ->  L;
cast_as_string(?xav('xs:QName', #qname{prefix = P, local_name = L})) 
   when is_atom(P) -> L;
cast_as_string(?xav('xs:QName', #qname{prefix = P, local_name = L})) ->
   <<P/binary,":",L/binary>>;
cast_as_string(?xav('xs:token', Val)) -> Val;
cast_as_string(?xav('xs:normalizedString', Val)) -> Val;
cast_as_string(?xav('xs:language', Val)) -> Val.

cast_from_string('xs:anyURI', <<>>) -> ?xav('xs:anyURI', <<>>);
cast_from_string('xs:anyURI', Val) -> % MAYBE castable
   case xqerl_lib:check_uri_string(Val) of
      {error,Err} ->
         ?dbg("Err",Err),
         ?err('FORG0001');
      Uri ->
         ?xav('xs:anyURI', Uri)
   end;
cast_from_string('xs:base64Binary', Val) -> % MAYBE castable
   ?xav('xs:base64Binary', str_to_b64bin(xqerl_lib:trim(Val)));
cast_from_string('xs:boolean', Val) -> % MAYBE castable
   Val1 = xqerl_lib:trim(Val),
   if Val1 == <<"true">>  -> true;
      Val1 == <<"false">> -> false;
      Val1 == <<"1">>     -> true;
      Val1 == <<"0">>     -> false;
      true -> ?err('FORG0001') 
   end;
%% In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types 
%% derived from these), if the value is too large or too small to be 
%% represented by the implementation, a dynamic error [err:FODT0001] is raised.
cast_from_string('xs:date', Val) -> % MAYBE castable
   xqerl_datetime:string_to_date(Val);
cast_from_string('xs:dateTime', Val) -> % MAYBE castable
   xqerl_datetime:string_to_dateTime(Val);
%% In casting to a duration value, if the value is too large or too small to 
%% be represented by the implementation, a dynamic error [err:FODT0002] is 
%% raised.
cast_from_string('xs:dayTimeDuration', Val) -> % MAYBE castable
   xqerl_datetime:string_to_dayTimeDuration(Val);
%% In casting to xs:decimal or to a type derived from xs:decimal, if the value 
%% is not too large or too small but nevertheless cannot be represented 
%% accurately with the number of decimal digits available to the 
%% implementation, the implementation may round to the nearest representable 
%% value or may raise a dynamic error [err:FOCA0006]. The choice of rounding 
%% algorithm and the choice between rounding and error behavior and is 
%% implementation-defined.
cast_from_string('xs:decimal', Val) -> % MAYBE castable
   Val1 = xqerl_lib:trim(Val),
   try
      NNum = xqerl_numeric:decimal(Val1),
      ?xav('xs:decimal', NNum)
   catch
      _:_ -> ?err('FORG0001' )
   end;
cast_from_string('xs:numeric', Val) -> % MAYBE castable
   xqerl_numeric:double(Val);
cast_from_string('xs:double', Val) -> % MAYBE castable
   xqerl_numeric:double(Val);
%% In casting to a duration value, if the value is too large or too small to be represented 
%% by the implementation, a dynamic error [err:FODT0002] is raised.
cast_from_string('xs:duration', Val) -> % MAYBE castable
   xqerl_datetime:string_to_duration(Val);
cast_from_string('xs:float', Val) -> % MAYBE castable
   % xs:float is a 32 bit xs:double
   DblVal = cast_from_string('xs:double', Val),
   if is_float(DblVal) ->
         if DblVal < ?MINFLOAT -> ?xav('xs:float', neg_infinity);
            DblVal > ?MAXFLOAT -> ?xav('xs:float', infinity);
            abs(DblVal) < ?MAXFLOATPREC -> ?xav('xs:float', 0.0);
            true -> ?xav('xs:float', xqerl_numeric:float(DblVal))
         end;
      true -> ?xav('xs:float', DblVal)
   end;
cast_from_string('xs:gDay', Val) -> % MAYBE castable
   xqerl_datetime:string_to_gDay(Val);
cast_from_string('xs:gMonth', Val) -> % MAYBE castable
   xqerl_datetime:string_to_gMonth(Val);
cast_from_string('xs:gMonthDay', Val) -> % MAYBE castable
   xqerl_datetime:string_to_gMonthDay(Val);
%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these), 
%% if the value is too large or too small to be represented by the implementation, 
%% a dynamic error [err:FODT0001] is raised.
cast_from_string('xs:gYear', Val) -> % MAYBE castable
   xqerl_datetime:string_to_gYear(Val);
cast_from_string('xs:gYearMonth', Val) -> % MAYBE castable
   xqerl_datetime:string_to_gYearMonth(Val);
cast_from_string('xs:hexBinary', <<>>) ->
   ?xav('xs:hexBinary', <<>>);
cast_from_string('xs:hexBinary', Val) -> % MAYBE castable
   Val1 = xqerl_lib:trim(Val),
   case erlang:size(Val1) rem 2 =/= 0 orelse 
          [C || 
          <<C/utf8>> <= Val1,
          not (C >= 48 andalso C =< 57),
          not (C >= 65 andalso C =< 90),
          not (C >= 97 andalso C =< 102)          
         ] /= [] of
      true ->
         ?err('FORG0001');
      _ ->
         try
            ?xav('xs:hexBinary', str_to_hexbin(Val1))
         catch
            _:_ -> ?err('FORG0001')
         end
   end;
cast_from_string('xs:integer', Val) -> % MAYBE castable
   try
      binary_to_integer(xqerl_lib:trim(Val))
   catch
      _:_ -> ?err('FORG0001')
   end;
cast_from_string(IntType, Val) when ?xs_integer(IntType) -> % MAYBE castable
   IntVal = cast_from_string('xs:integer', Val),
   cast_as(IntVal, IntType);

cast_from_string('xs:NCName', Val) -> % MAYBE castable
   StrVal = value(cast_from_string('xs:Name', Val)),
   _ = [?err('FORG0001')  || <<":">> <= StrVal],
   ?xav('xs:NCName', StrVal);
cast_from_string('xs:Name', Val) ->
   StrVal = value(cast_from_string('xs:token', Val)),
   case xqerl_lib:is_valid_name(StrVal) of
      true ->
         ?xav('xs:Name', StrVal);
      false ->
         ?err('FORG0001')
   end;
cast_from_string('xs:ID', Val) ->
   StrVal = value(cast_from_string('xs:NCName', Val)),
   ?xav('xs:ID', StrVal);
cast_from_string('xs:IDREF', Val) ->
   StrVal = value(cast_from_string('xs:NCName', Val)),
   ?xav('xs:IDREF', StrVal);
cast_from_string('xs:IDREFS', Val) ->
   case value(cast_from_string('xs:token', Val)) of
      <<>> ->
         ?err('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         lists:map(fun(Tok) ->
                         ?xav('xs:IDREF', Tok)
                   end, Tokens)
   end;
cast_from_string('xs:ENTITY', Val) ->
   StrVal = value(cast_from_string('xs:NCName', Val)),
   ?xav('xs:ENTITY', StrVal);
cast_from_string('xs:ENTITIES', Val) ->
   case value(cast_from_string('xs:token', Val)) of
      <<>> ->
         ?err('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         lists:map(fun(Tok) ->
                         case xqerl_lib:is_valid_token(Tok) of
                            true ->
                               ?xav('xs:ENTITY', Tok);
                            false ->
                               ?err('FORG0001')
                         end
                   end, Tokens)
   end;
cast_from_string('xs:NMTOKEN', Val) ->
   StrVal = value(cast_from_string('xs:token', Val)),
   case xqerl_lib:is_valid_token(StrVal) of
      true ->
         ?xav('xs:NMTOKEN', StrVal);
      false ->
         ?err('FORG0001')
   end;
cast_from_string('xs:NMTOKENS', Val) ->
   StrVal = value(cast_from_string('xs:token', Val)),
   case xqerl_lib:is_valid_tokens(StrVal) of
      true ->
         Tokens = string:split(StrVal," ",all),
         lists:map(fun(Tok) ->
                         ?xav('xs:NMTOKEN', Tok)
               end, Tokens);
      false ->
         ?err('FORG0001')
   end;

cast_from_string('xs:language', Val) -> 
   StrVal = value(cast_from_string('xs:token', Val)),
   case re:run(StrVal, "^[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*$",[unicode]) of
      nomatch ->
         ?err('FORG0001');
      _ ->
         ?xav('xs:language', StrVal)
   end;

cast_from_string('xs:token', Val) -> 
   StrVal = value(cast_from_string('xs:normalizedString', Val)),
   Token = xqerl_lib:normalize_spaces(StrVal),
   ?xav('xs:token', Token);
cast_from_string('xs:normalizedString', Val) -> 
   Norm = xqerl_lib:normalize_string(Val),
   ?xav('xs:normalizedString', Norm);


cast_from_string('xs:time', Val) -> % MAYBE castable
   xqerl_datetime:string_to_time(Val);
%% In casting to a duration value, if the value is too large or too small to be represented by the 
%% implementation, a dynamic error [err:FODT0002] is raised.
cast_from_string('xs:yearMonthDuration', Val) -> % MAYBE castable
   xqerl_datetime:string_to_yearMonthDuration(Val);
cast_from_string(T, _) ->
   case is_known_type(T) of
      true -> ?err('XPTY0004');
      _ -> ?err('XQST0052')
   end.

cast_from_integer('xs:double', IntVal) -> 
   xqerl_numeric:double(IntVal);
cast_from_integer('xs:float', IntVal) -> 
   ?xav('xs:float', xqerl_numeric:float(IntVal));
cast_from_integer('xs:decimal', IntVal) -> 
   ?xav('xs:decimal', xqerl_numeric:decimal(IntVal));
cast_from_integer('xs:integer', IntVal) -> IntVal;
cast_from_integer('xs:long', IntVal) when IntVal > 9223372036854775807;
                                          IntVal < -9223372036854775808 ->
   ?err('FORG0001');
cast_from_integer('xs:long', IntVal) -> 
   ?xav('xs:long', IntVal);
cast_from_integer('xs:unsignedLong', IntVal) when IntVal > 18446744073709551615;
                                                  IntVal < 0 ->
   ?err('FORG0001');
cast_from_integer('xs:unsignedLong', IntVal) -> 
   ?xav('xs:unsignedLong', IntVal);
cast_from_integer('xs:int', IntVal) when IntVal > 2147483647;
                                         IntVal < -2147483648 ->
   ?err('FORG0001');
cast_from_integer('xs:int', IntVal) -> 
   ?xav('xs:int', IntVal);
cast_from_integer('xs:unsignedInt', IntVal) when IntVal > 4294967295;
                                                 IntVal < 0 ->
   ?err('FORG0001');
cast_from_integer('xs:unsignedInt', IntVal) -> 
   ?xav('xs:unsignedInt', IntVal);
cast_from_integer('xs:short', IntVal) when IntVal > 32767;
                                           IntVal < -32768 ->
   ?err('FORG0001');
cast_from_integer('xs:short', IntVal) -> 
   ?xav('xs:short', IntVal);
cast_from_integer('xs:unsignedShort', IntVal) when IntVal > 65535;
                                                   IntVal < 0 -> 
   ?err('FORG0001');
cast_from_integer('xs:unsignedShort', IntVal) ->
   ?xav('xs:unsignedShort', IntVal);
cast_from_integer('xs:byte', IntVal) when IntVal > 127;
                                          IntVal < -128 ->
   ?err('FORG0001');
cast_from_integer('xs:byte', IntVal) -> 
   ?xav('xs:byte', IntVal);
cast_from_integer('xs:unsignedByte', IntVal) when IntVal > 255;
                                                  IntVal < 0 ->
   ?err('FORG0001');
cast_from_integer('xs:unsignedByte', IntVal) -> 
   ?xav('xs:unsignedByte', IntVal);
cast_from_integer('xs:positiveInteger', IntVal) when IntVal < 1 ->
   ?err('FORG0001');
cast_from_integer('xs:positiveInteger', IntVal) -> 
   ?xav('xs:positiveInteger', IntVal);
cast_from_integer('xs:nonPositiveInteger', IntVal) when IntVal > 0 ->
   ?err('FORG0001');
cast_from_integer('xs:nonPositiveInteger', IntVal) -> 
   ?xav('xs:nonPositiveInteger', IntVal);
cast_from_integer('xs:nonNegativeInteger', IntVal) when IntVal < 0 ->
   ?err('FORG0001');
cast_from_integer('xs:nonNegativeInteger', IntVal) -> 
   ?xav('xs:nonNegativeInteger', IntVal);
cast_from_integer('xs:negativeInteger', IntVal) when IntVal > -1 ->
   ?err('FORG0001');
cast_from_integer('xs:negativeInteger', IntVal) -> 
   ?xav('xs:negativeInteger', IntVal);
cast_from_integer('xs:boolean', 0) -> ?false;
cast_from_integer('xs:boolean', _) -> ?true;
cast_from_integer(T, _) ->
   case is_known_type(T) of
      true -> ?err('XPTY0004');
      _ -> 
         %?dbg("T",T),
         ?err('XQST0052')
   end.


cast_as(#xqAtomicValue{type = Type} = ST, 'xs:numeric') 
   when ?xs_numeric(Type) ->
   ST;
cast_as(Val, 'xs:numeric') when Val == nan;
                                Val == neg_zero;
                                Val == neg_infinity;
                                Val == infinity ->
   Val;
cast_as(ST, 'xs:numeric') when is_number(ST) -> ST;
cast_as(ST, 'xs:numeric') when is_boolean(ST);
                               is_binary(ST) ->
   cast_as(ST,'xs:double');
cast_as(#xqAtomicValue{type = 'xs:untypedAtomic'} = ST, 'xs:numeric') ->
   cast_as(ST,'xs:double');
cast_as(#xqAtomicValue{}, 'xs:numeric') ->
   ?err('XPTY0004');
cast_as(Flt, 'xs:double') when is_float(Flt) -> Flt;
cast_as(Val, 'xs:double') when Val == nan;
                               Val == neg_zero;
                               Val == neg_infinity;
                               Val == infinity ->
   Val;
cast_as(Bin, 'xs:string') when is_binary(Bin) -> Bin;
cast_as(true, 'xs:boolean') -> true;
cast_as(false, 'xs:boolean') -> false;
cast_as(Int, 'xs:integer') when is_integer(Int) -> Int;

cast_as([At], TT) -> cast_as(At, TT);
cast_as(#{nk := _} = N, 'xs:string') -> 
   cast_as(atomize(N), 'xs:string');
cast_as(Any, 'xs:string') -> cast_as_string(Any);
cast_as(Any, 'xs:untypedAtomic') -> 
   ?xav('xs:untypedAtomic', cast_as_string(Any));
cast_as(String, Type) when is_binary(String),
                           is_atom(Type) ->
   cast_from_string(Type, String);
cast_as(?xav('xs:untypedAtomic', String), Type) 
   when is_binary(String),
        is_atom(Type) ->
   cast_from_string(Type, String);
% string subtypes
cast_as(Any, StringType) when ?xs_string(StringType) ->
   StrVal = cast_as_string(Any),
   cast_as(StrVal, StringType);

% integer does not handle string types, so string checks happen first
cast_as(#xqAtomicValue{type = IntType, value = IntVal}, TT) 
   when ?xs_integer(IntType),
        is_atom(TT) -> 
   cast_from_integer(TT, IntVal);
cast_as(IntVal, TT) when is_integer(IntVal), is_atom(TT) -> 
   cast_from_integer(TT, IntVal);

cast_as(Val, 'xs:float') when Val == nan;
                              Val == neg_zero;
                              Val == neg_infinity;
                              Val == infinity ->
   ?xav('xs:float', Val);
cast_as(Val, 'xs:float') when is_float(Val), Val < ?MINFLOAT -> 
   ?xav('xs:float', neg_infinity);
cast_as(Val, 'xs:float') when is_float(Val), Val > ?MAXFLOAT -> 
   ?xav('xs:float', infinity);
cast_as(Val, 'xs:float') when is_float(Val), abs(Val) < ?MAXFLOATPREC -> 
   ?xav('xs:float', 0.0);
cast_as(Val, 'xs:float') when is_float(Val) -> 
   ?xav('xs:float', xqerl_numeric:float(Val));
cast_as(Val, DecType) when ?xs_decimal(DecType), Val == nan;
                           ?xs_decimal(DecType), Val == neg_infinity;
                           ?xs_decimal(DecType), Val == infinity -> 
   % MAYBE castable
   ?err('FOCA0002');
cast_as(neg_zero, 'xs:boolean') -> ?false;
cast_as(neg_zero, 'xs:integer') -> 0;
cast_as(neg_zero, 'xs:decimal') -> ?xav('xs:decimal', xqerl_numeric:decimal(0));
cast_as(0.0, 'xs:boolean') -> ?false;
cast_as(nan, 'xs:boolean') -> ?false;
cast_as(Val, 'xs:boolean') when is_float(Val) -> ?true;
cast_as(Val, 'xs:integer') when is_float(Val) ->
   trunc(Val);
cast_as(Val, 'xs:decimal') when is_float(Val) -> 
   ?xav('xs:decimal', xqerl_numeric:decimal(Val));
cast_as(nan, IntType) when ?xs_integer(IntType) -> ?err('FOCA0002');
cast_as(neg_infinity, IntType) when ?xs_integer(IntType) -> ?err('FOCA0002');
cast_as(infinity, IntType) when ?xs_integer(IntType) -> ?err('FOCA0002');
cast_as(neg_zero, IntType) when ?xs_integer(IntType) -> 
   cast_from_integer(IntType, 0);
cast_as(Val, IntType) when is_float(Val), ?xs_integer(IntType) -> % MAYBE castable
   cast_from_integer(IntType, trunc(Val));

cast_as([], 'xs:double') -> [];
cast_as(?true, 'xs:double') -> xqerl_numeric:double(1);
cast_as(?false, 'xs:double') -> xqerl_numeric:double(0);
cast_as(?xav('xs:decimal', Val), 'xs:double') -> xqerl_numeric:double(Val);
cast_as(Val, 'xs:double') when is_integer(Val) ->
   xqerl_numeric:double(Val);
cast_as(#xqAtomicValue{type = IntType, value = IntVal}, 'xs:double') 
   when ?xs_integer(IntType) ->
   xqerl_numeric:double(IntVal);

cast_as(Val, 'xs:boolean') when is_integer(Val) -> ?true;
cast_as(Val, 'xs:decimal') when is_integer(Val) -> 
   ?xav('xs:decimal', xqerl_numeric:decimal(Val));
cast_as(Val, 'xs:float') when is_integer(Val) -> 
   ?xav('xs:float', xqerl_numeric:float(Val));
cast_as(#xqAtomicValue{type = IntType, value = IntVal}, 'xs:float') 
   when ?xs_integer(IntType) ->
   ?xav('xs:float', xqerl_numeric:float(IntVal));



cast_as([],#xqSeqType{occur = one}) -> ?err('XPTY0004');
cast_as(Seq,#xqSeqType{type = T, occur = one}) ->
   cast_as(Seq,T);
cast_as([], #xqSeqType{occur = zero_or_one}) -> [];
cast_as(Seq,#xqSeqType{type = T, occur = zero_or_one}) ->
   cast_as(Seq,T);

cast_as( At, [] ) -> At;
cast_as( At, #xqSeqType{type = item}) -> At;
cast_as( At, 'item' ) -> At;
cast_as( #{nk := _} = N, #xqSeqType{type = 'xs:anyAtomicType'} ) -> 
   atomize(N);
cast_as( #{nk := _} = N, 'xs:anyAtomicType' ) -> 
   atomize(N);
cast_as( [], 'empty-sequence' ) -> [];
cast_as( _, 'empty-sequence' ) -> ?err('XPTY0004');
cast_as( [], #xqSeqType{type = 'empty-sequence'} ) -> [];
cast_as( _, #xqSeqType{type = 'empty-sequence'} ) -> ?err('XPTY0004');
cast_as( [], 'xs:error' ) -> [];
% $x cast as xs:error fails dynamically with error [err:FORG0001]FO31, 
% regardless of the value of $x
cast_as( _, 'xs:error' ) -> 
   ?err('FORG0001'); 
% QName hack
cast_as( #qname{} = Q, 'xs:QName' ) -> 
   ?xav('xs:QName',Q);
cast_as( #qname{} = Val, Type ) -> 
   cast_as(#xqAtomicValue{type = 'xs:QName', value = Val}, Type);
cast_as( #xqFunction{}, _ ) -> ?err('FOTY0013');
cast_as( Fx, _ ) when is_function(Fx) -> ?err('FOTY0013');
cast_as( #xqAtomicValue{} = At, #xqSeqType{type = Type} ) -> 
   cast_as(At,Type);
cast_as( #{nk := _} = At, #xqKindTest{kind = node} ) -> 
   At;
cast_as( #{nk := _} = At, TT ) ->
   ?dbg("TT",TT),
   Atomized = atomize(At),
   ?dbg("Atomized",Atomized),
   cast_as(Atomized, TT);
cast_as( [], 'xs:anyURI') -> [];
cast_as( [], 'xs:NCName') -> [];
cast_as( [], 'xs:language') -> [];
cast_as( [], 'xs:hexBinary') -> [];
cast_as( [], 'xs:base64Binary') -> [];
cast_as( [], 'xs:float') -> [];
cast_as( [], 'xs:date') -> [];
cast_as( [], 'xs:time') -> [];
cast_as( [], 'xs:dateTime') -> [];



% force float to cast. forces into 32 bit
cast_as( #xqAtomicValue{type = Type, value = _} = ST, Type ) 
   when Type /= 'xs:float' -> 
   ST;
cast_as( ?xav('xs:base64Binary', Val), 'xs:hexBinary' ) -> 
   ?xav('xs:hexBinary', b64bin_to_hexbin(Val));
cast_as( Bool, 'xs:boolean' ) when is_boolean(Bool) ->
   Bool;
cast_as( ?true, 'xs:decimal' ) ->
   ?xav('xs:decimal',xqerl_numeric:decimal(1));
cast_as( ?false, 'xs:decimal' ) ->
   ?xav('xs:decimal',xqerl_numeric:decimal(0));
cast_as( ?true, 'xs:float' ) ->
   ?xav('xs:float',xqerl_numeric:float(1));
cast_as( ?false, 'xs:float' ) ->
   ?xav('xs:float',xqerl_numeric:float(0));
cast_as(?true, 'xs:integer') -> 1;

cast_as( ?false, Integer ) when ?xs_integer(Integer) ->
   cast_as(0, Integer);
cast_as( ?true, Integer ) when ?xs_integer(Integer) ->
   cast_as(1, Integer);

cast_as( ?xav('xs:date', Val), 'xs:dateTime' ) -> 
   Rec = zero_time(Val),
   Str = xqerl_datetime:to_string(Rec,'xs:dateTime'),
   ?xav('xs:dateTime', set_date_string(Rec, Str));
cast_as( ?xav('xs:date', Val), 'xs:gDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        month = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:gDay'),
   ?xav('xs:gDay', set_date_string(Rec, Str));
cast_as( ?xav('xs:date', Val), 'xs:gMonth' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        day = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:gMonth'),
   ?xav('xs:gMonth', set_date_string(Rec, Str));
cast_as( ?xav('xs:date', Val), 'xs:gMonthDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:gMonthDay'),
   ?xav('xs:gMonthDay', set_date_string(Rec, Str));
cast_as( ?xav('xs:date', Val), 'xs:gYear' ) -> 
   Rec = Val#xsDateTime{month = 0,
                        day   = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:gYear'),
   ?xav('xs:gYear', set_date_string(Rec, Str));
cast_as( ?xav('xs:date', Val), 'xs:gYearMonth' ) -> 
   Rec = Val#xsDateTime{day   = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:gYearMonth'),
   ?xav('xs:gYearMonth', set_date_string(Rec, Str));
cast_as( ?xav('xs:dateTime', Val), 'xs:date' ) -> 
   Rec = zero_time(Val),
   Str = xqerl_datetime:to_string(Rec,'xs:date'),
   ?xav('xs:date', set_date_string(Rec, Str));
%% cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 
%%          'xs:dateTimeStamp' ) -> 
%%    Off = Val#xsDateTime.offset,
%%    if Off == [] ->
%%          ?err('FORG0001');
%%       true ->
%%          #xqAtomicValue{type = 'xs:dateTimeStamp',
%%                         value = Val}
%%    end;
cast_as( ?xav('xs:dateTime', Val), 'xs:gDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        month = 0,
                        hour = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0)},
   Str = xqerl_datetime:to_string(Rec,'xs:gDay'),
   ?xav('xs:gDay', set_date_string(Rec, Str));
cast_as( ?xav('xs:dateTime', Val), 'xs:gMonth' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        day = 0,
                        hour = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0)},
   Str = xqerl_datetime:to_string(Rec,'xs:gMonth'),
   ?xav('xs:gMonth', set_date_string(Rec, Str));
cast_as( ?xav('xs:dateTime', Val), 'xs:gMonthDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        hour = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0)},
   Str = xqerl_datetime:to_string(Rec,'xs:gMonthDay'),
   ?xav('xs:gMonthDay', set_date_string(Rec, Str));
cast_as( ?xav('xs:dateTime', Val), 'xs:gYear' ) -> 
   Rec = Val#xsDateTime{month = 0,
                        day   = 0,
                        hour = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0)},
   Str = xqerl_datetime:to_string(Rec,'xs:gYear'),
   ?xav('xs:gYear', set_date_string(Rec, Str));
cast_as( ?xav('xs:dateTime', Val), 'xs:gYearMonth' ) -> 
   Rec = Val#xsDateTime{day   = 0,
                        hour = 0,
                        minute = 0,
                        second = xqerl_numeric:decimal(0)},
   Str = xqerl_datetime:to_string(Rec,'xs:gYearMonth'),
   ?xav('xs:gYearMonth', set_date_string(Rec, Str));
cast_as( ?xav('xs:dateTime', Val), 'xs:time' ) ->
   Rec = Val#xsDateTime{sign  = '+',
                        year  = 0,
                        month = 0,
                        day   = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:time'),
   ?xav('xs:time', set_date_string(Rec, Str));

cast_as( ?xav('xs:dayTimeDuration', Val), 'xs:duration' ) ->
   Str = xqerl_datetime:to_string(Val,'xs:duration'),
   ?xav('xs:duration', set_date_string(Val, Str));
cast_as( ?xav('xs:dayTimeDuration', _Val), 
         'xs:yearMonthDuration' ) ->
   Rec = #xsDateTime{year   = 0, 
                     month  = 0, 
                     day    = 0,
                     hour   = 0,
                     minute = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:yearMonthDuration'),
   ?xav('xs:yearMonthDuration', set_date_string(Rec, Str));

cast_as( ?xav('xs:decimal', #xsDecimal{int = 0, scf = 0}), 'xs:boolean' ) ->
   ?false;
cast_as( ?xav('xs:decimal', _), 'xs:boolean' ) ->
   ?true;
cast_as( ?xav('xs:decimal', Val), 'xs:float' ) -> 
   ?xav('xs:float', xqerl_numeric:float(Val));

cast_as(?xav('xs:decimal', Val), 'xs:integer') -> 
   xqerl_numeric:integer(Val);
cast_as(?xav('xs:decimal', Val), IntType) when ?xs_integer(IntType) -> 
   Int = xqerl_numeric:integer(Val),
   cast_as(Int, IntType);

% ensure float is 32 bit
cast_as( ?xav('xs:float', Val), 'xs:float' ) ->
   cast_as(Val, 'xs:float');
cast_as( ?xav('xs:duration', Val), 'xs:dayTimeDuration' ) -> 
   Rec = Val#xsDateTime{year = 0, month = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:dayTimeDuration'),
   ?xav('xs:dayTimeDuration', set_date_string(Rec, Str));
cast_as( ?xav('xs:duration', Val), 'xs:yearMonthDuration' ) -> 
   Rec = Val#xsDateTime{day = 0, hour = 0, minute = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:yearMonthDuration'),
   ?xav('xs:yearMonthDuration', set_date_string(Rec, Str));
cast_as( ?xav('xs:float', Val), 'xs:boolean' ) ->
   if Val == 0 -> ?false;
      Val == neg_zero -> ?false;
      Val == nan -> ?false;
      true -> ?true
   end;
cast_as( ?xav('xs:float', Val), 'xs:decimal' ) -> % MAYBE castable
   if Val == nan -> ?err('FOCA0002');
      Val == neg_zero -> ?xav('xs:decimal', xqerl_numeric:decimal(0));
      Val == neg_infinity -> ?err('FOCA0002');
      Val == infinity -> ?err('FOCA0002');
      true -> ?xav('xs:decimal', xqerl_numeric:decimal(Val))
   end;
cast_as( ?xav('xs:float', Val), 'xs:double' ) -> Val;
cast_as( ?xav('xs:float', Val), 'xs:integer' ) -> % MAYBE castable
   if Val == nan -> ?err('FOCA0002');
      Val == neg_zero -> 0;
      Val == neg_infinity -> ?err('FOCA0002');
      Val == infinity -> ?err('FOCA0002');
      true -> trunc(Val)
   end;
cast_as(?xav('xs:float', Val), IntType) when ?xs_integer(IntType) -> % MAYBE castable
   if Val == nan -> ?err('FOCA0002');
      Val == neg_infinity -> ?err('FOCA0002');
      Val == infinity -> ?err('FOCA0002');
      Val == neg_zero -> cast_from_integer(IntType, 0);
      true -> cast_from_integer(IntType, trunc(Val))
   end;

cast_as( ?xav('xs:hexBinary', Val), 'xs:base64Binary' ) ->
   ?xav('xs:base64Binary', hexbin_to_b64bin(Val));

cast_as(0, 'xs:boolean') -> ?false;



cast_as( ?xav('xs:NOTATION', Val), 'xs:QName' ) -> 
   ?xav('xs:QName', Val);

cast_as( ?xav('xs:QName', Val), 'xs:NOTATION' ) -> % MAYBE castable
   ?xav('xs:NOTATION', Val);


cast_as( Bool, 'xs:normalizedString' ) when is_boolean(Bool) -> 
   ?xav('xs:normalizedString', atom_to_binary(Bool, latin1));
cast_as( #xqAtomicValue{} = Arg1,'xs:normalizedString' ) -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:string' )),
   Norm = xqerl_lib:normalize_string(StrVal),
   ?xav('xs:normalizedString', Norm);

cast_as( Bool, 'xs:token' ) when is_boolean(Bool) -> 
   ?xav('xs:token', atom_to_binary(Bool, latin1));
cast_as(Arg1,'xs:token') -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:normalizedString')),
   Token = xqerl_lib:normalize_spaces(StrVal),
   ?xav('xs:token', Token);
cast_as( Arg1, 'xs:language' ) -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )),
   case re:run(StrVal, "^[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*$",[unicode]) of
      nomatch ->
         ?err('FORG0001');
      _ ->
         ?xav('xs:language', StrVal)
   end;
cast_as( Arg1,'xs:NMTOKEN' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )),
   case xqerl_lib:is_valid_token(StrVal) of
      true ->
         ?xav('xs:NMTOKEN', StrVal);
      false ->
         ?err('FORG0001')
   end;
cast_as( Arg1,'xs:NMTOKENS' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )),
   case xqerl_lib:is_valid_tokens(StrVal) of
      true ->
         Tokens = string:split(StrVal," ",all),
         lists:map(fun(Tok) ->
                         ?xav('xs:NMTOKEN', Tok)
               end, Tokens);
      false ->
         ?err('FORG0001')
   end;
cast_as( Arg1,'xs:Name' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )),
   case xqerl_lib:is_valid_name(StrVal) of
      true ->
         ?xav('xs:Name', StrVal);
      false ->
         ?err('FORG0001')
   end;
cast_as( Arg1,'xs:NCName' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:Name' )),
   _ = [?err('FORG0001')  || <<":">> <= StrVal],
   ?xav('xs:NCName', StrVal);
cast_as( Arg1,'xs:ID' ) ->
   StrVal = ncname_value(Arg1),
   ?xav('xs:ID', StrVal);
cast_as( Arg1,'xs:IDREF' ) ->
   StrVal = ncname_value(Arg1),
   ?xav('xs:IDREF', StrVal);
cast_as( Arg1,'xs:IDREFS' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      <<>> ->
         ?err('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         lists:map(fun(Tok) ->
                         ?xav('xs:IDREF', Tok)
                   end, Tokens)
   end;
cast_as( Arg1,'xs:ENTITY' ) ->
   StrVal = ncname_value(Arg1),
   ?xav('xs:ENTITY', StrVal);
cast_as( Arg1,'xs:ENTITIES' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      <<>> ->
         ?err('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         lists:map(fun(Tok) ->
                         case xqerl_lib:is_valid_token(Tok) of
                            true ->
                               ?xav('xs:ENTITY', Tok);
                            false ->
                               ?err('FORG0001')
                         end
                   end, Tokens)
   end;
% xs:untypedAtomic handled as if xs:string
cast_as( ?xav('xs:untypedAtomic', Val), Type ) -> % MAYBE castable
   Val1 = if is_integer(Val) ->
                integer_to_binary(Val);
             is_float(Val) ->
                float_to_binary(Val);
             true ->
               Val
          end,
   cast_as( ?xav('xs:string', Val1), Type );
% 0.0 sec duration
cast_as( ?xav('xs:yearMonthDuration', _), 'xs:dayTimeDuration' ) -> 
   Rec = #xsDateTime{year   = 0, 
                     month  = 0, 
                     day    = 0,
                     hour   = 0,
                     minute = 0},
   Str = xqerl_datetime:to_string(Rec,'xs:dayTimeDuration'),
   ?xav('xs:dayTimeDuration', set_date_string(Rec, Str));
cast_as( ?xav('xs:yearMonthDuration', Val), 'xs:duration' ) ->
   Str = xqerl_datetime:to_string(Val,'xs:duration'),
   ?xav('xs:duration', set_date_string(Val, Str));
cast_as( ?xav('xs:yearMonthDuration', #xsDateTime{string_value = Val}), 
         'xs:string' ) -> 
   ?xav('xs:string', Val);
%sub types


% block known types
cast_as( Intype, T ) when is_boolean(Intype) ->
   case is_known_type(T) of
      true ->
         ?err('XPTY0004');
      _ ->
         %?dbg("T",{Intype,T}),
         ?err('XQST0052')
   end;
cast_as( #xqAtomicValue{type = Intype}, T ) 
   when Intype == 'xs:unsignedInt';    Intype == 'xs:string';
        Intype == 'xs:boolean';        Intype == 'xs:decimal';
        Intype == 'xs:float';          Intype == 'xs:double';
        Intype == 'xs:duration';       Intype == 'xs:dateTime';
        Intype == 'xs:time';           Intype == 'xs:date';
        Intype == 'xs:gYearMonth';     Intype == 'xs:gYear';
        Intype == 'xs:gMonthDay';      Intype == 'xs:gDay';
        Intype == 'xs:gMonth';         Intype == 'xs:hexBinary';
        Intype == 'xs:base64Binary';   Intype == 'xs:anyURI';
        Intype == 'xs:QName';          Intype == 'xs:normalizedString';
        Intype == 'xs:token';          Intype == 'xs:language';
        Intype == 'xs:NMTOKEN';        Intype == 'xs:Name';
        Intype == 'xs:NCName';         Intype == 'xs:ID';
        Intype == 'xs:IDREF';          Intype == 'xs:ENTITY';
        Intype == 'xs:integer';        Intype == 'xs:nonPositiveInteger';
        Intype == 'xs:negativeInteger';Intype == 'xs:long';
        Intype == 'xs:int';            Intype == 'xs:short';
        Intype == 'xs:unsignedLong';   Intype == 'xs:nonNegativeInteger';
        Intype == 'xs:unsignedShort';  Intype == 'xs:unsignedByte';
        Intype == 'xs:positiveInteger';Intype == 'xs:yearMonthDuration';
        Intype == 'xs:dayTimeDuration';Intype == 'xs:untypedAtomic';
        Intype == 'xs:dateTimeStamp';  Intype == 'xs:ENTITIES';
        Intype == 'xs:IDREFS';         Intype == 'xs:error' -> 
   case is_known_type(T) of
      true ->
         ?err('XPTY0004');
      _ ->
         %?dbg("T",{Intype,T}),
         ?err('XQST0052')
   end;
cast_as(_,_) ->
   ?err('XPTY0004').

% namespace sensitive
cast_as(Seq,#xqSeqType{type = T,occur = one},N) ->
   cast_as(Seq,T,N);
cast_as(Seq,#xqSeqType{type = T,occur = zero_or_one},N) -> 
   cast_as(Seq,T,N);
cast_as([],#xqSeqType{occur = zero_or_one},_) -> [];
cast_as([Seq],T,N) -> 
   cast_as(Seq,T,N);
cast_as(Seq,#xqSeqType{type = T},N) -> 
   cast_as(Seq,T,N);
cast_as( #{nk := _} = N, TT, Namespaces ) ->
   String = atomize(N),
   cast_as(String, TT, Namespaces);
cast_as( #xqAtomicValue{type = 'xs:QName'} = Q,'xs:QName', _) ->
   Q;
cast_as( [],'xs:QName', _Namespaces) -> 
   ?err('XPTY0004');
cast_as(?xav('xs:untypedAtomic', <<>>),'xs:QName', _) ->
   ?err('FORG0001');
cast_as(<<>>,'xs:QName', _) ->
   ?err('FORG0001');
cast_as(?xav('xs:untypedAtomic', <<"Q{", Rest/binary>>), 'xs:QName', _) ->
   [Ns,Local] = string:split(Rest, [$}]),
   ?xav('xs:QName', #qname{namespace = Ns,
                           prefix = <<>>,
                           local_name = xqerl_lib:trim(Local)});   
cast_as(<<"Q{", Rest/binary>>, 'xs:QName', _) ->
   [Ns,Local] = string:split(Rest, [$}]),
   ?xav('xs:QName', #qname{namespace = Ns,
                           prefix = <<>>,
                           local_name = xqerl_lib:trim(Local)});   
cast_as(Val0, 'xs:QName', Namespaces) -> % MAYBE castable
   {Val, AType} = case Val0 of
            ?xav('xs:untypedAtomic', Val1) ->
               {Val1, 'xs:untypedAtomic'};
            _ when is_binary(Val0) ->
               {Val0, 'xs:string'};
            _ ->
               ?err('XPTY0004') % not a string literal
         end,
   try
      {Prefix, Local} = case scan_ncname(xqerl_lib:trim(Val)) of
                              {P, L} -> {P, L};
                              L -> {<<>>, L}
                           end,
      %{xqNamespace,"http://www.example.com/foo","foo"} 
      case Prefix of 
         <<>> ->
            Def = case lists:keyfind(Prefix, 3, Namespaces) of
                     false ->
                        'no-namespace';
                     {_,D,_} ->
                        D
                  end,
            ?xav('xs:QName', #qname{namespace = Def,
                                    prefix = Prefix,
                                    local_name = Local});
         _ ->
            case lists:keyfind(Prefix, 3, Namespaces) of
               false ->
                  %?err('FONS0004'); % direct
                  %?err('XQDY0074'); % constructed
                  ?err('FONS0004'); 
               {_,Namespace,_} ->
                  ?xav('xs:QName', #qname{namespace = Namespace,
                                          prefix = Prefix,
                                          local_name = Local})
            end
      end
   catch
      _:#xqError{} when AType == 'xs:untypedAtomic' -> ?err('FORG0001');
      _:#xqError{} = E -> throw(E);
      _:_ -> ?err('FORG0001')
   end;
   
cast_as( #xqAtomicValue{type = AType} = At, 'xs:NOTATION', Namespaces) 
   when AType == 'xs:string';
        AType == 'xs:untypedAtomic' -> % MAYBE castable
   try
      At2 = cast_as(At,'xs:QName',Namespaces), 
      At2#xqAtomicValue{type = 'xs:NOTATION'}
   catch
      _:_ -> ?err('FORG0001')
   end;
cast_as(_,_,_)  ->
   ?err('XPTY0004').


scan_ncname(<<$_,T/binary>>) ->
   scan_ncname(T, <<$_>>);
scan_ncname(<<>>) ->
   ?err('FORG0001');
scan_ncname(<<H/utf8,T/binary>>) ->
   case xmerl_lib:is_letter(H) of 
      true ->
         scan_ncname(T, <<H/utf8>>);
      _ ->
         ?err('FORG0001')
   end.

scan_ncname(<<>>, Acc) -> Acc;
scan_ncname(<<$:,T/binary>>, Acc) ->
   {Acc, scan_ncname(T)};
scan_ncname(<<H/utf8,T/binary>>, Acc) ->
   case xmerl_lib:is_namechar(H) of
      true ->
         scan_ncname(T, <<Acc/binary,H/utf8>>);
      _ ->
         ?err('FORG0001')
   end.

hexbin_to_str(Bin) -> 
   list_to_binary([ hd(erlang:integer_to_list(I, 16)) || << I:4 >> <= Bin ]).
b64bin_to_str(Bin) -> list_to_binary(base64:encode_to_string(Bin)).

str_to_hexbin(Str) -> << << (erlang:list_to_integer([H], 16)):4 >> || <<H/utf8>> <= Str >>.
str_to_b64bin(Str) -> 
   try
      Str1 = re:replace(Str, "(\\s+)", "", [global,{return,list}]),
      Bin = base64:decode(list_to_binary(Str1)),
      case base64:encode_to_string(Bin) of
         Str1 -> % invalid base64 that is 'fixed' in base64 module
            Bin;
         _ ->
            ?err('FORG0001')
      end
   catch
      _:_ ->
         ?err('FORG0001')
   end.

hexbin_to_b64bin(Bin) -> Bin.
b64bin_to_hexbin(Bin) -> Bin. %str_to_hexbin(b64bin_to_str(Bin)).
   
%% str_to_hex(Str) -> bin_to_hex(list_to_binary(Str)).
%% hex_to_b64(Str) -> str_to_b64(hex_to_str(Str)).
%% b64_to_hex(Str) -> bin_to_hex(b64_to_bin(Str)).
%% str_to_b64(Str) -> base64:encode_to_string(Str).

is_ns_sensitive(#xqSeqType{type = Type}) ->
  Type == 'xs:QName' orelse Type == 'xs:NOTATION';
is_ns_sensitive(Type) ->
  Type == 'xs:QName' orelse Type == 'xs:NOTATION'.

derives_from( AT, ET ) when AT == ET ->
   true;
derives_from( AT, ET ) ->
   case subtype_of(AT, ET) of
      true ->
         true;
      _ ->
         false
   end.

is_known_type('xs:unsignedInt')            -> true;
is_known_type('xs:string')                 -> true;
is_known_type('xs:boolean')                -> true;
is_known_type('xs:decimal')                -> true;
is_known_type('xs:float')                  -> true;
is_known_type('xs:double')                 -> true;
is_known_type('xs:duration')               -> true;
is_known_type('xs:dateTime')               -> true;
is_known_type('xs:time')                   -> true;
is_known_type('xs:date')                   -> true;
is_known_type('xs:gYearMonth')             -> true;
is_known_type('xs:gYear')                  -> true;
is_known_type('xs:gMonthDay')              -> true;
is_known_type('xs:gDay')                   -> true;
is_known_type('xs:gMonth')                 -> true;
is_known_type('xs:hexBinary')              -> true;
is_known_type('xs:base64Binary')           -> true;
is_known_type('xs:anyURI')                 -> true;
is_known_type('xs:QName')                  -> true;
is_known_type('xs:normalizedString')       -> true;
is_known_type('xs:token')                  -> true;
is_known_type('xs:language')               -> true;
is_known_type('xs:NMTOKEN')                -> true;
is_known_type('xs:Name')                   -> true;
is_known_type('xs:NCName')                 -> true;
is_known_type('xs:ID')                     -> true;
is_known_type('xs:IDREF')                  -> true;
is_known_type('xs:ENTITY')                 -> true;
is_known_type('xs:integer')                -> true;
is_known_type('xs:nonPositiveInteger')     -> true;
is_known_type('xs:negativeInteger')        -> true;
is_known_type('xs:long')                   -> true;
is_known_type('xs:int')                    -> true;
is_known_type('xs:short')                  -> true;
is_known_type('xs:byte')                   -> true;
is_known_type('xs:nonNegativeInteger')     -> true;
is_known_type('xs:unsignedLong')           -> true;
is_known_type('xs:unsignedShort')          -> true;
is_known_type('xs:unsignedByte')           -> true;
is_known_type('xs:positiveInteger')        -> true;
is_known_type('xs:yearMonthDuration')      -> true;
is_known_type('xs:dayTimeDuration')        -> true;
is_known_type('xs:untypedAtomic')          -> true;
is_known_type('xs:dateTimeStamp')          -> true;

%is_known_type('xs:NMTOKENS')               -> true;
is_known_type('xs:ENTITIES')               -> true;
is_known_type('xs:IDREFS')                 -> true;

is_known_type('xs:error')                  -> true;
is_known_type('xs:anyAtomicType')          -> true;

is_known_type('xs:numeric')                -> true;
is_known_type('empty-sequence')            -> true;
is_known_type(_)                           -> false.


norm_name_type(undefined,undefined) -> {'_', '_', '_'};
norm_name_type(#qname{namespace = 'no-namespace'} = N, T) ->
   norm_name_type(N#qname{namespace = <<>>}, T);
norm_name_type(Name,#xqSeqType{type = 'xs:anyType'}) -> 
   norm_name_type(Name,undefined);
norm_name_type(Name,#xqSeqType{type = 'xs:anyAtomicType'}) -> 
   norm_name_type(Name,undefined);
norm_name_type(undefined,#xqSeqType{type = Atom}) -> {'_', '_', Atom};
norm_name_type(#qname{namespace = <<"*">>,
                      local_name = <<"*">>},undefined) -> {'_', '_', '_'};
norm_name_type(#qname{namespace = <<"*">>,
                      local_name = <<"*">>},#xqSeqType{type = Atom}) -> 
   {'_', '_', Atom};
norm_name_type(#qname{namespace = Ns,
                      local_name = <<"*">>},undefined) -> {Ns, '_', '_'};
norm_name_type(#qname{namespace = Ns,
                      local_name = <<"*">>},#xqSeqType{type = Atom}) -> 
   {Ns, '_', Atom};
norm_name_type(#qname{namespace = <<"*">>,
                      local_name = Ln},undefined) -> {'_', Ln, '_'};
norm_name_type(#qname{namespace = <<"*">>,
                      local_name = Ln},#xqSeqType{type = Atom}) -> 
   {'_', Ln, Atom};
norm_name_type(#qname{namespace = Ns,
                      local_name = Ln},undefined) -> {Ns, Ln, '_'};
norm_name_type(#qname{namespace = Ns,
                      local_name = Ln},#xqSeqType{type = Atom}) -> 
   {Ns, Ln, Atom}.

has_name(undefined, _) ->
   true;
has_name(_, undefined) ->
   true;
has_name(#qname{} = Name, #qname{namespace = Ns, local_name = Loc}) ->
   (Ns  == <<"*">> orelse Ns  == Name#qname.namespace )    andalso 
   (Loc == <<"*">> orelse Loc == Name#qname.local_name);
has_name(#xqElementNode{name = _Name}, 
         #qname{namespace = undefined,prefix = Px}) when Px =/= <<"*">> ->
   % non-expandable QName
   ?err('XPST0081');
has_name(#xqElementNode{name = Name}, 
         #qname{namespace = Ns, local_name = Loc}) ->
   (Ns  == <<"*">> orelse Ns  == Name#qname.namespace )    andalso 
   (Loc == <<"*">> orelse Loc == Name#qname.local_name);
has_name(#xqAttributeNode{name = _Name}, undefined) ->
   true;
has_name(#xqAttributeNode{name = Name}, 
         #qname{namespace = Ns, local_name = Loc}) ->
   (Ns  == <<"*">> orelse Ns  == Name#qname.namespace )    andalso 
   (Loc == <<"*">> orelse Loc == Name#qname.local_name).

set_date_string(Rec, Str) ->
   Rec#xsDateTime{string_value = Str}.

ncname_value(Arg1) ->
   xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:NCName' )).


zero_time(Val) ->
   Val#xsDateTime{hour = 0,
                  minute = 0,
                  second = xqerl_numeric:decimal(0)}.
