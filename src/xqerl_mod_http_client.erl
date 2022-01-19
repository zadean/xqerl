%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implementation of the "http://expath.org/ns/http-client" namespace.

%% http://expath.org/spec/http-client

-module(xqerl_mod_http_client).

-include("xqerl.hrl").

-define(NS, <<"http://expath.org/ns/http-client">>).
-define(PX, <<"http">>).
-define(ENS, <<"http://expath.org/ns/error">>).
-define(EPX, <<"experr">>).
-define(SNS, <<"http://www.w3.org/2010/xslt-xquery-serialization">>).

-'module-namespace'({?NS, ?PX}).

-namespaces([]).

-variables([]).

-functions([
    {
        {qname, ?NS, ?PX, <<"send-request">>},
        {seqType, 'item', one_or_many},
        [],
        {'send-request', 4},
        3,
        [
            {seqType, {kindTest, element, {qname, ?NS, ?PX, <<"request">>}, undefined},
                zero_or_one},
            {seqType, 'xs:string', zero_or_one},
            {seqType, 'item', zero_or_many}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"send-request">>},
        {seqType, 'item', one_or_many},
        [],
        {'send-request', 3},
        2,
        [
            {seqType, {kindTest, element, {qname, ?NS, ?PX, <<"request">>}, undefined},
                zero_or_one},
            {seqType, 'xs:string', zero_or_one}
        ]
    },
    {
        {qname, ?NS, ?PX, <<"send-request">>},
        {seqType, 'item', one_or_many},
        [],
        {'send-request', 2},
        1,
        [
            {seqType, {kindTest, element, {qname, ?NS, ?PX, <<"request">>}, undefined}, zero_or_one}
        ]
    }
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export(['send-request'/2, 'send-request'/3, 'send-request'/4]).

-export([
    get_content_media_type/1,
    parse_body/3,
    read_body/1,
    parse_custom_response/1
]).

%% http:send-request($request as element(http:request)?,
%%                   $href as xs:string?,
%%                   $bodies as item()*) as item()+
'send-request'(Ctx, Request, Href, Bodies) ->
    Uri = xqerl_types:string_value(Href),
    Req = (parse_request(Request, Bodies))#{href => Uri},
    do_req(Ctx, Req).

%% http:send-request($request as element(http:request)?,
%%                   $href as xs:string?) as item()+
'send-request'(Ctx, Request, []) ->
    'send-request'(Ctx, Request);
'send-request'(Ctx, Request, Href) ->
    Uri = xqerl_types:string_value(Href),
    Req = (parse_request(Request, []))#{href => Uri},
    do_req(Ctx, Req).

%% http:send-request($request as element(http:request)?) as item()+
'send-request'(Ctx, Request) ->
    Req = parse_request(Request, []),
    do_req(Ctx, Req).

%% ====================================================================
%% Internal functions
%% ====================================================================

parse_request(
    #{
        nk := element,
        nn := {?NS, _, <<"request">>},
        at := Atts,
        ch := Ch
    },
    Contents
) ->
    AttMap = parse_request_attributes(Atts, #{
        'status-only' => false,
        'send-authorization' => false,
        'follow-redirect' => true,
        timeout => 10
    }),
    #{method := Method} = AttMap,
    Headers0 = [
        parse_header_attributes(A)
     || #{
            nn := {?NS, _, <<"header">>},
            at := A
        } <- Ch
    ],
    {HasCT, Headers} =
        case
            [
                N
             || {N, _} <- Headers0,
                string:lowercase(N) == <<"content-type">>
            ]
        of
            [] ->
                {false, [{<<"content-type">>, <<"text/xml">>} | Headers0]};
            _ ->
                {true, Headers0}
        end,
    parse_request_1(Method, Ch, HasCT, Headers, Contents, AttMap).

