%% @doc rest api db item handler.
-module(xqerl_handler_rest_db).
% REST Callbacks
-export([init/2]).
-export([allowed_methods/2]).
-export([content_types_provided/2]).
-export([content_types_accepted/2]).
-export([resource_exists/2]).
-export([delete_resource/2]).
-export([delete_completed/2]).
-export([allow_missing_post/2]).
% Callback Callbacks
-export([to_retrieve/2]).
-export([from_create/2]).
-export([from_update/2]).
%-export([get_relPath/1])

-define(SERVER, xqerl_main_mod_server).
% all requests start here
init(Req, Opts) ->
    {cowboy_rest, Req, Opts}.

% callbacks called in succession
% flow START
allowed_methods(Req, State) ->
    {[<<"GET">>, <<"HEAD">>, <<"POST">>, <<"PUT">>, <<"DELETE">>, <<"OPTIONS">>], Req, State}.

% known methods
% etc  https://ninenines.eu/docs/en/cowboy/2.9/guide/rest_flowcharts/  TODO
%
% OPTIONS methods
% TODO!
% - show methods allowed,
% - allowed POST body mime-types
% options(Req, State) -> {ok, Req, State}
% If the options callback is not defined,
% Cowboy will send a response containing
% the list of allowed methods by default.
% true continue else false abort 400 code

% flow CONTENT NEGOTIATION after START
% if has_accept header then move to
% content_types_provided
% request with content-type header
% this callback is called after GET and HEAD flow
content_types_provided(Req, State) ->
    {
        [
            {{<<"application">>, <<"xml">>, '*'}, to_retrieve},
            {{<<"application">>, <<"json">>, '*'}, to_retrieve},
            {{<<"text">>, <<"plain">>, '*'}, to_retrieve}
        ],
        Req,
        State
    }.
% end CONTENT_NEGOTIATION

resource_exists(Req, State) ->
    case cowboy_req:method(Req) of
        <<"POST">> ->
            {false, Req, State};
        <<"GET">> ->
            % We want to use GET on either collections or items
            URI = get_uri(Req),
            case is_any(URI) of
                Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
                _ -> {false, Req, State}
            end;
        <<"HEAD">> ->
            % We want to use HEAD on either collections or items
            URI = get_uri(Req),
            case is_any(URI) of
                Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
                _ -> {false, Req, State}
            end;
        <<"DELETE">> ->
            % We want to use DELETE only on items
            % Might change this to alloe deletions on collections
            URI = get_uri(Req),
            case is_item(URI) of
                Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
                _ -> {false, Req, State}
            end;
        _ ->
            % type: item for DELETE PUT PATCH and HEAD?
            URI = get_uri(Req),
            case is_item(URI) of
                Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
                _ -> {false, Req, State}
            end
    end.
%
% % flow GET and HEAD methods
% % resource_exists => true | false
% % a GET on a collection returns a list of resources
% % a GET on a collection item return a resource

% % for GET and HEAD methods
to_retrieve(Req, State) ->
    Accept = cowboy_req:header(<<"accept">>, Req),
    Host = cowboy_req:host(Req),
    Scheme = cowboy_req:scheme(Req),
    Port = integer_to_list(cowboy_req:port(Req)),
    RestBase = list_to_binary([Scheme, "://", Host, ":", Port, "/db/"]),
    URI = get_uri(Req),
    Args = #{
        <<"uri">> => URI,
        <<"accept">> => Accept,
        <<"base">> => RestBase
    },
    Reply = gen_server:call(xqerl_main_mod_server, {retrieve, Args}),
    {Reply, Req, State}.
%
%
% for POST PUT PATCH method
content_types_accepted(Req, State) ->
    case cowboy_req:method(Req) of
        <<"POST">> ->
            {
                [
                    {{<<"application">>, <<"xml">>, '*'}, from_create},
                    {{<<"application">>, <<"json">>, '*'}, from_create}
                ],
                Req,
                State
            };
        <<"PUT">> ->
            {
                [
                    {{<<"application">>, <<"xml">>, '*'}, from_update},
                    {{<<"application">>, <<"json">>, '*'}, from_update}
                ],
                Req,
                State
            };
        <<"PATCH">> ->
            {[], Req, State};
        _ ->
            {[], Req, State}
    end.

