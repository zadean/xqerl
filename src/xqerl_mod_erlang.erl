%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Namespace http://xqerl.org/modules/erlang
%% Module for transforming Erlang <==> XQuery types.

%% XXX Could be expanded to add much more functionality and features for
%%     interfacing between Erlang and XQuery.

-module(xqerl_mod_erlang).

-include("xqerl.hrl").

-define(NS, <<"http://xqerl.org/modules/erlang">>).
-define(PX, <<"erlang">>).

-define(av(T, V), #xqAtomicValue{type = T, value = V}).

% block array:array(_) warnings
-dialyzer(no_opaque).

-define(is_array(A), is_tuple(A), element(1, A) =:= array).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    term_to_item/2,
    item_to_term/2,
    is_ref/2,
    is_pid_/2,
    is_port_/2
]).

-'module-namespace'({?NS, ?PX}).

-variables([]).

-functions([
    {{qname, ?NS, ?PX, <<"term-to-item">>}, {seqType, 'item', zero_or_many}, [],
        {'term_to_item', 2}, 1, [{seqType, 'item', zero_or_many}]},
    {{qname, ?NS, ?PX, <<"item-to-term">>}, {seqType, 'item', zero_or_many}, [],
        {'item_to_term', 2}, 1, [{seqType, 'item', zero_or_many}]},
    {{qname, ?NS, ?PX, <<"is-reference">>}, {seqType, 'xs:boolean', one}, [], {'is_ref', 2}, 1, [
        {seqType, 'xs:base64Binary', one}
    ]},
    {{qname, ?NS, ?PX, <<"is-pid">>}, {seqType, 'xs:boolean', one}, [], {'is_pid_', 2}, 1, [
        {seqType, 'xs:base64Binary', one}
    ]},
    {{qname, ?NS, ?PX, <<"is-port">>}, {seqType, 'xs:boolean', one}, [], {'is_port_', 2}, 1, [
        {seqType, 'xs:base64Binary', one}
    ]}
]).

%% Transform Erlang term $term to an XQuery item()*.
%% erlang:term-to-item(
%%    $term as item()*) as item()*
-spec term_to_item(
    xq_types:context(),
    Arg1 :: [] | xq_types:sequence(xq_types:xq_item())
) -> [] | xq_types:sequence(xq_types:xq_item()).
term_to_item(_, Arg1) ->
    try
        term_to_item(Arg1)
    catch
        _:_ ->
            ?err('XPTY0004')
    end.

term_to_item(Num) when is_number(Num) ->
    Num;
term_to_item(Bool) when is_boolean(Bool) ->
    Bool;
term_to_item(Atom) when Atom =:= nan; Atom =:= infinity; Atom =:= neg_infinity; Atom =:= neg_zero ->
    Atom;
term_to_item(Atom) when is_atom(Atom) ->
    ?av('xs:token', erlang:atom_to_binary(Atom, utf8));
term_to_item(Binary) when is_binary(Binary) ->
    case unicode:characters_to_binary(Binary, unicode, unicode) of
        B when is_binary(B) ->
            B;
        _ ->
            ?av('xs:base64Binary', Binary)
    end;
term_to_item(List) when is_list(List) ->
    lists:flatten([term_to_item(I) || I <- List]);