parse_request_1(Method, Ch, HasCT, Headers, Contents, AttMap) when Method == put; Method == post ->
    [Body] = [C || #{nn := {?NS, _, <<"body">>}} = C <- Ch],
    SerialOpts = parse_body_attributes(xqldb_mem_nodes:attributes(Body)),
    %?dbg("SerialOpts", {SerialOpts, Body}),
    Headers1 =
        case SerialOpts of
            #{'media-type' := MT} when HasCT == false ->
                lists:keyreplace(<<"content-type">>, 1, Headers, {<<"content-type">>, MT});
            _ ->
                Headers
        end,
    CT = proplists:get_value(<<"content-type">>, Headers1),
    case Contents of
        [] ->
            try
                Content = xqldb_mem_nodes:children(Body),
                BodyContent = xqerl_serialize:serialize(Content, SerialOpts),
                AttMap#{
                    headers => Headers1,
                    body => BodyContent
                }
            catch
                _:_ ->
                    err_bad_request()
            end;
        % already serialized
        _ when is_binary(Contents) ->
            AttMap#{
                headers => Headers1,
                body => Contents
            };
        % raw binary
        _ when CT == <<"application/octet-stream">> ->
            AttMap#{
                headers => Headers1,
                body => xqerl_types:value(Contents)
            };
        _ ->
            BodyContent = xqerl_serialize:serialize(Contents, SerialOpts),
            %?dbg("Contents", Contents),
            %?dbg("SerialOpts", SerialOpts),
            %?dbg("BodyContent", BodyContent),
            AttMap#{
                headers => Headers1,
                body => BodyContent
            }
    end;
parse_request_1(_, _Ch, _HasCT, Headers, _Contents, AttMap) ->
    AttMap#{
        headers => Headers,
        body => <<>>
    }.