% Returning true here means that a new resource will be created.
% The URI for the newly created resource should be returned from the AcceptCallback function.
allow_missing_post(Req, State) ->
    case cowboy_req:method(Req) of
        <<"POST">> -> {true, Req, State};
        _ -> {false, Req, State}
    end.

%% @return {created, URI} or false
from_create(Req, State) ->
    Domain = cowboy_req:binding(domain, Req),
    Host = cowboy_req:host(Req),
    Scheme = cowboy_req:scheme(Req),
    Port = integer_to_list(cowboy_req:port(Req)),
    Uuid = xqerl:run("random:uuid()"),
    % may use use b60 for dated archive format
    Slug = cowboy_req:header(<<"slug">>, Req, Uuid),
    RestBase = [Scheme, "://", Host, ":", Port, "/db/", Domain, "/"],
    DbBase = ["http://", Domain, "/"],
    case cowboy_req:path_info(Req) of
        [] ->
            URI = list_to_binary([DbBase, Slug]),
            Location = list_to_binary([RestBase, Slug]);
        _ ->
            RelPath = filename:join(cowboy_req:path_info(Req)),
            URI = list_to_binary([DbBase, RelPath, "/", Slug]),
            Location = list_to_binary([RestBase, RelPath, "/", Slug])
    end,
    Type = cowboy_req:header(<<"content-type">>, Req),
    {ok, Data, _} = cowboy_req:read_body(Req, #{}),
    Args = #{
        <<"data">> => Data,
        <<"uri">> => URI,
        <<"type">> => Type
    },
    case gen_server:call(xqerl_main_mod_server, {create, Args}) of
        Atom when is_atom(Atom) andalso Atom =:= true -> {{created, Location}, Req, State};
        _ -> {false, Req, State}
    end.

% we don't what to post to an existing URI
% if we do create a bad request
% case is_item(URI) of
%     Atom when is_atom(Atom) andalso Atom =:= false -> {Atom, Req, State};
%     _ ->
%         case gen_server:call(xqerl_main_mod_server, {create, Args}) of
%             Atom when is_atom(Atom) andalso Atom =:= true -> {{created, Location}, Req, State};
%             _ -> {false, Req, State}
%         end
% end.

from_update(Req, State) ->
    URI = get_uri(Req),
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
% %
% % for DELETE method
% true  if db item deleted return 204
%
delete_resource(Req, State) ->
    URI = get_uri(Req),
    Args = #{
        <<"uri">> => URI
    },
    case gen_server:call(xqerl_main_mod_server, {delete, Args}) of
        Atom when is_atom(Atom) andalso Atom =:= true -> {Atom, Req, State};
        _ -> {false, Req, State}
    end.

delete_completed(Req, State) ->
    URI = get_uri(Req),
    Args = #{<<"type">> => <<"item">>, <<"uri">> => URI},
    Reply = gen_server:call(xqerl_main_mod_server, {available, Args}),
    {Reply, Req, State}.

get_uri(Req) ->
    BaseUri = ["http://", cowboy_req:binding(domain, Req), "/"],
    case cowboy_req:path_info(Req) of
        [] ->
            list_to_binary(BaseUri);
        _ ->
            Tokens = cowboy_req:path_info(Req),
            RelPath = filename:join(Tokens),
            list_to_binary([BaseUri, RelPath])
    end.

is_item(URI) ->
    Args = #{<<"type">> => <<"item">>, <<"uri">> => URI},
    gen_server:call(xqerl_main_mod_server, {available, Args}).

% not used
% is_collection(URI) ->
%     Args = #{<<"type">> => <<"collection">>, <<"uri">> => URI},
%     gen_server:call(xqerl_main_mod_server, {available, Args}).

is_any(URI) ->
    Args = #{<<"type">> => <<"any">>, <<"uri">> => URI},
    gen_server:call(xqerl_main_mod_server, {available, Args}).

% % TODO
% % patch_resource(Req, State) ->
