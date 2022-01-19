-module(xqerl_handler_rest_db_collection).
% REST Callbacks
-export([init/2]).
-export([allowed_methods/2]).
-export([content_types_provided/2]).
-export([content_types_accepted/2]).
-export([resource_exists/2]).
% -export([service_available/2]).
-export([allow_missing_post/2]).
-export([delete_resource/2]).
-export([delete_completed/2]).
% Callback Callbacks
-export([list_to_text/2]).
-export([create_collection_item/2]).
init(Req, Opts) ->
    {cowboy_rest, Req, Opts}.

% callback called in succession
%  is db domain available? || 503
% service_available(Req, State) -> {true, Req, State}.

% Domain = cowboy_req:binding(domain, Req),
% DBdomain  = ["http://",Domain],
% Result = xqldb_db:exists(DBdomain),
% {Result, Req, State}.
% known methods TODO
% uri_to_long  TODO
allowed_methods(Req, State) ->
    {[<<"OPTIONS">>, <<"HEAD">>, <<"GET">>, <<"POST">>, <<"DELETE">>], Req, State}.

% for OPTIONS methods
% TODO!
% - show methods allowed,
% - allowed POST body mime-types
% options(Req, State) -> {ok, Req, State}
% If the options callback is not defined,
% Cowboy will send a response containing
% the list of allowed methods by default.

% true continue else false abort 400 code
resource_exists(Req, State) ->
    case cowboy_req:method(Req) of
        <<"POST">> ->
            {false, Req, State};
        _ ->
            Domain = cowboy_req:binding(domain, Req),
            Collection = cowboy_req:binding(collection, Req),
            URI = list_to_binary(["http://", Domain, "/", Collection]),
            Args = #{
                <<"uri">> => URI,
                <<"type">> => <<"collection">>
            },
            Reply = gen_server:call(xqerl_main_mod_server, {available, Args}),
            {Reply, Req, State}
    end.

% for GET and HEAD methods
content_types_provided(Req, State) ->
    {
        [
            {{<<"text">>, <<"plain">>, []}, list_to_text}
        ],
        Req,
        State
    }.

list_to_text(Req, State) ->
    case cowboy_req:method(Req) of
        <<"HEAD">> ->
            {<<"">>, Req, State};
        _ ->
            Domain = cowboy_req:binding(domain, Req),
            Collection = cowboy_req:binding(collection, Req),
            Host = cowboy_req:host(Req),
            URI = list_to_binary(["http://", Domain, "/", Collection]),
            Args = #{
                <<"host">> => Host,
                <<"uri">> => URI,
                <<"type">> => <<"text">>
            },
            Reply = gen_server:call(xqerl_main_mod_server, {list, Args}),
            {Reply, Req, State}
    end.
% end of GET and HEAD flow

% for POST method
content_types_accepted(Req, State) ->
    {
        [
            {{<<"application">>, <<"xml">>, '*'}, create_collection_item},
            {{<<"application">>, <<"json">>, '*'}, create_collection_item}
        ],
        Req,
        State
    }.

% Returning true here means that a new resource will be created.
% The URI for the newly created resource should be returned from the AcceptCallback function.
allow_missing_post(Req, State) -> {true, Req, State}.

%% @return {created, URI} or false
create_collection_item(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Collection = cowboy_req:binding(collection, Req),
    Host = cowboy_req:host(Req),
    Uuid = xqerl:run("random:uuid()"),
    % may use use b60 for dated archive format
    Slug = cowboy_req:header(<<"slug">>, Req, Uuid),
    DB_URI = list_to_binary(["http://", Domain, "/", Collection, "/", Slug]),
    Location = list_to_binary(["http://", Host, ":8081/db/", Domain, "/", Collection, "/", Slug]),
    Type = cowboy_req:header(<<"content-type">>, Req),
    {ok, Data, _} = cowboy_req:read_body(Req, #{}),
    Args = #{
        <<"data">> => Data,
        <<"uri">> => DB_URI,
        <<"type">> => Type
    },
    case gen_server:call(xqerl_main_mod_server, {create, Args}) of
        Atom when is_atom(Atom) andalso Atom =:= true -> {{created, Location}, Req, State};
        % when xqerl throws a xqError
        Etup when is_tuple(Etup) -> {false, Req, State};
        _ -> {false, Req, State}
    end.

% end of POST flow

% DELETE method
delete_resource(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Collection = cowboy_req:binding(collection, Req),
    URI = list_to_binary(["http://", Domain, "/", Collection]),
    Type = <<"collection">>,
    Args = #{
        <<"uri">> => URI,
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
    DBcoll = ["http://", Domain, "/", Collection],
    Result = xqldb_db:exists(DBcoll),
    {Result, Req, State}.

% end of DELETE flow
