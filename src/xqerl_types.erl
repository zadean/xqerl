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
-define(true,  ?xav('xs:boolean',true)).
-define(false, ?xav('xs:boolean',false)).
-define(xav(T,V),  ?seq:singleton(#xqAtomicValue{type = T, value = V}) ).

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
string_value(#xqNode{} = Nd) ->
   %?dbg("string_value",xqerl_fn:data([], Nd)),
   string_value(cast_as(Nd, 'xs:string'));

string_value(Other) when is_list(Other) ->
   AllAtom = lists:all(fun(#xqAtomicValue{}) ->
                             true;
                          (_) ->
                             false
                       end, Other),
   if AllAtom ->
         %xqerl_fn:'string-join'([], Other);
         Joined = xqerl_fn:'string-join'([], ?seq:from_list(Other), #xqAtomicValue{type = 'xs:string', value = " "}),
         string_value(Joined);
      true ->
         lists:map(fun(O) ->
                         string_value(O)
                   end, Other)
   end;
string_value(Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         case ?seq:size(Seq) of
            0 ->
               "";
            1 ->
               string_value(?seq:singleton_value(Seq));
            _ ->
               List = ?seq:to_list(Seq),
               lists:concat([string_value(hd(List))|[" "++ string_value(Av) || Av <- tl(List) ] ])
         end;
      _ ->
         Seq
   end.

value(#xqAtomicValue{value = V}) ->
   V;
value(Seq) ->
   %?dbg("Seq",Seq),
   case ?seq:singleton_value(Seq) of
      #xqAtomicValue{value = V} ->
         V;
      #xqFunction{body = V} ->
         V;
      O ->
         O
   end.

type({not_implemented_maybe_later,L}) ->
   {not_implemented_maybe_later,L};
type({not_implemented,L}) ->
   {not_implemented,L};
type(#xqAtomicValue{type = T}) ->
   T;
type(Seq) ->
   #xqSeqType{type = T, occur = _One} = ?seq:get_seq_type(Seq),
   T.

as_seq(Vals, []) ->
   Vals;
as_seq(#qname{} = Q, SeqType) ->
   as_seq(?seq:singleton(Q), SeqType);
as_seq(#xqAtomicValue{} = Av, SeqType) ->
   as_seq(?seq:singleton(Av), SeqType);
as_seq(#xqNode{} = Av, SeqType) ->
   as_seq(?seq:singleton(Av), SeqType);
as_seq(Vals, #xqSeqType{type = function}) when is_function(Vals) ->
   Vals;
as_seq(#array{} = Vals, #xqSeqType{type = {array,_,_,any,any}}) ->
   Vals;
as_seq(Vals, #xqSeqType{type = {array,_,_,any,any}, occur = Occ}) ->
   case ?seq:is_sequence(Vals) of
      true ->
         Type = ?seq:get_seq_type(Vals),
         case Type of
            #xqSeqType{type = array,occur = Occ} ->
               Vals;
            #xqSeqType{type = array, occur = one_or_many} when Occ == zero_or_many ->
               Vals;
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
as_seq(Vals, #xqSeqType{type = {function,_,_,any,any}}) when is_function(Vals) ->
   Vals;
as_seq(Vals, #xqSeqType{type = {function,_,_,_,_}})  -> % should be checking params
   Vals;
as_seq(Vals, #xqSeqType{type = {map,_,_,any,any}}) when is_map(Vals) ->
   Vals;
as_seq(Vals, #xqSeqType{type = {map,_,_,any,any}, occur = Occ}) ->
   case ?seq:is_sequence(Vals) of
      true ->
         Type = ?seq:get_seq_type(Vals),
         case Type of
            #xqSeqType{type = map,occur = Occ} ->
               Vals;
            #xqSeqType{type = map, occur = one_or_many} when Occ == zero_or_many ->
               Vals;
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         xqerl_error:error('XPTY0004')
   end;
%%    ?seq:singleton(Vals);
as_seq(Seq, #xqSeqType{type = #xqKindTest{kind = Type, name = #qname{prefix = "*",local_name = "*"}}}) ->
   case ?seq:is_sequence(Seq) of
      true ->
         #xqSeqType{type = AType,occur = _} = ?seq:get_seq_type(Seq),
         if AType == Type ->
               Seq;
            true ->
               ?dbg("AType == Type",{?LINE,AType,Type}),
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         if is_list(Seq) ->
               ?seq:from_list(Seq);
            true ->
               ?seq:singleton(Seq)
         end
   end;
as_seq(Seq, #xqSeqType{type = #xqKindTest{kind = Type, name = undefined},occur = Occur}) ->
   case ?seq:is_sequence(Seq) of
      true ->
         #xqSeqType{type = AType} = ?seq:get_seq_type(Seq),
         if AType == Type orelse Type == item ->
               Seq;
            Type == node ->
               if AType == 'element';
                  AType == 'attribute';
                  AType == 'document-node';
                  AType == 'comment';
                  AType == 'text';
                  AType == 'namespace';
                  AType == 'processing-instruction';
                  AType == 'empty-sequence' andalso Occur == zero_or_one;
                  AType == 'empty-sequence' andalso Occur == zero_or_many ->
                     Seq;
                  true ->
                     xqerl_error:error('XPTY0004')
               end;
            AType == 'empty-sequence' andalso Occur == zero_or_one ->
               Seq;
            AType == 'empty-sequence' andalso Occur == zero_or_many ->
               Seq;
            true ->
               ?dbg("AType == Type",{?LINE,AType,Type,Occur}),
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         if is_list(Seq) ->
               ?seq:from_list(Seq);
            true ->
               ?seq:singleton(Seq)
         end
   end;
%% as_seq(Seq, #xqSeqType{type = item}) ->
%%    case ?seq:is_sequence(Seq) of
%%       true ->
%%          Seq;
%%       _ ->
%%          if is_list(Seq) ->
%%                ?seq:from_list(Seq);
%%             true ->
%%                ?seq:singleton(Seq)
%%          end
%%    end;
as_seq(Seq0, #xqSeqType{type = Type} = TargetSeqType) ->
   Seq = case ?seq:is_sequence(Seq0) of
            true ->
               Seq0;
            _ ->
               ?seq:singleton(Seq0)
         end,
   #xqSeqType{type = AType} = SeqType = ?seq:get_seq_type(Seq),
   %?dbg("{Seq,SeqType,TargetSeqType}",{SeqType,TargetSeqType}),
   case seq_type_val_match(TargetSeqType, SeqType) of
      nocast ->
         Seq;
      true ->
         if Type == 'item' ->
               Seq;
            AType == 'xs:anySimpleType' andalso Type == 'xs:anyAtomicType' ->
               Seq;
            Type == 'xs:anyAtomicType' ->
               case is_known_type(AType) of
                  true ->
                     Seq;
                  _ ->
                     cast_as_seq(Seq,TargetSeqType)
               end;
            AType == Type ->
               Seq;
            AType == function andalso Type == map ->
               Seq;
            AType == function andalso Type == array ->
               Seq;
            AType == function ->
               xqerl_error:error('FOTY0013');
            AType == 'xs:untypedAtomic' ->
               case is_numeric_type(Type) of
                  true ->
                     try
                        cast_as_seq(Seq,'xs:double')
                     catch _:_ ->
                              xqerl_error:error('XPTY0004')
                     end;
                  _ ->
                     cast_as_seq(Seq,TargetSeqType)
               end;
            AType == 'xs:anyURI' andalso Type == 'xs:string' ->
               cast_as_seq(Seq,TargetSeqType);
            AType == 'xs:string' ->
               case is_numeric_type(Type) of
                  true ->
                     ?dbg(?FUNCTION_NAME,?LINE),
                     xqerl_error:error('XPTY0004');
                  _ ->
                     cast_as_seq(Seq,TargetSeqType)
               end;
            AType == 'xs:anySimpleType' -> % maybe castable
               cast_as_seq(Seq,TargetSeqType);
            AType == 'item' -> % maybe castable
               cast_as_seq(Seq,TargetSeqType);
            AType == 'attribute' ->
               cast_as_seq(Seq,TargetSeqType);
            AType == 'text' ->
               cast_as_seq(Seq,TargetSeqType);
            AType == 'comment' ->
               case is_numeric_type(Type) of
                  true ->
                     ?dbg(?FUNCTION_NAME,?LINE),
                     xqerl_error:error('XPTY0004');
                  _ ->
                     cast_as_seq(Seq,TargetSeqType)
               end;
            AType == 'xs:integer' andalso Type == 'xs:numeric' ->
               Seq;
            AType == 'xs:integer' ->
               case is_numeric_type(Type) orelse Type == 'xs:boolean' orelse Type == 'xs:anyAtomicType' of
                  true ->
                     cast_as_seq(Seq,TargetSeqType);
                  _ ->
                     ?dbg(?FUNCTION_NAME,?LINE),
                     xqerl_error:error('XPTY0004')
               end;
            AType == 'xs:decimal' andalso Type =/= 'xs:integer' -> % loss of precision
               case is_numeric_type(Type) of
                  true ->
                     cast_as_seq(Seq,TargetSeqType);
                  _ ->
                     ?dbg(?FUNCTION_NAME,?LINE),
                     ?dbg("as_seq AType,Type", {?LINE,AType,Type,TargetSeqType}),
                     xqerl_error:error('XPTY0004')
               end;
            AType == 'processing-instruction' ->
               case is_numeric_type(Type) of
                  true ->
                     ?dbg(?FUNCTION_NAME,?LINE),
                     xqerl_error:error('XPTY0004');
                  _ ->
                     cast_as_seq(Seq,TargetSeqType)
               end;
            AType == 'node' ->
               cast_as_seq(Seq,TargetSeqType);
            AType == 'element' ->
               cast_as_seq(Seq,TargetSeqType);
            AType == 'document-node' ->
               cast_as_seq(Seq,TargetSeqType);
            Type == 'xs:anyAtomicType' ->
               Seq;
            (Type == 'xs:QName' orelse Type == 'xs:NOTATION') andalso 
              (AType == 'xs:untypedAtomic' orelse AType == 'element' orelse AType == 'attribute' orelse AType == 'node') -> % namespace sensitive cast from untyped
               xqerl_error:error('XPTY0117');
            true ->
               case subtype_of(AType,Type) of
                  {'EXIT',_} -> 
                     ?dbg("as_seq AType,Type", {?LINE,AType,Type,TargetSeqType}),
                     xqerl_error:error('XPTY0004');
                  false ->
                     ?dbg("as_seq AType,Type", {?LINE,AType,Type,TargetSeqType}),
                     case is_known_type(Type) of
                        true ->
                           ?dbg(?FUNCTION_NAME,?LINE),
                           xqerl_error:error('XPTY0004');
                        _ ->
                           ?dbg("unknown type",Type),
                           xqerl_error:error('XPST0051')
                     end;
                  _ ->
                     Seq
               end
         end;
      _ ->
         ?dbg("as_seq", {?LINE,Seq,TargetSeqType, SeqType}),
         xqerl_error:error('XPTY0004')
   end.

cast_as_seq(Vals, []) ->
   Vals;
cast_as_seq(#xqAtomicValue{} = Av, SeqType) ->
   cast_as_seq(?seq:singleton(Av), SeqType);
cast_as_seq(#xqNode{} = Av, SeqType) ->
   cast_as_seq(?seq:singleton(Av), SeqType);
cast_as_seq(Vals, []) ->
   Vals;
cast_as_seq(Vals, _SeqType) when is_function(Vals) ->
   Vals;

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
                              _:#xqError{} = E -> throw(E);
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
seq_type_val_match(#xqSeqType{type = TType, occur = one}, #xqSeqType{type = AType, occur = one}) when TType == AType ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = zero_or_one}, #xqSeqType{type = AType, occur = one}) when TType == AType ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one_or_many}, #xqSeqType{type = AType, occur = one}) when TType == AType ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = one_or_many}, #xqSeqType{type = AType, occur = one_or_many}) when TType == AType ->
   nocast;
seq_type_val_match(#xqSeqType{type = TType, occur = zero_or_many}, #xqSeqType{type = AType}) when TType == AType ->
   nocast;
seq_type_val_match(#xqSeqType{type = _Type, occur = one}, #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_one}, #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = one_or_many}, #xqSeqType{occur = one}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = one_or_many}, #xqSeqType{occur = one_or_many}) ->
   true;
seq_type_val_match(#xqSeqType{type = _Type, occur = zero_or_many}, _V) ->
   true;
seq_type_val_match(_, _) ->   
   false.

promote(At,Type) ->
   InType = type(At),
   case subtype_of(InType,Type) of
      true ->
         #xqAtomicValue{type = Type, value = value(At)};
      _ ->
         xqerl_error:error('FORG0006')
   end.

% subtype substitution allowed when true (don't cast the value, keep original type')
% instance of returns true with this function
subtype_of(T, T) -> true;

subtype_of(T, #xqKindTest{kind = T}) -> true;
subtype_of(T, #xqFunTest{kind = T}) -> true;

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
subtype_of('xs:untypedAtomic'     , 'xs:string') -> true;

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

castable(#xqAtomicValue{} = Seq, TargetSeqType) ->
   castable(?seq:singleton(Seq), TargetSeqType);
castable(Seq, #xqSeqType{type = Type} = TargetSeqType) ->
   SeqType = ?seq:get_seq_type(Seq),
   case seq_type_val_match(TargetSeqType, SeqType) of
      nocast ->
         ?true;
      true ->
         try
            cast_as(Seq, Type),
            %?dbg("castable", {Seq, Type}),
            ?true
         catch
            _:#xqError{name = #qname{local_name = "FORG0001"}} -> ?false;
            _:#xqError{name = #qname{local_name = "XPTY0004"}} -> ?false;
            _:#xqError{name = #qname{local_name = "FODT0001"}} -> ?false;
            _:#xqError{name = #qname{local_name = "FODT0002"}} -> ?false;
            _:#xqError{name = #qname{local_name = "FOCA0002"}} -> ?false;
            _:#xqError{name = #qname{local_name = "XPST0081"}} -> ?false;
            _:E -> throw(E)            
         end;
      _ ->
         ?false
   end;
castable( Av, Type ) -> 
   try
      cast_as(Av, Type),
      %?dbg("castable", {Av, Type}),
      ?true
   catch
      _:#xqError{name = #qname{local_name = "FORG0001"}} -> ?false;
      _:#xqError{name = #qname{local_name = "XPTY0004"}} -> ?false;
      _:#xqError{name = #qname{local_name = "FODT0001"}} -> ?false;
      _:#xqError{name = #qname{local_name = "FODT0002"}} -> ?false;
      _:#xqError{name = #qname{local_name = "FOCA0002"}} -> ?false;
      _:#xqError{name = #qname{local_name = "XPST0081"}} -> ?false;
      _:E -> throw(E)            
   end.

castable(#xqAtomicValue{} = Seq, TargetSeqType, Namespaces) ->
   castable(?seq:singleton(Seq), TargetSeqType, Namespaces);
castable(Seq, #xqSeqType{type = Type} = TargetSeqType, Namespaces) ->
   SeqType = ?seq:get_seq_type(Seq),
   case seq_type_val_match(TargetSeqType, SeqType) of
      nocast ->
         ?true;
      true ->
         try
            cast_as(Seq, Type, Namespaces),
            %?dbg("castable", {Seq, Type}),
            ?true
         catch
            _:#xqError{name = #qname{local_name = "FORG0001"}} -> ?false;
            _:#xqError{name = #qname{local_name = "XPTY0004"}} -> ?false;
            _:#xqError{name = #qname{local_name = "FODT0001"}} -> ?false;
            _:#xqError{name = #qname{local_name = "FODT0002"}} -> ?false;
            _:#xqError{name = #qname{local_name = "FOCA0002"}} -> ?false;
            _:#xqError{name = #qname{local_name = "XPST0081"}} -> ?false;
            _:E -> throw(E)            
         end;
      _ ->
         ?false
   end;
castable( Av, Type, Namespaces) -> 
   try
      cast_as(Av, Type, Namespaces),
      %?dbg("castable", {Av, Type}),
      ?true
   catch
      _:#xqError{name = #qname{local_name = "FORG0001"}} -> ?false;
      _:#xqError{name = #qname{local_name = "XPTY0004"}} -> ?false;
      _:#xqError{name = #qname{local_name = "FODT0001"}} -> ?false;
      _:#xqError{name = #qname{local_name = "FODT0002"}} -> ?false;
      _:#xqError{name = #qname{local_name = "FOCA0002"}} -> ?false;
      _:#xqError{name = #qname{local_name = "XPST0081"}} -> ?false;
      _:E -> throw(E)            
   end.

instance_of( #xqNode{} = Seq, TargetSeqType ) ->
   instance_of( ?seq:singleton(Seq), TargetSeqType);
instance_of( #xqAtomicValue{} = Seq, TargetSeqType ) ->
   instance_of( ?seq:singleton(Seq), TargetSeqType);
instance_of( Seq0, TargetSeqType ) ->
   Seq = case ?seq:is_sequence(Seq0) of
            true ->
               Seq0;
            _ when is_list(Seq0) ->
               ?seq:from_list(Seq0);
            _ ->
               ?seq:singleton(Seq0)
         end,         
   SeqType = ?seq:get_seq_type(Seq),
   case seq_type_val_match(TargetSeqType, SeqType) of
      nocast ->
         ?true;
      true ->
         case TargetSeqType#xqSeqType.type of
            #xqKindTest{kind = 'document-node', test = #xqKindTest{name = #qname{namespace = Ns,local_name = Ln}}}  ->
               B = lists:all(fun(#xqNode{frag_id = F, identity = Id}) ->
                                   ChildIds = xqerl_node:get_node_children(#xqNode{frag_id = F, identity = Id}),
                                   case ChildIds of
                                      [] ->
                                         false;
                                      [C] ->
                                         Doc = xqerl_context:get_available_document(F),
                                         #qname{namespace = Ns1,local_name = Ln1} = xqerl_node:get_node_name({C,Doc}),
                                         Ns == Ns1 andalso Ln == Ln1;
                                      _ ->
                                         false
                                    end;
                                (_) ->
                                   false
                   end, ?seq:to_list(Seq)),
               if B == false -> ?false;
                  true -> ?true
               end;
            #xqKindTest{kind = Kind, type = ETy, name = undefined}  ->
               B = lists:all(fun(#xqAtomicValue{type = ATy}) ->
                                   derives_from( ATy, ETy );
                                (#xqNode{frag_id = F, identity = Id}) ->
                                   Doc = xqerl_context:get_available_document(F),
                                   NodeType = xqerl_node:get_node_type({Id,Doc}),
                                   Kind == 'node' orelse 
                                   Kind == NodeType
                   end, ?seq:to_list(Seq)),
               if B == false -> ?false;
                  true -> ?true
               end;
            #xqKindTest{kind = Kind, type = ETy, name = #qname{namespace = Ns,local_name = Ln}}  ->
               B = lists:all(fun(#xqAtomicValue{type = ATy}) ->
                                   derives_from( ATy, ETy );
                                (#xqNode{frag_id = F, identity = Id}) ->
                                   Doc = xqerl_context:get_available_document(F),
                                   NodeType = xqerl_node:get_node_type({Id,Doc}),
                                   #qname{namespace = Ns1,local_name = Ln1} = xqerl_node:get_node_name({Id,Doc}),
                                   Kind == NodeType andalso Ns == Ns1 andalso Ln == Ln1
                   end, ?seq:to_list(Seq)),
               if B == false -> ?false;
                  true -> ?true
               end;
            {function,[],undefined,any,any} ->
               %?dbg("Fx1",Fx1),
               B = lists:all(fun(Fun) when is_function(Fun) ->
                                   true;
                                (#xqFunction{}) ->
                                   true;
                                (_) ->
                                   false
                   end, ?seq:to_list(Seq)),
               if B == false -> ?false;
                  true -> ?true
               end;
            {function,_,_,Args,Ret}  ->
               %?dbg("Fx",Fx),
               % only checking argument count ...
               B = lists:all(fun(Fun) when is_function(Fun) ->
                                   Cnt = erlang:length(Args) + 1,
                                   {_,Ary} = erlang:fun_info(Fun, arity),
                                   %?dbg("{Cnt,Ary}",{Cnt,Ary}),
                                   if Cnt == Ary ->
                                         true;
                                      true ->
                                         false
                                   end;
                                (#xqFunction{params = Par,
                                             type = Ty} )  ->
                                   %?dbg("Fx2",{Args,Par}),
                                   if Args == Par ->
                                         if Ty == any ->
                                               true;
                                            Ty == Ret ->
                                               true;
                                            true ->
                                               kind_test_match(Ty,Ret)
                                         end;
                                      true ->
                                         false
                                   end;
                                
                                (_) ->
                                   false
                   end, ?seq:to_list(Seq)),
               if B == false -> ?false;
                  true -> ?true
               end;
            T ->
               case is_known_type(T) of
                  true ->
                     B = lists:all(fun(#xqAtomicValue{type = ATy}) ->
                                         derives_from( ATy, T );
                                      (#xqNode{frag_id = F, identity = Id}) ->
                                         Doc = xqerl_context:get_available_document(F),
                                         T == 'node' orelse 
                                          T == xqerl_node:get_node_type({Id,Doc});
                                      (Fx) when is_function(Fx) ->
                                         false
                         end, ?seq:to_list(Seq)),
                     if B == false -> ?false;
                        true -> ?true
                     end;
                  _ ->
                     ?dbg("unknown type",T),
                     xqerl_error:error('XPST0051')
               end
         end;
      _ ->
         ?false            
  end.

construct_as(At,#xqSeqType{type = 'xs:error'}) ->
   xqerl_xs:xs_error([], At);
construct_as(At,#xqSeqType{type = _Type}) ->
   At.


cast_as( At, [] ) -> 
   At;
cast_as( At, 'item' ) -> 
   At;
%% cast_as( #xqAtomicValue{} = At, 'xs:anyAtomicType' ) -> 
%%    At;
cast_as( [], 'xs:error' ) -> 
   ?seq:empty();
cast_as( _, 'xs:anyType' ) -> 
   xqerl_error:error('XQST0052'); % The SimpleTypeName must be the name of a type defined in the in-scope schema types, and it must be a simple type [err:XQST0052]. 
cast_as( _, 'xs:untyped' ) -> 
   xqerl_error:error('XQST0052'); % The SimpleTypeName must be the name of a type defined in the in-scope schema types, and it must be a simple type [err:XQST0052]. 
cast_as( _, 'xs:NOTATION' ) -> 
%% cast_as( Item, 'xs:NOTATION') -> 
%%    case ?seq:is_empty(Item) of
%%       true ->
%%          xqerl_error:error('XPST0080');
%%       _ ->
%%          ok
%%    end;
%% cast_as( #xqAtomicValue{}, 'xs:NOTATION' ) ->
%%    xqerl_error:error('XPST0080');
   xqerl_error:error('XPST0080'); % In addition, the target type cannot be xs:NOTATION, xs:anySimpleType, or xs:anyAtomicType [err:XPST0080].  
cast_as( _, 'xs:anySimpleType' ) -> 
   xqerl_error:error('XPST0080'); % In addition, the target type cannot be xs:NOTATION, xs:anySimpleType, or xs:anyAtomicType [err:XPST0080].  
cast_as( _, 'xs:anyAtomicType' ) -> 
   xqerl_error:error('XPST0080'); % In addition, the target type cannot be xs:NOTATION, xs:anySimpleType, or xs:anyAtomicType [err:XPST0080].  
cast_as( _, 'xs:error' ) -> 
   xqerl_error:error('FORG0001'); % $x cast as xs:error fails dynamically with error [err:FORG0001]FO31, regardless of the value of $x
% QName hack
cast_as( #qname{} = Q, 'xs:QName' ) -> 
   ?xav('xs:QName',Q);
cast_as( #xqFunction{}, _ ) -> 
   xqerl_error:error('FOTY0013');
cast_as( Fx, _ ) when is_function(Fx) -> 
   xqerl_error:error('FOTY0013');
cast_as( #xqAtomicValue{} = At, #xqSeqType{type = Type, occur = one} ) -> 
   cast_as(At,Type);
cast_as( #xqAtomicValue{} = At, #xqSeqType{type = Type, occur = zero_or_one} ) -> 
   cast_as(At,Type);
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
cast_as( #xqNode{} = At, #xqKindTest{kind = document} ) ->
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
cast_as( [], 'xs:string') -> [];
cast_as( [], 'xs:hexBinary') -> [];
cast_as( [], 'xs:base64Binary') -> [];
cast_as( [], 'xs:float') -> [];
cast_as( [], 'xs:double') -> [];
cast_as( [], 'xs:date') -> [];
cast_as( [], 'xs:time') -> [];
cast_as( [], 'xs:dateTime') -> [];

cast_as( #xqAtomicValue{type = Type} = ST, 'xs:numeric' ) ->
   case is_numeric_type(Type) of
      true ->
         ST;
      _ ->
         if Type == 'xs:untypedAtomic' ->
               cast_as(ST,'xs:double');
            true ->
               xqerl_error:error('XPTY0004')
         end
   end;

cast_as( [At], TT ) -> 
   cast_as( At, TT );

cast_as( #xqAtomicValue{type = Type,value = _} = ST, TType ) when Type == TType -> 
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
   if Val == 0 -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:double' ) -> 
   #xqAtomicValue{type = 'xs:double', value = Val};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:float' ) -> 
   #xqAtomicValue{type = 'xs:float', value = Val};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:integer' ) -> 
   #xqAtomicValue{type = 'xs:integer', value = trunc(Val)};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:string' ) -> 
   SVal = if is_list(Val) -> Val;
             true ->
                if erlang:round(Val) == Val ->
                      erlang:integer_to_list(erlang:round(Val));
                   true ->
                      lists:flatten(io_lib:format("~w", [Val]))
                end               
          end,
   #xqAtomicValue{type = 'xs:string', value = SVal};
cast_as( #xqAtomicValue{type = 'xs:decimal', value = Val}, 'xs:untypedAtomic' ) ->
   SVal = if is_list(Val) -> Val;
             true ->
                lists:flatten(io_lib:format("~w", [Val]))
          end,
   #xqAtomicValue{type = 'xs:untypedAtomic', value = SVal};

cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:boolean' ) -> 
   if Val == 0 -> #xqAtomicValue{type = 'xs:boolean', value = false};
      Val == "NaN" -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:decimal' ) -> % MAYBE castable
   if Val == "NaN" -> xqerl_error:error('FOCA0002');
      Val == "-INF" -> xqerl_error:error('FOCA0002');
      Val == "INF" -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:decimal', value = Val}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:float' ) ->
   if Val == "NaN"  -> #xqAtomicValue{type = 'xs:double', value = Val};
      Val == "-INF" -> #xqAtomicValue{type = 'xs:double', value = Val};
      Val == "INF"  -> #xqAtomicValue{type = 'xs:double', value = Val};
      Val < ?MINFLOAT -> #xqAtomicValue{type = 'xs:float', value = "-INF"};
      Val > ?MAXFLOAT -> #xqAtomicValue{type = 'xs:float', value = "INF"};
      true -> #xqAtomicValue{type = 'xs:float', value = 
                               list_to_float(float_to_list(erlang:float(Val), [{scientific,8}]))}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:integer' ) -> % MAYBE castable
   if Val == "NaN" -> xqerl_error:error('FOCA0002');
      Val == "-INF" -> xqerl_error:error('FOCA0002');
      Val == "INF" -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:integer', value = trunc(Val)}
   end;
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:string' ) -> 
   SVal = if is_list(Val) -> Val;
             abs(Val) < 1000000 andalso abs(Val) >= 0.000001 ->
                if erlang:round(Val) == Val ->
                      erlang:integer_to_list(erlang:round(Val));
                   abs(Val) < 10 ->
                      %format_float(float_to_list(Val, [{decimals,16}]));
                      string:trim(lists:flatten(io_lib:format("~w", [Val])), trailing, [$0]);
                   true ->
                      %format_float(float_to_list(erlang:float(Val), [{decimals,15},compact]))
                      string:trim(lists:flatten(io_lib:format("~f", [Val])), trailing, [$0])
                end;
             Val == 0 ->
                "0";
             true ->
                format_float(float_to_list(erlang:float(Val), [{scientific,16}]))
          end,
   #xqAtomicValue{type = 'xs:string', value = SVal};
cast_as( #xqAtomicValue{type = 'xs:double', value = Val}, 'xs:untypedAtomic' ) -> 
   SVal = if is_list(Val) -> Val;
             Val < 1000000 andalso Val >= 0.000001 ->
                if erlang:round(Val) == Val ->
                      erlang:integer_to_list(erlang:round(Val));
                   abs(Val) < 1 ->
                      format_float(float_to_list(erlang:float(Val), [{decimals,16},compact]));
                      %string:trim(lists:flatten(io_lib:format("~f", [Val])), trailing, $0)
                   true ->
                      format_float(float_to_list(erlang:float(Val), [{decimals,15},compact]))
                      %string:trim(lists:flatten(io_lib:format("~f", [Val])), trailing, $0)
                end;
             Val == 0 ->
                "0";
             true ->
                format_float(float_to_list(erlang:float(Val), [{scientific,16}]))
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
      Val == "NaN" -> #xqAtomicValue{type = 'xs:boolean', value = false};
      true -> #xqAtomicValue{type = 'xs:boolean', value = true}
   end;
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:decimal' ) -> % MAYBE castable
   if Val == "NaN" -> xqerl_error:error('FOCA0002');
      Val == "-INF" -> xqerl_error:error('FOCA0002');
      Val == "INF" -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:decimal', value = Val}
   end;
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:double' ) -> 
   #xqAtomicValue{type = 'xs:double', value = Val};
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:integer' ) -> % MAYBE castable
   if Val == "NaN" -> xqerl_error:error('FOCA0002');
      Val == "-INF" -> xqerl_error:error('FOCA0002');
      Val == "INF" -> xqerl_error:error('FOCA0002');
      true -> #xqAtomicValue{type = 'xs:integer', value = trunc(Val)}
   end;
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:string' ) -> 
   SVal = if is_list(Val) -> Val;
             erlang:abs(Val) < 1000000 andalso erlang:abs(Val) >= 0.000001 ->
                if erlang:round(Val) == Val ->
                      erlang:integer_to_list(erlang:round(Val));
                   true ->
                      string:trim(lists:flatten(io_lib:format("~f", [Val])), trailing, [$0])
                end;
             Val == 0 ->
                "0";
             true ->
                format_float(float_to_list(erlang:float(Val), [{scientific,8}]))
          end,
   #xqAtomicValue{type = 'xs:string', value = SVal};
cast_as( #xqAtomicValue{type = 'xs:float', value = Val}, 'xs:untypedAtomic' ) -> 
   SVal = if is_list(Val) -> Val;
             erlang:abs(Val) < 1000000 andalso erlang:abs(Val) >= 0.000001 ->
                if erlang:round(Val) == Val ->
                      erlang:integer_to_list(erlang:round(Val));
                   true ->
                      string:trim(lists:flatten(io_lib:format("~f", [Val])), trailing, [$0])
                end;
             Val == 0 ->
                "0";
             true ->
                format_float(float_to_list(erlang:float(Val), [{scientific,8}]))
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
   #xqAtomicValue{type = 'xs:decimal', value = Val};
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 'xs:double' ) ->
   Val1 = list_to_float(float_to_list(erlang:float(Val), [compact,{scientific,16}])),
   #xqAtomicValue{type = 'xs:double', value = Val1};
cast_as( #xqAtomicValue{type = 'xs:integer', value = Val}, 'xs:float' ) -> 
   #xqAtomicValue{type = 'xs:float', value = Val};
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
?dbg(?LINE,EncBig),
         case ietf_rfc2396_scanner:string(EncBig) of
            {ok,L,_} ->
               ?dbg(?LINE,L),
               Head = hd(L),
               
               Bad = element(3, Head) == ":" orelse lists:keyfind(excluded, 1, L),
               if Bad == false ->
                     #xqAtomicValue{type = 'xs:anyURI', value = EncBig};
                  true ->
                     xqerl_error:error('FORG0001')
               end;
            X ->
               ?dbg(?LINE,X),
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
      Bin = list_to_binary(string:trim(Val)),
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
      Num = case binary:match(Rest1, <<".">>) of
                     nomatch ->
                        binary_to_integer(Rest1);
                     _ ->
                        case binary:last(Rest1) of
                           $. ->
                              Bin1 = binary:part(Rest1,{0, byte_size(Rest1) -1}),
                              binary_to_integer(Bin1);
                           _ ->
                              case binary:match(Rest1, [<<"E">>,<<"e">>]) of
                                 nomatch ->
                                    binary_to_float(Rest1);
                                 _ ->
                                    throw('FORG0001')
                              end
                        end
                  end,
      NNum = if Sign == '-' -> - Num;
                true -> Num
             end,
      #xqAtomicValue{type = 'xs:decimal', value = NNum}
   catch
      _:_ -> xqerl_error:error('FORG0001' )
   end;

cast_as( #xqAtomicValue{type = 'xs:string', value = Val1}, 
         'xs:double' ) -> % MAYBE castable
   Val = string:trim(Val1),
   try
      if Val == "NaN"  -> #xqAtomicValue{type = 'xs:double', value = Val};
         Val == "-INF" -> #xqAtomicValue{type = 'xs:double', value = Val};
         Val == "+INF" -> #xqAtomicValue{type = 'xs:double', value = "INF"}; % schema 1.1 
         Val == "INF"  -> #xqAtomicValue{type = 'xs:double', value = Val};
         true ->
         Bin = list_to_binary(string:trim(Val)),
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
                           binary_to_integer(Man);
                        _ ->
                           case binary:last(Man) of
                              $. ->
                                 Bin1 = binary:part(Man,{0, byte_size(Man) -1}),
                                 binary_to_integer(Bin1);
                              _ ->
                                 binary_to_float(Man)
                           end
                     end,
         NNum = if Sign == '-' -> - Num;
                   true -> Num
                end,
         try
            ENum = NNum * math:pow(10, Exp),
            #xqAtomicValue{type = 'xs:double', value = ENum}
         catch
            _:badarith -> #xqAtomicValue{type = 'xs:double', 
                                         value = case Sign of 
                                                    '-' -> atom_to_list(Sign) ++ "INF";
                                                    _ -> "INF"
                                                 end}
         end
      end
   catch
      G:Err -> xqerl_error:error('FORG0001', ["xs:double", Val,G,Err] )
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
         if DblVal < ?MINFLOAT -> #xqAtomicValue{type = 'xs:float', value = "-INF"};
            DblVal > ?MAXFLOAT -> #xqAtomicValue{type = 'xs:float', value = "INF"};
            true -> #xqAtomicValue{type = 'xs:float', value = 
                                     list_to_float(float_to_list(DblVal, [{decimals,38},compact]))}
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
   catch
      G:Err -> xqerl_error:error('FORG0001', ["xs:gDay", Val,G,Err] )
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
   catch
      G:Err -> xqerl_error:error('FORG0001', ["xs:gMonth", Val,G,Err] )
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
   catch
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
         true ->
            #xqAtomicValue{type = 'xs:gYear',
                           value = Rec#xsDateTime{string_value = xqerl_datetime:to_string(Rec,'xs:gYear')}}
      end
   catch
      G:Err -> xqerl_error:error('FORG0001', ["xs:gYear", Val,G,Err] )
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
   Norm = shrink_spaces(StrVal),
   #xqAtomicValue{type = 'xs:normalizedString', value = Norm};
cast_as( #xqAtomicValue{} = Arg1,'xs:token' ) -> 
   StrVal = xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:normalizedString' )),
   Token = string:trim(StrVal),
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
%% cast_as( #xqAtomicValue{} = Arg1,'xs:NMTOKENS' ) ->
%%    case xqerl_types:value(xqerl_types:cast_as( Arg1, 'xs:token' )) of
%%       [] ->
%%          xqerl_error:error('FORG0001');
%%       StrVal ->
%%          Tokens = string:split(StrVal," ",all),
%%          ?seq:from_list(
%%            lists:map(fun(Tok) ->
%%                         case lists:all(fun(C) ->
%%                                              xqerl_lib:is_xsname_char(C)
%%                                        end, Tok) of
%%                            true ->
%%                               #xqAtomicValue{type = 'xs:NMTOKEN', value = Tok};
%%                            _ ->
%%                               xqerl_error:error('FORG0001')
%%                         end
%%                      end, Tokens)
%%            )
%%    end;
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
cast_as( #xqAtomicValue{type = Intype}, T ) when 
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
cast_as(Seq,T)  ->
   %?dbg("GOT",{Seq,T}),
   case ?seq:size(Seq) of
      0 ->
         cast_as([],T);
      1 ->
         cast_as(?seq:singleton_value(Seq),T);
      _ ->
         % no lists in cast
         case catch promote(Seq,T) of
            {'EXIT',_} ->
               ?dbg("Bad Cast ST/TT: ",{Seq,T}),
               %xqerl_error:error('XPST0081');
               xqerl_error:error('XQST0052');
            Ok ->
               Ok
         end
   end.

% namespace sensitive
cast_as( #xqNode{} = N, TT, Namespaces ) ->
   String = xqerl_node:atomize_nodes(N),
   cast_as(String, TT, Namespaces);
cast_as( #xqAtomicValue{type = 'xs:QName'} = Q,'xs:QName', _Namespaces) ->
   Q;
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
                        xqerl_context:get_default_element_type_namespace();
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
                  xqerl_error:error('FONS0004');
               {_,Namespace,_} ->
                  #xqAtomicValue{type = 'xs:QName', 
                                 value = #qname{namespace = Namespace,
                                                prefix = Prefix,
                                                local_name = Local}}
            end
      end
   catch
      _:#xqError{name = #qname{local_name = "FOCA0002"}} -> xqerl_error:error('FORG0001');
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
               xqerl_error:error('XPST0081');
               %xqerl_error:error('XPTY0004');
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
   xqerl_error:error('FOCA0002');
scan_ncname([H|T]) ->
   case xmerl_lib:is_letter(H) of 
      true ->
         scan_ncname(T, [H]);
      _ ->
         xqerl_error:error('FOCA0002')
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
         xqerl_error:error('FOCA0002')
   end.

hexbin_to_str(Bin) -> [ hd(erlang:integer_to_list(I, 16)) || << I:4 >> <= Bin ].
b64bin_to_str(Bin) -> base64:encode_to_string(Bin).

str_to_hexbin(Str) -> << << (erlang:list_to_integer([H], 16)):4 >> || H <- Str >>.
str_to_b64bin(Str) -> 
   Str1 = re:replace(Str, "(\\s+)", "", [global,{return,list}]),
   try
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


format_float(Val) ->
   ?dbg("format_float",Val),
   strip_zero_and_plus(lists:reverse(Val),[]).

strip_zero_and_plus([], Acc) -> Acc;

strip_zero_and_plus("E0." ++ T, []) -> 
   strip_zero_and_plus(T, ".0");
strip_zero_and_plus("e0." ++ T, []) -> 
   strip_zero_and_plus(T, ".0");

strip_zero_and_plus("E0." ++ T, Acc) -> 
   strip_zero_and_plus(T, ".0E" ++ Acc);
strip_zero_and_plus("e0." ++ T, Acc) -> 
   strip_zero_and_plus(T, ".0E" ++ Acc);
strip_zero_and_plus("0+" ++ T, Acc) -> 
   strip_zero_and_plus("+"++T, Acc);
strip_zero_and_plus("0-" ++ T, Acc) -> 
   strip_zero_and_plus("-"++T, Acc);
strip_zero_and_plus("E0" ++ T, Acc) -> 
   strip_zero_and_plus("E"++T, Acc);
strip_zero_and_plus("e0" ++ T, Acc) -> 
   strip_zero_and_plus("E"++T, Acc);
strip_zero_and_plus([$e|T], Acc) -> 
   strip_zero_and_plus(T, [$E|Acc]);
strip_zero_and_plus([$+|T], Acc) -> 
   strip_zero_and_plus(T, Acc);
strip_zero_and_plus([H|T], Acc) -> 
   strip_zero_and_plus(T, [H|Acc]).

shrink_spaces([]) ->
   [];
shrink_spaces([32,WS|T]) when WS == 32;
                              WS == 31;
                              WS == 10;
                              WS == 9 ->
   shrink_spaces([32|T]);
shrink_spaces("&#xD;"++T) ->
   shrink_spaces([32|T]);
shrink_spaces("&#xA;"++T) ->
   shrink_spaces([32|T]);
shrink_spaces("&#x9;"++T) ->
   shrink_spaces([32|T]);
shrink_spaces([WS|T]) when WS == 31;
                           WS == 10;
                           WS == 9 ->
   shrink_spaces([32|T]);
shrink_spaces([H|T]) ->
   [H|shrink_spaces(T)].



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










