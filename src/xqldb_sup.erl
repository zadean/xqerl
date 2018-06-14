%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
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

-module(xqldb_sup).
-behaviour(supervisor).
-export([init/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/0]).

start_link() ->
   supervisor:start_link(?MODULE, []).

%% ====================================================================
%% Behavioural functions
%% ====================================================================

init(_) ->
   SupFlags = #{strategy  => one_for_one, 
                intensity => 1, 
                period    => 20},
   ChildSpecs = [#{id     => xqldb_idx_sup,
                   start  => {xqldb_idx_sup, start_link, []},
                   type   => supervisor
                  },
                 #{id     => xqldb_doc_sup,
                   start  => {xqldb_doc_sup, start_link, []},
                   type   => supervisor
                  },
                 #{id     => xqldb_res_sup,
                   start  => {xqldb_res_sup, start_link, []},
                   type   => supervisor
                  },
                 #{id     => xqldb_name_server,
                   start  => {xqldb_name_server, start_link, []}
                  },
                 #{id     => xqldb_namespace_server,
                   start  => {xqldb_namespace_server, start_link, []}
                  }
                ],
   {ok,{SupFlags, ChildSpecs}}.

%% ====================================================================
%% Internal functions
%% ====================================================================


