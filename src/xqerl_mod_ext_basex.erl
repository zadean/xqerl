% Copyright (c) 2019-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Namespace http://xqerl.org/modules/client/basex
%% BaseX client module

-module(xqerl_mod_ext_basex).

-include("xqerl.hrl").

-define(NS, <<"http://xqerl.org/modules/client/BaseX">>).
-define(PX, <<"basex">>).
-define(XL, <<"http://xqerl.org/xquery">>).
-define(ND, <<"non-deterministic">>).

-define(URI(V), #xqAtomicValue{type = 'xs:anyURI', value = V}).
-define(B2L(B), unicode:characters_to_list(B)).

%% ====================================================================
%% API functions
%% ====================================================================
-export([
    connect/5,
    execute/3,
    query/3, query/4
]).

-'module-namespace'({?NS, ?PX}).

-variables([]).

-functions([
    {
        {qname, ?NS, ?PX, <<"connect">>},
        {seqType, 'xs:anyURI', one},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}],
        {'connect', 5},
        4,
        [
            {seqType, 'xs:string', one},
            {seqType, 'xs:integer', one},
            {seqType, 'xs:string', one},
            {seqType, 'xs:string', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"execute">>},
        {seqType, 'xs:string', one},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}],
        {'execute', 3},
        2,
        [
            {seqType, 'xs:anyURI', one},
            {seqType, 'xs:string', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"query">>},
        {seqType, 'item', zero_or_many},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}],
        {'query', 3},
        2,
        [
            {seqType, 'xs:anyURI', one},
            {seqType, 'xs:string', one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"query">>},
        {seqType, 'item', zero_or_many},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}],
        {'query', 4},
        3,
        [
            {seqType, 'xs:anyURI', one},
            {seqType, 'xs:string', one},
            {seqType, {funTest, map, [], undefined, any, any}, zero_or_one}
        ]
    }
]).

%% Connect to a BaseX server.
%% basex:connect(
%%    $host     as xs:string,
%%    $port     as xs:integer,
%%    $user     as xs:string,
%%    $password as xs:string) as xs:anyURI
-spec connect(
    xq_types:context(),
    Host :: xq_types:xs_string(),
    Port :: xq_types:xs_integer(),
    User :: xq_types:xs_string(),
    Pass :: xq_types:xs_string()
) -> xq_types:xs_anyURI().
connect(Ctx, Host, Port, User, Pass) when
    is_binary(Host), is_integer(Port), is_binary(User), is_binary(Pass)
->
    case basexerl:connect(?B2L(Host), Port, ?B2L(User), ?B2L(Pass)) of
        {ok, Pid} ->
            Uri = new_connection_uri(),
            true = add_connection_pid(Ctx, Uri, Pid),
            ?URI(Uri);
        {error, _} ->
            throw_error(connect)
    end;
connect(Ctx, Host, Port, User, Pass) ->
    connect(
        Ctx,
        xqerl_types:cast_as(Host, 'xs:string'),
        xqerl_types:cast_as(Port, 'xs:integer'),
        xqerl_types:cast_as(User, 'xs:string'),
        xqerl_types:cast_as(Pass, 'xs:string')
    ).

%% Execute a BaseX command at the connection. Return information about the
%% executed command.
%% basex:execute(
%%    $id      as xs:anyURI,
%%    $command as xs:string) as xs:string
-spec execute(
    xq_types:context(),
    xq_types:xs_anyURI(),
    xq_types:xs_string()
) -> xq_types:xs_string().
execute(Ctx, ?URI(Id), Command) when is_binary(Command) ->
    Conn = get_connection_pid(Ctx, Id),
    case basexerl:execute(Conn, Command) of
        {ok, Info} ->
            Info;
        {error, closed} ->
            throw_error(closed);
        {error, _} ->
            throw_error(command)
    end;
execute(Ctx, Id, Command) ->
    execute(
        Ctx,
        xqerl_types:cast_as(Id, 'xs:anyURI'),
        xqerl_types:cast_as(Command, 'xs:string')
    ).

