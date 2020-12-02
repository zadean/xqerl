%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019-2020 Zachary N. Dean  All Rights Reserved.
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

%% @doc Namespace http://xqerl.org/modules/event
%% Module for sending event notifications to Erlang.

-module(xqerl_mod_event).

-include("xqerl.hrl").

-define(NS, <<"http://xqerl.org/modules/event">>).
-define(PX, <<"event">>).
-define(XL, <<"http://xqerl.org/xquery">>).
-define(ND, <<"non-deterministic">>).

%% ====================================================================
%% API functions
%% ====================================================================
-export([notify/2, notify/3, notify/4, notify/5]).

-'module-namespace'({?NS, ?PX}).

-variables([]).

-functions([
    {{qname, ?NS, ?PX, <<"notify">>}, {seqType, 'empty-sequence', zero},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}], {'notify', 2}, 1, [
            {seqType, 'item', zero_or_many}
        ]},
    {{qname, ?NS, ?PX, <<"notify">>}, {seqType, 'empty-sequence', zero},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}], {'notify', 3}, 2, [
            {seqType, 'item', zero_or_many},
            {seqType, 'item', zero_or_many}
        ]},
    {{qname, ?NS, ?PX, <<"notify">>}, {seqType, 'empty-sequence', zero},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}], {'notify', 4}, 3, [
            {seqType, 'item', zero_or_many},
            {seqType, 'item', zero_or_many},
            {seqType, 'item', zero_or_many}
        ]},
    {{qname, ?NS, ?PX, <<"notify">>}, {seqType, 'empty-sequence', zero},
        [{annotation, {qname, ?XL, <<>>, ?ND}, []}], {'notify', 5}, 4, [
            {seqType, 'item', zero_or_many},
            {seqType, 'item', zero_or_many},
            {seqType, 'item', zero_or_many},
            {seqType, 'item', zero_or_many}
        ]}
]).

%% Notify the event manager.
%% event:notify(
%%    $arg1 as item()*) as empty-sequence()
-spec notify(
    xq_types:context(),
    Arg1 :: [] | xq_types:sequence(xq_types:xq_item())
) -> [].
notify(_, Arg1) ->
    ok = gen_event:notify(xqerl_event_man, {xqerl_event, Arg1}),
    [].

%% Notify the event manager.
%% event:notify(
%%    $arg1 as item()*,
%%    $arg2 as item()*) as empty-sequence()
-spec notify(
    xq_types:context(),
    Arg1 :: [] | xq_types:sequence(xq_types:xq_item()),
    Arg2 :: [] | xq_types:sequence(xq_types:xq_item())
) -> [].
notify(_, Arg1, Arg2) ->
    ok = gen_event:notify(xqerl_event_man, {xqerl_event, Arg1, Arg2}),
    [].

%% Notify the event manager.
%% event:notify(
%%    $arg1 as item()*,
%%    $arg2 as item()*,
%%    $arg3 as item()*) as empty-sequence()
-spec notify(
    xq_types:context(),
    Arg1 :: [] | xq_types:sequence(xq_types:xq_item()),
    Arg2 :: [] | xq_types:sequence(xq_types:xq_item()),
    Arg3 :: [] | xq_types:sequence(xq_types:xq_item())
) -> [].
notify(_, Arg1, Arg2, Arg3) ->
    ok = gen_event:notify(xqerl_event_man, {xqerl_event, Arg1, Arg2, Arg3}),
    [].

%% Notify the event manager.
%% event:notify(
%%    $arg1 as item()*,
%%    $arg2 as item()*,
%%    $arg3 as item()*,
%%    $arg4 as item()*) as empty-sequence()
-spec notify(
    xq_types:context(),
    Arg1 :: [] | xq_types:sequence(xq_types:xq_item()),
    Arg2 :: [] | xq_types:sequence(xq_types:xq_item()),
    Arg3 :: [] | xq_types:sequence(xq_types:xq_item()),
    Arg4 :: [] | xq_types:sequence(xq_types:xq_item())
) -> [].
notify(_, Arg1, Arg2, Arg3, Arg4) ->
    ok = gen_event:notify(xqerl_event_man, {xqerl_event, Arg1, Arg2, Arg3, Arg4}),
    [].
