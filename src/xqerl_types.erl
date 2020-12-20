%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2020 Zachary N. Dean  All Rights Reserved.
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

-export([
    return_value/1,
    return_value/2
]).

-export([value/1]).
-export([atomize/1]).
-export([string_value/1, string_value/2]).
-export([type/1]).

-export([
    promote/2,
    check/2
]).

-export([ensure_empty/1]).
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

-define(MINFLOAT, -3.4028235e38).
-define(MAXFLOAT, 3.4028235e38).
-define(MAXFLOATPREC, 1.175494351e-38).
-define(TRUE, true).
-define(FALSE, false).
-define(XAV(T, V), #xqAtomicValue{type = T, value = V}).

-define(ERROR_MATCH(E),
        _:#xqError{name = #xqAtomicValue{value=#qname{local_name = E}}}).

% block array:array(_) warnings
-dialyzer(no_opaque).

-define(IS_ARRAY(A), is_tuple(A), element(1, A) =:= array).

is_date_type('xs:duration') -> true;
is_date_type('xs:dateTime') -> true;
is_date_type('xs:time') -> true;
is_date_type('xs:date') -> true;
is_date_type('xs:gYearMonth') -> true;
is_date_type('xs:gYear') -> true;
is_date_type('xs:gMonthDay') -> true;
is_date_type('xs:gDay') -> true;
is_date_type('xs:gMonth') -> true;
is_date_type('xs:yearMonthDuration') -> true;
is_date_type('xs:dayTimeDuration') -> true;
is_date_type('xs:dateTimeStamp') -> true;
is_date_type(_Type) -> false.

atomize([]) ->
    [];
atomize([A]) ->
    atomize(A);
atomize(#xqAtomicValue{} = A) ->
    A;
atomize(true) ->
    true;
atomize(false) ->
    false;
atomize(A) when is_binary(A); is_number(A); is_atom(A) ->
    A;
atomize(A) when ?IS_ARRAY(A) ->
    xqerl_mod_array:flatten(#{}, A);
atomize(#{tv := Tv}) ->
    Tv;
atomize(#{
    nk := attribute,
    sv := Sv
}) ->
    ?XAV('xs:untypedAtomic', Sv);
atomize(#{
    nk := text,
    sv := Sv
}) ->
    ?XAV('xs:untypedAtomic', Sv);
atomize(#{nk := Nk, id := Id} = Node) when
    Nk =:= comment; Nk =:= namespace; Nk =:= 'processing-instruction'
->
    case Id of
        {_, _} ->
            xqldb_mem_nodes:string_value(Node);
        {_, _, _} ->
            xqldb_nodes:string_value(Node)
    end;
atomize(#{id := {_, _}} = Node) ->
    ?XAV('xs:untypedAtomic', xqldb_mem_nodes:string_value(Node));
atomize(#{id := {_, _, _}} = Node) ->
    ?XAV('xs:untypedAtomic', xqldb_nodes:string_value(Node));
atomize(L) when is_list(L) ->
    lists:flatten(lists:map(fun atomize/1, L));
atomize(O) ->
    ?dbg("O", O),
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

return_value([]) ->
    [];
return_value(#xqAtomicValue{} = A) ->
    A;
return_value(A) when ?IS_ARRAY(A) ->
    A;
return_value(#range{} = R) ->
    xqerl_seq3:to_list(R);
return_value(#xqFunction{} = F) ->
    F;
%return_value(#xqFunction{}) -> ?err('XPTY0004');
return_value(Fun) when is_function(Fun) ->
    Fun;
% remove parent node
return_value(#{nk := _} = Map) ->
    make_node_external(Map);
return_value(Map) when is_map(Map) ->
    Map;
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
return_value(Seq, #{options := #{method := _} = Opts} = _Ctx) ->
    Seq2 = xqerl_seq3:flatten(Seq),
    xqerl_serialize:serialize(Seq2, Opts);
return_value(Seq, #{options := _}) ->
    return_value(Seq).

string_value([]) ->
    <<>>;
string_value(Bin) when is_binary(Bin) ->
    Bin;
string_value(#xqAtomicValue{
    type = Type,
    value = Bin
}) when ?xs_string(Type) ->
    Bin;
string_value(#xqError{} = E) ->
    E;
string_value(#range{} = R) ->
    string_value(xqerl_seq3:expand(R));
string_value(A) when ?IS_ARRAY(A) ->
    string_value(array:to_list(A));
string_value([V]) ->
    string_value(V);
string_value({Error, _}) ->
    {Error};
% QName hack
string_value(#qname{} = Q) ->
    Str = cast_as(#xqAtomicValue{type = 'xs:QName', value = Q}, 'xs:string'),
    string_value(Str);
string_value(true) ->
    <<"true">>;
string_value(false) ->
    <<"false">>;
string_value(#xqAtomicValue{} = At) ->
    cast_as(At, 'xs:string');
string_value(At) when is_number(At); is_atom(At) ->
    cast_as(At, 'xs:string');
string_value(#{nk := _} = Nd) ->
    string_value(cast_as(Nd, 'xs:string'));
string_value(#xqFunction{}) ->
    ?err('FOTY0013');
string_value(Map) when is_map(Map) ->
    ?err('FOTY0013');
string_value(Fun) when is_function(Fun) ->
    ?err('XPTY0004');
string_value([H | T]) ->
    T2 = <<<<" ", (string_value(Av))/binary>> || Av <- T>>,
    <<(string_value(H))/binary, T2/binary>>.

string_value(_, N) ->
    string_value(N).

value(#{nk := _} = N) ->
    value(atomize(N));
value(#xqFunction{body = V}) ->
    V;
value([#xqFunction{body = V}]) ->
    V;
value(#xqAtomicValue{value = V}) ->
    V;
value([]) ->
    [];
value([#xqAtomicValue{value = V}]) ->
    V;
value([Seq]) ->
    Seq;
value(V) ->
    V.

type({not_implemented_maybe_later, L}) ->
    {not_implemented_maybe_later, L};
type({not_implemented, L}) ->
    {not_implemented, L};
type([]) ->
    [];
type(#range{}) ->
    'xs:integer';
type(#xqAtomicValue{type = T}) ->
    T;
type(V) when is_integer(V) ->
    'xs:integer';
type(V) when is_float(V) ->
    'xs:double';
type(V) when V == nan; V == neg_zero; V == infinity; V == neg_infinity ->
    'xs:double';
type(V) when is_binary(V) ->
    'xs:string';
type(Seq) ->
    #seqType{type = T, occur = _One} = xqerl_seq3:get_seq_type(Seq),
    T.

ensure_empty([A]) ->
    ensure_empty(A);
ensure_empty(A) when ?IS_ARRAY(A) ->
    case array:size(A) of
        0 ->
            A;
        _ ->
            ?err('XPTY0004')
    end;
ensure_empty(M) when is_map(M) ->
    case maps:size(M) of
        0 ->
            M;
        _ ->
            ?err('XPTY0004')
    end;
ensure_empty(_) ->
    ?err('XPTY0004').

% this function is for promoting/checking sequences for their types
cast_as_seq(Vals, SeqType) when is_atom(SeqType) ->
    cast_as_seq(Vals, #seqType{type = SeqType});
cast_as_seq([Vals], SeqType) ->
    cast_as_seq(Vals, SeqType);
cast_as_seq(Vals, []) ->
    Vals;
cast_as_seq(Fn, #seqType{type = #funTest{kind = function}}) when is_function(Fn) ->
    Fn;
cast_as_seq(Fn, #seqType{type = #funTest{kind = function}}) when is_map(Fn) ->
    Fn;
cast_as_seq(
    #xqFunction{} = Fn,
    #seqType{type = #funTest{kind = function}}
) ->
    Fn;
cast_as_seq(A, #seqType{type = #funTest{kind = array}}) when ?IS_ARRAY(A) ->
    A;
cast_as_seq(Map, #seqType{type = #funTest{kind = map}}) ->
    Map;
cast_as_seq(Av, #seqType{type = 'xs:boolean'}) when not is_list(Av) ->
    cast_as(Av, 'xs:boolean');
cast_as_seq(
    #xqAtomicValue{type = 'xs:anyURI'} = Av,
    #seqType{type = 'xs:string'}
) ->
    cast_as(Av, 'xs:string');
cast_as_seq(
    #xqAtomicValue{} = Av,
    #seqType{type = 'xs:anyAtomicType'}
) ->
    Av;
cast_as_seq(Av, #seqType{type = 'xs:anyAtomicType'}) when
    is_boolean(Av); is_number(Av); is_binary(Av)
->
    Av;
cast_as_seq(
    #xqAtomicValue{type = 'xs:untypedAtomic'} = Av,
    #seqType{type = Type}
) ->
    cast_as(Av, Type);
cast_as_seq(
    #xqAtomicValue{type = AType} = Av,
    #seqType{type = Type}
) when ?xs_numeric(AType), ?xs_numeric(Type) ->
    cast_as(Av, Type);
cast_as_seq(Av, #seqType{type = Type}) when is_number(Av), ?xs_numeric(Type) ->
    cast_as(Av, Type);
cast_as_seq(
    #xqAtomicValue{type = AType} = Av,
    #seqType{type = Type}
) ->
    case subtype_of(AType, Type) of
        true -> Av;
        false -> ?err('FORG0001')
    end;
cast_as_seq(#{nk := _} = Av, SeqType) ->
    cast_as(Av, SeqType);
cast_as_seq(Vals, []) ->
    Vals;
cast_as_seq(Vals, _SeqType) when is_function(Vals) ->
    Vals;
cast_as_seq(Vals, #seqType{type = #funTest{kind = function}}) when is_list(Vals) ->
    All = lists:all(
        fun
            (Fn) when is_function(Fn) ->
                true;
            (#xqFunction{body = Fn}) when is_function(Fn) ->
                true;
            (_) ->
                false
        end,
        Vals
    ),
    case All of
        true -> Vals;
        false -> ?err('FORG0001')
    end;
cast_as_seq(Vals, #seqType{type = #funTest{kind = array}}) when is_list(Vals) ->
    All = lists:all(
        fun
            (A) when ?IS_ARRAY(A) ->
                true;
            (_) ->
                false
        end,
        Vals
    ),
    case All of
        true -> Vals;
        false -> ?err('FORG0001')
    end;
cast_as_seq(Seq, #seqType{type = 'xs:anyAtomicType'}) when is_list(Seq) ->
    lists:map(
        fun
            (#xqAtomicValue{} = Av) ->
                Av;
            (Av) when is_binary(Av); is_number(Av); is_boolean(Av) ->
                Av;
            (Item) ->
                cast_as(Item, 'xs:anyAtomicType')
        end,
        Seq
    );
cast_as_seq(Seq, #seqType{type = Type, occur = Occ} = SType) when is_list(Seq), Occ =/= one ->
    lists:map(
        fun
            (#xqAtomicValue{type = AType} = Av) ->
                case subtype_of(AType, Type) of
                    true ->
                        Av;
                    _ ->
                        cast_as_seq(Av, SType)
                end;
            (Item) ->
                cast_as(Item, Type)
        end,
        Seq
    );
cast_as_seq([], #seqType{occur = zero_or_one}) ->
    [];
cast_as_seq(Seq, #seqType{type = Type} = TargetSeqType) ->
    SeqType = xqerl_seq3:get_seq_type(Seq),
    case seq_type_val_match(TargetSeqType, SeqType) of
        nocast ->
            Seq;
        true when Type == 'xs:anyAtomicType' ->
            Seq;
        true when Type == 'item' ->
            Seq;
        true ->
            cast_as_seq_1(Seq, Type);
        _ ->
            ?err('FORG0001')
    end.

cast_as_seq_1(Seq, Type) ->
    NF = fun
        (#{nk := _}) ->
            ?err('XPTY0117');
        ('xs:untypedAtomic') ->
            ?err('XPTY0117');
        (Val) ->
            try
                cast_as(Val, Type)
            catch
                _:_ -> ?err('FORG0001')
            end
    end,
    case is_ns_sensitive(Type) of
        true ->
            lists:map(NF, Seq);
        _ ->
            M = fun(Val) -> cast_as(Val, Type) end,
            try
                lists:map(M, Seq)
            catch
                _:#xqError{} = E -> throw(E);
                _:_ -> ?err('FORG0001')
            end
    end.

cast_as_seq(Vals, [], _) -> Vals.

treat_as_seq(Vals, SeqType) ->
    try
        cast_as_seq(Vals, SeqType)
    catch
        _:_ ->
            ?err('XPDY0050')
    end.

name_match(_, undefined) ->
    true;
name_match(_, #qname{namespace = <<"*">>, local_name = <<"*">>}) ->
    true;
name_match(
    #qname{namespace = Ns1, local_name = Ln1},
    #qname{namespace = Ns2, local_name = Ln2}
) ->
    Ns1 == Ns2 andalso Ln1 == Ln2.

kind_test_match(#seqType{occur = zero_or_one}, #seqType{occur = zero_or_many}) ->
    false;
kind_test_match(#seqType{occur = zero_or_one}, #seqType{occur = one_or_many}) ->
    false;
kind_test_match(#seqType{occur = one}, #seqType{occur = zero_or_many}) ->
    false;
kind_test_match(#seqType{occur = one}, #seqType{occur = one_or_many}) ->
    false;
kind_test_match(#seqType{type = #kindTest{}} = Kt1, #seqType{type = #kindTest{}} = Kt2) ->
    case seq_type_val_match(Kt1, Kt2) of
        false ->
            false;
        nocast ->
            true;
        % maybe, so check name and type
        _ ->
            kind_test_type_match(Kt1, Kt2)
    end.

kind_test_type_match(
    #seqType{type = #kindTest{kind = Kind1}} = Kt1,
    #seqType{type = #kindTest{kind = Kind2}} = Kt2
) ->
    case Kind1 == Kind2 orelse subtype_of(Kt2#seqType.type, Kt1#seqType.type) of
        true ->
            kind_test_name_match(Kt1, Kt2);
        false ->
            false
    end.

kind_test_name_match(
    #seqType{type = #kindTest{name = Name1}} = Kt1,
    #seqType{type = #kindTest{name = Name2}} = Kt2
) ->
    case name_match(Name2, Name1) of
        true ->
            kind_test_subtype_match(Kt1, Kt2);
        false ->
            false
    end.

kind_test_subtype_match(_, #seqType{type = #kindTest{type = undefined}}) ->
    true;
kind_test_subtype_match(#seqType{type = #kindTest{type = Type1}}, #seqType{
    type = #kindTest{type = Type2}
}) ->
    case seq_type_val_match(Type2, Type1) of
        false ->
            false;
        nocast ->
            true;
        _ ->
            derives_from(Type1, Type2)
    end.

%TODO expand to parameters
fun_test_match(
    #seqType{
        type = #funTest{
            kind = Kind1,
            params = _Params1,
            type = Type1
        }
    } = _Ft1,
    #seqType{
        type = #funTest{
            kind = Kind2,
            params = _Params2,
            type = Type2
        }
    } = _Ft2
) ->
    case Kind1 =:= Kind2 orelse Kind1 =:= function of
        true ->
            M = seq_type_val_match(Type1, Type2),
            %?dbg("M",M),
            case M of
                false when Type1 =:= any ->
                    true;
                false ->
                    false;
                nocast ->
                    true;
                _ ->
                    derives_from(Type1, Type2)
            end;
        false ->
            false
    end.

seq_type_val_match(T, T) ->
    nocast;
seq_type_val_match(
    #seqType{type = 'xs:error', occur = zero_or_one},
    #seqType{type = 'empty-sequence'}
) ->
    % xs:error is an empty-sequence
    nocast;
seq_type_val_match(
    #seqType{type = 'empty-sequence'},
    #seqType{type = 'empty-sequence'}
) ->
    nocast;
seq_type_val_match(
    #seqType{type = _Type, occur = one},
    #seqType{type = 'empty-sequence'}
) ->
    false;
seq_type_val_match(
    #seqType{type = _Type, occur = one_or_many},
    #seqType{type = 'empty-sequence'}
) ->
    false;
seq_type_val_match(
    #seqType{type = _Type, occur = zero_or_one},
    #seqType{type = 'empty-sequence'}
) ->
    nocast;
seq_type_val_match(
    #seqType{type = TType, occur = one},
    #seqType{type = AType, occur = one}
) when TType == AType; TType == 'item' ->
    nocast;
seq_type_val_match(
    #seqType{type = #kindTest{kind = TType}, occur = one},
    #seqType{type = AType, occur = one}
) when TType == AType ->
    true;
seq_type_val_match(
    #seqType{type = #kindTest{kind = TType}, occur = one},
    #seqType{type = #kindTest{kind = AType}, occur = one}
) when TType == AType ->
    true;
seq_type_val_match(
    #seqType{type = TType, occur = zero_or_one},
    #seqType{type = AType, occur = one}
) when TType == AType; TType == 'item' ->
    nocast;
seq_type_val_match(
    #seqType{type = TType, occur = one_or_many},
    #seqType{type = AType, occur = one}
) when TType == AType; TType == 'item' ->
    nocast;
seq_type_val_match(
    #seqType{type = TType, occur = one_or_many},
    #seqType{type = AType, occur = one_or_many}
) when TType == AType; TType == 'item' ->
    nocast;
seq_type_val_match(
    #seqType{type = TType, occur = zero_or_many},
    #seqType{type = AType}
) when TType == AType; TType == 'item' ->
    nocast;
seq_type_val_match(
    #seqType{occur = one},
    #seqType{occur = one}
) ->
    true;
seq_type_val_match(
    #seqType{occur = one},
    #seqType{occur = zero_or_many}
) ->
    true;
seq_type_val_match(
    #seqType{occur = one},
    #seqType{occur = zero_or_one}
) ->
    true;
seq_type_val_match(
    #seqType{occur = zero_or_one},
    #seqType{occur = one}
) ->
    true;
seq_type_val_match(
    #seqType{occur = zero_or_one},
    #seqType{occur = zero_or_one}
) ->
    true;
seq_type_val_match(
    #seqType{occur = zero_or_one},
    #seqType{occur = zero_or_many}
) ->
    true;
seq_type_val_match(
    #seqType{type = Type, occur = one_or_many},
    #seqType{type = Type, occur = one}
) ->
    nocast;
seq_type_val_match(
    #seqType{occur = one_or_many},
    #seqType{occur = one}
) ->
    true;
seq_type_val_match(
    #seqType{occur = one_or_many},
    #seqType{occur = one_or_many}
) ->
    true;
seq_type_val_match(#seqType{occur = zero_or_many}, _) ->
    true;
seq_type_val_match(_A, _B) ->
    false.

check(A, B) ->
    case instance_of(A, B) of
        true ->
            A;
        false ->
            ?dbg("{A,B}", {A, B}),
            ?err('XPTY0004')
    end.

check_subtype(A, B, IfTrue) ->
    case subtype_of(A, B) of
        true ->
            IfTrue;
        _ ->
            ?err('XPTY0004')
    end.

% special
promote(undefined, T) ->
    promote([], T);
promote([], #seqType{occur = zero}) ->
    [];
promote([], #seqType{occur = zero_or_one}) ->
    [];
promote([], #seqType{occur = zero_or_many}) ->
    [];
promote(_, #seqType{occur = zero}) ->
    ?err('XPTY0004');
promote([At], Type) ->
    promote(At, Type);
promote(List, #seqType{occur = Occ}) when
    is_list(List) andalso Occ =:= zero;
    is_list(List) andalso Occ =:= one;
    is_list(List) andalso Occ =:= zero_or_one
->
    ?err('XPTY0004');
promote(List, #seqType{occur = Occ} = T) when
    is_list(List) andalso Occ =:= one_or_many; is_list(List) andalso Occ =:= zero_or_many
->
    [promote(L, T) || L <- List];
promote(At, #seqType{type = item}) ->
    At;
promote(#range{} = At, #seqType{type = 'xs:anyAtomicType'}) ->
    At;
promote(#range{} = R, #seqType{} = T) ->
    case instance_of(R, T) of
        ?TRUE ->
            R;
        _ ->
            ?err('XPTY0004')
    end;
promote(#xqAtomicValue{} = At, #seqType{type = 'xs:anyAtomicType'}) ->
    At;
promote(At, #seqType{type = 'xs:anyAtomicType'}) when
    is_boolean(At); is_binary(At); is_number(At)
->
    At;
promote(At, #seqType{type = 'xs:boolean'}) when is_boolean(At) ->
    At;
promote(At, #seqType{type = 'xs:numeric'}) when is_number(At) ->
    At;
promote(At, #seqType{type = TT}) when is_integer(At), ?xs_integer(TT) ->
    At;
promote(At, #seqType{type = 'xs:double'}) when is_float(At) ->
    At;
promote(At, #seqType{type = 'xs:double'}) when is_integer(At) ->
    cast_as(At, 'xs:double');
promote(At, #seqType{type = 'xs:float'}) when is_integer(At) ->
    cast_as(At, 'xs:float');
promote(At, #seqType{type = 'xs:decimal'}) when is_integer(At) ->
    cast_as(At, 'xs:decimal');
promote(#xqAtomicValue{type = 'xs:float'} = At, #seqType{type = 'xs:double'}) ->
    At#xqAtomicValue{type = 'xs:double'};
promote(
    #xqAtomicValue{type = Num1} = At,
    #seqType{type = FltDbl}
) when ?xs_decimal(Num1), FltDbl == 'xs:double'; ?xs_decimal(Num1), FltDbl == 'xs:float' ->
    cast_as(At, FltDbl);
promote(At, #seqType{type = TT}) when is_binary(At), ?xs_string(TT) ->
    At;
promote(#{nk := _} = N, #seqType{type = T} = St) when T == 'xs:anyAtomicType'; ?xs_string(T) ->
    promote(atomize(N), St);
promote(#{nk := _} = N, #seqType{type = Kind} = T) ->
    case instance_of(N, T) of
        ?TRUE ->
            N;
        ?FALSE when is_record(Kind, kindTest) ->
            ?err('XPTY0004');
        _ ->
            promote(atomize(N), T)
    end;
promote(A, #seqType{type = 'xs:anyAtomicType'}) when ?IS_ARRAY(A) ->
    atomize(A);
promote(List0, #seqType{type = 'xs:anyAtomicType'}) when is_list(List0) ->
    %?dbg("List0",List0),
    List = xqerl_seq3:expand(List0),
    Fun = fun
        (#xqAtomicValue{} = A) ->
            A;
        (#{nk := _} = N) ->
            atomize(N);
        (_) ->
            ?err('XPTY0004')
    end,
    lists:map(Fun, List);
promote(#xqAtomicValue{type = Num1} = At, #seqType{type = Num2}) when
    ?xs_numeric(Num1) andalso ?xs_numeric(Num2)
->
    check_subtype(Num1, Num2, At);
promote(#xqAtomicValue{type = 'xs:untypedAtomic'} = At, Type) ->
    cast_as_seq(At, Type);
promote(
    #xqAtomicValue{type = 'xs:anyURI'} = At,
    #seqType{type = 'xs:string'} = Type
) ->
    cast_as_seq(At, Type);
promote(Map, #seqType{
    type = #funTest{
        kind = map,
        params = P,
        type = T
    }
}) when is_map(Map) ->
    %?dbg("{P,T,Map}", {P,T,Map}),
    Check = fun
        (V, #seqType{type = #funTest{}} = Ty) ->
            promote(V, Ty);
        (V, Ty) ->
            case instance_of(V, Ty) of
                ?TRUE ->
                    true;
                _ ->
                    ?dbg("04", {V, Ty}),
                    ?err('XPTY0004')
            end
    end,
    case {P, T} of
        {any, any} ->
            ok;
        {[any], any} ->
            ok;
        {any, _} ->
            _ = [Check(V, T) || {_, {_, V}} <- maps:to_list(Map)],
            ok;
        {[any], _} ->
            _ = [Check(V, T) || {_, {_, V}} <- maps:to_list(Map)],
            ok;
        {[Kt], any} ->
            _ = [Check(K, Kt) || {_, {K, _}} <- maps:to_list(Map)],
            ok;
        {[Kt], _} ->
            _ = [{Check(K, Kt), Check(V, T)} || {_, {K, V}} <- maps:to_list(Map)],
            ok
    end,
    Map;
promote(A, #seqType{
    type = #funTest{
        kind = array,
        type = any
    }
}) when ?IS_ARRAY(A) ->
    A;
promote(A, #seqType{
    type = #funTest{
        kind = array,
        type = Ty
    }
}) when ?IS_ARRAY(A) ->
    Vs1 = [promote(V, Ty) || V <- array:to_list(A)],
    %?dbg("Vs1",Vs1),
    array:from_list(Vs1);
promote(#xqFunction{} = A, #seqType{
    type =
        #funTest{
            kind = function,
            params = P,
            type = T
        } = B
}) ->
    % function coercion
    [FA] = fun_to_fun_test([A]),
    case subtype_of(FA, B) of
        %case subtype_of(B, FA) of
        true ->
            A#xqFunction{params = P, type = T};
        _ ->
            ?dbg("XPTY0004", {FA, B}),
            ?err('XPTY0004')
    end;
% cannot cast to duration
promote(#xqAtomicValue{type = AType} = At, #seqType{type = 'xs:duration'}) ->
    check_subtype(AType, 'xs:duration', At);
promote(#xqAtomicValue{type = AType} = At, #seqType{type = TType} = Type) ->
    case subtype_of(AType, TType) of
        true ->
            cast_as(At, Type);
        _ ->
            ?err('XPTY0004')
    end;
promote(At, #seqType{type = TType} = Type) when is_binary(At) ->
    case subtype_of('xs:string', TType) of
        true -> cast_as(At, Type);
        _ -> ?err('XPTY0004')
    end;
promote(At, #seqType{type = TType} = Type) when is_integer(At) ->
    case subtype_of('xs:integer', TType) of
        true -> cast_as(At, Type);
        _ -> ?err('XPTY0004')
    end;
promote(At, #seqType{type = TType} = Type) when
    At == infinity; At == neg_infinity; At == neg_zero; At == nan; is_float(At)
->
    case subtype_of('xs:float', TType) of
        true ->
            cast_as(At, Type);
        _ ->
            ?err('XPTY0004')
    end;
promote(At, #seqType{type = TType} = Type) ->
    %?dbg("InType",{At,Type,TType}),
    InType = type(At),
    case subtype_of(InType, TType) of
        true when is_list(At) andalso InType =:= function ->
            Tests = fun_to_fun_test(At),
            check_subtype(Tests, TType, At);
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
        _ when is_record(TType, funTest) ->
            ?err('XPTY0004');
        _ when InType =:= 'xs:untypedAtomic' ->
            try
                cast_as_seq(At, Type)
            catch
                _:_ -> ?err('FORG0001')
            end;
        _ when ?xs_numeric(InType) andalso ?xs_numeric(TType) ->
            cast_as_seq(At, Type);
        _ ->
            try
                cast_as_seq(At, Type)
            catch
                _:_ -> ?err('FORG0001')
            end
    end.

fun_to_fun_test([]) ->
    [];
fun_to_fun_test([#xqFunction{annotations = An, params = P, type = Ty} | T]) ->
    [
        #funTest{
            kind = function,
            annotations = An,
            %if An == undefined -> []; true -> An end,
            params = P,
            type = Ty
        }
        | fun_to_fun_test(T)
    ].

% params subtype, type
% subtype substitution allowed when true
% (don't cast the value, keep original type)
% instance of returns true with this function
subtype_of(T, T) ->
    true;
subtype_of(#funTest{} = F1, #funTest{} = F2) ->
    fun_check(F1, F2);
subtype_of(Fs, #funTest{} = F2) when is_list(Fs) ->
    lists:all(
        fun(F) ->
            fun_check(F, F2)
        end,
        Fs
    );
subtype_of(T, #kindTest{kind = T}) ->
    true;
subtype_of(T, #funTest{kind = T}) ->
    true;
subtype_of(T, #funTest{kind = T}) ->
    true;
subtype_of(map, #funTest{kind = function, type = any}) ->
    true;
subtype_of(#kindTest{kind = node}, #kindTest{kind = node}) ->
    true;
subtype_of(
    #kindTest{kind = 'document-node'},
    #kindTest{kind = node}
) ->
    true;
subtype_of(#kindTest{kind = element}, #kindTest{kind = node}) ->
    true;
subtype_of(#kindTest{kind = comment}, #kindTest{kind = node}) ->
    true;
subtype_of(#kindTest{kind = text}, #kindTest{kind = node}) ->
    true;
subtype_of(#kindTest{kind = attribute}, #kindTest{kind = node}) ->
    true;
subtype_of(#kindTest{kind = namespace}, #kindTest{kind = node}) ->
    true;
subtype_of(
    #kindTest{kind = 'processing-instruction'},
    #kindTest{kind = node}
) ->
    true;
subtype_of(
    #kindTest{kind = element, name = N1},
    #kindTest{kind = element, name = N2}
) ->
    has_name(N1, N2);
subtype_of(
    #kindTest{kind = attribute, name = N1},
    #kindTest{kind = attribute, name = N2}
) ->
    has_name(N1, N2);
subtype_of(
    #kindTest{kind = 'processing-instruction', name = N1},
    #kindTest{kind = 'processing-instruction', name = N2}
) ->
    has_name(N1, N2);
subtype_of('empty-sequence', _) ->
    true;
subtype_of(_, item) ->
    true;
subtype_of(Node, #kindTest{kind = Node}) ->
    true;
subtype_of('document-node', #kindTest{kind = node}) ->
    true;
subtype_of('element', #kindTest{kind = node}) ->
    true;
subtype_of('comment', #kindTest{kind = node}) ->
    true;
subtype_of('text', #kindTest{kind = node}) ->
    true;
subtype_of('attribute', #kindTest{kind = node}) ->
    true;
subtype_of('processing-instruction', #kindTest{kind = node}) ->
    true;
% namespace sensitive
subtype_of('element', 'xs:QName') ->
    ?err('XPTY0117');
% namespace sensitive
subtype_of('attribute', 'xs:QName') ->
    ?err('XPTY0117');
subtype_of(map, 'xs:anyAtomicType') ->
    false;
subtype_of(_, 'xs:anyAtomicType') ->
    true;
subtype_of('xs:dateTimeStamp', 'xs:dateTime') ->
    true;
subtype_of('xs:dayTimeDuration', 'xs:duration') ->
    true;
subtype_of('xs:yearMonthDuration', 'xs:duration') ->
    true;
subtype_of('xs:normalizedString', 'xs:string') ->
    true;
subtype_of('xs:token', 'xs:normalizedString') ->
    true;
subtype_of('xs:token', 'xs:string') ->
    true;
subtype_of('xs:language', 'xs:token') ->
    true;
subtype_of('xs:language', 'xs:normalizedString') ->
    true;
subtype_of('xs:language', 'xs:string') ->
    true;
subtype_of('xs:NMTOKEN', 'xs:token') ->
    true;
subtype_of('xs:NMTOKEN', 'xs:normalizedString') ->
    true;
subtype_of('xs:NMTOKEN', 'xs:string') ->
    true;
subtype_of('xs:Name', 'xs:token') ->
    true;
subtype_of('xs:Name', 'xs:normalizedString') ->
    true;
subtype_of('xs:Name', 'xs:string') ->
    true;
subtype_of('xs:NCName', 'xs:Name') ->
    true;
subtype_of('xs:NCName', 'xs:token') ->
    true;
subtype_of('xs:NCName', 'xs:normalizedString') ->
    true;
subtype_of('xs:NCName', 'xs:string') ->
    true;
subtype_of('xs:ID', 'xs:NCName') ->
    true;
subtype_of('xs:ID', 'xs:Name') ->
    true;
subtype_of('xs:ID', 'xs:token') ->
    true;
subtype_of('xs:ID', 'xs:normalizedString') ->
    true;
subtype_of('xs:ID', 'xs:string') ->
    true;
subtype_of('xs:IDREF', 'xs:NCName') ->
    true;
subtype_of('xs:IDREF', 'xs:Name') ->
    true;
subtype_of('xs:IDREF', 'xs:token') ->
    true;
subtype_of('xs:IDREF', 'xs:normalizedString') ->
    true;
subtype_of('xs:IDREF', 'xs:string') ->
    true;
subtype_of('xs:IDREFS', 'xs:IDREF') ->
    true;
subtype_of('xs:IDREFS', 'xs:NCName') ->
    true;
subtype_of('xs:IDREFS', 'xs:Name') ->
    true;
subtype_of('xs:IDREFS', 'xs:token') ->
    true;
subtype_of('xs:IDREFS', 'xs:normalizedString') ->
    true;
subtype_of('xs:IDREFS', 'xs:string') ->
    true;
subtype_of('xs:ENTITY', 'xs:NCName') ->
    true;
subtype_of('xs:ENTITY', 'xs:Name') ->
    true;
subtype_of('xs:ENTITY', 'xs:token') ->
    true;
subtype_of('xs:ENTITY', 'xs:normalizedString') ->
    true;
subtype_of('xs:ENTITY', 'xs:string') ->
    true;
subtype_of('xs:ENTITIES', 'xs:ENTITY') ->
    true;
subtype_of('xs:ENTITIES', 'xs:NCName') ->
    true;
subtype_of('xs:ENTITIES', 'xs:Name') ->
    true;
subtype_of('xs:ENTITIES', 'xs:token') ->
    true;
subtype_of('xs:ENTITIES', 'xs:normalizedString') ->
    true;
subtype_of('xs:ENTITIES', 'xs:string') ->
    true;
subtype_of('xs:double', 'xs:numeric') ->
    true;
subtype_of('xs:float', 'xs:numeric') ->
    true;
subtype_of('xs:integer', 'xs:decimal') ->
    true;
subtype_of('xs:integer', 'xs:numeric') ->
    true;
subtype_of('xs:decimal', 'xs:numeric') ->
    true;
subtype_of('xs:nonPositiveInteger', 'xs:integer') ->
    true;
subtype_of('xs:nonPositiveInteger', 'xs:decimal') ->
    true;
subtype_of('xs:nonPositiveInteger', 'xs:numeric') ->
    true;
subtype_of('xs:negativeInteger', 'xs:nonPositiveInteger') ->
    true;
subtype_of('xs:negativeInteger', 'xs:integer') ->
    true;
subtype_of('xs:negativeInteger', 'xs:decimal') ->
    true;
subtype_of('xs:negativeInteger', 'xs:numeric') ->
    true;
subtype_of('xs:long', 'xs:integer') ->
    true;
subtype_of('xs:long', 'xs:decimal') ->
    true;
subtype_of('xs:long', 'xs:numeric') ->
    true;
subtype_of('xs:int', 'xs:long') ->
    true;
subtype_of('xs:int', 'xs:integer') ->
    true;
subtype_of('xs:int', 'xs:decimal') ->
    true;
subtype_of('xs:int', 'xs:numeric') ->
    true;
subtype_of('xs:short', 'xs:int') ->
    true;
subtype_of('xs:short', 'xs:long') ->
    true;
subtype_of('xs:short', 'xs:integer') ->
    true;
subtype_of('xs:short', 'xs:decimal') ->
    true;
subtype_of('xs:short', 'xs:numeric') ->
    true;
subtype_of('xs:byte', 'xs:short') ->
    true;
subtype_of('xs:byte', 'xs:int') ->
    true;
subtype_of('xs:byte', 'xs:long') ->
    true;
subtype_of('xs:byte', 'xs:integer') ->
    true;
subtype_of('xs:byte', 'xs:decimal') ->
    true;
subtype_of('xs:byte', 'xs:numeric') ->
    true;
subtype_of('xs:nonNegativeInteger', 'xs:integer') ->
    true;
subtype_of('xs:nonNegativeInteger', 'xs:decimal') ->
    true;
subtype_of('xs:nonNegativeInteger', 'xs:numeric') ->
    true;
subtype_of('xs:unsignedLong', 'xs:nonNegativeInteger') ->
    true;
subtype_of('xs:unsignedLong', 'xs:integer') ->
    true;
subtype_of('xs:unsignedLong', 'xs:decimal') ->
    true;
subtype_of('xs:unsignedLong', 'xs:numeric') ->
    true;
subtype_of('xs:unsignedInt', 'xs:unsignedLong') ->
    true;
subtype_of('xs:unsignedInt', 'xs:nonNegativeInteger') ->
    true;
subtype_of('xs:unsignedInt', 'xs:integer') ->
    true;
subtype_of('xs:unsignedInt', 'xs:decimal') ->
    true;
subtype_of('xs:unsignedInt', 'xs:numeric') ->
    true;
subtype_of('xs:unsignedShort', 'xs:unsignedInt') ->
    true;
subtype_of('xs:unsignedShort', 'xs:unsignedLong') ->
    true;
subtype_of('xs:unsignedShort', 'xs:nonNegativeInteger') ->
    true;
subtype_of('xs:unsignedShort', 'xs:integer') ->
    true;
subtype_of('xs:unsignedShort', 'xs:decimal') ->
    true;
subtype_of('xs:unsignedShort', 'xs:numeric') ->
    true;
subtype_of('xs:unsignedByte', 'xs:unsignedShort') ->
    true;
subtype_of('xs:unsignedByte', 'xs:unsignedInt') ->
    true;
subtype_of('xs:unsignedByte', 'xs:unsignedLong') ->
    true;
subtype_of('xs:unsignedByte', 'xs:nonNegativeInteger') ->
    true;
subtype_of('xs:unsignedByte', 'xs:integer') ->
    true;
subtype_of('xs:unsignedByte', 'xs:decimal') ->
    true;
subtype_of('xs:unsignedByte', 'xs:numeric') ->
    true;
subtype_of('xs:positiveInteger', 'xs:nonNegativeInteger') ->
    true;
subtype_of('xs:positiveInteger', 'xs:integer') ->
    true;
subtype_of('xs:positiveInteger', 'xs:decimal') ->
    true;
subtype_of('xs:positiveInteger', 'xs:numeric') ->
    true;
subtype_of(_AT, _ET) ->
    false.

castable(#{nk := _} = Seq, TargetSeqType) ->
    castable(atomize(Seq), TargetSeqType);
castable(#xqAtomicValue{} = Seq, TargetSeqType) ->
    castable([Seq], TargetSeqType);
castable(Seq, #seqType{type = Type} = TargetSeqType) ->
    case xqerl_seq3:get_seq_type(Seq) of
        #seqType{occur = one_or_many} ->
            ?FALSE;
        SeqType ->
            case seq_type_val_match(TargetSeqType, SeqType) of
                nocast ->
                    ?TRUE;
                true ->
                    try_cast(Seq, Type);
                _ ->
                    ?FALSE
            end
    end;
castable(Av, Type) ->
    case xqerl_seq3:get_seq_type(Av) of
        #seqType{occur = one_or_many} -> ?FALSE;
        _ -> try_cast(Av, Type)
    end.

%% castable([], TargetSeqType, Namespaces) ->
%%    castable(xqerl_seq3:empty(), TargetSeqType, Namespaces);
castable(#xqAtomicValue{} = Seq, TargetSeqType, Namespaces) ->
    castable([Seq], TargetSeqType, Namespaces);
castable(Seq, #seqType{type = Type} = TargetSeqType, Namespaces) ->
    case xqerl_seq3:get_seq_type(Seq) of
        #seqType{occur = one_or_many} ->
            ?FALSE;
        SeqType ->
            case seq_type_val_match(TargetSeqType, SeqType) of
                nocast ->
                    ?TRUE;
                true ->
                    try_cast(Seq, Type, Namespaces);
                _ ->
                    ?FALSE
            end
    end;
castable(Av, Type, Namespaces) ->
    case xqerl_seq3:get_seq_type(Av) of
        #seqType{occur = one_or_many} -> ?FALSE;
        #seqType{occur = zero} -> ?FALSE;
        _ -> try_cast(Av, Type, Namespaces)
    end.

try_cast(Av, Type) ->
    try
        _ = cast_as(Av, Type),
        ?TRUE
    catch
        ?ERROR_MATCH(<<"FORG0001">>) -> ?FALSE;
        ?ERROR_MATCH(<<"XPTY0004">>) -> ?FALSE;
        ?ERROR_MATCH(<<"FODT0001">>) -> ?FALSE;
        ?ERROR_MATCH(<<"FODT0002">>) -> ?FALSE;
        ?ERROR_MATCH(<<"FOCA0002">>) -> ?FALSE;
        ?ERROR_MATCH(<<"XPST0081">>) -> ?FALSE;
        _:E -> throw(E)
    end.

try_cast(Av, Type, Namespaces) ->
    try
        _ = cast_as(Av, Type, Namespaces),
        ?TRUE
    catch
        ?ERROR_MATCH(<<"FORG0001">>) -> ?FALSE;
        ?ERROR_MATCH(<<"XPTY0004">>) -> ?FALSE;
        ?ERROR_MATCH(<<"FODT0001">>) -> ?FALSE;
        ?ERROR_MATCH(<<"FODT0002">>) -> ?FALSE;
        ?ERROR_MATCH(<<"FOCA0002">>) -> ?FALSE;
        ?ERROR_MATCH(<<"XPST0081">>) -> ?FALSE;
        _:E -> throw(E)
    end.

%TODO slow fix
instance_of(_, #seqType{type = item, occur = zero_or_many}) ->
    ?TRUE;
instance_of(#range{cnt = C}, #seqType{
    type = Type,
    occur = TOccur
}) when
    C =:= 1, ?xs_integer(Type) orelse Type == item, TOccur == one;
    C =:= 1, ?xs_integer(Type) orelse Type == item, TOccur == zero_or_one;
    C =:= 0, ?xs_integer(Type) orelse Type == item, TOccur == zero_or_one;
    C > 0, ?xs_integer(Type) orelse Type == item, TOccur == one_or_many;
    ?xs_integer(Type) orelse Type == item, TOccur == zero_or_many
->
    %?dbg("range",true),
    ?TRUE;
instance_of(#range{}, _) ->
    %?dbg("range",false),
    ?FALSE;
instance_of([], #seqType{occur = TOccur}) when
    TOccur == none; TOccur == zero; TOccur == zero_or_one; TOccur == zero_or_many
->
    ?TRUE;
instance_of([], #seqType{}) ->
    ?FALSE;
instance_of([_, _ | _], #seqType{occur = TOccur}) when TOccur == one; TOccur == zero_or_one ->
    ?FALSE;
instance_of(_, #seqType{
    type = item,
    occur = TOccur
}) when TOccur == one; TOccur == one_or_many; TOccur == zero_or_one; TOccur == zero_or_many ->
    ?TRUE;
instance_of([Seq], #seqType{
    type = #kindTest{} = TType,
    occur = TOccur
}) when TOccur == one; TOccur == one_or_many; TOccur == zero_or_one; TOccur == zero_or_many ->
    instance_of1(Seq, TType);
instance_of(Seq, #seqType{
    type = #funTest{} = TType,
    occur = TOccur
}) when TOccur == one_or_many; TOccur == zero_or_many ->
    instance_of1(Seq, TType);
instance_of(Seq, #seqType{
    type = #funTest{} = TType,
    occur = TOccur
}) when TOccur == one; TOccur == zero_or_one ->
    instance_of1(Seq, TType);
instance_of(Seq, #seqType{
    type = TType,
    % nodes and maps
    occur = TOccur
}) when
    is_map(Seq), TOccur == one;
    is_map(Seq), TOccur == one_or_many;
    is_map(Seq), TOccur == zero_or_one;
    is_map(Seq), TOccur == zero_or_many
->
    instance_of1(Seq, TType);
instance_of(A, #seqType{type = TType, occur = TOccur}) when
    ?IS_ARRAY(A), TOccur == one;
    ?IS_ARRAY(A), TOccur == one_or_many;
    ?IS_ARRAY(A), TOccur == zero_or_one;
    ?IS_ARRAY(A), TOccur == zero_or_many
->
    instance_of1(A, TType);
instance_of(#xqAtomicValue{}, #seqType{type = #kindTest{}}) ->
    ?FALSE;
instance_of(#xqAtomicValue{}, #seqType{type = #funTest{}}) ->
    ?FALSE;
instance_of(Val, #seqType{type = 'xs:numeric'}) when
    is_number(Val); Val == neg_zero; Val == infinity; Val == nan; Val == neg_infinity
->
    ?TRUE;
instance_of(Val, #seqType{type = 'xs:double'}) when
    is_float(Val); Val == neg_zero; Val == infinity; Val == nan; Val == neg_infinity
->
    ?TRUE;
instance_of(Val, #seqType{type = 'xs:decimal'}) when is_integer(Val) ->
    ?TRUE;
instance_of(Val, #seqType{type = 'xs:integer'}) when is_integer(Val) ->
    ?TRUE;
instance_of(Val, #seqType{type = 'xs:string'}) when is_binary(Val) ->
    ?TRUE;
instance_of(Bool, #seqType{type = 'xs:boolean'}) when is_boolean(Bool) ->
    ?TRUE;
instance_of(Val, #seqType{type = 'xs:anyAtomicType'}) when
    is_boolean(Val); is_binary(Val); is_number(Val)
->
    ?TRUE;
instance_of(
    #xqAtomicValue{type = IType},
    #seqType{type = IType}
) ->
    ?TRUE;
instance_of(
    #xqAtomicValue{type = IType},
    #seqType{type = TType, occur = TOccur}
) when TOccur == one; TOccur == one_or_many; TOccur == zero_or_one; TOccur == zero_or_many ->
    simple_type_check(IType, TType);
instance_of([Seq], Type) ->
    instance_of(Seq, Type);
instance_of(Seq, #seqType{type = TType, occur = TOccur}) when
    is_list(Seq), TOccur == one_or_many; is_list(Seq), TOccur == zero_or_many
->
    F = fun(Item) ->
        instance_of1(Item, TType)
    end,
    lists:all(F, Seq);
instance_of(Seq, #seqType{type = TType, occur = TOccur}) when
    TOccur == one_or_many; TOccur == zero_or_many
->
    instance_of1(Seq, TType);
instance_of(_, _) ->
    ?FALSE.

simple_type_check(I, 'xs:anyAtomicType') when ?xs_anyAtomicType(I) -> ?TRUE;
simple_type_check(I, 'xs:ENTITY') when ?xs_ENTITY(I) -> ?TRUE;
simple_type_check(I, 'xs:IDREF') when ?xs_IDREF(I) -> ?TRUE;
simple_type_check(I, 'xs:NCName') when ?xs_NCName(I) -> ?TRUE;
simple_type_check(I, 'xs:NMTOKEN') when ?xs_NMTOKEN(I) -> ?TRUE;
simple_type_check(I, 'xs:Name') when ?xs_Name(I) -> ?TRUE;
simple_type_check(I, 'xs:decimal') when ?xs_decimal(I) -> ?TRUE;
simple_type_check(I, 'xs:duration') when ?xs_duration(I) -> ?TRUE;
simple_type_check(I, 'xs:int') when ?xs_int(I) -> ?TRUE;
simple_type_check(I, 'xs:integer') when ?xs_integer(I) -> ?TRUE;
simple_type_check(I, 'xs:long') when ?xs_long(I) -> ?TRUE;
simple_type_check(I, 'xs:nonNegativeInteger') when ?xs_nonNegativeInteger(I) -> ?TRUE;
simple_type_check(I, 'xs:nonPositiveInteger') when ?xs_nonPositiveInteger(I) -> ?TRUE;
simple_type_check(I, 'xs:normalizedString') when ?xs_normalizedString(I) -> ?TRUE;
simple_type_check(I, 'xs:numeric') when ?xs_numeric(I) -> ?TRUE;
simple_type_check(I, 'xs:short') when ?xs_short(I) -> ?TRUE;
simple_type_check(I, 'xs:string') when ?xs_string(I) -> ?TRUE;
simple_type_check(I, 'xs:token') when ?xs_token(I) -> ?TRUE;
simple_type_check(I, 'xs:unsignedInt') when ?xs_unsignedInt(I) -> ?TRUE;
simple_type_check(I, 'xs:unsignedLong') when ?xs_unsignedLong(I) -> ?TRUE;
simple_type_check(I, 'xs:unsignedShort') when ?xs_unsignedShort(I) -> ?TRUE;
simple_type_check(_, _) -> ?FALSE.

check_param_types(_Params, any) ->
    true;
check_param_types(Params, Params) ->
    true;
check_param_types(Params, TargetParams) ->
    try
        Zipped = lists:zip(Params, TargetParams),
        %?dbg("Zipped",Zipped),
        lists:all(
            fun
                ({#seqType{type = #kindTest{}} = P, #seqType{type = #kindTest{}} = T}) ->
                    kind_test_match(P, T);
                ({#seqType{type = #kindTest{}}, #seqType{type = item}}) ->
                    false;
                ({#seqType{type = #funTest{}} = P, #seqType{type = #funTest{}} = T}) ->
                    fun_test_match(P, T);
                ({#seqType{type = P}, #seqType{type = T}}) ->
                    P == T orelse subtype_of(T, P)
                %P == T orelse subtype_of(P, T)
            end,
            Zipped
        )
    catch
        _:_ ->
            false
    end.

%TODO - do something
check_annotations(_Annos, []) -> true;
check_annotations(_Annos, _TargetAnnos) -> true.

%TODO - do something
check_return_type(_Type, any) ->
    true;
check_return_type(#seqType{type = Type}, #seqType{type = ReturnType}) ->
    %?dbg("{Type, ReturnType}",{Type, ReturnType}),
    subtype_of(Type, ReturnType).

instance_of1(Bool, 'xs:boolean') when is_boolean(Bool) ->
    true;
instance_of1(Bool, 'xs:anyAtomicType') when is_boolean(Bool) ->
    true;
instance_of1(#xqAtomicValue{}, 'xs:anyAtomicType') ->
    true;
instance_of1(#range{}, 'xs:anyAtomicType') ->
    true;
instance_of1(#range{}, T) when ?xs_integer(T) ->
    true;
instance_of1(#{nk := _}, #kindTest{kind = node}) ->
    true;
instance_of1(
    #{nk := document} = Node,
    #kindTest{
        kind = 'document-node',
        name = Qn,
        type = Ty
    }
) ->
    Norm = norm_name_type(Qn, Ty),
    case xqldb_xpath:self_document_node(Node, {Norm, []}) of
        [] ->
            false;
        _ ->
            true
    end;
instance_of1(
    #{
        nk := element,
        nn := {Ns, _, Ln}
    } = _Node,
    #kindTest{
        kind = element,
        name = Qn,
        type = Ty
    }
) ->
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
instance_of1(
    #{
        nk := attribute,
        nn := {Ns, _, Ln}
    } = Node,
    #kindTest{
        kind = attribute,
        name = Qn,
        type = Ty
    }
) ->
    case norm_name_type(Qn, Ty) of
        {'_', '_', '_'} ->
            true;
        {'_', '_', 'xs:untypedAtomic'} ->
            true;
        {'_', Ln, '_'} ->
            true;
        {'_', Ln, 'xs:untypedAtomic'} ->
            true;
        {Ns, '_', '_'} ->
            true;
        {Ns, '_', 'xs:untypedAtomic'} ->
            true;
        {Ns, Ln, '_'} ->
            true;
        {Ns, Ln, 'xs:untypedAtomic'} ->
            true;
        _ when is_map_key(tn, Node) ->
            maps:get(tn, Node) == Ty;
        _ ->
            false
    end;
instance_of1(
    #{
        nk := 'processing-instruction',
        nn := {_, _, NLn}
    },
    #kindTest{
        kind = 'processing-instruction',
        name = ?XAV('xs:QName', #qname{local_name = Ln})
    }
) ->
    case {NLn, Ln} of
        {Ln, Ln} -> true;
        {Ln, <<"*">>} -> true;
        _ -> false
    end;
instance_of1(
    #{nk := 'processing-instruction'},
    #kindTest{kind = 'processing-instruction'}
) ->
    true;
instance_of1(_, #kindTest{kind = 'processing-instruction'}) ->
    false;
instance_of1(#{nk := namespace}, #kindTest{kind = namespace}) ->
    true;
instance_of1(_, #kindTest{kind = namespace}) ->
    false;
instance_of1(#{nk := comment}, #kindTest{kind = comment}) ->
    true;
instance_of1(_, #kindTest{kind = comment}) ->
    false;
instance_of1(#{nk := text}, #kindTest{kind = text}) ->
    true;
instance_of1(_, #kindTest{kind = text}) ->
    false;
%% #kindTest{kind = 'schema-element',   name = WQName}.
%% #kindTest{kind = 'schema-attribute', name = WQName}.

%% #funTest{kind = function, annotations = AnnoList, params = any | ListOfSeqTypes, type = any | SeqType} .
%% #funTest{kind = map, params = any | #seqType{type = BType, occur = one}, type = any | SeqType} .
%% #funTest{kind = array, params = any, type = any | SeqType} .

instance_of1(Fun, #funTest{
    kind = function,
    annotations = _AnnoList,
    params = any,
    type = any
}) when is_function(Fun); is_map(Fun) ->
    true;
instance_of1(
    #xqFunction{
        annotations = Annos,
        params = Params,
        type = Type
    },
    #funTest{
        kind = function,
        annotations = AnnoList,
        params = ListOfSeqTypes,
        type = SeqType
    }
) ->
    AnnoOk = check_annotations(Annos, AnnoList),
    ParamOk = check_param_types(Params, ListOfSeqTypes),
    TypeOk = check_return_type(Type, SeqType),
    AnnoOk andalso ParamOk andalso TypeOk;
instance_of1(Map, #funTest{
    kind = function,
    type = SeqType
}) when is_map(Map) ->
    % map is function(anyAtomic,V)
    instance_of1(Map, #funTest{
        kind = map,
        params = [
            #seqType{
                type = 'xs:anyAtomicType',
                occur = one
            }
        ],
        type = SeqType
    });
instance_of1(Map, #funTest{
    kind = map,
    params = any
}) when is_map(Map) ->
    true;
instance_of1(Map, #funTest{
    kind = map,
    params = [Param],
    type = SeqType
}) when is_map(Map) ->
    KVs = maps:values(Map),
    lists:all(
        fun({K, V}) ->
            instance_of(K, Param) == ?TRUE andalso
                instance_of(V, SeqType) == ?TRUE
        end,
        KVs
    );
% array is always function with single integer param
instance_of1(A, #funTest{
    kind = function,
    params = [
        #seqType{
            type = 'xs:integer',
            occur = one
        }
    ]
}) when ?IS_ARRAY(A) ->
    % array is a function arity 1
    true;
instance_of1(A, #funTest{kind = function, params = SeqType}) when ?IS_ARRAY(A) ->
    instance_of1(A, #funTest{kind = array, type = SeqType});
instance_of1(A, #funTest{kind = array, type = any}) when ?IS_ARRAY(A) ->
    true;
instance_of1(A, #funTest{kind = array, type = SeqType}) when ?IS_ARRAY(A) ->
    lists:all(
        fun(AI) ->
            instance_of(AI, SeqType) == ?TRUE
        %check_return_type(get_list_type(AI), SeqType)
        end,
        array:to_list(A)
    );
instance_of1(Seq, Type) when is_list(Seq) ->
    F = fun(Item) ->
        instance_of1(Item, Type)
    end,
    lists:all(F, Seq);
instance_of1(Seq, Type) ->
    IType = get_item_type(Seq),
    TType = get_type(Type),
    case IType == TType of
        true ->
            true;
        false ->
            Key = {?MODULE, ?FUNCTION_NAME, IType, TType},
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

get_type(#seqType{type = Type}) ->
    get_type(Type);
get_type(Type) when is_atom(Type) ->
    Type;
get_type(#kindTest{kind = Type}) ->
    Type;
get_type(#funTest{kind = Type}) ->
    Type.

get_item_type(Val) when is_binary(Val) ->
    'xs:string';
get_item_type(Val) when is_integer(Val) ->
    'xs:integer';
get_item_type(Val) when is_boolean(Val) ->
    'xs:boolean';
get_item_type(Val) when is_float(Val) ->
    'xs:double';
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
get_item_type(A) when ?IS_ARRAY(A) ->
    array;
get_item_type(_) ->
    %?dbg("get_item_type",O),
    item.

%% get_list_type([]) -> #seqType{type = 'empty-sequence', occur = zero};
%% get_list_type([S]) -> #seqType{type = get_item_type(S),occur = one};
%% get_list_type(Types) when is_list(Types) ->
%%    get_list_type(Types, []);
%% get_list_type(S) -> #seqType{type = get_item_type(S),occur = one}.
%%
%% get_list_type([], []) ->
%%    #seqType{type = 'empty-sequence', occur = zero};
%% get_list_type([], BType) ->
%%    #seqType{type = xqerl_btypes:get_type(BType), occur = one_or_many};
%% get_list_type([undefined|Types], Acc) ->
%%    get_list_type(Types, Acc);
%% get_list_type([H|Types], []) ->
%%    if H == [] ->
%%          get_list_type(Types, []);
%%       is_list(H) ->
%%          #seqType{type = H1} = get_list_type(H, []),
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

% dialyzer % type_check(#seqType{}, undefined) -> true;
% dialyzer % type_check(undefined, #seqType{}) -> true;
type_check(#seqType{}, any) ->
    true;
type_check(any, #seqType{}) ->
    true;
type_check(#seqType{type = Type} = T1, #seqType{type = TargetType} = T2) ->
    case seq_type_val_match(T2, T1) of
        nocast ->
            true;
        _ ->
            %?dbg("subtype_of(TargetType, Type)",{TargetType, Type}),
            subtype_of(Type, TargetType) orelse subtype_of(TargetType, Type)
    end;
type_check(_, _) ->
    false.

param_check(_, any) -> true;
param_check(any, _) -> true;
param_check([], []) -> true;
param_check([A | L1], [B | L2]) -> type_check(A, B) andalso param_check(L1, L2);
param_check(_, _) -> false.

fun_check(
    #funTest{
        kind = function,
        name = Name1,
        type = RetType1,
        params = Params1
    },
    #funTest{
        kind = function,
        name = Name2,
        type = RetType2,
        params = Params2
    }
) ->
    % this should only fail if the 1st function cannot take the types of the 2nd
    NameCheck = has_name(Name2, Name1),
    %?dbg(?LINE, {NameCheck, Name1, Name2}),
    TypeCheck = type_check(RetType1, RetType2),
    %?dbg(?LINE, {TypeCheck, RetType1, RetType2}),
    ParamCheck = param_check(Params1, Params2),
    %?dbg(?LINE, {ParamCheck, Params1, Params2}),
    NameCheck andalso TypeCheck andalso ParamCheck;
fun_check(#funTest{}, #funTest{}) ->
    false.

cast_as_string([]) ->
    [];
% only singleton
cast_as_string(L) when is_list(L) ->
    ?err('XPTY0004');
cast_as_string(Str) when is_binary(Str) ->
    Str;
cast_as_string(Int) when is_integer(Int) ->
    integer_to_binary(Int);
cast_as_string(?XAV(IntType, Val)) when ?xs_integer(IntType) ->
    cast_as_string(Val);
cast_as_string(?XAV('xs:untypedAtomic', Val)) ->
    Val;
cast_as_string(true) ->
    <<"true">>;
cast_as_string(false) ->
    <<"false">>;
cast_as_string(?XAV('xs:anyURI', <<>>)) ->
    <<>>;
cast_as_string(?XAV('xs:anyURI', Val)) ->
    xqerl_lib:decode_string(Val);
cast_as_string(?XAV('xs:base64Binary', Val)) ->
    b64bin_to_str(Val);
cast_as_string(?XAV(_, #xsDateTime{string_value = Val})) ->
    Val;
cast_as_string(?XAV('xs:decimal', Val)) ->
    xqerl_numeric:string(Val);
cast_as_string(infinity) ->
    <<"INF">>;
cast_as_string(neg_infinity) ->
    <<"-INF">>;
cast_as_string(neg_zero) ->
    <<"-0">>;
cast_as_string(nan) ->
    <<"NaN">>;
cast_as_string(Dbl) when is_float(Dbl) ->
    xqerl_numeric:string(Dbl);
cast_as_string(?XAV('xs:float', infinity)) ->
    <<"INF">>;
cast_as_string(?XAV('xs:float', neg_infinity)) ->
    <<"-INF">>;
cast_as_string(?XAV('xs:float', neg_zero)) ->
    <<"-0">>;
cast_as_string(?XAV('xs:float', nan)) ->
    <<"NaN">>;
cast_as_string(?XAV('xs:float', Val)) ->
    xqerl_numeric:float_string(Val);
cast_as_string(?XAV('xs:hexBinary', Val)) ->
    hexbin_to_str(Val);
cast_as_string(?XAV('xs:NMTOKEN', Val)) ->
    Val;
cast_as_string(?XAV('xs:Name', Val)) ->
    Val;
cast_as_string(?XAV('xs:NCName', Val)) ->
    Val;
cast_as_string(?XAV('xs:ID', Val)) ->
    Val;
cast_as_string(?XAV('xs:IDREF', Val)) ->
    Val;
cast_as_string(?XAV('xs:ENTITY', Val)) ->
    Val;
cast_as_string(?XAV('xs:NOTATION', #qname{prefix = <<>>, local_name = L})) ->
    L;
cast_as_string(?XAV('xs:NOTATION', #qname{prefix = P, local_name = L})) ->
    <<P/binary, ":", L/binary>>;
cast_as_string(?XAV('xs:QName', #qname{prefix = <<>>, local_name = L})) ->
    L;
cast_as_string(?XAV('xs:QName', #qname{prefix = P, local_name = L})) when is_atom(P) ->
    L;
cast_as_string(?XAV('xs:QName', #qname{prefix = P, local_name = L})) ->
    <<P/binary, ":", L/binary>>;
cast_as_string(?XAV('xs:token', Val)) ->
    Val;
cast_as_string(?XAV('xs:normalizedString', Val)) ->
    Val;
cast_as_string(?XAV('xs:language', Val)) ->
    Val.

cast_from_string('xs:anyURI', <<>>) ->
    ?XAV('xs:anyURI', <<>>);
% MAYBE castable
cast_from_string('xs:anyURI', Val) ->
    case xqerl_lib:check_uri_string(Val) of
        {error, Err} ->
            ?dbg("Err", Err),
            ?err('FORG0001');
        Uri ->
            ?XAV('xs:anyURI', Uri)
    end;
% MAYBE castable
cast_from_string('xs:base64Binary', Val) ->
    ?XAV('xs:base64Binary', str_to_b64bin(xqerl_lib:trim(Val)));
% MAYBE castable
cast_from_string('xs:boolean', Val) ->
    case xqerl_lib:trim(Val) of
        <<"true">> -> true;
        <<"false">> -> false;
        <<"1">> -> true;
        <<"0">> -> false;
        _ -> ?err('FORG0001')
    end;
%% In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types
%% derived from these), if the value is too large or too small to be
%% represented by the implementation, a dynamic error [err:FODT0001] is raised.

% MAYBE castable
cast_from_string('xs:date', Val) ->
    xqerl_datetime:string_to_date(Val);
% MAYBE castable
cast_from_string('xs:dateTime', Val) ->
    xqerl_datetime:string_to_dateTime(Val);
%% In casting to a duration value, if the value is too large or too small to
%% be represented by the implementation, a dynamic error [err:FODT0002] is
%% raised.

% MAYBE castable
cast_from_string('xs:dayTimeDuration', Val) ->
    xqerl_datetime:string_to_dayTimeDuration(Val);
%% In casting to xs:decimal or to a type derived from xs:decimal, if the value
%% is not too large or too small but nevertheless cannot be represented
%% accurately with the number of decimal digits available to the
%% implementation, the implementation may round to the nearest representable
%% value or may raise a dynamic error [err:FOCA0006]. The choice of rounding
%% algorithm and the choice between rounding and error behavior and is
%% implementation-defined.

% MAYBE castable
cast_from_string('xs:decimal', Val) ->
    Val1 = xqerl_lib:trim(Val),
    try
        NNum = xqerl_numeric:decimal(Val1),
        ?XAV('xs:decimal', NNum)
    catch
        _:_ -> ?err('FORG0001')
    end;
% MAYBE castable
cast_from_string('xs:numeric', Val) ->
    xqerl_numeric:double(Val);
% MAYBE castable
cast_from_string('xs:double', Val) ->
    xqerl_numeric:double(Val);
%% In casting to a duration value, if the value is too large or too small to be represented
%% by the implementation, a dynamic error [err:FODT0002] is raised.

% MAYBE castable
cast_from_string('xs:duration', Val) ->
    xqerl_datetime:string_to_duration(Val);
% MAYBE castable
cast_from_string('xs:float', Val) ->
    % xs:float is a 32 bit xs:double
    case cast_from_string('xs:double', Val) of
        DblVal when is_float(DblVal), DblVal < ?MINFLOAT ->
            ?XAV('xs:float', neg_infinity);
        DblVal when is_float(DblVal), DblVal > ?MAXFLOAT ->
            ?XAV('xs:float', infinity);
        DblVal when is_float(DblVal) ->
            case abs(DblVal) < ?MAXFLOATPREC of
                true -> ?XAV('xs:float', 0.0);
                false -> ?XAV('xs:float', xqerl_numeric:float(DblVal))
            end;
        DblVal ->
            ?XAV('xs:float', DblVal)
    end;
% MAYBE castable
cast_from_string('xs:gDay', Val) ->
    xqerl_datetime:string_to_gDay(Val);
% MAYBE castable
cast_from_string('xs:gMonth', Val) ->
    xqerl_datetime:string_to_gMonth(Val);
% MAYBE castable
cast_from_string('xs:gMonthDay', Val) ->
    xqerl_datetime:string_to_gMonthDay(Val);
%In casting to xs:date, xs:dateTime, xs:gYear, or xs:gYearMonth (or types derived from these),
%% if the value is too large or too small to be represented by the implementation,
%% a dynamic error [err:FODT0001] is raised.

% MAYBE castable
cast_from_string('xs:gYear', Val) ->
    xqerl_datetime:string_to_gYear(Val);
% MAYBE castable
cast_from_string('xs:gYearMonth', Val) ->
    xqerl_datetime:string_to_gYearMonth(Val);
cast_from_string('xs:hexBinary', <<>>) ->
    ?XAV('xs:hexBinary', <<>>);
% MAYBE castable
cast_from_string('xs:hexBinary', Val) ->
    Val1 = xqerl_lib:trim(Val),
    case
        erlang:size(Val1) rem 2 =/= 0 orelse
            [
                C
                || <<C/utf8>> <= Val1,
                   not (C >= 48 andalso C =< 57),
                   not (C >= 65 andalso C =< 90),
                   not (C >= 97 andalso C =< 102)
            ] /= []
    of
        true ->
            ?err('FORG0001');
        _ ->
            try
                ?XAV('xs:hexBinary', str_to_hexbin(Val1))
            catch
                _:_ -> ?err('FORG0001')
            end
    end;
% MAYBE castable
cast_from_string('xs:integer', Val) ->
    try
        binary_to_integer(xqerl_lib:trim(Val))
    catch
        _:_ -> ?err('FORG0001')
    end;
% MAYBE castable
cast_from_string(IntType, Val) when ?xs_integer(IntType) ->
    IntVal = cast_from_string('xs:integer', Val),
    cast_as(IntVal, IntType);
% MAYBE castable
cast_from_string('xs:NCName', Val) ->
    StrVal = value(cast_from_string('xs:Name', Val)),
    _ = [?err('FORG0001') || <<":">> <= StrVal],
    ?XAV('xs:NCName', StrVal);
cast_from_string('xs:Name', Val) ->
    StrVal = value(cast_from_string('xs:token', Val)),
    case xqerl_lib:is_valid_name(StrVal) of
        true ->
            ?XAV('xs:Name', StrVal);
        false ->
            ?err('FORG0001')
    end;
cast_from_string('xs:ID', Val) ->
    StrVal = value(cast_from_string('xs:NCName', Val)),
    ?XAV('xs:ID', StrVal);
cast_from_string('xs:IDREF', Val) ->
    StrVal = value(cast_from_string('xs:NCName', Val)),
    ?XAV('xs:IDREF', StrVal);
cast_from_string('xs:IDREFS', Val) ->
    case value(cast_from_string('xs:token', Val)) of
        <<>> ->
            ?err('FORG0001');
        StrVal ->
            Tokens = string:split(StrVal, " ", all),
            lists:map(
                fun(Tok) ->
                    ?XAV('xs:IDREF', Tok)
                end,
                Tokens
            )
    end;
cast_from_string('xs:ENTITY', Val) ->
    StrVal = value(cast_from_string('xs:NCName', Val)),
    ?XAV('xs:ENTITY', StrVal);
cast_from_string('xs:ENTITIES', Val) ->
    Map = fun(Tok) ->
        case xqerl_lib:is_valid_token(Tok) of
            true ->
                ?XAV('xs:ENTITY', Tok);
            false ->
                ?err('FORG0001')
        end
    end,
    case value(cast_from_string('xs:token', Val)) of
        <<>> ->
            ?err('FORG0001');
        StrVal ->
            Tokens = string:split(StrVal, " ", all),
            lists:map(Map, Tokens)
    end;
cast_from_string('xs:NMTOKEN', Val) ->
    StrVal = value(cast_from_string('xs:token', Val)),
    case xqerl_lib:is_valid_token(StrVal) of
        true ->
            ?XAV('xs:NMTOKEN', StrVal);
        false ->
            ?err('FORG0001')
    end;
cast_from_string('xs:NMTOKENS', Val) ->
    StrVal = value(cast_from_string('xs:token', Val)),
    case xqerl_lib:is_valid_tokens(StrVal) of
        true ->
            Tokens = string:split(StrVal, " ", all),
            lists:map(
                fun(Tok) ->
                    ?XAV('xs:NMTOKEN', Tok)
                end,
                Tokens
            );
        false ->
            ?err('FORG0001')
    end;
cast_from_string('xs:language', Val) ->
    StrVal = value(cast_from_string('xs:token', Val)),
    case re:run(StrVal, "^[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*$", [unicode]) of
        nomatch ->
            ?err('FORG0001');
        _ ->
            ?XAV('xs:language', StrVal)
    end;
cast_from_string('xs:token', Val) ->
    StrVal = value(cast_from_string('xs:normalizedString', Val)),
    Token = xqerl_lib:normalize_spaces(StrVal),
    ?XAV('xs:token', Token);
cast_from_string('xs:normalizedString', Val) ->
    Norm = xqerl_lib:normalize_string(Val),
    ?XAV('xs:normalizedString', Norm);
% MAYBE castable
cast_from_string('xs:time', Val) ->
    xqerl_datetime:string_to_time(Val);
%% In casting to a duration value, if the value is too large or too small to be represented by the
%% implementation, a dynamic error [err:FODT0002] is raised.

% MAYBE castable
cast_from_string('xs:yearMonthDuration', Val) ->
    xqerl_datetime:string_to_yearMonthDuration(Val);
cast_from_string(T, _) ->
    maybe_unknown_type_error(T).

maybe_unknown_type_error(T) ->
    case is_known_type(T) of
        true ->
            ?err('XPTY0004');
        _ ->
            ?dbg("T", T),
            ?err('XQST0052')
    end.

cast_from_integer('xs:double', IntVal) ->
    xqerl_numeric:double(IntVal);
cast_from_integer('xs:float', IntVal) ->
    ?XAV('xs:float', xqerl_numeric:float(IntVal));
cast_from_integer('xs:decimal', IntVal) ->
    ?XAV('xs:decimal', xqerl_numeric:decimal(IntVal));
cast_from_integer('xs:integer', IntVal) ->
    IntVal;
cast_from_integer('xs:long', IntVal) when
    IntVal > 9223372036854775807; IntVal < -9223372036854775808
->
    ?err('FORG0001');
cast_from_integer('xs:long', IntVal) ->
    ?XAV('xs:long', IntVal);
cast_from_integer('xs:unsignedLong', IntVal) when IntVal > 18446744073709551615; IntVal < 0 ->
    ?err('FORG0001');
cast_from_integer('xs:unsignedLong', IntVal) ->
    ?XAV('xs:unsignedLong', IntVal);
cast_from_integer('xs:int', IntVal) when IntVal > 2147483647; IntVal < -2147483648 ->
    ?err('FORG0001');
cast_from_integer('xs:int', IntVal) ->
    ?XAV('xs:int', IntVal);
cast_from_integer('xs:unsignedInt', IntVal) when IntVal > 4294967295; IntVal < 0 ->
    ?err('FORG0001');
cast_from_integer('xs:unsignedInt', IntVal) ->
    ?XAV('xs:unsignedInt', IntVal);
cast_from_integer('xs:short', IntVal) when IntVal > 32767; IntVal < -32768 ->
    ?err('FORG0001');
cast_from_integer('xs:short', IntVal) ->
    ?XAV('xs:short', IntVal);
cast_from_integer('xs:unsignedShort', IntVal) when IntVal > 65535; IntVal < 0 ->
    ?err('FORG0001');
cast_from_integer('xs:unsignedShort', IntVal) ->
    ?XAV('xs:unsignedShort', IntVal);
cast_from_integer('xs:byte', IntVal) when IntVal > 127; IntVal < -128 ->
    ?err('FORG0001');
cast_from_integer('xs:byte', IntVal) ->
    ?XAV('xs:byte', IntVal);
cast_from_integer('xs:unsignedByte', IntVal) when IntVal > 255; IntVal < 0 ->
    ?err('FORG0001');
cast_from_integer('xs:unsignedByte', IntVal) ->
    ?XAV('xs:unsignedByte', IntVal);
cast_from_integer('xs:positiveInteger', IntVal) when IntVal < 1 ->
    ?err('FORG0001');
cast_from_integer('xs:positiveInteger', IntVal) ->
    ?XAV('xs:positiveInteger', IntVal);
cast_from_integer('xs:nonPositiveInteger', IntVal) when IntVal > 0 ->
    ?err('FORG0001');
cast_from_integer('xs:nonPositiveInteger', IntVal) ->
    ?XAV('xs:nonPositiveInteger', IntVal);
cast_from_integer('xs:nonNegativeInteger', IntVal) when IntVal < 0 ->
    ?err('FORG0001');
cast_from_integer('xs:nonNegativeInteger', IntVal) ->
    ?XAV('xs:nonNegativeInteger', IntVal);
cast_from_integer('xs:negativeInteger', IntVal) when IntVal > -1 ->
    ?err('FORG0001');
cast_from_integer('xs:negativeInteger', IntVal) ->
    ?XAV('xs:negativeInteger', IntVal);
cast_from_integer('xs:boolean', 0) ->
    ?FALSE;
cast_from_integer('xs:boolean', _) ->
    ?TRUE;
cast_from_integer(T, _) ->
    maybe_unknown_type_error(T).

cast_as(#xqAtomicValue{type = Type} = ST, 'xs:numeric') when ?xs_numeric(Type) ->
    ST;
cast_as(Val, 'xs:numeric') when Val == nan; Val == neg_zero; Val == neg_infinity; Val == infinity ->
    Val;
cast_as(ST, 'xs:numeric') when is_number(ST) ->
    ST;
cast_as(ST, 'xs:numeric') when is_boolean(ST); is_binary(ST) ->
    cast_as(ST, 'xs:double');
cast_as(#xqAtomicValue{type = 'xs:untypedAtomic'} = ST, 'xs:numeric') ->
    cast_as(ST, 'xs:double');
cast_as(#xqAtomicValue{}, 'xs:numeric') ->
    ?err('XPTY0004');
cast_as(Flt, 'xs:double') when is_float(Flt) ->
    Flt;
cast_as(Val, 'xs:double') when Val == nan; Val == neg_zero; Val == neg_infinity; Val == infinity ->
    Val;
cast_as(Bin, 'xs:string') when is_binary(Bin) ->
    Bin;
cast_as(true, 'xs:boolean') ->
    true;
cast_as(false, 'xs:boolean') ->
    false;
cast_as(Int, 'xs:integer') when is_integer(Int) ->
    Int;
cast_as([At], TT) ->
    cast_as(At, TT);
cast_as(#{nk := _} = N, 'xs:string') ->
    cast_as(atomize(N), 'xs:string');
cast_as(Any, 'xs:string') ->
    cast_as_string(Any);
cast_as(Any, 'xs:untypedAtomic') ->
    ?XAV('xs:untypedAtomic', cast_as_string(Any));
cast_as(String, Type) when is_binary(String), is_atom(Type) ->
    cast_from_string(Type, String);
cast_as(?XAV('xs:untypedAtomic', String), Type) when is_binary(String), is_atom(Type) ->
    cast_from_string(Type, String);
% string subtypes
cast_as(Any, StringType) when ?xs_string(StringType) ->
    StrVal = cast_as_string(Any),
    cast_from_string(StringType, StrVal);
% integer does not handle string types, so string checks happen first
cast_as(#xqAtomicValue{type = IntType, value = IntVal}, TT) when
    ?xs_integer(IntType), is_atom(TT)
->
    cast_from_integer(TT, IntVal);
cast_as(IntVal, TT) when is_integer(IntVal), is_atom(TT) ->
    cast_from_integer(TT, IntVal);
cast_as(Val, 'xs:float') when Val == nan; Val == neg_zero; Val == neg_infinity; Val == infinity ->
    ?XAV('xs:float', Val);
cast_as(Val, 'xs:float') when is_float(Val), Val < ?MINFLOAT ->
    ?XAV('xs:float', neg_infinity);
cast_as(Val, 'xs:float') when is_float(Val), Val > ?MAXFLOAT ->
    ?XAV('xs:float', infinity);
cast_as(Val, 'xs:float') when is_float(Val), abs(Val) < ?MAXFLOATPREC ->
    ?XAV('xs:float', 0.0);
cast_as(Val, 'xs:float') when is_float(Val) ->
    ?XAV('xs:float', xqerl_numeric:float(Val));
cast_as(Val, DecType) when
    ?xs_decimal(DecType), Val == nan;
    ?xs_decimal(DecType), Val == neg_infinity;
    ?xs_decimal(DecType), Val == infinity
->
    % MAYBE castable
    ?err('FOCA0002');
cast_as(neg_zero, 'xs:boolean') ->
    ?FALSE;
cast_as(neg_zero, 'xs:integer') ->
    0;
cast_as(neg_zero, 'xs:decimal') ->
    ?XAV('xs:decimal', xqerl_numeric:decimal(0));
cast_as(0.0, 'xs:boolean') ->
    ?FALSE;
cast_as(nan, 'xs:boolean') ->
    ?FALSE;
cast_as(Val, 'xs:boolean') when is_float(Val) ->
    ?TRUE;
cast_as(Val, 'xs:integer') when is_float(Val) ->
    trunc(Val);
cast_as(Val, 'xs:decimal') when is_float(Val) ->
    ?XAV('xs:decimal', xqerl_numeric:decimal(Val));
cast_as(nan, IntType) when ?xs_integer(IntType) ->
    ?err('FOCA0002');
cast_as(neg_infinity, IntType) when ?xs_integer(IntType) ->
    ?err('FOCA0002');
cast_as(infinity, IntType) when ?xs_integer(IntType) ->
    ?err('FOCA0002');
cast_as(neg_zero, IntType) when ?xs_integer(IntType) ->
    cast_from_integer(IntType, 0);
% MAYBE castable
cast_as(Val, IntType) when is_float(Val), ?xs_integer(IntType) ->
    cast_from_integer(IntType, trunc(Val));
cast_as([], 'xs:double') ->
    [];
cast_as(?TRUE, 'xs:double') ->
    xqerl_numeric:double(1);
cast_as(?FALSE, 'xs:double') ->
    xqerl_numeric:double(0);
cast_as(?XAV('xs:decimal', Val), 'xs:double') ->
    xqerl_numeric:double(Val);
cast_as(Val, 'xs:double') when is_integer(Val) ->
    xqerl_numeric:double(Val);
cast_as(#xqAtomicValue{type = IntType, value = IntVal}, 'xs:double') when ?xs_integer(IntType) ->
    xqerl_numeric:double(IntVal);
cast_as(Val, 'xs:boolean') when is_integer(Val) ->
    ?TRUE;
cast_as(Val, 'xs:decimal') when is_integer(Val) ->
    ?XAV('xs:decimal', xqerl_numeric:decimal(Val));
cast_as(Val, 'xs:float') when is_integer(Val) ->
    ?XAV('xs:float', xqerl_numeric:float(Val));
cast_as(#xqAtomicValue{type = IntType, value = IntVal}, 'xs:float') when ?xs_integer(IntType) ->
    ?XAV('xs:float', xqerl_numeric:float(IntVal));
cast_as([], #seqType{occur = one}) ->
    ?err('XPTY0004');
cast_as(Seq, #seqType{type = T, occur = one}) ->
    cast_as(Seq, T);
cast_as([], #seqType{occur = zero_or_one}) ->
    [];
cast_as(Seq, #seqType{type = T, occur = zero_or_one}) ->
    cast_as(Seq, T);
cast_as(At, []) ->
    At;
cast_as(At, #seqType{type = item}) ->
    At;
cast_as(At, 'item') ->
    At;
cast_as(#{nk := _} = N, #seqType{type = 'xs:anyAtomicType'}) ->
    atomize(N);
cast_as(#{nk := _} = N, 'xs:anyAtomicType') ->
    atomize(N);
cast_as([], 'empty-sequence') ->
    [];
cast_as(_, 'empty-sequence') ->
    ?err('XPTY0004');
cast_as([], #seqType{type = 'empty-sequence'}) ->
    [];
cast_as(_, #seqType{type = 'empty-sequence'}) ->
    ?err('XPTY0004');
cast_as([], 'xs:error') ->
    [];
% $x cast as xs:error fails dynamically with error [err:FORG0001]FO31,
% regardless of the value of $x
cast_as(_, 'xs:error') ->
    ?err('FORG0001');
% QName hack
cast_as(#qname{} = Q, 'xs:QName') ->
    ?XAV('xs:QName', Q);
cast_as(#qname{} = Val, Type) ->
    cast_as(#xqAtomicValue{type = 'xs:QName', value = Val}, Type);
cast_as(#xqFunction{}, _) ->
    ?err('FOTY0013');
cast_as(Fx, _) when is_function(Fx) ->
    ?err('FOTY0013');
cast_as(#xqAtomicValue{} = At, #seqType{type = Type}) ->
    cast_as(At, Type);
cast_as(#{nk := _} = At, #kindTest{kind = node}) ->
    At;
cast_as(#{nk := _} = At, TT) ->
    %?dbg("TT",TT),
    Atomized = atomize(At),
    %?dbg("Atomized",Atomized),
    cast_as(Atomized, TT);
cast_as([], 'xs:anyURI') ->
    [];
cast_as([], 'xs:NCName') ->
    [];
cast_as([], 'xs:language') ->
    [];
cast_as([], 'xs:hexBinary') ->
    [];
cast_as([], 'xs:base64Binary') ->
    [];
cast_as([], 'xs:float') ->
    [];
cast_as([], 'xs:date') ->
    [];
cast_as([], 'xs:time') ->
    [];
cast_as([], 'xs:dateTime') ->
    [];
% force float to cast. forces into 32 bit
cast_as(#xqAtomicValue{type = Type, value = _} = ST, Type) when Type /= 'xs:float' ->
    ST;
cast_as(?XAV('xs:base64Binary', Val), 'xs:hexBinary') ->
    ?XAV('xs:hexBinary', b64bin_to_hexbin(Val));
cast_as(Bool, 'xs:boolean') when is_boolean(Bool) ->
    Bool;
cast_as(?TRUE, 'xs:decimal') ->
    ?XAV('xs:decimal', xqerl_numeric:decimal(1));
cast_as(?FALSE, 'xs:decimal') ->
    ?XAV('xs:decimal', xqerl_numeric:decimal(0));
cast_as(?TRUE, 'xs:float') ->
    ?XAV('xs:float', xqerl_numeric:float(1));
cast_as(?FALSE, 'xs:float') ->
    ?XAV('xs:float', xqerl_numeric:float(0));
cast_as(?TRUE, 'xs:integer') ->
    1;
cast_as(?FALSE, Integer) when ?xs_integer(Integer) ->
    cast_as(0, Integer);
cast_as(?TRUE, Integer) when ?xs_integer(Integer) ->
    cast_as(1, Integer);
cast_as(?XAV('xs:date', Val), 'xs:dateTime') ->
    Rec = zero_time(Val),
    Str = xqerl_datetime:to_string(Rec, 'xs:dateTime'),
    ?XAV('xs:dateTime', set_date_string(Rec, Str));
cast_as(?XAV('xs:date', Val), 'xs:gDay') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0,
        month = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gDay'),
    ?XAV('xs:gDay', set_date_string(Rec, Str));
cast_as(?XAV('xs:date', Val), 'xs:gMonth') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0,
        day = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gMonth'),
    ?XAV('xs:gMonth', set_date_string(Rec, Str));
cast_as(?XAV('xs:date', Val), 'xs:gMonthDay') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gMonthDay'),
    ?XAV('xs:gMonthDay', set_date_string(Rec, Str));
cast_as(?XAV('xs:date', Val), 'xs:gYear') ->
    Rec = Val#xsDateTime{
        month = 0,
        day = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gYear'),
    ?XAV('xs:gYear', set_date_string(Rec, Str));
cast_as(?XAV('xs:date', Val), 'xs:gYearMonth') ->
    Rec = Val#xsDateTime{day = 0},
    Str = xqerl_datetime:to_string(Rec, 'xs:gYearMonth'),
    ?XAV('xs:gYearMonth', set_date_string(Rec, Str));
cast_as(?XAV('xs:dateTime', Val), 'xs:date') ->
    Rec = zero_time(Val),
    Str = xqerl_datetime:to_string(Rec, 'xs:date'),
    ?XAV('xs:date', set_date_string(Rec, Str));
%% cast_as( #xqAtomicValue{type = 'xs:dateTime', value = Val},
%%          'xs:dateTimeStamp' ) ->
%%    Off = Val#xsDateTime.offset,
%%    if Off == [] ->
%%          ?err('FORG0001');
%%       true ->
%%          #xqAtomicValue{type = 'xs:dateTimeStamp',
%%                         value = Val}
%%    end;
cast_as(?XAV('xs:dateTime', Val), 'xs:gDay') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0,
        month = 0,
        hour = 0,
        minute = 0,
        second = xqerl_numeric:decimal(0)
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gDay'),
    ?XAV('xs:gDay', set_date_string(Rec, Str));
cast_as(?XAV('xs:dateTime', Val), 'xs:gMonth') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0,
        day = 0,
        hour = 0,
        minute = 0,
        second = xqerl_numeric:decimal(0)
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gMonth'),
    ?XAV('xs:gMonth', set_date_string(Rec, Str));
cast_as(?XAV('xs:dateTime', Val), 'xs:gMonthDay') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0,
        hour = 0,
        minute = 0,
        second = xqerl_numeric:decimal(0)
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gMonthDay'),
    ?XAV('xs:gMonthDay', set_date_string(Rec, Str));
cast_as(?XAV('xs:dateTime', Val), 'xs:gYear') ->
    Rec = Val#xsDateTime{
        month = 0,
        day = 0,
        hour = 0,
        minute = 0,
        second = xqerl_numeric:decimal(0)
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gYear'),
    ?XAV('xs:gYear', set_date_string(Rec, Str));
cast_as(?XAV('xs:dateTime', Val), 'xs:gYearMonth') ->
    Rec = Val#xsDateTime{
        day = 0,
        hour = 0,
        minute = 0,
        second = xqerl_numeric:decimal(0)
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:gYearMonth'),
    ?XAV('xs:gYearMonth', set_date_string(Rec, Str));
cast_as(?XAV('xs:dateTime', Val), 'xs:time') ->
    Rec = Val#xsDateTime{
        sign = '+',
        year = 0,
        month = 0,
        day = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:time'),
    ?XAV('xs:time', set_date_string(Rec, Str));
cast_as(?XAV('xs:dayTimeDuration', Val), 'xs:duration') ->
    Str = xqerl_datetime:to_string(Val, 'xs:duration'),
    ?XAV('xs:duration', set_date_string(Val, Str));
cast_as(
    ?XAV('xs:dayTimeDuration', _Val),
    'xs:yearMonthDuration'
) ->
    Rec = #xsDateTime{
        year = 0,
        month = 0,
        day = 0,
        hour = 0,
        minute = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:yearMonthDuration'),
    ?XAV('xs:yearMonthDuration', set_date_string(Rec, Str));
cast_as(?XAV('xs:decimal', #xsDecimal{int = 0, scf = 0}), 'xs:boolean') ->
    ?FALSE;
cast_as(?XAV('xs:decimal', _), 'xs:boolean') ->
    ?TRUE;
cast_as(?XAV('xs:decimal', Val), 'xs:float') ->
    ?XAV('xs:float', xqerl_numeric:float(Val));
cast_as(?XAV('xs:decimal', Val), 'xs:integer') ->
    xqerl_numeric:integer(Val);
cast_as(?XAV('xs:decimal', Val), IntType) when ?xs_integer(IntType) ->
    Int = xqerl_numeric:integer(Val),
    cast_as(Int, IntType);
% ensure float is 32 bit
cast_as(?XAV('xs:float', Val), 'xs:float') ->
    cast_as(Val, 'xs:float');
cast_as(?XAV('xs:duration', Val), 'xs:dayTimeDuration') ->
    Rec = Val#xsDateTime{year = 0, month = 0},
    Str = xqerl_datetime:to_string(Rec, 'xs:dayTimeDuration'),
    ?XAV('xs:dayTimeDuration', set_date_string(Rec, Str));
cast_as(?XAV('xs:duration', Val), 'xs:yearMonthDuration') ->
    Rec = Val#xsDateTime{day = 0, hour = 0, minute = 0},
    Str = xqerl_datetime:to_string(Rec, 'xs:yearMonthDuration'),
    ?XAV('xs:yearMonthDuration', set_date_string(Rec, Str));
cast_as(?XAV('xs:float', Val), 'xs:boolean') ->
    if
        Val == 0 -> ?FALSE;
        Val == neg_zero -> ?FALSE;
        Val == nan -> ?FALSE;
        true -> ?TRUE
    end;
% MAYBE castable
cast_as(?XAV('xs:float', Val), 'xs:decimal') ->
    if
        Val == nan -> ?err('FOCA0002');
        Val == neg_zero -> ?XAV('xs:decimal', xqerl_numeric:decimal(0));
        Val == neg_infinity -> ?err('FOCA0002');
        Val == infinity -> ?err('FOCA0002');
        true -> ?XAV('xs:decimal', xqerl_numeric:decimal(Val))
    end;
cast_as(?XAV('xs:float', Val), 'xs:double') ->
    Val;
% MAYBE castable
cast_as(?XAV('xs:float', Val), 'xs:integer') ->
    if
        Val == nan -> ?err('FOCA0002');
        Val == neg_zero -> 0;
        Val == neg_infinity -> ?err('FOCA0002');
        Val == infinity -> ?err('FOCA0002');
        true -> trunc(Val)
    end;
% MAYBE castable
cast_as(?XAV('xs:float', Val), IntType) when ?xs_integer(IntType) ->
    if
        Val == nan -> ?err('FOCA0002');
        Val == neg_infinity -> ?err('FOCA0002');
        Val == infinity -> ?err('FOCA0002');
        Val == neg_zero -> cast_from_integer(IntType, 0);
        true -> cast_from_integer(IntType, trunc(Val))
    end;
cast_as(?XAV('xs:hexBinary', Val), 'xs:base64Binary') ->
    ?XAV('xs:base64Binary', hexbin_to_b64bin(Val));
cast_as(0, 'xs:boolean') ->
    ?FALSE;
cast_as(?XAV('xs:NOTATION', Val), 'xs:QName') ->
    ?XAV('xs:QName', Val);
% MAYBE castable
cast_as(?XAV('xs:QName', Val), 'xs:NOTATION') ->
    ?XAV('xs:NOTATION', Val);
cast_as(Bool, 'xs:normalizedString') when is_boolean(Bool) ->
    ?XAV('xs:normalizedString', atom_to_binary(Bool, latin1));
cast_as(#xqAtomicValue{} = Arg1, 'xs:normalizedString') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:string')),
    Norm = xqerl_lib:normalize_string(StrVal),
    ?XAV('xs:normalizedString', Norm);
cast_as(Bool, 'xs:token') when is_boolean(Bool) ->
    ?XAV('xs:token', atom_to_binary(Bool, latin1));
cast_as(Arg1, 'xs:token') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:normalizedString')),
    Token = xqerl_lib:normalize_spaces(StrVal),
    ?XAV('xs:token', Token);
cast_as(Arg1, 'xs:language') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:token')),
    case re:run(StrVal, "^[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*$", [unicode]) of
        nomatch ->
            ?err('FORG0001');
        _ ->
            ?XAV('xs:language', StrVal)
    end;
cast_as(Arg1, 'xs:NMTOKEN') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:token')),
    case xqerl_lib:is_valid_token(StrVal) of
        true ->
            ?XAV('xs:NMTOKEN', StrVal);
        false ->
            ?err('FORG0001')
    end;
cast_as(Arg1, 'xs:NMTOKENS') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:token')),
    case xqerl_lib:is_valid_tokens(StrVal) of
        true ->
            Tokens = string:split(StrVal, " ", all),
            lists:map(
                fun(Tok) ->
                    ?XAV('xs:NMTOKEN', Tok)
                end,
                Tokens
            );
        false ->
            ?err('FORG0001')
    end;
cast_as(Arg1, 'xs:Name') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:token')),
    case xqerl_lib:is_valid_name(StrVal) of
        true ->
            ?XAV('xs:Name', StrVal);
        false ->
            ?err('FORG0001')
    end;
cast_as(Arg1, 'xs:NCName') ->
    StrVal = xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:Name')),
    _ = [?err('FORG0001') || <<":">> <= StrVal],
    ?XAV('xs:NCName', StrVal);
cast_as(Arg1, 'xs:ID') ->
    StrVal = ncname_value(Arg1),
    ?XAV('xs:ID', StrVal);
cast_as(Arg1, 'xs:IDREF') ->
    StrVal = ncname_value(Arg1),
    ?XAV('xs:IDREF', StrVal);
cast_as(Arg1, 'xs:IDREFS') ->
    case xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:token')) of
        <<>> ->
            ?err('FORG0001');
        StrVal ->
            Tokens = string:split(StrVal, " ", all),
            lists:map(
                fun(Tok) ->
                    ?XAV('xs:IDREF', Tok)
                end,
                Tokens
            )
    end;
cast_as(Arg1, 'xs:ENTITY') ->
    StrVal = ncname_value(Arg1),
    ?XAV('xs:ENTITY', StrVal);
cast_as(Arg1, 'xs:ENTITIES') ->
    case xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:token')) of
        <<>> ->
            ?err('FORG0001');
        StrVal ->
            Tokens = string:split(StrVal, " ", all),
            lists:map(
                fun(Tok) ->
                    case xqerl_lib:is_valid_token(Tok) of
                        true ->
                            ?XAV('xs:ENTITY', Tok);
                        false ->
                            ?err('FORG0001')
                    end
                end,
                Tokens
            )
    end;
% xs:untypedAtomic handled as if xs:string

% MAYBE castable
cast_as(?XAV('xs:untypedAtomic', Val), Type) ->
    Val1 =
        if
            is_integer(Val) ->
                integer_to_binary(Val);
            is_float(Val) ->
                float_to_binary(Val);
            true ->
                Val
        end,
    cast_as(?XAV('xs:string', Val1), Type);
% 0.0 sec duration
cast_as(?XAV('xs:yearMonthDuration', _), 'xs:dayTimeDuration') ->
    Rec = #xsDateTime{
        year = 0,
        month = 0,
        day = 0,
        hour = 0,
        minute = 0
    },
    Str = xqerl_datetime:to_string(Rec, 'xs:dayTimeDuration'),
    ?XAV('xs:dayTimeDuration', set_date_string(Rec, Str));
cast_as(?XAV('xs:yearMonthDuration', Val), 'xs:duration') ->
    Str = xqerl_datetime:to_string(Val, 'xs:duration'),
    ?XAV('xs:duration', set_date_string(Val, Str));
cast_as(
    ?XAV('xs:yearMonthDuration', #xsDateTime{string_value = Val}),
    'xs:string'
) ->
    ?XAV('xs:string', Val);
%sub types

% block known types
cast_as(Intype, T) when is_boolean(Intype) ->
    maybe_unknown_type_error(T);
cast_as(#xqAtomicValue{type = Intype}, T) when
    Intype == 'xs:unsignedInt';
    Intype == 'xs:string';
    Intype == 'xs:boolean';
    Intype == 'xs:decimal';
    Intype == 'xs:float';
    Intype == 'xs:double';
    Intype == 'xs:duration';
    Intype == 'xs:dateTime';
    Intype == 'xs:time';
    Intype == 'xs:date';
    Intype == 'xs:gYearMonth';
    Intype == 'xs:gYear';
    Intype == 'xs:gMonthDay';
    Intype == 'xs:gDay';
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
    Intype == 'xs:unsignedLong';
    Intype == 'xs:nonNegativeInteger';
    Intype == 'xs:unsignedShort';
    Intype == 'xs:unsignedByte';
    Intype == 'xs:positiveInteger';
    Intype == 'xs:yearMonthDuration';
    Intype == 'xs:dayTimeDuration';
    Intype == 'xs:untypedAtomic';
    Intype == 'xs:dateTimeStamp';
    Intype == 'xs:ENTITIES';
    Intype == 'xs:IDREFS';
    Intype == 'xs:error'
->
    maybe_unknown_type_error(T);
cast_as(_, _) ->
    ?err('XPTY0004').

% namespace sensitive
cast_as(Seq, #seqType{type = T, occur = one}, N) ->
    cast_as(Seq, T, N);
cast_as(Seq, #seqType{type = T, occur = zero_or_one}, N) ->
    cast_as(Seq, T, N);
cast_as([], #seqType{occur = zero_or_one}, _) ->
    [];
cast_as([Seq], T, N) ->
    cast_as(Seq, T, N);
cast_as(Seq, #seqType{type = T}, N) ->
    cast_as(Seq, T, N);
cast_as(#{nk := _} = N, TT, Namespaces) ->
    String = atomize(N),
    cast_as(String, TT, Namespaces);
cast_as(#xqAtomicValue{type = 'xs:QName'} = Q, 'xs:QName', _) ->
    Q;
cast_as([], 'xs:QName', _Namespaces) ->
    ?err('XPTY0004');
cast_as(?XAV('xs:untypedAtomic', <<>>), 'xs:QName', _) ->
    ?err('FORG0001');
cast_as(<<>>, 'xs:QName', _) ->
    ?err('FORG0001');
cast_as(?XAV('xs:untypedAtomic', <<"Q{", Rest/binary>>), 'xs:QName', _) ->
    [Ns, Local] = string:split(Rest, [$}]),
    ?XAV('xs:QName', #qname{
        namespace = Ns,
        prefix = <<>>,
        local_name = xqerl_lib:trim(Local)
    });
cast_as(<<"Q{", Rest/binary>>, 'xs:QName', _) ->
    [Ns, Local] = string:split(Rest, [$}]),
    ?XAV('xs:QName', #qname{
        namespace = Ns,
        prefix = <<>>,
        local_name = xqerl_lib:trim(Local)
    });
% MAYBE castable
cast_as(Val0, 'xs:QName', Namespaces) ->
    {Val, AType} =
        case Val0 of
            ?XAV('xs:untypedAtomic', Val1) ->
                {Val1, 'xs:untypedAtomic'};
            _ when is_binary(Val0) ->
                {Val0, 'xs:string'};
            _ ->
                % not a string literal
                ?err('XPTY0004')
        end,
    try
        {Prefix, Local} =
            case scan_ncname(xqerl_lib:trim(Val)) of
                {P, L} -> {P, L};
                L -> {<<>>, L}
            end,
        %{xqNamespace,"http://www.example.com/foo","foo"}
        case Prefix of
            <<>> ->
                Def =
                    case lists:keyfind(Prefix, 3, Namespaces) of
                        false ->
                            <<>>;
                        {_, D, _} ->
                            D
                    end,
                ?XAV('xs:QName', #qname{
                    namespace = Def,
                    prefix = Prefix,
                    local_name = Local
                });
            _ ->
                case lists:keyfind(Prefix, 3, Namespaces) of
                    false ->
                        %?err('FONS0004'); % direct
                        %?err('XQDY0074'); % constructed
                        ?err('FONS0004');
                    {_, Namespace, _} ->
                        ?XAV('xs:QName', #qname{
                            namespace = Namespace,
                            prefix = Prefix,
                            local_name = Local
                        })
                end
        end
    catch
        _:#xqError{} when AType == 'xs:untypedAtomic' -> ?err('FORG0001');
        _:#xqError{} = E -> throw(E);
        _:_ -> ?err('FORG0001')
    end;
cast_as(#xqAtomicValue{type = AType} = At, 'xs:NOTATION', Namespaces) when
    AType == 'xs:string';
    % MAYBE castable
    AType == 'xs:untypedAtomic'
->
    try
        At2 = cast_as(At, 'xs:QName', Namespaces),
        At2#xqAtomicValue{type = 'xs:NOTATION'}
    catch
        _:_ -> ?err('FORG0001')
    end;
cast_as(_, _, _) ->
    ?err('XPTY0004').

scan_ncname(<<$_, T/binary>>) ->
    scan_ncname(T, <<$_>>);
scan_ncname(<<>>) ->
    ?err('FORG0001');
scan_ncname(<<H/utf8, T/binary>>) ->
    case xmerl_lib:is_letter(H) of
        true ->
            scan_ncname(T, <<H/utf8>>);
        _ ->
            ?err('FORG0001')
    end.

scan_ncname(<<>>, Acc) ->
    Acc;
scan_ncname(<<$:, T/binary>>, Acc) ->
    {Acc, scan_ncname(T)};
scan_ncname(<<H/utf8, T/binary>>, Acc) ->
    case xmerl_lib:is_namechar(H) of
        true ->
            scan_ncname(T, <<Acc/binary, H/utf8>>);
        _ ->
            ?err('FORG0001')
    end.

hexbin_to_str(Bin) ->
    list_to_binary([hd(erlang:integer_to_list(I, 16)) || <<I:4>> <= Bin]).

b64bin_to_str(Bin) -> list_to_binary(base64:encode_to_string(Bin)).

str_to_hexbin(Str) -> <<<<(erlang:list_to_integer([H], 16)):4>> || <<H/utf8>> <= Str>>.

str_to_b64bin(Str) ->
    try
        Str1 = re:replace(Str, "(\\s+)", "", [global, {return, list}]),
        Bin = base64:decode(list_to_binary(Str1)),
        case base64:encode_to_string(Bin) of
            % invalid base64 that is 'fixed' in base64 module
            Str1 ->
                Bin;
            _ ->
                ?err('FORG0001')
        end
    catch
        _:_ ->
            ?err('FORG0001')
    end.

hexbin_to_b64bin(Bin) -> Bin.

%str_to_hexbin(b64bin_to_str(Bin)).
b64bin_to_hexbin(Bin) -> Bin.

%% str_to_hex(Str) -> bin_to_hex(list_to_binary(Str)).
%% hex_to_b64(Str) -> str_to_b64(hex_to_str(Str)).
%% b64_to_hex(Str) -> bin_to_hex(b64_to_bin(Str)).
%% str_to_b64(Str) -> base64:encode_to_string(Str).

is_ns_sensitive(#seqType{type = Type}) ->
    Type == 'xs:QName' orelse Type == 'xs:NOTATION';
is_ns_sensitive(Type) ->
    Type == 'xs:QName' orelse Type == 'xs:NOTATION'.

derives_from(AT, ET) when AT == ET ->
    true;
derives_from(AT, ET) ->
    case subtype_of(AT, ET) of
        true ->
            true;
        _ ->
            false
    end.

is_known_type('xs:unsignedInt') -> true;
is_known_type('xs:string') -> true;
is_known_type('xs:boolean') -> true;
is_known_type('xs:decimal') -> true;
is_known_type('xs:float') -> true;
is_known_type('xs:double') -> true;
is_known_type('xs:duration') -> true;
is_known_type('xs:dateTime') -> true;
is_known_type('xs:time') -> true;
is_known_type('xs:date') -> true;
is_known_type('xs:gYearMonth') -> true;
is_known_type('xs:gYear') -> true;
is_known_type('xs:gMonthDay') -> true;
is_known_type('xs:gDay') -> true;
is_known_type('xs:gMonth') -> true;
is_known_type('xs:hexBinary') -> true;
is_known_type('xs:base64Binary') -> true;
is_known_type('xs:anyURI') -> true;
is_known_type('xs:QName') -> true;
is_known_type('xs:normalizedString') -> true;
is_known_type('xs:token') -> true;
is_known_type('xs:language') -> true;
is_known_type('xs:NMTOKEN') -> true;
is_known_type('xs:Name') -> true;
is_known_type('xs:NCName') -> true;
is_known_type('xs:ID') -> true;
is_known_type('xs:IDREF') -> true;
is_known_type('xs:ENTITY') -> true;
is_known_type('xs:integer') -> true;
is_known_type('xs:nonPositiveInteger') -> true;
is_known_type('xs:negativeInteger') -> true;
is_known_type('xs:long') -> true;
is_known_type('xs:int') -> true;
is_known_type('xs:short') -> true;
is_known_type('xs:byte') -> true;
is_known_type('xs:nonNegativeInteger') -> true;
is_known_type('xs:unsignedLong') -> true;
is_known_type('xs:unsignedShort') -> true;
is_known_type('xs:unsignedByte') -> true;
is_known_type('xs:positiveInteger') -> true;
is_known_type('xs:yearMonthDuration') -> true;
is_known_type('xs:dayTimeDuration') -> true;
is_known_type('xs:untypedAtomic') -> true;
is_known_type('xs:dateTimeStamp') -> true;
%is_known_type('xs:NMTOKENS')               -> true;
is_known_type('xs:ENTITIES') -> true;
is_known_type('xs:IDREFS') -> true;
is_known_type('xs:error') -> true;
is_known_type('xs:anyAtomicType') -> true;
is_known_type('xs:numeric') -> true;
is_known_type('empty-sequence') -> true;
is_known_type(_) -> false.

norm_name_type(?XAV('xs:QName', #qname{} = Q), B) ->
    norm_name_type(Q, B);
norm_name_type(undefined, undefined) ->
    {'_', '_', '_'};
norm_name_type(Name, #seqType{type = 'xs:anyType'}) ->
    norm_name_type(Name, undefined);
norm_name_type(Name, #seqType{type = 'xs:anyAtomicType'}) ->
    norm_name_type(Name, undefined);
norm_name_type(undefined, #seqType{type = Atom}) ->
    {'_', '_', Atom};
norm_name_type(
    #qname{
        namespace = <<"*">>,
        local_name = <<"*">>
    },
    undefined
) ->
    {'_', '_', '_'};
norm_name_type(
    #qname{
        namespace = <<"*">>,
        local_name = <<"*">>
    },
    #seqType{type = Atom}
) ->
    {'_', '_', Atom};
norm_name_type(
    #qname{
        namespace = Ns,
        local_name = <<"*">>
    },
    undefined
) ->
    {Ns, '_', '_'};
norm_name_type(
    #qname{
        namespace = Ns,
        local_name = <<"*">>
    },
    #seqType{type = Atom}
) ->
    {Ns, '_', Atom};
norm_name_type(
    #qname{
        namespace = <<"*">>,
        local_name = Ln
    },
    undefined
) ->
    {'_', Ln, '_'};
norm_name_type(
    #qname{
        namespace = <<"*">>,
        local_name = Ln
    },
    #seqType{type = Atom}
) ->
    {'_', Ln, Atom};
norm_name_type(
    #qname{
        namespace = Ns,
        local_name = Ln
    },
    undefined
) ->
    {Ns, Ln, '_'};
norm_name_type(
    #qname{
        namespace = Ns,
        local_name = Ln
    },
    #seqType{type = Atom}
) ->
    {Ns, Ln, Atom}.

has_name(undefined, _) ->
    true;
has_name(_, undefined) ->
    true;
has_name(#qname{} = Name, ?XAV('xs:QName', #qname{} = Q)) ->
    has_name(Name, Q);
has_name(#qname{} = Name, #qname{namespace = Ns, local_name = Loc}) ->
    (Ns == <<"*">> orelse Ns == Name#qname.namespace) andalso
        (Loc == <<"*">> orelse Loc == Name#qname.local_name).

%% has_name(#xqElementNode{name = _Name},
%%          #qname{namespace = undefined,prefix = Px}) when Px =/= <<"*">> ->
%%    % non-expandable QName
%%    ?err('XPST0081');
%% has_name(#xqElementNode{name = Name},
%%          #qname{namespace = Ns, local_name = Loc}) ->
%%    (Ns  == <<"*">> orelse Ns  == Name#qname.namespace )    andalso
%%    (Loc == <<"*">> orelse Loc == Name#qname.local_name);
%% has_name(#xqAttributeNode{name = _Name}, undefined) ->
%%    true;
%% has_name(#xqAttributeNode{name = Name},
%%          #qname{namespace = Ns, local_name = Loc}) ->
%%    (Ns  == <<"*">> orelse Ns  == Name#qname.namespace )    andalso
%%    (Loc == <<"*">> orelse Loc == Name#qname.local_name).

set_date_string(Rec, Str) ->
    Rec#xsDateTime{string_value = Str}.

ncname_value(Arg1) ->
    xqerl_types:value(xqerl_types:cast_as(Arg1, 'xs:NCName')).

zero_time(Val) ->
    Val#xsDateTime{
        hour = 0,
        minute = 0,
        second = xqerl_numeric:decimal(0)
    }.
