% Copyright (c) 2018-2020 Zachary N. Dean  All Rights Reserved.
% SPDX-FileCopyrightText: 2022 Zachary Dean contact@zadean.com
%
% SPDX-License-Identifier: Apache-2.0

-include("xqerl.hrl").

%% node index module
%-define(INDEX, xqldb_idx_dets).
%-define(INDEX, xqldb_idx_ets).
-define(INDEX, xqldb_idx_mi).
-define(PINDEX, emojipoo).

% node kinds

% non-conformant xml
-define(fragment, 7).
-define(document, 0).
-define(element, 1).
-define(attribute, 2).
-define(namespace, 3).
-define(proc_inst, 4).
-define(comment, 5).
-define(text, 6).

-define(att_str, 0).
-define(att_id, 1).
-define(att_idref, 2).

-define(trace(A, B), io:format("~p: ~p~n", [A, B])).

-define(IS_LOCAL(Ref), erlang:node(Ref) == erlang:node()).

-define(TEXT, "text").
-define(NAME, "name").
-define(STRUCT, "struct").
-define(PATH, "path").
-define(JSON, json).
-define(RESOURCES, res).

-type res_type() :: xml | text | raw | item | link.

-type db() :: #{
    texts := pid(),
    names := pid(),
    namespaces := pid(),
    structure := pid(),
    paths := pid(),
    json := pid(),
    resources := pid(),
    db_uri := pid(),
    db_name := pid(),
    db_lock := pid(),
    _ => _
}.
