%% @doc rest api db item handler.
-module(xqerl_handler_rest_db_item).
% REST Callbacks
-export([init/2]).
-export([service_available/2]).
-export([allowed_methods/2]).
-export([content_types_provided/2]).
-export([content_types_accepted/2]).
-export([resource_exists/2]).
-export([delete_resource/2]).
-export([delete_completed/2]).
%-export([content_types_accepted/2]).
% -export([resource_exists/2]).
%
% Callback Callbacks
-export([to_xml/2]).
-export([to_json/2]).
-export([update_item/2]).

-define(SERVER, xqerl_main_mod_server).

init(Req, Opts) ->
    {cowboy_rest, Req, Opts}.

% callbacks called in succession

%  is db domain available? || 503
service_available(Req, State) -> {true, Req, State}.
% Domain = cowboy_req:binding(domain, Req),
% DBdomain  = ["http://",Domain],
% Result = xqldb_db:exists(DBdomain),
% {Result, Req, State}.

allowed_methods(Req, State) ->
    {[<<"GET">>, <<"HEAD">>, <<"PUT">>, <<"DELETE">>, <<"OPTIONS">>], Req, State}.
% etc  https://ninenines.eu/docs/en/cowboy/2.9/guide/rest_flowcharts/  TODO

% true continue else false abort 400 code
resource_exists(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Collection = cowboy_req:binding(collection, Req),
    Item = cowboy_req:binding(item, Req),
    URI = list_to_binary(["http://", Domain, "/", Collection, "/", Item]),
    Args = #{
        <<"uri">> => URI,
        <<"type">> => <<"item">>
    },
    Reply = gen_server:call(xqerl_main_mod_server, {available, Args}),
    {Reply, Req, State}.

% for GET and HEAD methods
content_types_provided(Req, State) ->
    {
        [
            {{<<"application">>, <<"xml">>, '*'}, to_xml},
            {{<<"application">>, <<"json">>, '*'}, to_json}
        ],
        Req,
        State
    }.

to_xml(Req, State) ->
    case cowboy_req:method(Req) of
        <<"HEAD">> ->
            {<<"">>, Req, State};
        _ ->
            Domain = cowboy_req:binding(domain, Req),
            Collection = cowboy_req:binding(collection, Req),
            Item = cowboy_req:binding(item, Req),
            DBitem = list_to_binary(["http://", Domain, "/", Collection, "/", Item]),
            Type = <<"xml">>,
            Args = #{
                <<"uri">> => DBitem,
                <<"type">> => Type
            },
            Reply = gen_server:call(xqerl_main_mod_server, {retrieve, Args}),
            {Reply, Req, State}
    end.

to_json(Req, State) ->
    case cowboy_req:method(Req) of
        <<"HEAD">> ->
            {<<"">>, Req, State};
        _ ->
            Domain = cowboy_req:binding(domain, Req),
            Collection = cowboy_req:binding(collection, Req),
            Item = cowboy_req:binding(item, Req),
            DBitem = list_to_binary(["http://", Domain, "/", Collection, "/", Item]),
            Type = <<"json">>,
            Args = #{
                <<"uri">> => DBitem,
                <<"type">> => Type
            },
            Reply = gen_server:call(xqerl_main_mod_server, {retrieve, Args}),
            {Reply, Req, State}
    end.

% end of GET and HEAD flow
%
% for PUT and PATCH method
% - resource exists: true
% - method is put: true
% - is conflict: default is false
% content types accepted:
content_types_accepted(Req, State) ->
    {
        [
            {{<<"application">>, <<"xml">>, '*'}, update_item},
            {{<<"application">>, <<"json">>, '*'}, update_item}
        ],
        Req,
        State
    }.

update_item(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Collection = cowboy_req:binding(collection, Req),
    Item = cowboy_req:binding(item, Req),
    URI = list_to_binary(["http://", Domain, "/", Collection, "/", Item]),
    % may use use b60 for dated archive format
    Type = cowboy_req:header(<<"content-type">>, Req),
    {ok, Data, _} = cowboy_req:read_body(Req, #{}),
    Args = #{
        <<"data">> => Data,
        <<"uri">> => URI,
        <<"type">> => Type
    },
    case gen_server:call(xqerl_main_mod_server, {update, Args}) of
        Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
        % when xqerl throws a xqError
        Etup when is_tuple(Etup) -> {false, Req, State};
        _ -> {false, Req, State}
    end.

% end of PUT and PATCH flow
%
% for DELETE method
delete_resource(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Collection = cowboy_req:binding(collection, Req),
    Item = cowboy_req:binding(item, Req),
    DBitem = list_to_binary(["http://", Domain, "/", Collection, "/", Item]),
    Type = <<"item">>,
    Args = #{
        <<"uri">> => DBitem,
        <<"type">> => Type
    },
    case gen_server:call(xqerl_main_mod_server, {delete, Args}) of
        Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
        % ? when xqerl throws a xqError
        Etup when is_tuple(Etup) -> {false, Req, State};
        _ -> {false, Req, State}
    end.

% true  if db item deleted return 204
delete_completed(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Collection = cowboy_req:binding(collection, Req),
    Item = cowboy_req:binding(item, Req),
    DBitem = ["http://", Domain, "/", Collection, "/", Item],
    % call(ServerRef, Request) -> Reply
    Args = #{<<"arg">> => list_to_binary(DBitem)},
    Reply = gen_server:call(xqerl_main_mod_server, {available, Args}),
    {Reply, Req, State}.

% TODO
% patch_resource(Req, State) ->
%   Domain = cowboy_req:binding(domain, Req),
%   Collection = cowboy_req:binding(collection, Req),
%   Item = cowboy_req:binding(item, Req),
%   DBitem    = ["http://",Domain,"/",Collection,"/",Item],
%   % call(ServerRef, Request) -> Reply
%   Args = #{<<"arg">> => list_to_binary(DBitem)},
%   Reply = gen_server:call(xqerl_main_mod_server, {delete, Args}),
%   {true, Req, State}.
