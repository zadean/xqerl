%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
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

%% @doc Implementation of the "http://expath.org/ns/http-client" namespace.

%% http://expath.org/spec/http-client

-module(xqerl_mod_http_client).

-include("xqerl.hrl").

-define(NS, <<"http://expath.org/ns/http-client">>).
-define(PX, <<"http">>).
-define(ENS, <<"http://expath.org/ns/error">>).
-define(EPX, <<"experr">>).
-define(SNS,<<"http://www.w3.org/2010/xslt-xquery-serialization">>).

-'module-namespace'({?NS,?PX}).
-namespaces([]).
-variables([]).
-functions([
 {{qname,?NS, ?PX, <<"send-request">>}, 
  {xqSeqType, 'item', one_or_many}, [], {'send-request', 4}, 3, 
  [{xqSeqType, {xqKindTest,element,{qname, ?NS, ?PX, <<"request">>},undefined}, zero_or_one},
   {xqSeqType, 'xs:string', zero_or_one},
   {xqSeqType, 'item', zero_or_many}]},
 {{qname,?NS, ?PX, <<"send-request">>}, 
  {xqSeqType, 'item', one_or_many}, [], {'send-request', 3}, 2, 
  [{xqSeqType, {xqKindTest,element,{qname, ?NS, ?PX, <<"request">>},undefined}, zero_or_one},
   {xqSeqType, 'xs:string', zero_or_one}]},
 {{qname,?NS, ?PX, <<"send-request">>}, 
  {xqSeqType, 'item', one_or_many}, [], {'send-request', 2}, 1, 
  [{xqSeqType, {xqKindTest,element,{qname, ?NS, ?PX, <<"request">>},undefined}, zero_or_one}]}
]).

%% ====================================================================
%% API functions
%% ====================================================================
-export(['send-request'/2,'send-request'/3,'send-request'/4]).

-export([get_content_media_type/1,
         parse_body/3,
         read_body/1]).

%% http:send-request($request as element(http:request)?,
%%                   $href as xs:string?,
%%                   $bodies as item()*) as item()+
'send-request'(Ctx, Request, Href, Bodies) ->
   Uri = xqerl_types:string_value(Href),
   Req = (parse_request(Request, Bodies))#{href => Uri},
   do_req(Ctx,Req).

%% http:send-request($request as element(http:request)?,
%%                   $href as xs:string?) as item()+
'send-request'(Ctx, Request, []) ->
   'send-request'(Ctx, Request);
'send-request'(Ctx, Request, Href) ->
   Uri = xqerl_types:string_value(Href),
   Req = (parse_request(Request, []))#{href => Uri},
   do_req(Ctx,Req).

%% http:send-request($request as element(http:request)?) as item()+
'send-request'(Ctx, Request) ->
   Req = parse_request(Request, []),
   do_req(Ctx,Req).


%% ====================================================================
%% Internal functions
%% ====================================================================

parse_request(#{nk := element,
                nn := {?NS, _,<<"request">>},
                at := Atts,
                ch := Ch}, Contents) ->
   AttMap = parse_request_attributes(Atts, #{'status-only' => false,
                                             'send-authorization' => false,
                                             'follow-redirect' => true,
                                             timeout => 10}),
   #{method := Method} = AttMap,
   Headers0 = [parse_header_attributes(A) 
             || #{nn := {?NS, _,<<"header">>},
                  at := A} <- Ch],
   Headers = case [N || {N,_} <- Headers0, string:lowercase(N) == <<"content-type">>] of
                [] ->
                   [{<<"content-type">>,<<"text/xml">>}|Headers0];
                _ ->
                   Headers0
             end,
   if Method == put;
      Method == post ->
         case Contents of
            [] ->
               try
                  [Body] = [C || #{nn := {?NS, _,<<"body">>}} = C <- Ch],
                  SerialOpts = parse_body_attributes(xqldb_mem_nodes:attributes(Body)),
                  Content = xqldb_mem_nodes:children(Body),
                  BodyContent = xqerl_serialize:serialize(Content, SerialOpts),
                  AttMap#{headers => Headers,
                          body => BodyContent}
               catch 
                  _:_ ->
                     err_bad_request()
               end;
            _ ->
               BodyContent = xqerl_serialize:serialize(Contents, #{}),
               AttMap#{headers => Headers,
                       body => BodyContent}
         end;               
      true ->
         AttMap#{headers => Headers,
                 body => <<>>}
   end.