parse_request_attributes([#{nn := {<<>>, _, <<"method">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{method => get_method(Val)});
parse_request_attributes([#{nn := {<<>>, _, <<"href">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{href => Val});
parse_request_attributes([#{nn := {<<>>, _, <<"status-only">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{'status-only' => get_boolean(Val)});
parse_request_attributes([#{nn := {<<>>, _, <<"username">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{username => Val});
parse_request_attributes([#{nn := {<<>>, _, <<"password">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{password => Val});
parse_request_attributes([#{nn := {<<>>, _, <<"auth-method">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{'auth-method' => get_auth_method(Val)});
parse_request_attributes([#{nn := {<<>>, _, <<"send-authorization">>}, sv := Val} | T], Acc) ->
    % TODO: find out what to do with this
    parse_request_attributes(T, Acc#{'send-authorization' => get_boolean(Val)});
parse_request_attributes([#{nn := {<<>>, _, <<"override-media-type">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{'override-media-type' => Val});
parse_request_attributes([#{nn := {<<>>, _, <<"follow-redirect">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{'follow-redirect' => get_boolean(Val)});
parse_request_attributes([#{nn := {<<>>, _, <<"timeout">>}, sv := Val} | T], Acc) ->
    parse_request_attributes(T, Acc#{timeout => get_integer(Val)});
parse_request_attributes([_ | _], _) ->
    err_bad_request();
parse_request_attributes([], Acc) ->
    V = validate_request_attributes(Acc),
    validate_request_attributes_1(V).

validate_request_attributes(
    #{
        username := _,
        password := _,
        'auth-method' := _
    } = Atts
) ->
    Atts;
validate_request_attributes(
    #{
        username := _,
        password := _
    } = Atts
) ->
    Atts#{'auth-method' => <<"Basic">>};
validate_request_attributes(#{username := _}) ->
    err_generic();
validate_request_attributes(#{password := _}) ->
    err_generic();
validate_request_attributes(#{'auth-method' := _}) ->
    err_generic();
validate_request_attributes(Atts) ->
    Atts.

validate_request_attributes_1(#{'status-only' := true} = Atts) ->
    Atts#{method := head};
validate_request_attributes_1(Atts) ->
    Atts.

parse_header_attributes([
    #{nn := {<<>>, _, <<"name">>}, sv := Name},
    #{nn := {<<>>, _, <<"value">>}, sv := Val}
]) ->
    {Name, Val};
parse_header_attributes([
    #{nn := {<<>>, _, <<"value">>}, sv := Val},
    #{nn := {<<>>, _, <<"name">>}, sv := Name}
]) ->
    {Name, Val};
parse_header_attributes(_) ->
    err_bad_request().

% 1:1 serialization
parse_body_attributes(Atts) ->
    List = [
        {
            #qname{
                namespace = ?SNS,
                prefix = <<>>,
                local_name = Nm
            },
            Sv
        }
     || #{nn := {_, _, Nm}, sv := Sv} <- Atts, Nm =/= <<"src">>
    ],
    xqerl_options:serialization_option_map(List, []).

get_integer(Int) ->
    try
        binary_to_integer(Int)
    catch
        _:_ ->
            err_bad_request()
    end.

get_auth_method(Method) ->
    case string:lowercase(Method) of
        % doesn`t really work
        <<"digest">> -> digest;
        <<"basic">> -> basic;
        _ -> err_bad_request()
    end.

get_boolean(<<"true">>) -> true;
get_boolean(<<"yes">>) -> true;
get_boolean(<<"false">>) -> false;
get_boolean(<<"no">>) -> false;
get_boolean(_) -> err_bad_request().

get_method(Method) ->
    case string:lowercase(Method) of
        <<"get">> ->
            get;
        <<"post">> ->
            post;
        <<"head">> ->
            head;
        <<"options">> ->
            options;
        <<"put">> ->
            put;
        <<"delete">> ->
            delete;
        % no TRACE CONNECT,
        _ ->
            % HEAD is used when no body requested
            err_bad_request()
    end.

err_generic() ->
    E = #xqError{
        description =
            "An HTTP error occurred.",
        name = #qname{
            namespace = ?ENS,
            prefix = ?EPX,
            local_name = <<"HC001">>
        }
    },
    throw(E).

err_parse() ->
    E = #xqError{
        description =
            "Error parsing the entity content as XML or HTML.",
        name = #qname{
            namespace = ?ENS,
            prefix = ?EPX,
            local_name = <<"HC002">>
        }
    },
    throw(E).

%% @TODO: implement multipart
%% ```err_bad_multipart() ->
%%    E = #xqError{description =
%%                   "With a multipart response, the override-media-type must be"
%%                   " either a multipart media type or application/octet-stream.",
%%                 name = #qname{namespace = ?ENS,prefix = ?EPX,
%%                               local_name = <<"HC003">>}
%%                 },
%%    throw(E).
%%'''

%% @TODO: implement src attribute in body
%% ```err_bad_source() ->
%%    E = #xqError{description =
%%                   "The src attribute on the body element is mutually exclusive"
%%                   " with all other attribute (except the media-type).",
%%                 name = #qname{namespace = ?ENS,prefix = ?EPX,
%%                               local_name = <<"HC004">>}
%%                 },
%%    throw(E).'''

err_bad_request() ->
    E = #xqError{
        description = "The request element is not valid.",
        name = #qname{
            namespace = ?ENS,
            prefix = ?EPX,
            local_name = <<"HC005">>
        }
    },
    throw(E).

err_timeout() ->
    E = #xqError{
        description = "A timeout occurred waiting for the response.",
        name = #qname{
            namespace = ?ENS,
            prefix = ?EPX,
            local_name = <<"HC006">>
        }
    },
    throw(E).

do_req(
    Ctx,
    #{
        href := URL,
        method := Method,
        headers := Headers,
        body := Serial,
        timeout := TO
    } = Opts
) ->
    TimeOut = [{recv_timeout, TO * 1000}],
    Auth =
        case Opts of
            #{
                username := Username,
                password := Password,
                'auth-method' := _
            } ->
                [{basic_auth, {Username, Password}} | TimeOut];
            _ ->
                TimeOut
        end,
    Redirect =
        case maps:get('follow-redirect', Opts, true) of
            true ->
                % spec says max one hop
                [{follow_redirect, true}, {max_redirect, 1} | Auth];
            false ->
                Auth
        end,
    case hackney:request(Method, URL, Headers, Serial, Redirect) of
        {error, timeout} ->
            err_timeout();
        {error, connect_timeout} ->
            err_timeout();
        {error, _} ->
            err_generic();
        {ok, StatusCode, RespHeaders, ClientRef} ->
            case hackney:body(ClientRef) of
                {ok, Body1} ->
                    resp_element(Ctx, StatusCode, RespHeaders, Body1, Opts);
                _ ->
                    err_generic()
            end;
        % head
        {ok, StatusCode, RespHeaders} ->
            resp_element(Ctx, StatusCode, RespHeaders, head, Opts)
    end.

resp_element(Ctx, StatusCode, Headers0, Body, #{href := URL} = Opts) ->
    Headers = normalize_headers(Headers0),
    HdElems = resp_headers_to_elements(Headers),
    ContTyp = proplists:get_value(<<"content-type">>, Headers, <<"text/xml">>),
    Encoding = proplists:get_value(<<"content-encoding">>, Headers, plain),
    [ContTyp1 | _] = string:split(ContTyp, ";"),
    ContTyp2 = maps:get('override-media-type', Opts, ContTyp1),
    Ref = make_ref(),
    ContElem =
        element_node(
            {?NS, ?PX, <<"body">>},
            [attribute(<<"media-type">>, ContTyp2, Ref)],
            [],
            Ref
        ),
    StatAtts = [
        attribute(<<"message">>, code_text(StatusCode), Ref),
        attribute(<<"status">>, integer_to_binary(StatusCode), Ref)
    ],
    Elem =
        element_node(
            {?NS, ?PX, <<"response">>},
            StatAtts,
            HdElems ++ [ContElem],
            Ref
        ),
    case Body of
        % methods that have no body
        head ->
            xqerl_node:contruct(Ctx, Elem);
        % zipped
        _ when Encoding == <<"gzip">> ->
            Body1 = zlib:gunzip(Body),
            ParsedBody = parse_body(ContTyp2, Body1, URL),
            [xqerl_node:contruct(Ctx, Elem), ParsedBody];
        _ ->
            ParsedBody = parse_body(ContTyp2, Body, URL),
            [xqerl_node:contruct(Ctx, Elem), ParsedBody]
    end.

resp_headers_to_elements(Headers) ->
    [
        begin
            Ref = make_ref(),
            element_node(
                {?NS, ?PX, <<"header">>},
                [
                    attribute(<<"value">>, Value, Ref),
                    attribute(<<"name">>, Name, Ref)
                ],
                [],
                Ref
            )
        end
     || {Name, Value} <- Headers
    ].

normalize_headers(Headers) ->
    [{string:lowercase(K), V} || {K, V} <- Headers].

attribute(LocalName, Value, Ref) ->
    #{
        nk => attribute,
        id => {Ref, -1},
        nn => {<<>>, <<>>, LocalName},
        sv => Value,
        tn => 'xs:untypedAtomic'
    }.

element_node(Name, Atts, Expr, Ref) ->
    #{
        nk => element,
        id => {Ref, -1},
        nn => Name,
        at => Atts,
        ch => Expr,
        tn => 'xs:untyped',
        ns => #{
            <<>> => <<>>,
            ?PX => ?NS
        }
    }.

% returns StatusCode, Headers
parse_custom_response(#{
    nk := element,
    nn := {?NS, _, <<"response">>},
    at := Atts,
    ch := Headers
}) ->
    Status =
        case
            [
                binary_to_integer(StatusStr)
             || #{
                    nn := {<<>>, _, <<"status">>},
                    sv := StatusStr
                } <- Atts
            ]
        of
            [] ->
                200;
            [V] ->
                V
        end,
    NameVals = [
        parse_header_attributes(A)
     || #{
            nn := {?NS, _, <<"header">>},
            at := A
        } <- Headers
    ],
    LowNameVals = [{string:lowercase(Name), Val} || {Name, Val} <- NameVals],
    {Status, maps:from_list(LowNameVals)}.

read_body(Req) ->
    case cowboy_req:has_body(Req) of
        true ->
            read_body(Req, <<>>);
        false ->
            <<>>
    end.

read_body(Req, Acc) ->
    case cowboy_req:read_body(Req) of
        {more, Bin, Req1} ->
            read_body(Req1, <<Acc/binary, Bin/binary>>);
        {ok, Bin, _} ->
            <<Acc/binary, Bin/binary>>
    end.

parse_body(MediaTyp, Body, URL) ->
    try
        case get_content_media_type(MediaTyp) of
            text ->
                Body;
            binary ->
                #xqAtomicValue{type = 'xs:base64Binary', value = Body};
            _ when Body == <<>> ->
                [];
            json ->
                xqerl_json:string(Body, []);
            xml ->
                xqldb_mem_nodes:parse_binary(Body, {<<>>, URL});
            html ->
                xqldb_mem_nodes:parse_binary_html(Body, URL);
            csv ->
                xqerl_mod_csv:parse(#{}, Body)
        end
    catch
        _:Err:Stack ->
            ?dbg("Err", Err),
            ?dbg("Stack", Stack),
            ?dbg("MediaTyp", MediaTyp),
            ?dbg("Body", Body),
            err_parse()
    end.

get_content_media_type(<<"text/xml", _/binary>>) ->
    xml;
get_content_media_type(<<"text/html">>) ->
    html;
get_content_media_type(<<"text/csv">>) ->
    csv;
get_content_media_type(<<"text/", _/binary>>) ->
    text;
get_content_media_type(<<"application/octet-stream">>) ->
    binary;
get_content_media_type(<<"application/xml">>) ->
    xml;
get_content_media_type(<<"application/json">>) ->
    json;
get_content_media_type(<<"application/xhtml+xml">>) ->
    xhtml;
get_content_media_type(Other) ->
    Sz = byte_size(Other),
    Tl = Sz - 4,
    case Other of
        <<_:Tl/binary, "+xml">> when Tl > 0 ->
            xml;
        _ ->
            binary
    end.

code_text(200) -> <<"OK">>;
code_text(100) -> <<"Continue">>;
code_text(101) -> <<"Switching Protocols">>;
code_text(102) -> <<"Processing">>;
code_text(103) -> <<"Early Hints">>;
code_text(201) -> <<"Created">>;
code_text(202) -> <<"Accepted">>;
code_text(203) -> <<"Non-Authoritative Information">>;
code_text(204) -> <<"No Content">>;
code_text(205) -> <<"Reset Content">>;
code_text(206) -> <<"Partial Content">>;
code_text(207) -> <<"Multi-Status">>;
code_text(208) -> <<"Already Reported">>;
code_text(226) -> <<"IM Used">>;
code_text(300) -> <<"Multiple Choices">>;
code_text(301) -> <<"Moved Permanently">>;
code_text(302) -> <<"Found">>;
code_text(303) -> <<"See Other">>;
code_text(304) -> <<"Not Modified">>;
code_text(305) -> <<"Use Proxy">>;
code_text(306) -> <<"Switch Proxy">>;
code_text(307) -> <<"Temporary Redirect">>;
code_text(308) -> <<"Permanent Redirect">>;
code_text(400) -> <<"Bad Request">>;
code_text(401) -> <<"Unauthorized">>;
code_text(402) -> <<"Payment Required">>;
code_text(403) -> <<"Forbidden">>;
code_text(404) -> <<"Not Found">>;
code_text(405) -> <<"Method Not Allowed">>;
code_text(406) -> <<"Not Acceptable">>;
code_text(407) -> <<"Proxy Authentication Required">>;
code_text(408) -> <<"Request Timeout">>;
code_text(409) -> <<"Conflict">>;
code_text(410) -> <<"Gone">>;
code_text(411) -> <<"Length Required">>;
code_text(412) -> <<"Precondition Failed">>;
code_text(413) -> <<"Payload Too Large">>;
code_text(414) -> <<"URI Too Long">>;
code_text(415) -> <<"Unsupported Media Type">>;
code_text(416) -> <<"Range Not Satisfiable">>;
code_text(417) -> <<"Expectation Failed">>;
code_text(418) -> <<"I'm a teapot">>;
code_text(421) -> <<"Misdirected Request">>;
code_text(422) -> <<"Unprocessable Entity">>;
code_text(423) -> <<"Locked">>;
code_text(424) -> <<"Failed Dependency">>;
code_text(426) -> <<"Upgrade Required">>;
code_text(428) -> <<"Precondition Required">>;
code_text(429) -> <<"Too Many Requests">>;
code_text(431) -> <<"Request Header Fields Too Large">>;
code_text(451) -> <<"Unavailable For Legal Reasons">>;
code_text(500) -> <<"Internal Server Error">>;
code_text(501) -> <<"Not Implemented">>;
code_text(502) -> <<"Bad Gateway">>;
code_text(503) -> <<"Service Unavailable">>;
code_text(504) -> <<"Gateway Timeout">>;
code_text(505) -> <<"HTTP Version Not Supported">>;
code_text(506) -> <<"Variant Also Negotiates">>;
code_text(507) -> <<"Insufficient Storage">>;
code_text(508) -> <<"Loop Detected">>;
code_text(510) -> <<"Not Extended">>;
code_text(511) -> <<"Network Authentication Required">>;
code_text(_) -> <<"D'oh">>.