%% Execute an XQuery with no external variables or context item.
%% basex:query(
%%    $id      as xs:anyURI,
%%    $query as xs:string) as item()*
-spec query(
    xq_types:context(),
    xq_types:xs_anyURI(),
    xq_types:xs_string()
) -> [xq_types:xq_item()] | [].
query(Ctx, ?URI(Id), Query) when is_binary(Query) ->
    Conn = get_connection_pid(Ctx, Id),
    Qid =
        case basexerl:query(Conn, Query) of
            {ok, Qid0} -> Qid0;
            {error, _} -> throw_error(query)
        end,
    Res =
        case basexerl:q_results(Conn, Qid) of
            {ok, Res0} -> Res0;
            {error, _} -> throw_error(query)
        end,
    [cast_typed_string(Ctx, V, T) || {V, T} <- Res];
query(Ctx, Id, Query) ->
    query(
        Ctx,
        xqerl_types:cast_as(Id, 'xs:anyURI'),
        xqerl_types:cast_as(Query, 'xs:string')
    ).

%% Execute an XQuery with external variables or context item.
%% basex:query(
%%    $id    as xs:anyURI,
%%    $query as xs:string,
%%    $bindings as map(*)?) as item()*
-spec query(
    xq_types:context(),
    xq_types:xs_anyURI(),
    xq_types:xs_string(),
    xq_types:xq_map()
) -> [xq_types:xq_item()] | [].
query(Ctx, Id, Query, []) ->
    query(Ctx, Id, Query);
query(Ctx, ?URI(Id), Query, Bindings) when is_binary(Query), is_map(Bindings) ->
    Conn = get_connection_pid(Ctx, Id),
    Qid =
        case basexerl:query(Conn, Query) of
            {ok, Qid0} -> Qid0;
            {error, _} -> throw_error(query)
        end,
    BindList = bindings_to_list(Bindings),
    CI = [C || {context, _} = C <- BindList],
    Rt = [C || {X, _} = C <- BindList, X =/= context],
    _ = lists:foreach(
        fun(I) ->
            %?dbg("Context", I),
            basexerl:q_context(Conn, Qid, I)
        end,
        CI
    ),
    _ = lists:foreach(
        fun(I) ->
            %?dbg("Binding", I),
            basexerl:q_bind(Conn, Qid, I)
        end,
        Rt
    ),
    Res =
        case basexerl:q_results(Conn, Qid) of
            {ok, Res0} -> Res0;
            {error, _} -> throw_error(query)
        end,
    _ = basexerl:q_close(Conn, Qid),
    [cast_typed_string(Ctx, V, T) || {V, T} <- Res];
query(Ctx, Id, Query, Bindings) ->
    query(
        Ctx,
        xqerl_types:cast_as(Id, 'xs:anyURI'),
        xqerl_types:cast_as(Query, 'xs:string'),
        Bindings
    ).

%% ====================================================================
%% Internal functions
%% ====================================================================