term_to_item(Map) when is_map(Map) ->
    List = maps:to_list(Map),
    KeyValList = [{term_to_item(K), term_to_item(V)} || {K, V} <- List],
    xqerl_mod_map:construct(#{}, KeyValList);
term_to_item(Tuple) when is_tuple(Tuple) ->
    List = erlang:tuple_to_list(Tuple),
    array:from_list([term_to_item(I) || I <- List]);
term_to_item(Pid) when is_pid(Pid) ->
    Bin = term_to_binary({pid, Pid}),
    ?av('xs:base64Binary', Bin);
term_to_item(Port) when is_port(Port) ->
    Bin = term_to_binary({port, Port}),
    ?av('xs:base64Binary', Bin);
term_to_item(Ref) when is_reference(Ref) ->
    Bin = term_to_binary({ref, Ref}),
    ?av('xs:base64Binary', Bin);
term_to_item(Fun) when is_function(Fun) ->
    throw({error, function}).

%% Transform an XQuery item()* $item to an Erlang term.
%% erlang:item-to-term(
%%    $item as item()*) as item()*
-spec item_to_term(
    xq_types:context(),
    Arg1 :: [] | xq_types:sequence(xq_types:xq_item())
) -> [] | xq_types:sequence(xq_types:xq_item()).
item_to_term(_, Arg1) ->
    try
        item_to_term(Arg1)
    catch
        _:Err ->
            ?dbg("Err", Err),
            ?err('XPTY0004')
    end.

item_to_term(Num) when is_number(Num) ->
    Num;
item_to_term(Atom) when is_atom(Atom) ->
    Atom;
item_to_term(?av('xs:token', Bin)) ->
    erlang:binary_to_atom(Bin, utf8);
item_to_term(Binary) when is_binary(Binary) ->
    Binary;
item_to_term(List) when is_list(List) ->
    lists:flatten([item_to_term(I) || I <- List]);
item_to_term(#{nk := _} = Node) ->
    xqerl_serialize:serialize(Node, #{method => xml});
item_to_term(Map) when is_map(Map) ->
    List = [
        {item_to_term(K), item_to_term(V)}
        || {_, {K, V}} <- maps:to_list(Map)
    ],
    maps:from_list(List);
item_to_term(?av('xs:base64Binary', <<131, _/binary>> = Binary)) ->
    case catch erlang:binary_to_term(Binary, [safe]) of
        {ref, Ref} -> Ref;
        {pid, Pid} -> Pid;
        {port, Port} -> Port;
        _ -> Binary
    end;
item_to_term(?av('xs:base64Binary', Binary)) ->
    Binary;
item_to_term(?av(_, Num)) when is_number(Num) ->
    Num;
item_to_term(?av(_, _) = Av) ->
    xqerl_types:cast_as(Av, 'xs:string');
item_to_term(Array) when ?is_array(Array) ->
    case array:is_array(Array) of
        false ->
            throw({error, array});
        true ->
            List = array:to_list(Array),
            List1 = [item_to_term(I) || I <- List],
            erlang:list_to_tuple(List1)
    end;
item_to_term(Item) ->
    throw({error, {item, Item}}).

%% Returns if this binary is a reference.
%% erlang:is-reference(
%%    $item as xs:base64Binary) as xs:boolean
-spec is_ref(
    xq_types:context(),
    Arg1 :: xq_types:xs_base64Binary()
) -> xq_types:xs_boolean().
is_ref(Ctx, [Item]) -> is_ref(Ctx, Item);
is_ref(_, Item) -> is_ref(Item).

is_ref(?av('xs:base64Binary', <<131, _/binary>> = Binary)) ->
    case catch erlang:binary_to_term(Binary, [safe]) of
        {ref, _} -> true;
        _ -> false
    end;
is_ref(_) ->
    false.

%% Returns if this binary is a PID.
%% erlang:is-pid(
%%    $item as xs:base64Binary) as xs:boolean
-spec is_pid_(
    xq_types:context(),
    Arg1 :: xq_types:xs_base64Binary()
) -> xq_types:xs_boolean().
is_pid_(Ctx, [Item]) -> is_pid_(Ctx, Item);
is_pid_(_, Item) -> is_pid_(Item).

is_pid_(?av('xs:base64Binary', <<131, _/binary>> = Binary)) ->
    case catch erlang:binary_to_term(Binary, [safe]) of
        {pid, _} -> true;
        _ -> false
    end;
is_pid_(_) ->
    false.

%% Returns if this binary is a port.
%% erlang:is-port(
%%    $item as xs:base64Binary) as xs:boolean
-spec is_port_(
    xq_types:context(),
    Arg1 :: xq_types:xs_base64Binary()
) -> xq_types:xs_boolean().
is_port_(Ctx, [Item]) -> is_port_(Ctx, Item);
is_port_(_, Item) -> is_port_(Item).

is_port_(?av('xs:base64Binary', <<131, _/binary>> = Binary)) ->
    case catch erlang:binary_to_term(Binary, [safe]) of
        {port, _} -> true;
        _ -> false
    end;
is_port_(_) ->
    false.
