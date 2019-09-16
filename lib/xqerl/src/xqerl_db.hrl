%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
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

-include_lib("kernel/include/logger.hrl").

%% node index module
%-define(INDEX, xqldb_idx_dets).
%-define(INDEX, xqldb_idx_ets).
-define(INDEX, xqldb_idx_mi).
-define(PINDEX, emojipoo).

% node kinds
-define(fragment, 7). % non-conformant xml
-define(document, 0).
-define(element,  1).
-define(attribute,2).
-define(namespace,3).
-define(proc_inst,4).
-define(comment,  5).
-define(text,     6).

-define(att_str,  0).
-define(att_id,   1).
-define(att_idref,2).

-define(dbg(A,B),?LOG_DEBUG("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(info(A,B),?LOG_INFO("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(trace(A,B),io:format("~p: ~p~n",[A,B])).

-define(IS_LOCAL(Ref), erlang:node(Ref) == erlang:node()).

-define(TEXT,      "text").
-define(NAME,      "name").
-define(STRUCT,    "struct").
-define(PATH,      "path").
-define(JSON,      json).
-define(RESOURCES, res).

-type res_type() :: xml | json | res | item | link.

-type db() :: #{texts := pid(),
                names := pid(),
                namespaces := pid(),
                structure := pid(),
                paths := pid(),
                json := pid(),
                resources := pid(),
                db_uri := pid(),
                db_name := pid(),
                db_lock := pid(),
                _ => _}.
