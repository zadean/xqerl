%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2018 Zachary N. Dean  All Rights Reserved.
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

%% @doc Collection builder

-module(xqerl_collection).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([put/2]).
-export([get/1]).

put(Uri,Items) ->
   xqerl_ds:insert_doc(Uri, Items).

get("") ->
   xqerl_ds:lookup_doc(default);
get(Uri) ->
   xqerl_ds:lookup_doc(Uri).

%% ====================================================================
%% Internal functions
%% ====================================================================


