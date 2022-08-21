% Copyright (c) 2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

%% @doc Implementation of the "http://exquery.org/ns/request" namespace.

-module(xqerl_mod_exquery_request).

-include("xqerl.hrl").

-include_lib("kernel/include/inet.hrl").

-define(NS, <<"http://exquery.org/ns/request">>).
-define(PX, <<"request">>).
-define(ERRNS, <<"http://exquery.org/ns/request/error">>).
-define(ERRPX, <<"reqerr">>).

-export([
    address/1,
    cookie/2, cookie/3,
    cookie_names/1,
    header/2, header/3,
    header_names/1,
    hostname/1,
    method/1,
    parameter/2, parameter/3,
    parameter_names/1,
    path/1,
    port/1,
    query/1,
    remote_address/1,
    remote_hostname/1,
    remote_port/1,
    scheme/1,
    uri/1
]).

-'module-namespace'({?NS, ?PX}).

-namespaces([]).

-variables([]).

-functions([
    {{qname, ?NS, ?PX, <<"address">>}, {seqType, 'xs:string', one}, [], {'address', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"cookie">>}, {seqType, 'xs:string', zero_or_one}, [], {'cookie', 2}, 1, [
        {seqType, 'xs:string', one}
    ]},
    {{qname, ?NS, ?PX, <<"cookie">>}, {seqType, 'xs:string', one}, [], {'cookie', 3}, 2, [
        {seqType, 'xs:string', one},
        {seqType, 'xs:string', one}
    ]},
    {
        {qname, ?NS, ?PX, <<"cookie-names">>},
        {seqType, 'xs:string', zero_or_many},
        [],
        {'cookie_names', 1},
        0,
        []
    },
    {{qname, ?NS, ?PX, <<"header">>}, {seqType, 'xs:string', zero_or_one}, [], {'header', 2}, 1, [
        {seqType, 'xs:string', one}
    ]},
    {{qname, ?NS, ?PX, <<"header">>}, {seqType, 'xs:string', one}, [], {'header', 3}, 2, [
        {seqType, 'xs:string', one},
        {seqType, 'xs:string', one}
    ]},
    {
        {qname, ?NS, ?PX, <<"header-names">>},
        {seqType, 'xs:string', zero_or_many},
        [],
        {'header_names', 1},
        0,
        []
    },
    {{qname, ?NS, ?PX, <<"hostname">>}, {seqType, 'xs:string', one}, [], {'hostname', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"method">>}, {seqType, 'xs:string', one}, [], {'method', 1}, 0, []},
    {
        {qname, ?NS, ?PX, <<"parameter">>},
        {seqType, 'xs:string', zero_or_many},
        [],
        {'parameter', 2},
        1,
        [{seqType, 'xs:string', one}]
    },
    {
        {qname, ?NS, ?PX, <<"parameter">>},
        {seqType, 'xs:string', zero_or_many},
        [],
        {'parameter', 3},
        2,
        [{seqType, 'xs:string', one}, {seqType, 'xs:string', one}]
    },
    {
        {qname, ?NS, ?PX, <<"parameter-names">>},
        {seqType, 'xs:string', zero_or_many},
        [],
        {'parameter_names', 1},
        0,
        []
    },
    {{qname, ?NS, ?PX, <<"path">>}, {seqType, 'xs:string', one}, [], {'path', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"port">>}, {seqType, 'xs:integer', one}, [], {'port', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"query">>}, {seqType, 'xs:string', zero_or_one}, [], {'query', 1}, 0, []},
    {
        {qname, ?NS, ?PX, <<"remote-address">>},
        {seqType, 'xs:string', one},
        [],
        {'remote_address', 1},
        0,
        []
    },
    {
        {qname, ?NS, ?PX, <<"remote-hostname">>},
        {seqType, 'xs:string', one},
        [],
        {'remote_hostname', 1},
        0,
        []
    },
    {
        {qname, ?NS, ?PX, <<"remote-port">>},
        {seqType, 'xs:integer', one},
        [],
        {'remote_port', 1},
        0,
        []
    },
    {{qname, ?NS, ?PX, <<"scheme">>}, {seqType, 'xs:string', one}, [], {'scheme', 1}, 0, []},
    {{qname, ?NS, ?PX, <<"uri">>}, {seqType, 'xs:anyURI', one}, [], {'uri', 1}, 0, []}
]).

