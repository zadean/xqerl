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

%% @doc Functions for casting types (Very messy!).

-module(xqerl_types).

-export([return_value/1]).
-export([value/1]).
-export([atomize/1]).
-export([string_value/1]).
-export([type/1]).

-export([promote/2]).
-export([construct_as/2]).
-export([cast_as/2]).
-export([cast_as/3]).
-export([as_seq/2]).
-export([cast_as_seq/2]).
-export([treat_as_seq/2]).
-export([cast_as_seq/3]).
-export([instance_of/2]).
-export([castable/2]).
-export([castable/3]).
-export([subtype_of/2]).
-export([seq_type_val_match/2]).
-export([is_ns_sensitive/1]).
-export([is_numeric_type/1]).
-export([is_date_type/1]).

-export([scan_ncname/1]).

-include("xqerl.hrl").

-define(digit(H), H >= $0; H =< $9).
-define(MINFLOAT, -3.4028235e38).
-define(MAXFLOAT,  3.4028235e38).
-define(MAXFLOATPREC,  1.175494351e-38).
-define(true,  ?xav('xs:boolean',true)).
-define(false, ?xav('xs:boolean',false)).
-define(xav(T,V),  #xqAtomicValue{type = T, value = V}).

is_numeric_type('xs:double') -> true;
is_numeric_type('xs:numeric') -> true;
is_numeric_type('xs:decimal') -> true;
is_numeric_type('xs:float') -> true;
is_numeric_type('xs:integer') -> true;
is_numeric_type('xs:unsignedShort') -> true;
is_numeric_type('xs:unsignedLong') -> true;
is_numeric_type('xs:unsignedInt') -> true;
is_numeric_type('xs:unsignedByte') -> true;
is_numeric_type('xs:short') -> true;
is_numeric_type('xs:positiveInteger') -> true;
is_numeric_type('xs:nonPositiveInteger') -> true;
is_numeric_type('xs:nonNegativeInteger') -> true;
is_numeric_type('xs:negativeInteger') -> true;
is_numeric_type('xs:long') -> true;
is_numeric_type('xs:int') -> true;
is_numeric_type('xs:byte') -> true;
is_numeric_type(_Type) -> false.

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
atomize(#xqNode{} = N) -> 
   ?seq:singleton_value(xqerl_node:atomize_nodes(N));
atomize(_) -> 
   xqerl_error:error('XPTY0004').


return_value([]) -> ?seq:empty();
return_value(#xqNode{frag_id = FragId,identity = Id}) ->
   Doc = xqerl_context:get_available_document(FragId),
   case xqerl_node:new_fragment({Id,Doc}) of
      #xqNode{frag_id = NewFragId,identity = _NewId} ->
         NewDoc = xqerl_context:get_available_document(NewFragId),
         {0,NewDoc};
         %{NewId,NewDoc};
      X ->
         X
   end;
return_value(#xqAtomicValue{} = A) -> A;
return_value(#array{} = A) -> A;
return_value(#xqFunction{body = Fun} = F) when is_function(Fun) -> F;
return_value(Fun) when is_function(Fun) -> Fun;
return_value(Map) when is_map(Map) -> Map;
return_value(Other) -> 
   case ?seq:size(Other) of
      0 ->
         Other;
      _ ->
         case lists:map(fun return_value/1,Other) of
            [S] ->
               S;
            X ->
               ?seq:flatten(X)
         end
   end.

string_value([]) -> [];
string_value([H|T]) when is_integer(H) -> [H|T];
string_value(#xqError{} = E) -> E;
string_value([V]) when not is_integer(V) -> string_value(V);
string_value({Id,Doc}) when is_integer(Id) ->
   _ = xqerl_context:add_available_document(Id, Doc),
   Node = #xqNode{frag_id = Id,identity = 1},
   string_value(Node);
string_value({Error,_}) ->
   {Error};
%% string_value([At]) ->
%%    string_value(At);
string_value(#xqAtomicValue{type = 'xs:string', value = V}) ->
   V;
% QName hack
string_value(#qname{} = Q) ->
   string_value(cast_as(#xqAtomicValue{type = 'xs:QName', value = Q}, 'xs:string'));
string_value(#xqAtomicValue{} = At) ->
   string_value(cast_as(At, 'xs:string'));

string_value(N) when is_record(N, xqElementNode);
                     is_record(N, xqDocumentNode);
                     is_record(N, xqAttributeNode);
                     is_record(N, xqCommentNode);
                     is_record(N, xqTextNode);
                     is_record(N, xqProcessingInstructionNode);
                     is_record(N, xqNamespaceNode) ->
   string_value(cast_as(xqerl_node:atomize_nodes(N), 'xs:string'));
string_value(#xqNode{} = Nd) ->
   string_value(cast_as(Nd, 'xs:string'));

string_value(Seq) ->
   %?dbg("Seq",Seq),
   case Seq of 
      {S,T} when is_integer(S) andalso is_tuple(T) ->
         string_value(xqerl_node:new_fragment(Seq));
      _ ->
         case ?seq:size(Seq) of
            0 ->
               "";
            1 when is_list(Seq) ->
               string_value(hd(Seq));
            _ ->
               lists:concat([string_value(hd(Seq))|[" "++ string_value(Av) || Av <- tl(Seq) ] ])
         end
   end.

value(#xqNode{} = N) ->
   [#xqAtomicValue{value = V}] = xqerl_node:atomize_nodes(N),
   V;
value(#xqFunction{body = V}) ->
   V;
value(#xqAtomicValue{value = V}) ->
   V;
value([]) -> [];
value([Seq]) ->
   case Seq of
      #xqAtomicValue{value = V} ->
         V;
      #xqFunction{body = V} ->
         V;
      O ->
         O
   end;
value(V) ->
   V.

type({not_implemented_maybe_later,L}) ->
   {not_implemented_maybe_later,L};
type({not_implemented,L}) ->
   {not_implemented,L};
type([]) ->
   [];
type(#xqAtomicValue{type = T}) ->
   T;
type(Seq) ->
   #xqSeqType{type = T, occur = _One} = ?seq:get_seq_type(Seq),
   T.

as_seq({Id,Doc}, SeqType) -> % new document fragment
   _ = xqerl_context:add_available_document(Id, Doc),
   Node = #xqNode{frag_id = Id,identity = 1},
   as_seq(?seq:singleton(Node), SeqType);
as_seq(Vals, _) ->
   Vals.

% this function is for promoting/checking sequences for their types
cast_as_seq([Vals], SeqType) ->
   cast_as_seq(Vals, SeqType);
cast_as_seq(Vals, []) ->
   Vals;
cast_as_seq(Fn, #xqSeqType{type = #xqFunTest{kind = function}}) when is_function(Fn) ->
   Fn;
cast_as_seq(Fn, #xqSeqType{type = #xqFunTest{kind = function}}) when is_map(Fn) ->
   Fn;
cast_as_seq(#xqFunction{} = Fn, #xqSeqType{type = #xqFunTest{kind = function}}) ->
   Fn;
cast_as_seq(#array{} = Array, #xqSeqType{type = #xqFunTest{kind = array}}) ->
   Array;
cast_as_seq(Map, #xqSeqType{type = #xqFunTest{kind = map}}) when is_map(Map) ->
   Map;
cast_as_seq(Av, #xqSeqType{type = 'xs:boolean'}) ->
   cast_as(Av, 'xs:boolean');
cast_as_seq(#xqAtomicValue{type = 'xs:anyURI'} = Av, #xqSeqType{type = 'xs:string'}) ->
   cast_as(Av,'xs:string');
cast_as_seq(#xqAtomicValue{} = Av, #xqSeqType{type = 'xs:anyAtomicType'}) ->
   Av;
cast_as_seq(#xqAtomicValue{type = AType} = Av, #xqSeqType{type = Type}) ->
   SubType = subtype_of(AType, Type),
   if SubType ->
         Av;
      AType == 'xs:untypedAtomic' ->
         cast_as(Av,Type);
      ?numeric(AType), ?numeric(Type) ->
         cast_as(Av,Type);
      true ->
         xqerl_error:error('XPTY0004')
   end;
cast_as_seq(#xqNode{} = Av, SeqType) ->
   cast_as(Av, SeqType);
cast_as_seq(Vals, []) ->
   Vals;
cast_as_seq(Vals, _SeqType) when is_function(Vals) ->
   Vals;
cast_as_seq(Seq, #xqSeqType{type = 'xs:anyAtomicType'}) when is_list(Seq) ->
   lists:map(fun(#xqAtomicValue{} = Av) ->
                   Av;
                (Item) ->
                   cast_as(Item, 'xs:anyAtomicType')
             end, Seq);
cast_as_seq(Seq, #xqSeqType{type = Type, occur = Occ} = SType) when is_list(Seq), Occ =/= one ->
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


cast_as_seq(Seq, #xqSeqType{type = Type, occur = Occur} = TargetSeqType) ->
   
   case ?seq:is_sequence(Seq) andalso ?seq:is_empty(Seq) andalso Occur == zero_or_one of
      true ->
         ?seq:empty();
      _ ->
         SeqType = ?seq:get_seq_type(Seq),
         case seq_type_val_match(TargetSeqType, SeqType) of
            nocast ->
               Seq;
            true ->
               if Type == 'xs:anyAtomicType' orelse Type == 'item' ->
                     Seq;
                  true ->
                     case is_ns_sensitive(Type) of
                        true ->
                           ?seq:val_map(fun(#xqNode{}) -> xqerl_error:error('XPTY0117');
                                           (Val) -> 
                                            case type(Val) == 'xs:untypedAtomic' of
                                              true ->
                                                 xqerl_error:error('XPTY0117');
                                              _ ->
                                                 try 
                                                    cast_as(Val, Type)
                                                 catch _:_ -> xqerl_error:error('XPTY0004',?LINE)
                                                 end      
                                           end
                                     end, Seq);
                        _ ->
                           try
                              ?seq:val_map(fun(Val) ->
                                                 %?dbg("Val, Type",{Val, Type}),
                                                 cast_as(Val, Type)
                                           end, Seq)
                           catch
                              _:#xqError{} = E -> 
                                 ?dbg(Seq,TargetSeqType),
                                 throw(E);
                              _:_ -> xqerl_error:error('XPTY0004',?LINE)
                           end
                     end
               end;
            _ ->
               xqerl_error:error('XPTY0004',?LINE)
         end
   end.

cast_as_seq(Vals, [], _) -> Vals.

treat_as_seq(Vals, SeqType) ->
   %?dbg("Vals, SeqType",{Vals, SeqType}),
   try cast_as_seq(Vals, SeqType) of
      Seq ->
         Seq
   catch _:_ ->
            xqerl_error:error('XPDY0050')
   end.

name_match(_,undefined) ->
   true;
name_match(_,#qname{namespace = "*",local_name = "*"}) ->
   true;
%% name_match(#qname{namespace = Ns1,local_name = Ln1},#qname{namespace = Ns2,local_name = Ln2}) ->
%%    true;
name_match(#qname{namespace = Ns1,local_name = Ln1},#qname{namespace = Ns2,local_name = Ln2}) ->
   Ns1 == Ns2 andalso Ln1 == Ln2.


kind_test_match(#xqSeqType{type = #xqKindTest{kind = Kind1,
                                              name = Name1,
                                              type = Type1}} = Kt1,
                #xqSeqType{type = #xqKindTest{kind = Kind2,
                                              name = Name2,
                                              type = Type2}} = Kt2) ->
   case seq_type_val_match(Kt2,Kt1) of
      false ->
         false;
      nocast ->
         true;
      _ -> % maybe, so check name and type
         if Kind1 == Kind2 ->
               NameMatch = name_match(Name1, Name2),
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


%% -record(xqSeqType, {
%%    type  = item :: atom(),
%%    occur = one  :: one | zero_or_one | zero_or_many | one_or_many
%% }).
seq_type_val_match(T, T) -> 
   nocast;
seq_type_val_match(#xqSeqType{type = 'xs:error', occur = zero_or_one}, #xqSeqType{type = 'empty-sequence'}) -> % xs:error is an empty-sequence
   nocast;
seq_type_val_match(#xqSeqType{type = 'empty-sequence'}, #xqSeqType{type = 'empty-sequence'}) ->
   nocast;
seq_type_val_match(#xqSeqType{type = _Type, occur = one}, #xqSeqType{type = 'empty-sequence'}) ->
   false;
seq_type_val_match(#xqSeqType{type = _Type, occur = one_or_many}, #xqSeqType{type = 'empty-sequence'}) ->
   false;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_one}, #xqSeqType{type = 'empty-sequence'}) ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one}, #xqSeqType{type = AType, occur = one}) when TType == AType;
                                                                                                      TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = #xqKindTest{kind = TType} , occur = one}, #xqSeqType{type = AType, occur = one}) when TType == AType ->
   true;
seq_type_val_match(#xqSeqType{type = #xqKindTest{kind = TType} , occur = one}, #xqSeqType{type = #xqKindTest{kind = AType}, occur = one}) when TType == AType ->
   true;
%% seq_type_val_match(#xqSeqType{type = #xqKindTest{kind = TType} , occur = one}, #xqSeqType{type = _AType, occur = one}) when TType == 'item' ->
%%    nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = zero_or_one}, #xqSeqType{type = AType, occur = one}) when TType == AType;
                                                                                                              TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one_or_many}, #xqSeqType{type = AType, occur = one}) when TType == AType;
                                                                                                              TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one_or_many}, #xqSeqType{type = AType, occur = one_or_many}) when TType == AType;
                                                                                                                      TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = zero_or_many}, #xqSeqType{type = AType}) when TType == AType;
                                                                                                  TType == 'item' ->
   nocast;
seq_type_val_match(#xqSeqType{type = _Type, occur = one}, #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = one}, #xqSeqType{occur = zero_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = one}, #xqSeqType{occur = zero_or_one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_one}, #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_one}, #xqSeqType{occur = zero_or_one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_one}, #xqSeqType{occur = zero_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{type = Type, occur = one_or_many}, #xqSeqType{type = Type, occur = one}) ->
   nocast;
seq_type_val_match(#xqSeqType{type = _Type, occur = one_or_many}, #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = one_or_many}, #xqSeqType{occur = one_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_many}, _V) ->
   true;
seq_type_val_match(A, B) ->
   ?dbg(?LINE,{A,B}),
   false.

promote(At,Type) ->
   InType = type(At),
   case subtype_of(InType,Type) of
      true ->
         #xqAtomicValue{type = Type, value = value(At)};
      _ ->
         xqerl_error:error('FORG0006')
   end.

% params subtype, type
% subtype substitution allowed when true (don't cast the value, keep original type')
% instance of returns true with this function
subtype_of(T, T) -> true;

subtype_of(#xqFunTest{} = F1, #xqFunTest{} = F2) ->
   fun_check(F1,F2);

subtype_of(T, #xqKindTest{kind = T}) -> true;
subtype_of(T, #xqFunTest{kind = T}) -> true;
subtype_of(T, #xqFunTest{kind = T}) -> true;

%% subtype_of(_, #xqKindTest{kind = item}) -> true;

subtype_of(#xqKindTest{kind = node}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = 'document-node'}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = element}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = comment}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = text}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = attribute}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = namespace}, #xqKindTest{kind = node}) -> true;
subtype_of(#xqKindTest{kind = 'processing-instruction'}, #xqKindTest{kind = node}) -> true;

subtype_of(#xqKindTest{kind = element, name = N1}, #xqKindTest{kind = element, name = N2}) -> 
   has_name(N1, N2);
subtype_of(#xqKindTest{kind = attribute, name = N1}, #xqKindTest{kind = attribute, name = N2}) -> 
   has_name(N1, N2);
subtype_of(#xqKindTest{kind = 'processing-instruction', name = N1}, #xqKindTest{kind = 'processing-instruction', name = N2}) -> 
   has_name(N1, N2);

subtype_of('empty-sequence', _) -> true;
subtype_of(_, item) -> true;
subtype_of('document-node', #xqKindTest{kind = node}) -> true;
subtype_of('element', #xqKindTest{kind = node}) -> true;
subtype_of('comment', #xqKindTest{kind = node}) -> true;
subtype_of('text', #xqKindTest{kind = node}) -> true;
subtype_of('attribute', #xqKindTest{kind = node}) -> true;
subtype_of('processing-instruction', #xqKindTest{kind = node}) -> true;

subtype_of('element', 'xs:QName')   -> xqerl_error:error('XPTY0117'); % namespace sensitive
subtype_of('attribute', 'xs:QName') -> xqerl_error:error('XPTY0117'); % namespace sensitive

subtype_of(_, 'xs:anyAtomicType') -> true;

subtype_of('xs:dateTimeStamp'     , 'xs:dateTime') -> true;

subtype_of('xs:dayTimeDuration'   , 'xs:duration') -> true;
subtype_of('xs:yearMonthDuration' , 'xs:duration') -> true;

subtype_of('xs:normalizedString'  , 'xs:string') -> true;

%subtype_of('xs:anyURI'            , 'xs:string') -> true;
%subtype_of('xs:untypedAtomic'     , 'xs:string') -> true;

subtype_of('xs:token'             , 'xs:normalizedString') -> true;
subtype_of('xs:token'             , 'xs:string') -> true;

subtype_of('xs:language'          , 'xs:token') -> true;
subtype_of('xs:language'          , 'xs:normalizedString') -> true;
subtype_of('xs:language'          , 'xs:string') -> true;

subtype_of('xs:NMTOKEN'           , 'xs:token') -> true;
subtype_of('xs:NMTOKEN'           , 'xs:normalizedString') -> true;
subtype_of('xs:NMTOKEN'           , 'xs:string') -> true;

%% subtype_of('xs:NMTOKENS'          , 'xs:NMTOKEN') -> true;
%% subtype_of('xs:NMTOKENS'          , 'xs:token') -> true;
%% subtype_of('xs:NMTOKENS'          , 'xs:normalizedString') -> true;
%% subtype_of('xs:NMTOKENS'          , 'xs:string') -> true;

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

%subtype_of('xs:integer'           , 'xs:float') -> true; % not really...
%subtype_of('xs:integer'           , 'xs:double') -> true; % not really...
%subtype_of('xs:decimal'           , 'xs:float') -> true; % not really...
%subtype_of('xs:decimal'           , 'xs:double') -> true; % not really...

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

castable([], TargetSeqType) ->
   castable(?seq:empty(), TargetSeqType);
castable(#xqNode{} = Seq, TargetSeqType) ->
   castable(xqerl_node:atomize_nodes(Seq), TargetSeqType);
castable(#xqAtomicValue{} = Seq, TargetSeqType) ->
   castable(?seq:singleton(Seq), TargetSeqType);
castable(Seq, #xqSeqType{type = Type} = TargetSeqType) ->
   #xqSeqType{occur = O} = SeqType = ?seq:get_seq_type(Seq),
   if O == one_or_many ->
         ?false;
      true ->
         case seq_type_val_match(TargetSeqType, SeqType) of
            nocast ->
               ?true;
            true ->
               try
                  cast_as(Seq, Type),
                  %?dbg("castable", {Seq, Type}),
                  ?true
               catch
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FORG0001"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPTY0004"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0001"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0002"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FOCA0002"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPST0081"}}} -> ?false;
                  _:badarg -> ?false;
                  _:E -> throw(E)            
               end;
            _ ->
               ?false
         end
   end;
castable( Av, Type ) -> 
   #xqSeqType{occur = O} = ?seq:get_seq_type(Av),
   if O == one_or_many ->
         ?false;
      true ->
         try
            cast_as(Av, Type),
            %?dbg("castable", {Av, Type}),
            ?true
         catch
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FORG0001"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPTY0004"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0001"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0002"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FOCA0002"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPST0081"}}} -> ?false;
            _:E -> throw(E)            
         end
   end.

castable([], TargetSeqType, Namespaces) ->
   castable(?seq:empty(), TargetSeqType, Namespaces);
castable(#xqAtomicValue{} = Seq, TargetSeqType, Namespaces) ->
   castable(?seq:singleton(Seq), TargetSeqType, Namespaces);
castable(Seq, #xqSeqType{type = Type} = TargetSeqType, Namespaces) ->
   #xqSeqType{occur = O} = SeqType = ?seq:get_seq_type(Seq),
   if O == one_or_many ->
         ?false;
      true ->
         case seq_type_val_match(TargetSeqType, SeqType) of
            nocast ->
               ?true;
            true ->
               try
                  cast_as(Seq, Type, Namespaces),
                  %?dbg("castable", {Seq, Type}),
                  ?true
               catch
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FORG0001"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPTY0004"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0001"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0002"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FOCA0002"}}} -> ?false;
                  _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPST0081"}}} -> ?false;
                  _:E -> throw(E)            
               end;
            _ ->
               ?false
         end
   end;
castable( Av, Type, Namespaces) -> 
   #xqSeqType{occur = O} = ?seq:get_seq_type(Av),
   if O == one_or_many;
      O == zero ->
         ?false;
      true ->
         try
            cast_as(Av, Type, Namespaces),
            %?dbg("castable", {Av, Type}),
            ?true
         catch
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FORG0001"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPTY0004"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0001"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FODT0002"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "FOCA0002"}}} -> ?false;
            _:#xqError{name = #xqAtomicValue{value=#qname{local_name = "XPST0081"}}} -> ?false;
            _:E -> throw(E)            
         end
   end.

%% %% type can be
%% 'empty-sequence'
%% 'item'
%% some btype

instance_of( [], #xqSeqType{type = _TType, occur = TOccur}) when TOccur == none;
                                                                 TOccur == zero;
                                                                 TOccur == zero_or_one;
                                                                 TOccur == zero_or_many -> ?true;
instance_of( [], #xqSeqType{type = _TType, occur = _TOccur}) -> ?false;

instance_of( _Se, #xqSeqType{type = item, 
                             occur = TOccur}) when TOccur == one;
                                                   TOccur == one_or_many;
                                                   TOccur == zero_or_one;
                                                   TOccur == zero_or_many ->
   ?true;
instance_of( [Seq], #xqSeqType{type = #xqKindTest{} = TType, 
                               occur = TOccur}) when TOccur == one;
                                                     TOccur == one_or_many;
                                                     TOccur == zero_or_one;
                                                     TOccur == zero_or_many ->
   ?xav('xs:boolean',instance_of1(Seq, TType));
instance_of(  Seq , #xqSeqType{type = #xqFunTest{} = TType, 
                               occur = TOccur}) when TOccur == one_or_many;
                                                     TOccur == zero_or_many ->
   ?xav('xs:boolean',instance_of1(Seq, TType));
instance_of(  Seq , #xqSeqType{type = #xqFunTest{} = TType, 
                               occur = TOccur}) when TOccur == one;
                                                     TOccur == zero_or_one ->
   if is_list(Seq) andalso length(Seq) > 1 ->
         ?false;
      true ->
         ?xav('xs:boolean',instance_of1(Seq, TType))
   end;

instance_of( Seq, #xqSeqType{type = TType, 
                             occur = TOccur}) when is_map(Seq), TOccur == one;
                                                   is_map(Seq), TOccur == one_or_many;
                                                   is_map(Seq), TOccur == zero_or_one;
                                                   is_map(Seq), TOccur == zero_or_many -> 
   ?xav('xs:boolean',instance_of1(Seq, TType));
instance_of( #xqNode{} = Seq, #xqSeqType{type = TType, 
                                         occur = TOccur}) when TOccur == one;
                                                               TOccur == one_or_many;
                                                               TOccur == zero_or_one;
                                                               TOccur == zero_or_many -> 
   ?xav('xs:boolean',instance_of1(Seq, TType));
instance_of( #array{} = Seq, #xqSeqType{type = TType, 
                                        occur = TOccur}) when TOccur == one;
                                                              TOccur == one_or_many;
                                                              TOccur == zero_or_one;
                                                              TOccur == zero_or_many -> 
   ?xav('xs:boolean',instance_of1(Seq, TType));
instance_of( #xqAtomicValue{}, #xqSeqType{type = #xqKindTest{}}) ->
   ?false;
instance_of( #xqAtomicValue{}, #xqSeqType{type = #xqFunTest{}}) ->
   ?false;
instance_of( #xqAtomicValue{} = Seq, #xqSeqType{type = TType, 
                                                occur = TOccur}) when TOccur == one;
                                                                      TOccur == one_or_many;
                                                                      TOccur == zero_or_one;
                                                                      TOccur == zero_or_many -> 
   IType = get_item_type(Seq),
   BIType = xqerl_btypes:get_type(IType),
   BTType = xqerl_btypes:get_type(TType),
   ?xav('xs:boolean',xqerl_btypes:can_substitute(BIType, BTType));
instance_of( [Seq], #xqSeqType{type = TType, occur = TOccur}) when TOccur == one;
                                                                   TOccur == one_or_many;
                                                                   TOccur == zero_or_one;
                                                                   TOccur == zero_or_many -> 
   IType = get_item_type(Seq),
   BIType = xqerl_btypes:get_type(IType),
   BTType = xqerl_btypes:get_type(TType),
   %?dbg("IType",IType),
   %?dbg("BIType",BIType),
   %?dbg("TType",TType),
   %?dbg("BTType",BTType),
   ?xav('xs:boolean',xqerl_btypes:can_substitute(BIType, BTType));
%instance_of( [_Seq], #xqSeqType{type = _TType, occur = _TOccur}) -> ?false;


instance_of( Seq, #xqSeqType{type = TType, occur = TOccur}) when TOccur == one_or_many;
                                                                 TOccur == zero_or_many -> 
   ?dbg("Seq",Seq),
   ?dbg("TType",TType),
   F = fun(Item) ->
             instance_of1(Item, TType)
       end,
   AllOk = if is_list(Seq) ->
                 lists:all(F, Seq);
              true ->
                 instance_of1(Seq, TType)
           end,
   if AllOk ->
         ?true;
      true ->
         ?false
   end;
instance_of(Seq,TType) ->
   %?dbg("Seq",Seq),
   %?dbg("TType",TType),
   ?false.


check_param_types(_Params, any) -> true;
check_param_types(Params, Params) -> true;
check_param_types(Params, TargetParams) -> 
   lists:all(fun({P,#xqSeqType{type = T}}) ->
                   P == T
             end, lists:zip(Params, TargetParams)).

check_annotations(_Annos, []) -> true;
check_annotations(Annos, TargetAnnos) -> true.

check_return_type(_Type, any) -> true;
check_return_type(Type, ReturnType) -> true.

%% #xqKindTest{kind = 'document-node',    test = Test} where test is undefined | element-test, schema-element-test
instance_of1(Node, #xqKindTest{kind = 'document-node', test = #xqKindTest{kind = element, name = #qname{} = Q1}}) ->
   ?dbg("Node",Node),
   case xqerl_node:get_node_type(Node) of
      'document-node' ->
         ?dbg("Node",ok),
         case xqerl_node:get_node_children(Node) of
            [Element] ->
               Q2 = xqerl_node:get_node_name(Node#xqNode{identity = Element}),
               has_name(Q2, Q1);
            _ ->
               false
         end;
      O ->
         ?dbg("Node",O),
         false
   end;
instance_of1(Node, #xqKindTest{kind = 'document-node'}) ->
   case xqerl_node:get_node_type(Node) of
      'document-node' ->
         true;
      _ ->
         false
   end;
%% #xqKindTest{kind = 'element',          name = undefined | WQName, type = undefined | #xqSeqType{type = BType, occur = one|zero_or_one}.
instance_of1(Node, #xqKindTest{kind = element, name = #qname{} = Q1, type = #xqSeqType{type = Type}}) ->
   case xqerl_node:get_node_type(Node) of
      element ->
         Q2 = xqerl_node:get_node_name(Node),
         case has_name(Q2, Q1) of
            true ->
               #xqElementNode{type = EType} = xqerl_node:get_node(Node),
               ?dbg("EType,Type",{EType,Type}),
               EType == Type;
            _ ->
               false
         end;
      _ ->
         false
   end;
instance_of1(Node, #xqKindTest{kind = element, name = #qname{} = Q1}) ->
   case xqerl_node:get_node_type(Node) of
      element ->
         Q2 = xqerl_node:get_node_name(Node),
         has_name(Q2, Q1);
      _ ->
         false
   end;
instance_of1(Node, #xqKindTest{kind = element}) ->
   %?dbg("Node",Node),
   case xqerl_node:get_node_type(Node) of
      element ->
         true;
      _ ->
         false
   end;
%% #xqKindTest{kind = 'attribute',        name = undefined | WQName, type = undefined | #xqSeqType{type = BType, occur = one}}.
instance_of1(Node, #xqKindTest{kind = attribute, name = #qname{} = Q1}) ->
   case xqerl_node:get_node_type(Node) of
      attribute ->
         Q2 = xqerl_node:get_node_name(Node),
         has_name(Q2, Q1);
      _ ->
         false
   end;
instance_of1(Node, #xqKindTest{kind = attribute}) ->
   %?dbg("Node",Node),
   case xqerl_node:get_node_type(Node) of
      attribute ->
         true;
      _ ->
         false
   end;

%% #xqKindTest{kind = 'schema-element',   name = WQName}.
%% #xqKindTest{kind = 'schema-attribute', name = WQName}.
%% #xqKindTest{kind = 'processing-instruction', name = undefined | QName}.
%% #xqKindTest{kind = 'comment'}.
%% #xqKindTest{kind = 'text'}.
%% #xqKindTest{kind = 'namespace'}.
%% #xqKindTest{kind = 'node'}.

%% #xqFunTest{kind = function, annotations = AnnoList, params = any | ListOfSeqTypes, type = any | SeqType} .
%% #xqFunTest{kind = map, params = any | #xqSeqType{type = BType, occur = one}, type = any | SeqType} .
%% #xqFunTest{kind = array, params = any, type = any | SeqType} .

instance_of1(Fun, #xqFunTest{kind = function, annotations = _AnnoList, params = any, type = any}) when is_function(Fun) ->
   true;

instance_of1(#xqFunction{annotations = Annos, params = Params, type = Type}, 
             #xqFunTest{kind = function, annotations = AnnoList, params = ListOfSeqTypes, type = SeqType}) ->
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
instance_of1(Map, #xqFunTest{kind = function, type = SeqType}) when is_map(Map) -> % map is function(anyAtomic,V)
   instance_of1(Map, #xqFunTest{kind = map, params = [#xqSeqType{type = 'xs:anyAtomicType', occur = one}], type = SeqType});
instance_of1(Map, #xqFunTest{kind = map, params = Param, type = SeqType}) when is_map(Map) ->
   ParamOk = if Param == any -> % this means return type is also any
                   true;
                true ->
                   KVs = maps:values(Map),
                   ?dbg("KVs",KVs),
                   [Param1] = Param, 
                   lists:all(fun({K,V}) ->
                                   Aok = instance_of(K, Param1) == #xqAtomicValue{type = 'xs:boolean', value = true},
                                   Bok = instance_of(V, SeqType) == #xqAtomicValue{type = 'xs:boolean', value = true},
                                   Aok andalso Bok 
                             end, KVs)
             end,
   if ParamOk ->
         true;
      true ->
         false
   end;

instance_of1({array,Array}, #xqFunTest{kind = function, params = SeqType}) -> % array is a function arity 1
   instance_of1({array,Array}, #xqFunTest{kind = array, type = SeqType});
instance_of1({array,Array}, #xqFunTest{kind = array, type = SeqType}) ->
   TypeOk = if SeqType == any ->
                  true;
               true ->
                  ListType = get_array_type(Array),
                  check_return_type(ListType, SeqType)
            end,
   if TypeOk ->
         true;
      true ->
         false
   end;

instance_of1(Seq, Type) when is_list(Seq) ->
   F = fun(Item) ->
             instance_of1(Item, Type)
       end,
   lists:all(F, Seq);


instance_of1(Seq, Type) ->
   IType = get_item_type(Seq),
   TType = get_type(Type),
   BIType = xqerl_btypes:get_type(IType),
   BTType = xqerl_btypes:get_type(TType),
   %?dbg("IType",IType),
   %?dbg("BIType",BIType),
   %?dbg("TType",TType),
   %?dbg("BTType",BTType),
   xqerl_btypes:can_substitute(BIType, BTType);

instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true;
instance_of1(Singleton, Type) ->
   true.


get_type(Type) when is_atom(Type) ->
   Type;
get_type(#xqKindTest{kind = Type}) ->
   Type;
get_type(#xqFunTest{kind = Type}) ->
   Type.


get_item_type(#xqAtomicValue{type = Type}) ->
   Type;
get_item_type(#xqNode{} = Node) ->
   xqerl_node:get_node_type(Node);
get_item_type(Fun) when is_function(Fun) ->
   function;
get_item_type(Map) when is_map(Map) ->
   map;
get_item_type({array,_}) ->
   array;
get_item_type(O) ->
   ?dbg("get_item_type",O),
   item.

get_item_list_type(_) ->
   item.

get_array_type(_) ->
   item.


construct_as(At,#xqSeqType{type = 'xs:error'}) ->
   xqerl_xs:xs_error([], At);
construct_as(At,#xqSeqType{type = _Type}) ->
   At.

type_check(#xqSeqType{}, undefined) -> true;
type_check(#xqSeqType{}, any) -> true;
type_check(undefined, #xqSeqType{}) -> true;
type_check(any, #xqSeqType{}) -> true;
type_check(#xqSeqType{type = Type} = T1, #xqSeqType{type = TargetType} = T2) ->
   case seq_type_val_match(T1, T2) of
      nocast -> true;
      true ->
         %?dbg(?LINE,{TargetType, Type}),
         subtype_of(TargetType, Type);
      _ ->
         %?dbg(?LINE,{TargetType,Type}),
         false
   end;
type_check(T1, T2) ->
   ?dbg(?LINE,{T1,T2}),
   false.

%% param_check(_, undefined) -> true;
param_check(_, any) -> true;
%% param_check(undefined, _) -> true;
param_check(any, _) -> true;
param_check(L1, L2) when length(L1) == length(L2) ->
   lists:all(fun({A,B}) ->
                   type_check(A,B)
             end, lists:zip(L1, L2));
param_check(T1, T2) ->
   ?dbg(?LINE,{T1,T2}),
   false.

fun_check(#xqFunTest{kind = function, name = Name1, type = RetType1, params = Params1},
          #xqFunTest{kind = function, name = Name2, type = RetType2, params = Params2}) ->
   NameCheck = has_name(Name2,Name1),
   %?dbg(?LINE, {NameCheck, Name1, Name2}),
   TypeCheck = type_check(RetType2, RetType1),
   %?dbg(?LINE, {TypeCheck, RetType2, RetType1}),
   ParamCheck = param_check(Params2, Params1),
   %?dbg(?LINE, {ParamCheck, Params2, Params1}),
   NameCheck andalso TypeCheck andalso ParamCheck;

fun_check(#xqFunTest{}=A,#xqFunTest{}=B) ->
   ?dbg(?LINE, {A,B}),
   false.




cast_as( At, [] ) -> 
   At;
cast_as( At, #xqSeqType{type = item}) -> 
   At;
cast_as( At, 'item' ) -> 
   At;
cast_as( #xqNode{} = N, 'xs:anyAtomicType' ) -> 
   xqerl_node:atomize_nodes(N);
cast_as( #xqNode{} = N, #xqSeqType{type = 'xs:anyAtomicType'} ) -> 
   xqerl_node:atomize_nodes(N);

cast_as( [], 'empty-sequence' ) -> 
   [];
cast_as( _, 'empty-sequence' ) -> 
   xqerl_error:error('XPTY0004');
cast_as( [], #xqSeqType{occur = zero_or_one} ) -> 
   [];
cast_as( [], #xqSeqType{type = 'empty-sequence'} ) -> 
   [];
cast_as( _, #xqSeqType{type = 'empty-sequence'} ) -> 
   xqerl_error:error('XPTY0004');

cast_as( [], 'xs:error' ) -> 
   ?seq:empty();
cast_as( _, 'xs:error' ) -> 
   xqerl_error:error('FORG0001'); % $x cast as xs:error fails dynamically with error [err:FORG0001]FO31, regardless of the value of $x
% QName hack
cast_as( #qname{} = Q, 'xs:QName' ) -> 
   ?xav('xs:QName',Q);
cast_as( #qname{} = Val, Type ) -> 
   cast_as(#xqAtomicValue{type = 'xs:QName', value = Val}, Type);
cast_as( #xqFunction{}, _ ) -> 
   xqerl_error:error('FOTY0013');
cast_as( Fx, _ ) when is_function(Fx) -> 
   xqerl_error:error('FOTY0013');
cast_as( #xqAtomicValue{} = At, #xqSeqType{type = Type} ) -> 
   cast_as(At,Type);
%% cast_as( #xqAtomicValue{} = At, #xqSeqType{type = Type, occur = zero_or_one} ) -> 
%%    cast_as(At,Type);
%% cast_as( List, #xqSeqType{occur = zero_or_many} = SType ) -> 
%%    cast_as_seq(List,SType);
%% cast_as( List, #xqSeqType{occur = one_or_many} = SType ) -> 
%%    cast_as_seq(List,SType);

cast_as( #xqNode{} = At, #xqKindTest{kind = node} ) -> 
   At;
cast_as( #xqNode{} = At, #xqKindTest{kind = element, name = #qname{namespace = Ns,local_name = Ln}} ) ->
   case xqerl_node:get_node(At) of
      #xqElementNode{name = #qname{namespace = Ns,local_name = Ln}} ->
         At;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
cast_as( #xqNode{} = At, #xqKindTest{kind = element} ) ->
   case xqerl_node:get_node(At) of
      #xqElementNode{} ->
         At;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
cast_as( #xqNode{} = At, #xqKindTest{kind = attribute} ) ->
   case xqerl_node:get_node(At) of
      #xqAttributeNode{} ->
         At;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
cast_as( #xqNode{} = At, #xqKindTest{kind = 'processing-instruction'} ) ->
   case xqerl_node:get_node(At) of
      #xqProcessingInstructionNode{} ->
         At;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
cast_as( #xqNode{} = At, #xqKindTest{kind = 'document-node'} ) ->
   case xqerl_node:get_node(At) of
      #xqDocumentNode{} ->
         At;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
cast_as( #xqNode{} = At, TT ) ->
   Atomized = xqerl_node:atomize_nodes(At),
   %?dbg("Atomized",Atomized),
   cast_as(Atomized, TT);

cast_as( [], 'xs:anyURI') -> [];
cast_as( [], 'xs:NCName') -> [];
cast_as( [], 'xs:language') -> [];
cast_as( [], 'xs:string') -> [];
cast_as( [], 'xs:hexBinary') -> [];
cast_as( [], 'xs:base64Binary') -> [];
cast_as( [], 'xs:float') -> [];
cast_as( [], 'xs:double') -> [];
cast_as( [], 'xs:date') -> [];
cast_as( [], 'xs:time') -> [];
cast_as( [], 'xs:dateTime') -> [];

cast_as( #xqAtomicValue{type = Type} = ST, 'xs:numeric' ) when ?numeric(Type) ->
   ST;
cast_as( #xqAtomicValue{type = 'xs:untypedAtomic'} = ST, 'xs:numeric' ) ->
   cast_as(ST,'xs:double');
cast_as( #xqAtomicValue{type = 'xs:boolean'} = ST, 'xs:numeric' ) ->
   cast_as(ST,'xs:double');
cast_as( #xqAtomicValue{type = 'xs:string'} = ST, 'xs:numeric' ) ->
   cast_as(ST,'xs:double');
cast_as( #xqAtomicValue{type = _}, 'xs:numeric' ) ->
   xqerl_error:error('XPTY0004');

cast_as( [At], TT ) -> 
   cast_as( At, TT );

% force float to cast
cast_as( #xqAtomicValue{type = Type,value = _} = ST, TType ) when Type == TType, Type =/= 'xs:float' -> 
   ST;

cast_as( #xqAtomicValue{type = 'xs:anyURI', value = 'no-namespace'}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = ""};
cast_as( #xqAtomicValue{type = 'xs:anyURI', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = decode_html_entities(Val)};
cast_as( #xqAtomicValue{type = 'xs:anyURI', value = 'no-namespace'}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = ""};
cast_as( #xqAtomicValue{type = 'xs:anyURI', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = decode_html_entities(Val)};

cast_as( #xqAtomicValue{type = 'xs:base64Binary', value = Val}, 'xs:hexBinary' ) -> 
   #xqAtomicValue{type = 'xs:hexBinary', value = b64bin_to_hexbin(Val)};
cast_as( #xqAtomicValue{type = 'xs:base64Binary', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = b64bin_to_str(Val)};
cast_as( #xqAtomicValue{type = 'xs:base64Binary', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = b64bin_to_str(Val)};

cast_as( #xqAtomicValue{type = 'xs:boolean', value = Val}, 'xs:decimal' ) -> 
   NVal = case Val of
             true -> 1;
             false -> 0
          end,                
   #xqAtomicValue{type = 'xs:decimal', value = NVal};
cast_as( #xqAtomicValue{type = 'xs:boolean', value = Val}, 'xs:double' ) -> 
   NVal = case Val of
             true -> 1;
             false -> 0
          end,                
   #xqAtomicValue{type = 'xs:double', value = NVal};
cast_as( #xqAtomicValue{type = 'xs:boolean', value = Val}, 'xs:float' ) -> 
   NVal = case Val of
             true -> 1;
             false -> 0
          end,                
   #xqAtomicValue{type = 'xs:float', value = NVal};
cast_as( #xqAtomicValue{type = 'xs:boolean', value = Val}, 'xs:integer' ) ->
   NVal = case Val of
             true -> 1;
             false -> 0
          end,                
   #xqAtomicValue{type = 'xs:integer', value = NVal};
cast_as( #xqAtomicValue{type = 'xs:boolean', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = atom_to_list(Val)};
cast_as( #xqAtomicValue{type = 'xs:boolean', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = atom_to_list(Val)};

cast_as( #xqAtomicValue{type = 'xs:date', value = Val}, 'xs:dateTime' ) -> 
   Rec = Val#xsDateTime{hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:dateTime', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:dateTime')}};
cast_as( #xqAtomicValue{type = 'xs:date', value = Val}, 'xs:gDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        month = 0},
   #xqAtomicValue{type = 'xs:gDay', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gDay')}};
cast_as( #xqAtomicValue{type = 'xs:date', value = Val}, 'xs:gMonth' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        day = 0},
   #xqAtomicValue{type = 'xs:gMonth', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gMonth')}};
cast_as( #xqAtomicValue{type = 'xs:date', value = Val}, 'xs:gMonthDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0},
   #xqAtomicValue{type = 'xs:gMonthDay', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gMonthDay')}};
cast_as( #xqAtomicValue{type = 'xs:date', value = Val}, 'xs:gYear' ) -> 
   Rec = Val#xsDateTime{month = 0,
                        day   = 0},
   #xqAtomicValue{type = 'xs:gYear', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYear')}};
cast_as( #xqAtomicValue{type = 'xs:date', value = Val}, 'xs:gYearMonth' ) -> 
   Rec = Val#xsDateTime{day   = 0},
   #xqAtomicValue{type = 'xs:gYearMonth', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYearMonth')}};
cast_as( #xqAtomicValue{type = 'xs:date', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:date', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:date' ) -> 
   Rec = Val#xsDateTime{hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:date', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:date')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:dateTimeStamp' ) -> 
   Off = Val#xsDateTime.offset,
   if Off == [] ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:dateTimeStamp',
                        value = Val}
   end;
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:gDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        month = 0,
                        hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:gDay', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gDay')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:gMonth' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        day = 0,
                        hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:gMonth', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gMonth')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:gMonthDay' ) -> 
   Rec = Val#xsDateTime{sign = '+',
                        year = 0,
                        hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:gMonthDay', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gMonthDay')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:gYear' ) -> 
   Rec = Val#xsDateTime{month = 0,
                        day   = 0,
                        hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:gYear', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYear')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:gYearMonth' ) -> 
   Rec = Val#xsDateTime{day   = 0,
                        hour = 0,
                        minute = 0,
                        second = 0},
   #xqAtomicValue{type = 'xs:gYearMonth', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYearMonth')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val}, 'xs:time' ) ->
   Rec = Val#xsDateTime{sign  = '+',
                        year  = 0,
                        month = 0,
                        day   = 0},
   #xqAtomicValue{type = 'xs:time', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:time')}};
cast_as( #xqAtomicValue{type = 'xs:dateTime', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:date' ) -> 
%%    #xqAtomicValue{type = 'xs:date', value = Val};
cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:dateTime' ) -> 
   #xqAtomicValue{type = 'xs:dateTime', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:gDay' ) -> 
%%    #xqAtomicValue{type = 'xs:gDay', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:gMonth' ) -> 
%%    #xqAtomicValue{type = 'xs:gMonth', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:gMonthDay' ) -> 
%%    #xqAtomicValue{type = 'xs:gMonthDay', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:gYear' ) -> 
%%    #xqAtomicValue{type = 'xs:gYear', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:gYearMonth' ) -> 
%%    #xqAtomicValue{type = 'xs:gYearMonth', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:string' ) -> 
%%    #xqAtomicValue{type = 'xs:string', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:time' ) -> 
%%    #xqAtomicValue{type = 'xs:time', value = Val};
%% cast_as( #xqAtomicValue{type = 'xs:dateTimeStamp', value = Val}, 'xs:untypedAtomic' ) -> 
%%    #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:dayTimeDuration', value = Val}, 'xs:duration' ) -> 
   #xqAtomicValue{type = 'xs:duration', 
                  value = Val#xsDateTime{string_value = xqerl_datetime:to_string(Val,'xs:duration')}};
cast_as( #xqAtomicValue{type = 'xs:dayTimeDuration', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:dayTimeDuration', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:dayTimeDuration', value = _Val}, 
         'xs:yearMonthDuration' ) ->
   Rec = #xsDateTime{year   = 0, 
                     month  = 0, 
                     day    = 0,
                     hour   = 0,
                     minute = 0,
                     second = 0},
   #xqAtomicValue{type = 'xs:yearMonthDuration', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:yearMonthDuration')}};

cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:boolean' ) -> 
   if Val == {xsDecimal,0,0} -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:float'} = At, 'xs:numeric' ) ->
   At;
cast_as( #xqAtomicValue{type = 'xs:double'} = At, 'xs:numeric' ) ->
   At;
cast_as( #xqAtomicValue{type = 'xs:decimal'} = At, 'xs:numeric' ) ->
   At;
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:double' ) -> 
   #xqAtomicValue{type = 'xs:double', value = xqerl_numeric:double(Val)};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:float' ) -> 
   #xqAtomicValue{type = 'xs:float', value = xqerl_numeric:float(Val)};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:integer' ) -> 
   #xqAtomicValue{type = 'xs:integer', value = xqerl_numeric:integer(Val)};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:string' ) -> 
   SVal = xqerl_numeric:string(Val),
   #xqAtomicValue{type = 'xs:string', value = SVal};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:untypedAtomic' ) ->
   SVal = xqerl_numeric:string(Val),
   #xqAtomicValue{type = 'xs:untypedAtomic', value = SVal};

cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:boolean' ) -> 
   if Val == 0 -> #xqAtomicValue{type = 'xs:boolean', value = false};
      Val == neg_zero -> #xqAtomicValue{type = 'xs:boolean', value = false};
      Val == nan -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:decimal' ) -> % MAYBE castable
   if Val == nan -> xqerl_error:error('FOCA0002');
      Val == neg_zero -> #xqAtomicValue{type = 'xs:decimal', value = xqerl_numeric:decimal(0)};
      Val == neg_infinity -> xqerl_error:error('FOCA0002');
      Val == infinity -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:decimal', value = xqerl_numeric:decimal(Val)}
   end;
% ensure float is 32 bit
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:float' ) ->
   cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:float' );
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:float' ) ->
   if Val == nan;
      Val == neg_zero;
      Val == neg_infinity;
      Val == infinity  -> #xqAtomicValue{type = 'xs:float', value = Val};
      Val < ?MINFLOAT -> #xqAtomicValue{type = 'xs:float', value = neg_infinity};
      Val > ?MAXFLOAT -> #xqAtomicValue{type = 'xs:float', value = infinity};
      abs(Val) < ?MAXFLOATPREC -> #xqAtomicValue{type = 'xs:float', value = 0.0};
      true -> 
         #xqAtomicValue{type = 'xs:float', value = xqerl_numeric:float(Val)}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:integer' ) -> % MAYBE castable
   if Val == nan -> xqerl_error:error('FOCA0002');
      Val == neg_infinity -> xqerl_error:error('FOCA0002');
      Val == neg_zero -> #xqAtomicValue{type = 'xs:integer', value = 0};
      Val == infinity -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:integer', value = trunc(Val)}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:string' ) -> 
   SVal = if Val == infinity ->
                "INF";
             Val == neg_infinity ->
                "-INF";
             Val == neg_zero ->
                "-0";
             Val == nan ->
                "NaN";
             true ->
                xqerl_numeric:string(Val)
          end,
?dbg("SVal",SVal),
   #xqAtomicValue{type = 'xs:string', value = SVal};
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:untypedAtomic' ) -> 
   SVal = if Val == infinity ->
                "INF";
             Val == neg_infinity ->
                "-INF";
             Val == neg_zero ->
                "0";
             Val == nan ->
                "NaN";
             true ->
                xqerl_numeric:string(Val)
          end,
   #xqAtomicValue{type = 'xs:untypedAtomic', value = SVal};

cast_as( #xqAtomicValue{type = 'xs:duration', value = Val}, 'xs:dayTimeDuration' ) -> 
   Rec = Val#xsDateTime{year = 0, month = 0},
   #xqAtomicValue{type = 'xs:dayTimeDuration', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:dayTimeDuration')}};
cast_as( #xqAtomicValue{type = 'xs:duration', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:duration', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:duration', value = Val}, 
         'xs:yearMonthDuration' ) -> 
   Rec = Val#xsDateTime{day = 0, hour = 0, minute = 0, second = 0},
   #xqAtomicValue{type = 'xs:yearMonthDuration', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:yearMonthDuration')}};

cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:boolean' ) ->
   if Val == 0 -> #xqAtomicValue{type = 'xs:boolean', value = false};
      Val == neg_zero -> #xqAtomicValue{type = 'xs:boolean', value = false};
      Val == nan -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:decimal' ) -> % MAYBE castable
   if Val == nan -> xqerl_error:error('FOCA0002');
      Val == neg_zero -> #xqAtomicValue{type = 'xs:decimal', value = xqerl_numeric:decimal(0)};
      Val == neg_infinity -> xqerl_error:error('FOCA0002');
      Val == infinity -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:decimal', value = xqerl_numeric:decimal(Val)}
   end;
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:double' ) when is_list(Val) ->
   #xqAtomicValue{type = 'xs:double', value = Val};
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:double' ) -> 
   #xqAtomicValue{type = 'xs:double', value = Val};
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:integer' ) -> % MAYBE castable
   if Val == nan -> xqerl_error:error('FOCA0002');
      Val == neg_zero -> #xqAtomicValue{type = 'xs:integer', value = 0};
      Val == neg_infinity -> xqerl_error:error('FOCA0002');
      Val == infinity -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:integer', value = trunc(Val)}
   end;
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:string' ) -> 
   SVal = if Val == infinity ->
                "INF";
             Val == neg_infinity ->
                "-INF";
             Val == neg_zero ->
                "-0";
             Val == nan ->
                "NaN";
             true ->
                xqerl_numeric:float_string(Val)
          end,
   #xqAtomicValue{type = 'xs:string', value = SVal};
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:untypedAtomic' ) -> 
   SVal = if Val == infinity ->
                "INF";
             Val == neg_infinity ->
                "-INF";
             Val == neg_zero ->
                "0";
             Val == nan ->
                "NaN";
             true ->
                xqerl_numeric:float_string(Val)
          end,
   #xqAtomicValue{type = 'xs:untypedAtomic', value = SVal};

cast_as( #xqAtomicValue{type = 'xs:gDay', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:gDay', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:gMonth', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:gMonth', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:gMonthDay', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:gMonthDay', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:gYear', 
                        value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:gYear', 
                        value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:gYearMonth', 
                        value = #xsDateTime{string_value = Val}}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:gYearMonth', 
                        value = #xsDateTime{string_value = Val}}, 
         'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{type = 'xs:hexBinary', value = Val}, 
         'xs:base64Binary' ) ->
   #xqAtomicValue{type = 'xs:base64Binary', value = hexbin_to_b64bin(Val)};
cast_as( #xqAtomicValue{type = 'xs:hexBinary', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = hexbin_to_str(Val)};
cast_as( #xqAtomicValue{type = 'xs:hexBinary', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = hexbin_to_str(Val)};

cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 
         'xs:boolean' ) ->
   if Val == 0 -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 'xs:decimal' ) -> 
   #xqAtomicValue{type = 'xs:decimal', value = xqerl_numeric:decimal(Val)};
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 'xs:double' ) ->
   Val1 = list_to_float(float_to_list(erlang:float(Val), [compact,{scientific,16}])),
   #xqAtomicValue{type = 'xs:double', value = Val1};
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 'xs:float' ) -> 
   Val1 = list_to_float(float_to_list(erlang:float(Val), [compact,{scientific,16}])),
   #xqAtomicValue{type = 'xs:float', value = Val1};
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = integer_to_list(Val)};
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 
         'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = integer_to_list(Val)};

cast_as( #xqAtomicValue{type = 'xs:NMTOKEN', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:Name', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:NCName', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:ID', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:IDREF', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:ENTITY', value = Val}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};

cast_as( #xqAtomicValue{type = 'xs:NOTATION', value = Val}, 'xs:QName' ) -> 
   #xqAtomicValue{type = 'xs:QName', value = Val};
cast_as( #xqAtomicValue{type = 'xs:NOTATION', 
                        value = #qname{prefix = P, local_name = L}}, 
         'xs:string' ) -> 
   Val = if P == "" -> L;
            true ->
               lists:flatten([P,":",L])
         end,
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:NOTATION'} = N, 'xs:untypedAtomic' ) -> 
   cast_as( N, 'xs:string' );

cast_as( #xqAtomicValue{type = 'xs:QName', value = Val}, 'xs:NOTATION' ) -> % MAYBE castable
   #xqAtomicValue{type = 'xs:NOTATION', value = Val};
cast_as( #xqAtomicValue{type = 'xs:QName', 
                        value = #qname{prefix = P, local_name = L}}, 
         'xs:string' ) ->
   Pre = if is_atom(P) -> "";
            true -> P end,
   Val = case Pre of
            "" -> L;
            _ ->
               lists:flatten([P,":",L])
         end,
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:QName'} = Q, 'xs:untypedAtomic' ) ->
   Val = value(cast_as( Q, 'xs:string' )),
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val} ;

cast_as( #xqAtomicValue{type = 'xs:string', value = []}, 'xs:anyURI' ) -> #xqAtomicValue{type = 'xs:anyURI', value = []};
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 'xs:anyURI' ) -> % MAYBE castable
   Trim = string:trim(Val),
   if Trim == "" ->
         #xqAtomicValue{type = 'xs:anyURI', value = []};
      true ->
         EncBig = lists:flatmap(fun(Cp) when Cp > 255 ->
                                      "&#" ++ integer_to_list(Cp) ++ ";";
                                   (Cp) ->
                                      [Cp]                                   
                                end, Trim),
         %?dbg(?LINE,EncBig),
         case ietf_rfc2396_scanner:string(EncBig) of
            {ok,L,_} ->
               Head = hd(L),
               
               Bad = element(3, Head) == ":" orelse lists:keyfind(excluded, 1, L),
               if Bad == false ->
                     #xqAtomicValue{type = 'xs:anyURI', value = EncBig};
                  true ->
                     ?dbg("Bad",L),
                     xqerl_error:error('FORG0001')
               end;
            X ->
               ?dbg("Bad",X),
               xqerl_error:error('FORG0001')
         end
   end;

cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:base64Binary' ) -> % MAYBE castable
   #xqAtomicValue{type = 'xs:base64Binary', value = str_to_b64bin(string:trim(Val))};

cast_as( #xqAtomicValue{type = 'xs:string', value = Val0}, 
         'xs:boolean' ) -> % MAYBE castable
   Val = string:trim(Val0),
   if Val == "true"  -> #xqAtomicValue{type = 'xs:boolean', value = true};
      Val == "false" -> #xqAtomicValue{type = 'xs:boolean', value = false};
      Val == "1"     -> #xqAtomicValue{type = 'xs:boolean', value = true};
      Val == "0"     -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true ->
         xqerl_error:error('FORG0001', "xs:boolean " ++ Val) 
   end;
%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these), 
%% if the value is too large or too small to be represented by the implementation, 
%% a dynamic error [err:FODT0001] is raised.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:date' ) -> % MAYBE castable
   Bin = list_to_binary(string:trim(Val)),
   {Sign,Year,Mon,Day,Rest} = date_bin_to_ymd(Bin),
   Offset = tz_bin_to_offset(Rest),
   Rec = #xsDateTime{sign = Sign,
                     year = Year, 
                     month = Mon, 
                     day = Day, 
                     offset = Offset},
   Dt = #xqAtomicValue{type = 'xs:date',
                       value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:date')}},
   if Offset == [] ->
         Dt;
      true ->
         #off_set{hour = Hour, min = Min} = Offset,
         if Hour >= 24 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
            Min  >= 60 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
            true ->
               Dt
         end
   end;

%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these), 
%% if the value is too large or too small to be represented by the implementation, 
%% a dynamic error [err:FODT0001] is raised.
%% TODO push 24:00 hour to day 
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:dateTime' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      {Sign,Year,Mon,Day,Rest} = date_bin_to_ymd(Bin),
      {Hour,Min,Sec,Rest1} = time_bin_to_hms(Rest),
      Offset = tz_bin_to_offset(Rest1),
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = Mon, 
                        day    = Day,
                        hour   = Hour,
                        minute = Min,
                        second = Sec, 
                        offset = Offset},
      Dt = #xqAtomicValue{type = 'xs:dateTime', 
                     value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:dateTime')}},
      if Hour == 24 andalso Min == 0 andalso Sec == 0 -> xqerl_operators:add(Dt, cast_as(#xqAtomicValue{type = 'xs:string', value = "PT0S"}, 'xs:dayTimeDuration'));
         Hour >= 24 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
         Min  >= 60 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
         Sec  >= 60 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
         true ->
            Dt
      end
   catch _:#xqError{} = E -> throw(E);
         _:_ -> xqerl_error:error('FORG0001')
   end;
  

cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:dateTimeStamp' ) -> % MAYBE castable
   Bin = list_to_binary(string:trim(Val)),
   {Sign,Year,Mon,Day,Rest} = date_bin_to_ymd(Bin),
   {Hour,Min,Sec,Rest1} = time_bin_to_hms(Rest),
   Offset = tz_bin_to_offset(Rest1),
   if Offset == [] -> xqerl_error:error('FORG0001');
      true ->
         Rec = #xsDateTime{sign   = Sign,
                           year   = Year, 
                           month  = Mon, 
                           day    = Day,
                           hour   = Hour,
                           minute = Min,
                           second = Sec, 
                           offset = Offset},
         Dt = #xqAtomicValue{type = 'xs:dateTime', 
                        value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:dateTime')}},
         if Hour == 24 -> xqerl_operators:add(Dt, cast_as(#xqAtomicValue{type = 'xs:string', value = "P1D"}, 'xs:dayTimeDuration'));
            Hour >= 24 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
            Min  >= 60 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
            Sec  >= 60 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
            true ->
               Dt
         end
   end;

%In casting to a duration value, if the value is too large or too small to be represented 
%by the implementation, a dynamic error [err:FODT0002] is raised.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:dayTimeDuration' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      {Sign,Day,Hour,Min,Sec} = daytimedur_bin_to_dhms(Bin),
      Rec = #xsDateTime{sign   = Sign,
                        year   = 0, 
                        month  = 0, 
                        day    = Day,
                        hour   = Hour,
                        minute = Min,
                        second = Sec},
      #xqAtomicValue{type = 'xs:dayTimeDuration', 
                     value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:dayTimeDuration')}}   
   catch
      _:#xqError{} = E -> 
         throw(E);
      _:_ -> xqerl_error:error('FORG0001')
   end;
%% In casting to xs:decimal or to a type derived from xs:decimal, if the value is not too large or 
%% too small but nevertheless cannot be represented accurately with the number of decimal digits 
%% available to the implementation, the implementation may round to the nearest representable 
%% value or may raise a dynamic error [err:FOCA0006]. The choice of rounding algorithm and the 
%% choice between rounding and error behavior and is implementation-defined.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val1}, 
         'xs:decimal' ) -> % MAYBE castable
   Val = string:trim(Val1),
   try
      NNum = xqerl_numeric:decimal(Val),
      #xqAtomicValue{type = 'xs:decimal', value = NNum}
   catch
      _:_ -> xqerl_error:error('FORG0001' )
   end;

cast_as( #xqAtomicValue{type = 'xs:string', value = Val1}, 
         'xs:numeric' ) -> % MAYBE castable
   cast_as( #xqAtomicValue{type = 'xs:string', value = Val1},'xs:double' );
cast_as( #xqAtomicValue{type = 'xs:string', value = Val1}, 
         'xs:double' ) -> % MAYBE castable
   Val = string:trim(Val1),
   %?dbg("Val",Val),
   case string:find(Val, "--") of
      nomatch ->
         ok;
      _ ->
         xqerl_error:error('FORG0001')
   end,
   if Val == "-0"  -> #xqAtomicValue{type = 'xs:double', value = neg_zero};
      Val == "NaN"  -> #xqAtomicValue{type = 'xs:double', value = nan};
      Val == "-INF" -> #xqAtomicValue{type = 'xs:double', value = neg_infinity};
      %Val == "+INF" -> #xqAtomicValue{type = 'xs:double', value = infinity}; % schema 1.1 
      Val == "INF"  -> #xqAtomicValue{type = 'xs:double', value = infinity};
      true ->
         case catch list_to_float(Val) of
            Flt when is_float(Flt) ->
               if Flt == 0 andalso hd(Val) == $- ->
                     #xqAtomicValue{type = 'xs:double', value = neg_zero};
                  true ->
                     #xqAtomicValue{type = 'xs:double', value = Flt}
               end;
            _ ->
               case catch list_to_integer(Val) of
                  Int when is_integer(Int) ->
                     #xqAtomicValue{type = 'xs:double', value = float(Int)};
                  _ ->
                     try
                        Bin = list_to_binary(Val),
                        {Sign, Rest} = case Bin of
                                          <<"-",R/binary>> ->
                                             {'-', R};
                                          <<"+",R/binary>> ->
                                             {'+', R};
                                          R ->
                                             {'+', R}
                                       end,
                        Rest1 = case binary:first(Rest) == $.  of
                                   true -> <<$0,Rest/binary>>;
                                   _ -> Rest
                                end,
                        {Man, Exp} = case binary:split(Rest1, [<<"e">>,<<"E">>]) of
                                        [M,E] ->
                                           {M,binary_to_integer(E)};
                                        [M] ->
                                           {M,0}
                                     end,
                        Num = case binary:match(Man, <<".">>) of
                                       nomatch ->
                                          float(binary_to_integer(Man));
                                       _ ->
                                          case binary:last(Man) of
                                             $. ->
                                                Bin1 = binary:part(Man,{0, byte_size(Man) -1}),
                                                float(binary_to_integer(Bin1));
                                             _ ->
                                                binary_to_float(Man)
                                          end
                                    end,
                        NNum = if Sign == '-' -> - Num;
                                  true -> Num
                               end,
                        try
                           Str = float_to_list(NNum, [{decimals,18}]) ++ "e" ++ integer_to_list(Exp),
                           ENum = list_to_float(Str),
                           if ENum == 0 andalso hd(Val) == $- ->
                                 #xqAtomicValue{type = 'xs:double', value = neg_zero};
                              true ->
                                 #xqAtomicValue{type = 'xs:double', value = ENum}
                           end
                        catch
                           _:_ -> #xqAtomicValue{type = 'xs:double', 
                                                        value = case Sign of 
                                                                   '-' -> neg_infinity;
                                                                   _ -> infinity
                                                                end}
                        end
                     catch
                        G:Err -> xqerl_error:error('FORG0001', ["xs:double", Val,G,Err] )
                     end
               end
         end
   end;
%% In casting to a duration value, if the value is too large or too small to be represented 
%% by the implementation, a dynamic error [err:FODT0002] is raised.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:duration' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      {Sign,Year,Mon,Day,Hour,Min,Sec} = dur_bin_to_ymdhms(Bin),
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = Mon, 
                        day    = Day,
                        hour   = Hour,
                        minute = Min,
                        second = Sec},
      #xqAtomicValue{type = 'xs:duration', 
                     value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:duration')}}
   catch
      _:#xqError{} = E -> 
         throw(E);
      _:_ -> xqerl_error:error('FORG0001')
   end;
cast_as( #xqAtomicValue{type = 'xs:string'} = Av, 
         'xs:float' ) -> % MAYBE castable
   % xs:float is a 32 bit xs:double
   #xqAtomicValue{value = DblVal} = cast_as(Av, 'xs:double'),
   if is_float(DblVal) ->
         if DblVal < ?MINFLOAT -> #xqAtomicValue{type = 'xs:float', value = neg_infinity};
            DblVal > ?MAXFLOAT -> #xqAtomicValue{type = 'xs:float', value = infinity};
            abs(DblVal) < ?MAXFLOATPREC -> #xqAtomicValue{type = 'xs:float', value = 0.0};
            true -> #xqAtomicValue{type = 'xs:float', value = xqerl_numeric:float(DblVal)}
         end;
      true -> #xqAtomicValue{type = 'xs:float', value = DblVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:string'} = Av, 'xs:numeric' ) -> % MAYBE castable
   cast_as(Av, 'xs:double');
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:gDay' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      <<$-,$-,$-,D1,D2,Rest/binary>> = Bin,
      Offset = tz_bin_to_offset(Rest),
      Day = list_to_integer([D1,D2]),
      if Day < 32 andalso Day > 0 ->
         Rec = #xsDateTime{year   = 0, 
                           month  = 0, 
                           day    = Day,
                           hour   = 0,
                           minute = 0,
                           second = 0, 
                           offset = Offset},
         #xqAtomicValue{type = 'xs:gDay', 
                        value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gDay')}};
         true ->
            throw({error,bad_date})
      end
   catch _:#xqError{} = E -> throw(E);
         _:_ -> xqerl_error:error('FORG0001')
   end;
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:gMonth' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      <<$-,$-,M1,M2,Rest/binary>> = Bin,
      Offset = tz_bin_to_offset(Rest),
      Mon = list_to_integer([M1,M2]),
      if Mon < 13 andalso Mon > 0 ->
         Rec = #xsDateTime{year   = 0, 
                           month  = Mon, 
                           day    = 0,
                           hour   = 0,
                           minute = 0,
                           second = 0, 
                           offset = Offset},
         #xqAtomicValue{type = 'xs:gMonth', 
                        value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gMonth')}};
         true ->
            throw({error,bad_date})
      end
   catch _:#xqError{} = E -> throw(E);
         _:_ -> xqerl_error:error('FORG0001')
   end;

cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:gMonthDay' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      <<$-,$-,M1,M2,$-,D1,D2,Rest/binary>> = Bin,
      Offset = tz_bin_to_offset(Rest),
      Mon = list_to_integer([M1,M2]),
      Day = list_to_integer([D1,D2]),
      case is_valid_month_day(Mon,Day) of
         true ->
            Rec = #xsDateTime{year   = 0, 
                              month  = Mon, 
                              day    = Day,
                              hour   = 0,
                              minute = 0,
                              second = 0, 
                              offset = Offset},
            #xqAtomicValue{type = 'xs:gMonthDay', 
                           value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gMonthDay')}};
         _ ->
            throw({error,bad_date})
      end
   catch _:#xqError{} = E -> throw(E);
         _:_ -> xqerl_error:error('FORG0001')
   end;

%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these), 
%% if the value is too large or too small to be represented by the implementation, 
%% a dynamic error [err:FODT0001] is raised.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:gYear' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      {Sign, Rest} = case Bin of
                        <<"-",R/binary>> ->
                           {'-', R};
                        R ->
                           {'+', R}
                     end,
      <<C1,C2,Y1,Y2,Rest1/binary>> = Rest,
      Offset = tz_bin_to_offset(Rest1),
      Year = list_to_integer([C1,C2,Y1,Y2]),
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = 0, 
                        day    = 0,
                        hour   = 0,
                        minute = 0,
                        second = 0, 
                        offset = Offset},
      if Year == 0 ->
            xqerl_error:error('FORG0001');
         Year > 9999 ->
            xqerl_error:error('FODT0001');
         true ->
            #xqAtomicValue{type = 'xs:gYear',
                           value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYear')}}
      end
   catch _:#xqError{} = E -> throw(E);
         %_:{badmatch,_} -> xqerl_error:error('FODT0001');
         _:E -> ?dbg("E",E), 
            xqerl_error:error('FORG0001')
   end;

%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these), 
%% if the value is too large or too small to be represented by the implementation, 
%% a dynamic error [err:FODT0001] is raised.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:gYearMonth' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      {Sign, Rest} = case Bin of
                        <<"-",R/binary>> ->
                           {'-', R};
                        R ->
                           {'+', R}
                     end,
      <<C1,C2,Y1,Y2,$-,M1,M2,Rest1/binary>> = Rest,
      Offset = tz_bin_to_offset(Rest1),
      Year = list_to_integer([C1,C2,Y1,Y2]),
      Mon  = list_to_integer([M1,M2]),
      if Mon < 1 orelse Mon > 12 orelse Year == 0 ->
            xqerl_error:error('FORG0001');
         true ->
            Rec = #xsDateTime{sign   = Sign,
                              year   = Year, 
                              month  = Mon, 
                              day    = 0,
                              hour   = 0,
                              minute = 0,
                              second = 0, 
                              offset = Offset},
               #xqAtomicValue{type = 'xs:gYearMonth', 
                              value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYearMonth')}}
      end
   catch
      G:Err -> xqerl_error:error('FORG0001', ["xs:gYearMonth", Val,G,Err] )
   end;

cast_as( #xqAtomicValue{type = 'xs:string', value = ""}, 'xs:hexBinary' ) -> % MAYBE castable
   #xqAtomicValue{type = 'xs:hexBinary', value = <<>>};
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 'xs:hexBinary' ) -> % MAYBE castable
   Val1 = string:trim(Val),
   case erlang:length(Val1) rem 2 =/= 0 orelse 
      lists:any(fun(C) when C >= 48, C =< 57 -> false;
                (C) when C >= 65, C =< 90 -> false;
                (C) when C >= 97, C =< 102 -> false;
                (X) -> ?dbg("X",X), true
             end, Val1) of
      true ->
         xqerl_error:error('FORG0001');
      _ ->
         try
            #xqAtomicValue{type = 'xs:hexBinary', value = str_to_hexbin(Val1)}
         catch
            G:E -> xqerl_error:error('FORG0001', ["xs:hexBinary", Val,G,E] )
         end
   end;

cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:integer' ) -> % MAYBE castable
   try
      #xqAtomicValue{type = 'xs:integer', value = list_to_integer(string:trim(Val))}
   catch
      G:E -> xqerl_error:error('FORG0001', ["xs:integer", Val,G,E] )
   end;

   
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:time' ) -> % MAYBE castable
   %24:00:00
   Bin = list_to_binary(["T", string:trim(Val)]),
   {Hour,Min,Sec,Rest} = time_bin_to_hms(Bin),
   Offset = tz_bin_to_offset(Rest),
   Hour1 = if Hour == 24 andalso Min == 0 andalso Sec == 0 ->
                 0;
              Hour >= 24 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
              true ->
                 Hour
           end,
   Rec = #xsDateTime{hour   = Hour1,
                     minute = Min,
                     second = Sec, 
                     offset = Offset},
   if Hour1 >= 24 ; % only no min/sec is okay with hour 24
      Min   >= 60 ; % only no min/sec is okay with hour 24
      Sec   >= 60 -> xqerl_error:error('FORG0001'); % only no min/sec is okay with hour 24
      true ->
         #xqAtomicValue{type = 'xs:time',
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:time')}}
   end;
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
% subtypes
cast_as( #xqAtomicValue{type = 'xs:token', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:normalizedString', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:language', value = Val}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};

cast_as( #xqAtomicValue{type = 'xs:token', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:normalizedString', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:language', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:NMTOKEN', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:Name', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:NCName', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:ID', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:IDREF', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};
cast_as( #xqAtomicValue{type = 'xs:ENTITY', value = Val}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

cast_as( #xqAtomicValue{} = Arg1,'xs:normalizedString' ) -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:string' )),
   Norm = xqerl_lib:normalize_spaces(StrVal),
   %Norm = xqerl_lib:shrink_spaces(StrVal),
   #xqAtomicValue{type = 'xs:normalizedString', value = Norm};
cast_as( #xqAtomicValue{} = Arg1,'xs:token' ) -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:normalizedString' )),
   Token = xqerl_lib:shrink_spaces(string:trim(StrVal)),
   #xqAtomicValue{type = 'xs:token', value = Token};

cast_as( #xqAtomicValue{} = Arg1,'xs:language' ) -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )),
   case re:run(StrVal, "^[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*$",[unicode]) of
      nomatch ->
         xqerl_error:error('FORG0001');
      _ ->
         #xqAtomicValue{type = 'xs:language', value = StrVal}
   end;
cast_as( #xqAtomicValue{} = Arg1,'xs:NMTOKEN' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      [] ->
         xqerl_error:error('FORG0001');
      StrVal ->
         case lists:all(fun(C) ->
                              xqerl_lib:is_xsname_char(C)
                        end, StrVal) of
            true ->
               #xqAtomicValue{type = 'xs:NMTOKEN', value = StrVal};
            _ ->
               xqerl_error:error('FORG0001')
         end
   end;
cast_as( #xqAtomicValue{} = Arg1,'xs:NMTOKENS' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      [] ->
         xqerl_error:error('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         %?seq:from_list(
           lists:map(fun(Tok) ->
                        case lists:all(fun(C) ->
                                             xqerl_lib:is_xsname_char(C)
                                       end, Tok) of
                           true ->
                              #xqAtomicValue{type = 'xs:NMTOKEN', value = Tok};
                           _ ->
                              xqerl_error:error('FORG0001')
                        end
                     end, Tokens)
         %  )
   end;
cast_as( #xqAtomicValue{} = Arg1,'xs:Name' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      [H|T] ->
         case xqerl_lib:is_xsname_start_char(H) andalso 
            lists:all(fun(C) ->
                              xqerl_lib:is_xsname_char(C)
                        end, T) of
            true ->
               #xqAtomicValue{type = 'xs:Name', value = [H|T]};
            _ ->
               xqerl_error:error('FORG0001')
         end;
      [] ->
         xqerl_error:error('FORG0001')
   end;

cast_as( #xqAtomicValue{} = Arg1,'xs:NCName' ) ->
   %?dbg("Arg1",Arg1),
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:Name' )),
   case re:run(StrVal, "[:]",[unicode]) of
      nomatch ->
         #xqAtomicValue{type = 'xs:NCName', value = StrVal};
      _ ->
         xqerl_error:error('FORG0001')
   end;

cast_as( #xqAtomicValue{} = Arg1,'xs:ID' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:NCName' )),
   #xqAtomicValue{type = 'xs:ID', value = StrVal};
cast_as( #xqAtomicValue{} = Arg1,'xs:IDREF' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:NCName' )),
   #xqAtomicValue{type = 'xs:IDREF', value = StrVal};
cast_as( #xqAtomicValue{} = Arg1,'xs:IDREFS' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      [] ->
         xqerl_error:error('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         ?seq:from_list(
           lists:map(fun(Tok) ->
                        case lists:all(fun(C) ->
                                             xqerl_lib:is_xsname_char(C)
                                       end, Tok) of
                           true ->
                              #xqAtomicValue{type = 'xs:IDREF', value = Tok};
                           _ ->
                              %?dbg("Tok",Tok),
                              xqerl_error:error('FORG0001')
                        end
                     end, Tokens)
           )
   end;
cast_as( #xqAtomicValue{} = Arg1,'xs:ENTITY' ) ->
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:NCName' )),
   #xqAtomicValue{type = 'xs:ENTITY', value = StrVal};
cast_as( #xqAtomicValue{} = Arg1,'xs:ENTITIES' ) ->
   case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
      [] ->
         xqerl_error:error('FORG0001');
      StrVal ->
         Tokens = string:split(StrVal," ",all),
         ?seq:from_list(
           lists:map(fun(Tok) ->
                        case lists:all(fun(C) ->
                                             xqerl_lib:is_xsname_char(C)
                                       end, Tok) of
                           true ->
                              #xqAtomicValue{type = 'xs:ENTITY', value = Tok};
                           _ ->
                              %?dbg("Tok",Tok),
                              xqerl_error:error('FORG0001')
                        end
                     end, Tokens)
           )
   end;

%% In casting to a duration value, if the value is too large or too small to be represented by the 
%% implementation, a dynamic error [err:FODT0002] is raised.
cast_as( #xqAtomicValue{type = 'xs:string', value = Val}, 
         'xs:yearMonthDuration' ) -> % MAYBE castable
   try
      Bin = list_to_binary(string:trim(Val)),
      {Sign, Bin1} = case Bin of
                        <<$-,$P,R/binary>> ->
                           {'-', <<R/binary>>};
                        <<$P,R/binary>> ->
                           {'+', <<R/binary>>}
                       end,
      {Year,Mon,<<>>} = ymdur_bin_to_ym(Bin1),
      % push up the ladder
      Rec = #xsDateTime{sign   = Sign,
                        year   = Year, 
                        month  = Mon, 
                        day    = 0,
                        hour   = 0,
                        minute = 0,
                        second = 0},
      #xqAtomicValue{type = 'xs:yearMonthDuration', 
                     value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:yearMonthDuration')}}
   catch
      _:#xqError{} = E -> 
         throw(E);
      _:_ -> xqerl_error:error('FORG0001')
   end;

cast_as( #xqAtomicValue{type = 'xs:time', value = #xsDateTime{string_value = Val}}, 'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:time', value = #xsDateTime{string_value = Val}}, 'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

% xs:untypedAtomic handled as if xs:string
cast_as( #xqAtomicValue{type = 'xs:untypedAtomic', value = Val}, Type ) -> % MAYBE castable
   Val1 = if is_integer(Val) ->
                integer_to_list(Val);
             is_float(Val) ->
                float_to_list(Val);
             true ->
               Val
          end,
   %?dbg("cast_as",?LINE),
   %?dbg("cast_as",Val1),
   cast_as( #xqAtomicValue{type = 'xs:string', value = Val1}, Type );

cast_as( #xqAtomicValue{type = 'xs:yearMonthDuration', value = _Val}, % 0.0 sec duration 
         'xs:dayTimeDuration' ) -> 
   Rec = #xsDateTime{year   = 0, 
                     month  = 0, 
                     day    = 0,
                     hour   = 0,
                     minute = 0,
                     second = 0},
   #xqAtomicValue{type = 'xs:dayTimeDuration', 
                  value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:dayTimeDuration')}};

cast_as( #xqAtomicValue{type = 'xs:yearMonthDuration', value = Val}, 
         'xs:duration' ) -> 
   #xqAtomicValue{type = 'xs:duration', 
                  value = Val#xsDateTime{string_value = xqerl_datetime:to_string(Val,'xs:duration')}};

cast_as( #xqAtomicValue{type = 'xs:yearMonthDuration', 
                        value = #xsDateTime{string_value = Val}}, 
         'xs:string' ) -> 
   #xqAtomicValue{type = 'xs:string', value = Val};
cast_as( #xqAtomicValue{type = 'xs:yearMonthDuration', 
                        value = #xsDateTime{string_value = Val}}, 
         'xs:untypedAtomic' ) -> 
   #xqAtomicValue{type = 'xs:untypedAtomic', value = Val};

%sub types
cast_as( #xqAtomicValue{} = Arg1, 'xs:unsignedShort' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 65535 orelse IntVal < 0 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:unsignedShort', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:unsignedShort'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );

cast_as( #xqAtomicValue{} = Arg1, 'xs:unsignedLong' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 18446744073709551615 orelse IntVal < 0 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:unsignedLong', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:unsignedLong'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );
cast_as( #xqAtomicValue{} = Arg1, 'xs:unsignedInt' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 4294967295 orelse IntVal < 0 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:unsignedInt', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:unsignedInt'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );

cast_as( #xqAtomicValue{} = Arg1, 'xs:unsignedByte' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 255 orelse IntVal < 0 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:unsignedByte', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:unsignedByte'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );

cast_as( #xqAtomicValue{} = Arg1, 'xs:short' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 32767 orelse IntVal < -32768 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:short', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:short'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );
cast_as( #xqAtomicValue{} = Arg1, 'xs:positiveInteger' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal < 1 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:positiveInteger', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:positiveInteger'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );
cast_as( #xqAtomicValue{} = Arg1, 'xs:nonPositiveInteger' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 0 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:nonPositiveInteger', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:nonPositiveInteger'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );
cast_as( #xqAtomicValue{} = Arg1, 'xs:nonNegativeInteger' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal < 0 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:nonNegativeInteger', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:nonNegativeInteger'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );
cast_as( #xqAtomicValue{} = Arg1, 'xs:negativeInteger' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > -1 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:negativeInteger', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:negativeInteger'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );
cast_as( #xqAtomicValue{} = Arg1, 'xs:long' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 9223372036854775807 orelse IntVal < -9223372036854775808 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:long', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:long'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );

cast_as( #xqAtomicValue{} = Arg1, 'xs:int' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 2147483647 orelse IntVal < -2147483648 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:int', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:int'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );

cast_as( #xqAtomicValue{} = Arg1, 'xs:byte' ) -> 
   IntVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:integer' )),
   if IntVal > 127 orelse IntVal < -128 ->
         xqerl_error:error('FORG0001');
      true ->
         #xqAtomicValue{type = 'xs:byte', value = IntVal}
   end;
cast_as( #xqAtomicValue{type = 'xs:byte'} = Arg1, TT ) -> 
   xqerl_types:cast_as( Arg1#xqAtomicValue{type = 'xs:integer'}, TT );

% block known types
cast_as( #xqAtomicValue{type = Intype} = I, T ) when 
   Intype == 'xs:unsignedInt';Intype == 'xs:string';Intype == 'xs:boolean';Intype == 'xs:decimal';
   Intype == 'xs:float';Intype == 'xs:double';Intype == 'xs:duration';Intype == 'xs:dateTime';
   Intype == 'xs:time';Intype == 'xs:date';Intype == 'xs:gYearMonth';Intype == 'xs:gYear';
   Intype == 'xs:gMonthDay';Intype == 'xs:gDay';
                           Intype == 'xs:gMonth';
                           Intype == 'xs:hexBinary';
                           Intype == 'xs:base64Binary';
                           Intype == 'xs:anyURI';
                           Intype == 'xs:QName';
                           Intype == 'xs:normalizedString';
                           Intype == 'xs:token';
                           Intype == 'xs:language';
                           Intype == 'xs:NMTOKEN';
                           Intype == 'xs:Name';
                           Intype == 'xs:NCName';
                           Intype == 'xs:ID';
                           Intype == 'xs:IDREF';
                           Intype == 'xs:ENTITY';
                           Intype == 'xs:integer';
                           Intype == 'xs:nonPositiveInteger';
                           Intype == 'xs:negativeInteger';
                           Intype == 'xs:long';
                           Intype == 'xs:int';
                           Intype == 'xs:short';
                           Intype == 'xs:nonNegativeInteger';
                           Intype == 'xs:unsignedLong';
                           Intype == 'xs:unsignedShort';
                           Intype == 'xs:unsignedByte';
                           Intype == 'xs:positiveInteger';
                           Intype == 'xs:yearMonthDuration';
                           Intype == 'xs:dayTimeDuration';
                           Intype == 'xs:untypedAtomic';
                           Intype == 'xs:dateTimeStamp';
                           %Intype == 'xs:NMTOKENS';
                           Intype == 'xs:ENTITIES';
                           Intype == 'xs:IDREFS';
                           Intype == 'xs:error' -> 
   case is_known_type(T) of
      true ->
         xqerl_error:error('XPTY0004');
      _ ->
         ?dbg("unknown type",{I,T}),
         xqerl_error:error('XQST0052')
   end;

cast_as( {[Ids],Doc}, TT ) ->
   String = xqerl_node:atomize_nodes({[Ids],Doc}),
   cast_as(String, TT);

cast_as(Seq,#xqSeqType{type = T, occur = Occur}) when Occur == one ->
   case ?seq:size(Seq) of
      0 ->
         if Occur == one ->
               xqerl_error:error('XPTY0004');
            true ->
               cast_as(?seq:singleton_value(Seq),T)
         end;
      1 ->
         cast_as(?seq:singleton_value(Seq),T);
      _ ->
         xqerl_error:error('XPTY0004')
   end;
cast_as(Seq,T) ->
   ?dbg("Seq",Seq),
   ?dbg("T",T),
   xqerl_error:error('XPTY0004').

% namespace sensitive
cast_as( #xqNode{} = N, TT, Namespaces ) ->
   String = xqerl_node:atomize_nodes(N),
   cast_as(String, TT, Namespaces);
cast_as( #xqAtomicValue{type = 'xs:QName'} = Q,'xs:QName', _Namespaces) ->
   Q;
cast_as( [],'xs:QName', _Namespaces) -> 
   xqerl_error:error('XPTY0004');
cast_as( #xqAtomicValue{type = AType, value = []},'xs:QName', _Namespaces) when AType == 'xs:string';
                                                                                AType == 'xs:untypedAtomic'-> % MAYBE castable
   xqerl_error:error('FORG0001');
cast_as( #xqAtomicValue{type = AType, value = "Q{" ++ Rest},'xs:QName', _Namespaces) when AType == 'xs:string';
                                                                                         AType == 'xs:untypedAtomic'-> % MAYBE castable
   [Ns,Local] = string:split(Rest, [$}]),
   #xqAtomicValue{type = 'xs:QName', 
                  value = #qname{namespace = Ns,
                                 prefix = [],
                                 local_name = string:trim(Local)}};   
cast_as( #xqAtomicValue{type = AType, value = Val},'xs:QName', Namespaces) when AType == 'xs:string';
                                                                                AType == 'xs:untypedAtomic'-> % MAYBE castable
   %?dbg("Namespaces",Namespaces),
   try
      {Prefix, Local} = case scan_ncname(string:trim(Val)) of
                              {P, L} -> {P, L};
                              L -> {"", L}
                           end,
      %{xqNamespace,"http://www.example.com/foo","foo"} 
      case Prefix of 
         "" ->
            Def = case lists:keyfind(Prefix, 3, Namespaces) of
                     false ->
                        xqerl_error:error('FONS0004');
                     {_,D,_} ->
                        D
                  end,
            #xqAtomicValue{type = 'xs:QName', 
                           value = #qname{namespace = Def,
                                          prefix = Prefix,
                                          local_name = Local}};
         _ ->
            case lists:keyfind(Prefix, 3, Namespaces) of
               false ->
                  ?dbg("Prefix",Prefix),
                  ?dbg("Namespaces",Namespaces),
                  %xqerl_error:error('FONS0004'); % direct
                  %xqerl_error:error('XQDY0074'); % constructed
                  xqerl_error:error('FONS0004'); 
               {_,Namespace,_} ->
                  #xqAtomicValue{type = 'xs:QName', 
                                 value = #qname{namespace = Namespace,
                                                prefix = Prefix,
                                                local_name = Local}}
            end
      end
   catch
      _:#xqError{} when AType == 'xs:untypedAtomic' -> xqerl_error:error('FORG0001');
      _:#xqError{} = E -> throw(E);
      G:E -> xqerl_error:error('FORG0001', ["xs:QName", Val,G,E] )
   end;
%% cast_as( #xqAtomicValue{type = 'xs:untypedAtomic'},'xs:QName', _Namespaces) -> % MAYBE castable
%%    xqerl_error:error('FORG0001'); % not a string literal
cast_as( #xqAtomicValue{},'xs:QName', _Namespaces) -> % MAYBE castable
   xqerl_error:error('XPTY0004'); % not a string literal
cast_as( #xqAtomicValue{type = AType} = At, 'xs:NOTATION', Namespaces) when AType == 'xs:string';
                                                                            AType == 'xs:untypedAtomic' -> % MAYBE castable
   try
      At2 = cast_as(At,'xs:QName',Namespaces), 
      At2#xqAtomicValue{type = 'xs:NOTATION'}
   catch
      G:E -> xqerl_error:error('FORG0001', ["xs:NOTATION", G,E] )
   end;

cast_as(Seq,#xqSeqType{type = T,occur = one},N)  ->
    case ?seq:size(Seq) of
       0 ->
          xqerl_error:error('XPTY0004');
       _ ->
          cast_as(Seq,T,N)
    end;
cast_as(Seq,#xqSeqType{type = T,occur = zero_or_one},N)  ->
    case ?seq:is_sequence(Seq) of
       true ->
          case ?seq:size(Seq) of
             0 ->
                Seq;
             _ ->
                cast_as(?seq:singleton_value(Seq),T,N)
          end;
       _ ->
          cast_as(Seq,T,N)
    end;
cast_as(Seq,T,N)  ->
   %?dbg("Seq,T,N",{Seq,T,N}),
   case ?seq:size(Seq) of
      0 ->
         ?seq:empty();
      1 ->
         case T of
            #xqSeqType{type = T1,occur = _} ->
               cast_as(?seq:singleton_value(Seq),T1,N);
            _ ->
               cast_as(?seq:singleton_value(Seq),T,N)
         end;
      _ ->
         % no lists in cast
         case catch promote(Seq,T) of
            {'EXIT',_} ->
               ?dbg("Bad Cast ST/TT: ",{Seq,T}),
               xqerl_error:error('XPTY0004');
            Ok ->
               Ok
         end
   end.



tz_bin_to_offset(Bin) ->
   try
      case Bin of
         <<>> ->
            [];
         <<"Z">> ->
            #off_set{};
         <<P,Ho1,Ho2,$:,Mio1,Mio2>> when Mio1 >= $0, Mio1 =< $9,
                                         Mio2 >= $0, Mio2 =< $9,
                                         Ho1 >= $0, Ho1 =< $9,
                                         Ho2 >= $0, Ho2 =< $9 ->
            Ho  = list_to_integer([P,Ho1,Ho2]), 
            Mio = list_to_integer([Mio1,Mio2]), 
            if Mio =< 59 ->
                  Sign = if P == $- andalso Ho == 0 andalso Mio == 0 -> '+';
                            P == $- -> '-';
                            P == $+ -> '+'
                         end,
                  if abs(Ho) < 14 orelse (abs(Ho) == 14 andalso Mio == 00) ->
                        #off_set{sign = Sign, hour = abs(Ho), min = Mio};
                     true ->
                        xqerl_error:error('FORG0001')
                  end;
               true ->
                  xqerl_error:error('FORG0001')
            end;
         _ ->
            xqerl_error:error('FORG0001')
      end
   catch
      _:#xqError{} = E -> throw(E);
      _:badarg -> xqerl_error:error('FORG0001');
      _:_ -> 
         xqerl_error:error('FODT0001')
   end.  


date_bin_to_ymd(Bin) ->
   %% B.C. dates
   try
      {Sign,Bin1} = case Bin of
                 <<$-,R/binary>> ->
                    {'-',R};
                 _ ->
                    {'+', Bin}
              end,
      case Bin1 of
         <<C1,C2,Y1,Y2,$-,M1,M2,$-,D1,D2,Rest/binary>> when (C1 >= $0 andalso C1 =< $9),
                                                            (C2 >= $0 andalso C2 =< $9),
                                                            (Y1 >= $0 andalso Y1 =< $9),
                                                            (Y2 >= $0 andalso Y2 =< $9),
                                                            (M1 >= $0 andalso M1 =< $9),
                                                            (M2 >= $0 andalso M2 =< $9),
                                                            (D1 >= $0 andalso D1 =< $9),
                                                            (D2 >= $0 andalso D2 =< $9) ->
            Year = list_to_integer([C1,C2,Y1,Y2]),
            Mon  = list_to_integer([M1,M2]),
            Day  = list_to_integer([D1,D2]),
            _ = xqerl_datetime:ymd_is_valid(Year,Mon,Day),
            {Sign,Year,Mon,Day,Rest};
         _ ->
            %check if the year is larger than 9999 for overflow
            {YBin,_} = string:take(Bin1,lists:seq($0,$9)),
            if YBin == <<>> ->
                  xqerl_error:error('FORG0001');
               true ->
                  TNum = binary_to_integer(YBin),
                  if TNum > 9999 ->
                        xqerl_error:error('FODT0001');
                     true ->
                        xqerl_error:error('FORG0001')
                  end
            end
      end
   catch
      _:#xqError{} = E -> throw(E);
      _:{badmatch,_} -> xqerl_error:error('FORG0001');
      _:_ -> 
         xqerl_error:error('FODT0001')
   end.

time_bin_to_hms(Bin) ->
   try
      case Bin of
         <<$T,H1,H2,$:,M1,M2,$:,S1,S2,Rest/binary>> when (H1 >= $0 andalso H1 =< $9),
                                                         (H2 >= $0 andalso H2 =< $9),
                                                         (M1 >= $0 andalso M1 =< $9),
                                                         (M2 >= $0 andalso M2 =< $9),
                                                         (S1 >= $0 andalso S1 =< $9),
                                                         (S2 >= $0 andalso S2 =< $9) ->
            Hour = list_to_integer([H1,H2]),
            Min  = list_to_integer([M1,M2]),
            Sec  = [S1,S2],
            case Rest of
               <<$.,R/binary>> ->
                  L = binary_to_list(R),
                  Fract = lists:takewhile(fun(E) -> E >= $0 andalso E =< $9 end, L),
                  RestL = lists:subtract(L, Fract),
                  Sec1 = Sec ++ "." ++ Fract,
                  {Hour,Min,list_to_float(Sec1),list_to_binary(RestL)};
               _ ->
                  {Hour,Min,list_to_integer(Sec),Rest}
            end;
         _ ->
            xqerl_error:error('FORG0001')
      end
   catch
      _:#xqError{} = E -> throw(E);
      _:{badmatch,_} -> xqerl_error:error('FORG0001');
      _:badarg -> xqerl_error:error('FORG0001');
      _:_ ->  
         xqerl_error:error('FODT0001')
   end.

timedur_bin_to_hms(Bin) ->
   {Hour,Rest} = case binary:split(Bin, <<"H">>) of
                    [HourBin,R] ->
                       {binary_to_integer(HourBin),R};
                    [R] ->
                       {0,R}
                 end,
   {Min,Rest1} = case binary:split(Rest, <<"M">>) of
                    [MinBin,R1] ->
                       {binary_to_integer(MinBin),R1};
                    [R1] ->
                       {0,R1}
                 end,
   Sec =   case binary:split(Rest1, <<"S">>) of
              [SecBin,R2] ->
                 if R2 == <<>> ->
                    % might be decimal
                    try
                       binary_to_integer(SecBin)
                    catch 
                       _:_ ->
                          binary_to_float(SecBin)
                    end;
                 true -> % timezone not allowed
                    ?dbg("R2",R2),
                    xqerl_error:error('FORG0001')
                 end;
              [<<>>] ->
                 0;
              [_R2] -> % timezone not allowed
                 xqerl_error:error('FORG0001')
           end,
   {Hour,Min,Sec}.

ymdur_bin_to_ym(<<>>) -> xqerl_error:error('FORG0001');
ymdur_bin_to_ym(Bin) ->
   {Year,Rest} = case binary:split(Bin, <<"Y">>) of
                    [YearBin,R] ->
                       {binary_to_integer(YearBin),R};
                    [R] ->
                       {0,R}
                 end,
   {Mon,Rest1} = case binary:split(Rest, <<"M">>) of
                    [MonBin,R1] ->
                       {binary_to_integer(MonBin),R1};
                    [R1] ->
                       {0,R1}
                 end,
   {Mon1, Year1} = {Mon rem 12, Year + Mon div 12},
   _ = if Year1 > 9999 -> % over 9999 years
             xqerl_error:error('FODT0002');
          true ->
             ok
       end,      
   {Year1,Mon1,Rest1}.


daytimedur_bin_to_dhms(Bin) ->
   % negative duration
   {Sign, Bin1} = case Bin of
                     <<$-,$P,R/binary>> ->
                        {'-', <<R/binary>>};
                     <<$P,R/binary>> ->
                        {'+', <<R/binary>>}
                    end,
   _ = if Bin1 == <<>> ->
             xqerl_error:error('FORG0001');
          true ->
             ok
       end,          
   [DayPart,TimePart] = case binary:split(Bin1,<<"T">>) of
                           [_D,<<>>] ->
                              xqerl_error:error('FORG0001');
                           [D,T] ->
                              [D,T];
                           [D] ->
                              [D,<<>>]
                        end,
   Day = if DayPart == <<>> -> 0;
            true ->
               [DayNum] = binary:split(DayPart, <<"D">>, [trim]),
               binary_to_integer(DayNum)
         end,
   _ = if Day > 3656000 -> % over 9999 years
             xqerl_error:error('FODT0002');
          true ->
             ok
       end,      
   {Hour,Min,Sec} = timedur_bin_to_hms(TimePart),
   % push values up the ladder
   {SS1,MI1} = if is_integer(Sec) ->
                     {Sec rem 60, Min + Sec div 60};
                  true ->
                     SSt = trunc(Sec),
                     SSr = round((Sec * 1000) - (SSt * 1000)) / 1000, % for float rounding
                     {SSt rem 60 + SSr, Min + SSt div 60}
               end,
   {MI2, HH1} = {MI1 rem 60, Hour + MI1 div 60},
   {HH2, D1}  = {HH1 rem 24, Day  + HH1 div 24},
   {Sign,D1,HH2,MI2,SS1}.

dur_bin_to_ymdhms(Bin) ->
   % negative duration
   {Sign, Bin1} = case Bin of
                     <<$-,$P,R/binary>> ->
                        {'-', <<R/binary>>};
                     <<$P,R/binary>> ->
                        {'+', <<R/binary>>}
                    end,
   _ = if Bin1 == <<>> ->
             xqerl_error:error('FORG0001');
          true ->
             ok
       end,          
   [DayPart,TimePart] = case binary:split(Bin1,<<"T">>) of
                           [_D,<<>>] ->
                              xqerl_error:error('FORG0001'); % T alone should throw error
                           [D,T] ->
                              [D,T];
                           [D] ->
                              [D,<<>>]
                        end,
   {Year,Mon,Rest} = if DayPart == <<>> ->
                           {0,0,<<>>};
                        true ->
                           ymdur_bin_to_ym(DayPart)
                     end,
   Day = if Rest == <<>> -> 0;
            true ->
               [DayNum] = binary:split(Rest, <<"D">>, [trim]),
               binary_to_integer(DayNum)
         end,
   _ = if Day > 3656000 -> % over 9999 years
             xqerl_error:error('FODT0002');
          true ->
             ok
       end,      
   {Hour,Min,Sec} = timedur_bin_to_hms(TimePart),
   % push values up the ladder
   {Mon1, Year1} = {Mon rem 12, Year + Mon div 12},
   {SS1,MI1} = if is_integer(Sec) ->
                     {Sec rem 60, Min + Sec div 60};
                  true ->
                     SSt = trunc(Sec),
                     SSr = round((Sec * 1000) - (SSt * 1000)) / 1000, % for float rounding
                     {SSt rem 60 + SSr, Min + SSt div 60}
               end,
   {MI2, HH1} = {MI1 rem 60, Hour + MI1 div 60},
   {HH2, D1}  = {HH1 rem 24, Day  + HH1 div 24},
   {Sign,Year1,Mon1,D1,HH2,MI2,SS1}.

scan_ncname([$_|T]) ->
   scan_ncname(T, [$_]);
scan_ncname([]) ->
   xqerl_error:error('FORG0001');
scan_ncname([H|T]) ->
   case xmerl_lib:is_letter(H) of 
      true ->
         scan_ncname(T, [H]);
      _ ->
         xqerl_error:error('FORG0001')
   end.

scan_ncname([], Acc) ->
   lists:reverse(Acc);
scan_ncname([$:|T], Acc) ->
   {lists:reverse(Acc), scan_ncname(T)};
scan_ncname([H|T], Acc) ->
   case xmerl_lib:is_namechar(H) of
      true ->
         scan_ncname(T, [H|Acc]);
      _ ->
         xqerl_error:error('FORG0001')
   end.

hexbin_to_str(Bin) -> [ hd(erlang:integer_to_list(I, 16)) || << I:4 >> <= Bin ].
b64bin_to_str(Bin) -> base64:encode_to_string(Bin).

str_to_hexbin(Str) -> << << (erlang:list_to_integer([H], 16)):4 >> || H <- Str >>.
str_to_b64bin(Str) -> 
   try
      Str1 = re:replace(Str, "(\\s+)", "", [global,{return,list}]),
      Bin = base64:decode(list_to_binary(Str1)),
      case base64:encode_to_string(Bin) of
         Str1 -> % invalid base64 that is 'fixed' in base64 module
            Bin;
         _ ->
            xqerl_error:error('FORG0001')
      end
   catch
      _:_ ->
         xqerl_error:error('FORG0001')
   end.

hexbin_to_b64bin(Bin) -> Bin.
b64bin_to_hexbin(Bin) -> Bin. %str_to_hexbin(b64bin_to_str(Bin)).
   
%% str_to_hex(Str) -> bin_to_hex(list_to_binary(Str)).
%% hex_to_b64(Str) -> str_to_b64(hex_to_str(Str)).
%% b64_to_hex(Str) -> bin_to_hex(b64_to_bin(Str)).
%% str_to_b64(Str) -> base64:encode_to_string(Str).


decode_html_entities([]) ->
   [];
decode_html_entities("&gt;" ++ T) ->
   ">" ++ decode_html_entities(T);
decode_html_entities("&lt;" ++ T) ->
   "<" ++ decode_html_entities(T);
decode_html_entities("&amp;" ++ T) ->
   "&" ++ decode_html_entities(T);
decode_html_entities("&quot;" ++ T) ->
   "\"" ++ decode_html_entities(T);
decode_html_entities([H|T]) ->
   [H|decode_html_entities(T)].

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

is_valid_month_day(1,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(2,Day) when Day >= 1, Day =< 29 -> true;
is_valid_month_day(3,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(4,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(5,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(6,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(7,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(8,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(9,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(10,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(11,Day) when Day >= 1, Day =< 30 -> true;
is_valid_month_day(12,Day) when Day >= 1, Day =< 31 -> true;
is_valid_month_day(_Mon,_Day) -> false.


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





has_name(undefined, _) ->
   true;
has_name(_, undefined) ->
   true;
has_name(#qname{} = Name, #qname{namespace = Ns, prefix = Px, local_name = Loc}) ->
   (Px  == "*" orelse unmask_ns(Ns)  == Name#qname.namespace )    andalso 
   (Loc == "*" orelse Loc == Name#qname.local_name);
has_name(#xqElementNode{name = _Name}, #qname{namespace = undefined,prefix = Px}) when Px =/= "*" ->
   % non-expandable QName
   xqerl_error:error('XPST0081');
has_name(#xqElementNode{name = Name}, #qname{namespace = Ns, prefix = Px, local_name = Loc}) ->
   (Px  == "*" orelse unmask_ns(Ns)  == Name#qname.namespace )    andalso 
   (Loc == "*" orelse Loc == Name#qname.local_name);
has_name(#xqAttributeNode{name = _Name}, undefined) ->
   true;
has_name(#xqAttributeNode{name = Name}, #qname{namespace = Ns, prefix = Px, local_name = Loc}) ->
   (Px  == "*" orelse unmask_ns(Ns)  == Name#qname.namespace )    andalso 
   (Loc == "*" orelse Loc == Name#qname.local_name).

unmask_ns("xqerl_fn") -> "http://www.w3.org/2005/xpath-functions";
unmask_ns("xqerl_xs") -> "http://www.w3.org/2001/XMLSchema";
unmask_ns("xqerl_math") -> "http://www.w3.org/2005/xpath-functions/math";
unmask_ns("xqerl_map") -> "http://www.w3.org/2005/xpath-functions/map";
unmask_ns("xqerl_array") -> "http://www.w3.org/2005/xpath-functions/array";
unmask_ns("xqerl_error") -> "http://www.w3.org/2005/xqt-errors";
unmask_ns(Ns) -> Ns.