parse_request_attributes([#{nn := {<<>>,_,<<"method">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{method => get_method(Val)});
parse_request_attributes([#{nn := {<<>>,_,<<"href">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{href => Val});
parse_request_attributes([#{nn := {<<>>,_,<<"status-only">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{'status-only' => get_boolean(Val)});
parse_request_attributes([#{nn := {<<>>,_,<<"username">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{username => Val});
parse_request_attributes([#{nn := {<<>>,_,<<"password">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{password => Val});
parse_request_attributes([#{nn := {<<>>,_,<<"auth-method">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{'auth-method' => get_auth_method(Val)});
parse_request_attributes([#{nn := {<<>>,_,<<"send-authorization">>}, sv := Val}|T], Acc) ->
   % TODO: find out what to do with this
   parse_request_attributes(T, Acc#{'send-authorization' => get_boolean(Val)});
parse_request_attributes([#{nn := {<<>>,_,<<"override-media-type">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{'override-media-type' => Val});
parse_request_attributes([#{nn := {<<>>,_,<<"follow-redirect">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{'follow-redirect' => get_boolean(Val)});
parse_request_attributes([#{nn := {<<>>,_,<<"timeout">>}, sv := Val}|T], Acc) ->
   parse_request_attributes(T, Acc#{timeout => get_integer(Val)});
parse_request_attributes([_|_], _) ->
   err_bad_request();
parse_request_attributes([], Acc) ->
   V = validate_request_attributes(Acc),
   validate_request_attributes_1(V).

validate_request_attributes(#{username := _,
                              password := _,
                              'auth-method' := _} = Atts) ->
   Atts;
validate_request_attributes(#{username := _,
                              password := _} = Atts) ->
   Atts#{'auth-method' => <<"Basic">>};
validate_request_attributes(#{username := _}) -> err_generic();
validate_request_attributes(#{password := _}) -> err_generic();
validate_request_attributes(#{'auth-method' := _}) -> err_generic();
validate_request_attributes(Atts) -> Atts.

validate_request_attributes_1(#{'status-only' := true} = Atts) ->
   Atts#{method := head};
validate_request_attributes_1(Atts) ->
   Atts.

parse_header_attributes([#{nn := {<<>>,_,<<"name">>}, sv := Name},
                         #{nn := {<<>>,_,<<"value">>}, sv := Val}]) ->
   {Name, Val};
parse_header_attributes([#{nn := {<<>>,_,<<"value">>}, sv := Val},
                         #{nn := {<<>>,_,<<"name">>}, sv := Name}]) ->
   {Name, Val};
parse_header_attributes(_) ->
   err_bad_request().

% 1:1 serialization
parse_body_attributes(Atts) ->
   List = [{#qname{namespace = ?SNS, local_name = Nm}, Sv} 
          || #{nn := {_,_,Nm}, sv := Sv} <- Atts, Nm =/= <<"src">>],
   xqerl_options:serialization_option_map(List,[]).

get_integer(Int) ->
   try
      binary_to_integer(Int)
   catch
      _:_ ->
         err_bad_request()
   end.

get_auth_method(Method) ->
   case string:lowercase(Method) of
      <<"digest">> -> digest; % doesn`t really work
      <<"basic">> -> basic;
      _ -> 
         err_bad_request()
   end.
         
get_boolean(<<"true">>) -> true;
get_boolean(<<"yes">>) -> true;
get_boolean(<<"false">>) -> false;
get_boolean(<<"no">>) -> false;
get_boolean(_) -> err_bad_request().

get_method(Method) ->
   case string:lowercase(Method) of
      <<"get">> -> get;
      <<"post">> -> post;
      <<"head">> -> head;
      <<"options">> -> options;
      <<"put">> -> put;
      <<"delete">> -> delete;
      _ -> % no TRACE CONNECT, 
           % HEAD is used when no body requested
         err_bad_request()
   end.
         
err_generic() ->
   E = #xqError{description = 
                  "An HTTP error occurred.",
                name = #qname{namespace = ?ENS,prefix = ?EPX,
                              local_name = <<"HC001">>}
                },
   exit(E).

err_parse() ->
   E = #xqError{description = 
                  "Error parsing the entity content as XML or HTML.",
                name = #qname{namespace = ?ENS,prefix = ?EPX,
                              local_name = <<"HC002">>}
                },
   exit(E).

%% TODO: implement multipart
%% err_bad_multipart() ->
%%    E = #xqError{description = 
%%                   "With a multipart response, the override-media-type must be"
%%                   " either a multipart media type or application/octet-stream.",
%%                 name = #qname{namespace = ?ENS,prefix = ?EPX,
%%                               local_name = <<"HC003">>}
%%                 },
%%    exit(E).
%% 

%% TODO: implement src attribute in body
%% err_bad_source() ->
%%    E = #xqError{description = 
%%                   "The src attribute on the body element is mutually exclusive"
%%                   " with all other attribute (except the media-type).",
%%                 name = #qname{namespace = ?ENS,prefix = ?EPX,
%%                               local_name = <<"HC004">>}
%%                 },
%%    exit(E).

err_bad_request() ->
   E = #xqError{description = "The request element is not valid.",
                name = #qname{namespace = ?ENS,prefix = ?EPX,
                              local_name = <<"HC005">>}
                },
   exit(E).

err_timeout() ->
   E = #xqError{description = "A timeout occurred waiting for the response.",
                name = #qname{namespace = ?ENS,prefix = ?EPX,
                              local_name = <<"HC006">>}
                },
   exit(E).

do_req(Ctx, #{href := URL,
              method := Method,
              headers := Headers,
              body := Serial,
              timeout := TO} = Opts) ->
   TimeOut = [{recv_timeout, TO * 1000}],
   Auth = if is_map_key('auth-method', Opts) ->
                #{username := Username,
                  password := Username,
                  'auth-method' := _} = Opts,
                [{basic_auth, {Username, Username}}|TimeOut];
             true ->
                TimeOut
          end,
   Redirect = case maps:get('follow-redirect', Opts, true) of
                 true ->
                    % spec says max one hop
                    [{follow_redirect, true}, {max_redirect, 1}|Auth];
                 false ->
                    Auth
              end,
   case hackney:request(Method, URL, Headers, Serial, Redirect) of
      {error, timeout} -> err_timeout();
      {error, connect_timeout} -> err_timeout();
      {error, _} -> err_generic();
      {ok, StatusCode, RespHeaders, ClientRef} ->
         case hackney:body(ClientRef) of
            {ok, Body1} ->
               resp_element(Ctx, StatusCode, RespHeaders, Body1, Opts);
            _ ->
               err_generic()
         end;
      {ok, StatusCode, RespHeaders} -> % head
         resp_element(Ctx, StatusCode, RespHeaders, <<>>, Opts)
   end.

resp_element(Ctx, StatusCode, Headers0, Body, #{href := URL} = Opts) ->
   Headers = normalize_headers(Headers0),
   HdElems = resp_headers_to_elements(Headers),
   ContTyp = proplists:get_value(<<"content-type">>, Headers, <<"text/xml">>),
   [ContTyp1|_] = string:split(ContTyp, ";"),
   ContTyp2 = maps:get('override-media-type', Opts, ContTyp1),
   ContElem = element_node(#qname{namespace = ?NS, prefix = ?PX, 
                                  local_name = <<"body">>}, 
                           [attribute(<<"media-type">>, ContTyp2)], []),
   StatAtts = [attribute(<<"status">>, integer_to_binary(StatusCode)),
               attribute(<<"message">>, code_text(StatusCode))],
   Elem = element_node(#qname{namespace = ?NS,
                        prefix = ?PX,
                        local_name = <<"response">>}, 
                       StatAtts, 
                       HdElems ++ [ContElem]),
   ParsedBody = parse_body(ContTyp2, Body, URL),
   [xqerl_node:new_fragment(Ctx, Elem), ParsedBody].

resp_headers_to_elements(Headers) ->
   [element_node(#qname{namespace = ?NS,
                        prefix = ?PX,
                        local_name = <<"header">>}, 
                 [attribute(<<"value">>, Value),
                  attribute(<<"name">>, Name)], [])       
    || {Name, Value} <- Headers].

normalize_headers(Headers) ->
   [{string:lowercase(K),V} || {K,V} <- Headers].

attribute(LocalName, Value) ->
  #xqAttributeNode{name = #qname{namespace = 'no-namespace',
                                 prefix = <<>>,
                                 local_name = LocalName},
                   string_value = Value}.

element_node(Name, Atts, Expr) ->
   #xqElementNode{name = Name, 
                  attributes = Atts, 
                  content = Expr}.

read_body(Req) ->
   read_body(Req, <<>>).
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
         xml when Body == <<>> ->
            [];
         xml ->
            xqldb_mem_nodes:parse_binary(Body, {<<>>, URL});
         json ->
            xqerl_json:string(Body, []);
         html ->
            xqldb_mem_nodes:parse_binary_html(Body, URL);
         text ->
            Body;
         binary ->
            #xqAtomicValue{type = 'xs:base64Binary', value = Body}
      end
   catch 
      _:_ ->
         ?dbg("MediaTyp",MediaTyp),
         err_parse()
   end.

get_content_media_type(<<"text/xml">>) -> xml;
get_content_media_type(<<"text/html">>) -> html;
get_content_media_type(<<"text/",_/binary>>) -> text;
get_content_media_type(<<"application/xml">>) -> xml;
get_content_media_type(<<"application/json">>) -> json;
get_content_media_type(<<"application/xhtml+xml">>) -> xhtml;
get_content_media_type(Other) -> 
   Sz = byte_size(Other),
   Tl = Sz - 4,
   case Other of
      <<_:Tl/binary,"+xml">> when Tl > 0 ->
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