-define(URI(D), #xqAtomicValue{type = 'xs:anyURI', value = D}).

%% 3.2 General Functions

%% 3.2.1 request:method
%% request:method() as xs:string
%% Summary:
%%  This function returns the Method of the HTTP Request. The returned value
%%  SHOULD be a valid HTTP 1.1 Method, which is expressed in upper-case, and
%%  is one of the constants "OPTIONS", "GET", "POST", "PUT", "DELETE", "TRACE"
%%  or "CONNECT". Implementations are free to return other method names as long
%%  as the protocol builds on top of HTTP 1.1.
method(#{restxq_ctx := Req}) ->
    cowboy_req:method(Req);
method(_) ->
    no_context_error().

%% 3.3 URI Functions

%% 3.3.1 request:scheme
%% request:scheme() as xs:string
%% Summary:
%%  This function returns the Scheme component of the URI of the HTTP Request.
scheme(#{restxq_ctx := Req}) ->
    cowboy_req:scheme(Req);
scheme(_) ->
    no_context_error().

%% 3.3.2 request:hostname
%% request:hostname() as xs:string
%% Summary:
%%  This function returns the Hostname fragment of the Authority component of
%%  the URI of the HTTP Request.
hostname(#{restxq_ctx := Req}) ->
    cowboy_req:host(Req);
hostname(_) ->
    no_context_error().

%% 3.3.3 request:port
%% request:port() as xs:integer
%% Summary:
%%  This function returns the Port fragment of the Authority component of the
%%  URI of the HTTP Request. If the port is not explicitly specified in the
%%  URI, then the default port for the HTTP Scheme is returned (i.e. 21 for
%%  FTP, 80 for HTTP and 443 for HTTPS).
port(#{restxq_ctx := Req}) ->
    cowboy_req:port(Req);
port(_) ->
    no_context_error().

%% 3.3.4 request:path
%% request:path() as xs:string
%% Summary:
%%  This function returns the Path component of the URI of the HTTP Request.
path(#{restxq_ctx := Req}) ->
    cowboy_req:path(Req);
path(_) ->
    no_context_error().

%% 3.3.5 request:query
%% request:query() as xs:string?
%% Summary:
%%  This function returns the Query Component of the HTTP Request URI, if
%%  there is no query component then an empty sequence is returned.
query(#{restxq_ctx := Req}) ->
    case cowboy_req:qs(Req) of
        <<>> -> [];
        Qs -> Qs
    end;
query(_) ->
    no_context_error().

%% 3.3.6 request:uri
%% request:uri() as xs:anyURI
%% Summary:
%%  This function returns the URI of the HTTP Request.
uri(#{restxq_ctx := Req}) ->
    ?URI(iolist_to_binary(cowboy_req:uri(Req)));
uri(_) ->
    no_context_error().

%% 3.4 Connection Functions
%%  Functions that deal with the TCP/IP Connection of the HTTP Request.

%% 3.4.1 request:address
%% request:address() as xs:string
%% Summary:
%%  This functions returns the IP address of the server.
address(#{restxq_ctx := Req}) ->
    {IpAddress, _} = cowboy_req:sock(Req),
    iolist_to_binary(inet:ntoa(IpAddress));
address(_) ->
    no_context_error().

%% 3.4.2 request:remote-hostname
%% request:remote-hostname() as xs:string
%% Summary:
%%  This functions returns the fully qualified hostname of the client or the
%%  last proxy that sent the HTTP Request. If the name of the remote host
%%  cannot be established, or an implementation chooses not to establish the
%%  remote hostname, this method behaves as request:remote-address(), and
%%  returns the IP address.
remote_hostname(#{restxq_ctx := Req}) ->
    {IpAddress, _Port} = cowboy_req:peer(Req),
    case inet:gethostbyaddr(IpAddress) of
        {ok, Hostent} ->
            iolist_to_binary([Hostent#hostent.h_name]);
        {error, _} ->
            iolist_to_binary(inet:ntoa(IpAddress))
    end;
remote_hostname(_) ->
    no_context_error().

%% 3.4.3 request:remote-address
%% request:remote-address() as xs:string
%% Summary:
%%  This functions returns the IP address of the client or the last proxy that
%%  sent the HTTP Request.
remote_address(#{restxq_ctx := Req}) ->
    {IpAddress, _Port} = cowboy_req:peer(Req),
    iolist_to_binary(inet:ntoa(IpAddress));
remote_address(_) ->
    no_context_error().

%% 3.4.4 request:remote-port
%% request:remote-port() as xs:integer
%% Summary:
%%  This functions returns the TCP port of the client socket or the last proxy
%%  that sent the HTTP Request.
remote_port(#{restxq_ctx := Req}) ->
    {_IpAddress, Port} = cowboy_req:peer(Req),
    Port;
remote_port(_) ->
    no_context_error().

%% 3.5 HTTP Parameter Functions
%%  A HTTP Parameter is defined as either a fragment of the query portion of
%%  the HTTP Request URI or the parameter from a submitted HTML Form where the
%%  HTTP Request has the Internet Media Type "application/x-www-form-urlencoded".

%% 3.5.1 request:parameter-names
%% request:parameter-names() as xs:string*
%% Summary:
%%  This function returns a Sequence containing the names of Parameters
%%  available from the HTTP Request.
parameter_names(#{restxq_ctx := Req}) ->
    ParsedQs = cowboy_req:parse_qs(Req),
    [K || {K, _} <- ParsedQs];
parameter_names(_) ->
    no_context_error().

%% 3.5.2 request:parameter
%% request:parameter($parameter-name as xs:string) as xs:string*
%% Summary:
%%  This function returns a Sequence containing the values of the named HTTP
%%  Parameter in the HTTP Request. If there is no such parameter in the HTTP
%%  Request, then an empty sequence is returned.
parameter(#{restxq_ctx := Req}, Param) when is_binary(Param) ->
    ParsedQs = cowboy_req:parse_qs(Req),
    Found = proplists:get_all_values(Param, ParsedQs),
    lists:map(
        fun
            (true) -> <<>>;
            (I) -> I
        end,
        Found
    );
parameter(#{restxq_ctx := _} = Ctx, Param) ->
    parameter(Ctx, xqerl_types:cast_as(Param, 'xs:string'));
parameter(_, _) ->
    no_context_error().

%% request:parameter($parameter-name as xs:string,
%%                   $default as xs:string) as xs:string
%% Summary:
%%  This function returns a Sequence containing the values of the named HTTP
%%  Parameter in the HTTP Request. If there is no such parameter in the HTTP
%%  Request, then the value specified in $default is returned instead.
parameter(#{restxq_ctx := Req}, Param, Default) when is_binary(Param), is_binary(Default) ->
    ParsedQs = cowboy_req:parse_qs(Req),
    Found = proplists:get_all_values(Param, ParsedQs),
    case Found of
        [] ->
            Default;
        _ ->
            lists:map(
                fun
                    (true) -> <<>>;
                    (I) -> I
                end,
                Found
            )
    end;
parameter(#{restxq_ctx := _} = Ctx, Param, Default) ->
    parameter(
        Ctx,
        xqerl_types:cast_as(Param, 'xs:string'),
        xqerl_types:cast_as(Default, 'xs:string')
    );
parameter(_, _, _) ->
    no_context_error().

%% 3.6 HTTP Header Functions

%% 3.6.1 request:header-names
%% request:header-names() as xs:string+
%% Summary:
%%  This function returns a Sequence containing the names of the HTTP Headers
%%  available from the HTTP Request.
header_names(#{restxq_ctx := Req}) ->
    ParsedQs = cowboy_req:headers(Req),
    maps:keys(ParsedQs);
header_names(_) ->
    no_context_error().

%% 3.6.2 request:header
%% request:header($header-name as xs:string) as xs:string?
%% Summary:
%%  This function returns the value of the named HTTP Header in the HTTP
%%  Request. If there is no such header, then an empty sequence is returned.
header(#{restxq_ctx := Req}, Name) when is_binary(Name) ->
    cowboy_req:header(string:lowercase(Name), Req, []);
header(#{restxq_ctx := _} = Ctx, Name) ->
    header(Ctx, xqerl_types:cast_as(Name, 'xs:string'));
header(_, _) ->
    no_context_error().

%% request:header($header-name as xs:string, $default as xs:string) as xs:string
%% Summary:
%%  This function returns the value of the named HTTP Header in the HTTP
%%  Request. If there is no such header, then the value specified in $default
%%  is returned instead.
header(#{restxq_ctx := Req}, Name, Default) when is_binary(Name), is_binary(Default) ->
    cowboy_req:header(string:lowercase(Name), Req, Default);
header(#{restxq_ctx := _} = Ctx, Name, Default) ->
    header(
        Ctx,
        xqerl_types:cast_as(Name, 'xs:string'),
        xqerl_types:cast_as(Default, 'xs:string')
    );
header(_, _, _) ->
    no_context_error().

%% 3.7 Cookie Functions

%% 3.7.1 request:cookie-names
%% request:cookie-names() as xs:string*
%% Summary:
%%  This function returns a Sequence containing the names of the Cookies in
%%  the HTTP Headers available from the HTTP Request.
cookie_names(#{restxq_ctx := Req}) ->
    ParsedCs = cowboy_req:parse_cookies(Req),
    [K || {K, _} <- ParsedCs];
cookie_names(_) ->
    no_context_error().

%% 3.7.2 request:cookie
%% request:cookie($cookie-name as xs:string) as xs:string?
%% Summary:
%%  This function returns the value of the named Cookie in the HTTP Request.
%%  If there is no such cookie, then an empty sequence is returned.
cookie(#{restxq_ctx := Req}, Name) when is_binary(Name) ->
    ParsedCs = cowboy_req:parse_cookies(Req),
    case lists:keyfind(Name, 1, ParsedCs) of
        {_, Token} -> Token;
        _ -> []
    end;
cookie(#{restxq_ctx := _} = Ctx, Name) ->
    cookie(Ctx, xqerl_types:cast_as(Name, 'xs:string'));
cookie(_, _) ->
    no_context_error().

%% request:cookie($cookie-name as xs:string, $default as xs:string) as xs:string
%% Summary:
%%  This function returns the value of the named Cookie in the HTTP Request.
%%  If there is no such cookie, then the value specified in $default is
%%  returned instead.
cookie(#{restxq_ctx := Req}, Name, Default) when is_binary(Name), is_binary(Default) ->
    ParsedCs = cowboy_req:parse_cookies(Req),
    case lists:keyfind(Name, 1, ParsedCs) of
        {_, Token} -> Token;
        _ -> Default
    end;
cookie(#{restxq_ctx := _} = Ctx, Name, Default) ->
    cookie(
        Ctx,
        xqerl_types:cast_as(Name, 'xs:string'),
        xqerl_types:cast_as(Default, 'xs:string')
    );
cookie(_, _, _) ->
    no_context_error().

-define(Q(V), #xqAtomicValue{
    type = 'xs:QName',
    value = #qname{
        namespace = ?ERRNS,
        prefix = ?ERRPX,
        local_name = V
    }
}).

no_context_error() ->
    E = #xqError{
        description = <<"Not in an HTTP context.">>,
        name = ?Q(<<"REDY0001">>)
    },
    throw(E).
