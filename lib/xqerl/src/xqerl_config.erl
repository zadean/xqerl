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

%% @doc xqerl_config Handles the configuration files for xqerl.


-module(xqerl_config).

%% ====================================================================
%% API functions
%% ====================================================================
-export([normalize/1]).

normalize(App) ->
   Config = application:get_all_env(App),
   normalize(App, Config).

%% ====================================================================
%% Internal functions
%% ====================================================================

normalize(A, [{log_file, H}|T]) ->
   application:set_env(A, logger, logger(H), [{persistent, true}]),
   normalize(A, T);
normalize(A, [{code_dir, H}|T]) ->
   application:set_env(A, code_dir, make_absolute(H), [{persistent, true}]),
   normalize(A, T);
normalize(A, [{data_dir, H}|T]) ->
   application:set_env(A, data_dir, make_absolute(H), [{persistent, true}]),
   normalize(A, T);
normalize(A,[_|T]) ->
   normalize(A,T);
normalize(_,[]) -> ok.
   
make_absolute(RelFile) ->
   case filename:pathtype(RelFile) of
      absolute -> RelFile;
      _ -> filename:absname(RelFile)
   end.

logger_handler(Name, Loc, Level, Domain, SingleLine, Template, Max) ->
   {handler, Name, logger_std_h,
    #{config    => #{type => Loc},
      level     => Level,
      filters   => 
        [{filter,
          {fun logger_filters:domain/2, {log, equal, [Domain]}}},
         {non_filter,
          {fun logger_filters:domain/2, {stop, not_equal, [Domain]}}}
        ],
      formatter =>
        {logger_formatter,
         #{legacy_header => false,
           single_line   => SingleLine,
           template      => Template,
           max_size      => Max}
        }
     }
   }.

logger(RelFile) ->
   AbsFile = make_absolute(RelFile),
   [
     logger_handler(
       xqerl_handler, {file, AbsFile}, all, xqerl, true, 
       [time, " [", level,"] ", mfa, "(",line,") ", pid, ": ", msg,"\n"],
       4000),
     logger_handler(
       trace_handler, standard_io, info, trace, false, 
       ["TRACE: ", msg, "\n"], unlimited)
   ]
   .