cast_typed_string(#{namespaces := N}, V, T) when T == 'xs:QName'; T == 'xs:NOTATION' ->
    xqerl_types:cast_as(V, T, N);
cast_typed_string(_, V, T) when ?xs_anyAtomicType(T) ->
    xqerl_types:cast_as(V, T);
cast_typed_string(_, _, 'function item') ->
    throw_error(func);
cast_typed_string(Ctx, V, T) when
    T == 'element()'; T == 'text()'; T == 'processing-instruction()'
->
    #{ch := [E]} = xqerl_mod_fn:'parse-xml-fragment'(Ctx, V),
    E;
cast_typed_string(Ctx, V, T) when T == 'document-node()'; T == 'document-node(element())' ->
    xqerl_mod_fn:'parse-xml-fragment'(Ctx, V);
cast_typed_string(Ctx, V, T) when T == 'attribute()' ->
    Dummy = <<"<a ", V/binary, " />">>,
    #{ch := [#{at := [A]}]} = xqerl_mod_fn:'parse-xml-fragment'(Ctx, Dummy),
    A;
cast_typed_string(_, V, T) ->
    ?dbg("Unknown type", T),
    V.

bindings_to_list(Map) ->
    Fun = fun(K, {_, V}, Acc) ->
        Name = key_to_name(K),
        Vals = item_string_types(V),
        [{Name, Vals} | Acc]
    end,
    maps:fold(Fun, [], Map).

% bindings are {Name, [{SerialVal, Type}, ...]}

item_string_types(Items) when is_list(Items) ->
    [item_string_type(Item) || Item <- Items];
item_string_types(Items) ->
    item_string_types([Items]).

item_string_type(Item) when is_binary(Item) ->
    {Item, <<"xs:string">>};
item_string_type(Item) when is_integer(Item) ->
    S1 = xqerl_types:cast_as(Item, 'xs:string'),
    {S1, <<"xs:integer">>};
item_string_type(Item) when is_float(Item) ->
    S1 = xqerl_types:cast_as(Item, 'xs:string'),
    {S1, <<"xs:double">>};
item_string_type(true) ->
    {<<"true">>, <<"xs:boolean">>};
item_string_type(false) ->
    {<<"false">>, <<"xs:boolean">>};
item_string_type(infinity) ->
    {<<"INF">>, <<"xs:double">>};
item_string_type(neg_infinity) ->
    {<<"-INF">>, <<"xs:double">>};
item_string_type(nan) ->
    {<<"NaN">>, <<"xs:double">>};
item_string_type(neg_zero) ->
    {<<"-0">>, <<"xs:double">>};
item_string_type(#xqAtomicValue{value = infinity}) ->
    {<<"INF">>, <<"xs:float">>};
item_string_type(#xqAtomicValue{value = neg_infinity}) ->
    {<<"-INF">>, <<"xs:float">>};
item_string_type(#xqAtomicValue{value = nan}) ->
    {<<"NaN">>, <<"xs:float">>};
item_string_type(#xqAtomicValue{value = neg_zero}) ->
    {<<"-0">>, <<"xs:float">>};
item_string_type(#xqAtomicValue{type = T} = A) ->
    T1 = atom_to_binary(T, latin1),
    S1 = xqerl_types:cast_as(A, 'xs:string'),
    {S1, T1};
item_string_type(#{nk := document} = N) ->
    S = xqerl_serialize:serialize(N, #{method => xml}),
    T1 = <<"document-node()">>,
    {S, T1};
item_string_type(#{nk := Nk} = N) ->
    S = xqerl_serialize:serialize(N, #{method => xml}),
    T = atom_to_binary(Nk, latin1),
    T1 = <<T/binary, "()">>,
    {S, T1};
item_string_type(_) ->
    throw_error(func).

key_to_name({<<>>, LocalName}) when is_binary(LocalName) ->
    LocalName;
key_to_name({Namespace, LocalName}) when is_binary(Namespace), is_binary(LocalName) ->
    <<"Q{", Namespace/binary, "}", LocalName/binary>>;
key_to_name([]) ->
    context;
key_to_name(<<>>) ->
    context;
key_to_name(Value) when is_binary(Value) ->
    Value;
key_to_name(_) ->
    ?err('XPST0004').

-dialyzer({[no_return], [throw_error/1]}).

throw_error(command) ->
    do_throw(<<"command">>, <<"An error occurred while executing a command.">>);
throw_error(connect) ->
    do_throw(<<"connect">>, <<"Could not create session.">>);
%% could be added later with a list of IO error atoms
%throw_error(io) ->
%   do_throw(<<"io">>, <<"An I/O error occurred.">>);
throw_error(func) ->
    do_throw(<<"func">>, <<"Functional items cannot be returned.">>);
throw_error(closed) ->
    do_throw(<<"id">>, <<"Session is closed.">>);
throw_error(unknown) ->
    do_throw(<<"id">>, <<"Unknown session id.">>);
throw_error(query) ->
    do_throw(<<"query">>, <<"Query could not be executed.">>).

do_throw(Name, Desc) ->
    E = #xqError{
        description = Desc,
        name = #qname{
            namespace = ?NS,
            prefix = ?PX,
            local_name = Name
        }
    },
    exit(E).

get_connection_pid(#{tab := Tab}, Uri) ->
    case ets:lookup(Tab, clients) of
        [{clients, #{Uri := {Pid, _}}}] ->
            Pid;
        _ ->
            throw_error(unknown)
    end.

add_connection_pid(#{tab := Tab}, Uri, Pid) ->
    Close = fun() -> basexerl:disconnect(Pid) end,
    case ets:lookup(Tab, clients) of
        [{clients, Map}] ->
            ets:insert(Tab, {clients, Map#{Uri => {Pid, Close}}});
        [] ->
            ets:insert(Tab, {clients, #{Uri => {Pid, Close}}})
    end.

new_connection_uri() ->
    quickrand:seed(),
    UUID = uuid:uuid_to_string(uuid:get_v4_urandom(), binary_standard),
    <<"http://xqerl.org/modules/client/BaseX/", UUID/binary>>.
