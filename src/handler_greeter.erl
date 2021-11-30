
-module(handler_greeter).
% REST Callbacks
-export([init/2]).
-export([allowed_methods/2]).
-export([content_types_provided/2]).
% Callback Callbacks
-export([greeter_response/2]).

init(Req, Opts) ->
	{cowboy_rest, Req, Opts}.

allowed_methods(Req, State) ->
  {[<<"GET">>], Req, State}.

content_types_provided(Req, State) ->
  {[{<<"text/html">>, greeter_response }], Req, State}.

greeter_response(Req, State) ->
  Reply = gen_server:call(main_mod_server, greeter),
	{Reply, Req, State}.
