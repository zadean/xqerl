%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2019 Zachary N. Dean  All Rights Reserved.
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

%% @doc Implements namespace http://xqerl.org/modules/actor

-module(xqerl_mod_actor).

-include("xqerl.hrl").

-define(NS,<<"http://xqerl.org/modules/actor">>).
-define(PX,<<"actor">>).

-define(XL,<<"http://xqerl.org/xquery">>).
-define(ND,<<"non-deterministic">>).

-'module-namespace'({?NS,?PX}).
-variables([]).
-functions([
 {{qname, ?NS, ?PX, <<"send">>}, 
  {xqSeqType, 'empty-sequence', zero}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'send', 3}, 2, 
  [{xqSeqType, 'xs:base64Binary', one},
   {xqSeqType, 'item', zero_or_many}]},
 {{qname, ?NS, ?PX, <<"receive">>}, 
  {xqSeqType, 'item', zero_or_many}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'receive_', 1}, 0, 
  []},
 {{qname, ?NS, ?PX, <<"receive">>}, 
  {xqSeqType, 'item', zero_or_many}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'receive_', 2}, 1, 
  [{xqSeqType, 'xs:base64Binary', one}]},
 {{qname, ?NS, ?PX, <<"receive">>}, 
  {xqSeqType, 'item', zero_or_many}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'receive_', 3}, 2, 
  [{xqSeqType, 'xs:base64Binary', one},
   {xqSeqType, 'xs:integer', one}]},
 {{qname, ?NS, ?PX, <<"spawn">>}, 
  {xqSeqType, 'xs:base64Binary', one}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'spawn_', 2}, 1, 
  [{xqSeqType, {xqFunTest,function,[],{qname, ?NS, ?PX, <<"spawn">>},[],{xqSeqType, item, zero_or_many}}, one}]},
 {{qname, ?NS, ?PX, <<"parent">>}, 
  {xqSeqType, 'xs:base64Binary', zero_or_one}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'parent', 1}, 0, 
  []},
 {{qname, ?NS, ?PX, <<"self">>}, 
  {xqSeqType, 'xs:base64Binary', one}, [{annotation,{qname, ?XL, <<>>, ?ND},[]}], 
  {'self_', 1}, 0, 
  []}]).

-define(bin(D), #xqAtomicValue{type = 'xs:base64Binary', value = D}).

%% ====================================================================
%% API functions
%% ====================================================================
-export([send/3,
         receive_/1, receive_/2, receive_/3,
         spawn_/2,
         parent/1,
         self_/1]).


%% Send a message to an actor.
%% actor:send(
%%    $to-address as xs:base64Binary,
%%    $payload    as item()*) as empty-sequence()
-spec send(
        xq_types:context(), 
        xq_types:xs_base64Binary() | pid(),
        xq_types:xq_item() | []) -> [].
send(_, ToAddress, Items) when is_pid(ToAddress) ->
   ToAddress ! #{from  => self(),
                 value => Items},
   [];
send(C, ?bin(ToAddress), Items) ->
   Pid = pid_from_bin(ToAddress),
   send(C, Pid, Items);
send(C, T, I) ->
   send(C, 
        xqerl_types:cast_as(T, 'xs:base64Binary'), 
        I).

%% Receive a message.
%% actor:receive() as item()*
-spec receive_(
        xq_types:context()) -> xq_types:xq_item() | [].
receive_(_) ->
   receive
      #{from := _,
        value := Items} ->
         Items
   end.

%% Receive a message from a particular actor.
%% actor:receive($from as xs:base64Binary) as item()*
-spec receive_(
        xq_types:context(),
        xq_types:xs_base64Binary() | pid()) -> xq_types:xq_item() | [].
receive_(_, FromAddress) when is_pid(FromAddress) ->
   receive
      #{from := FromAddress,
        value := Items} ->
         Items;
      {'DOWN', _, FromAddress, Err} ->
         Err
   end;
receive_(C, ?bin(FromAddress)) ->
   FromPid = pid_from_bin(FromAddress),
   receive_(C, FromPid);
receive_(C, F) ->
   receive_(C, 
            xqerl_types:cast_as(F, 'xs:base64Binary')).

%% Receive a message from a particular actor within $timeout milliseconds.
%% actor:receive($from    as xs:base64Binary,
%%               $timeout as xs:integer) as item()*
-spec receive_(
        xq_types:context(),
        xq_types:xs_base64Binary() | pid(),
        xq_types:xs_integer()) -> xq_types:xq_item() | [].
receive_(_, _, Timeout) when is_integer(Timeout),
                             Timeout < 1 ->
   do_throw(neg_timeout);
receive_(_, FromAddress, Timeout) when is_pid(FromAddress),
                                       is_integer(Timeout),
                                       Timeout > 0 ->
   receive
      #{from  := FromAddress,
        value := Items} ->
         Items;
      {'DOWN', _, FromAddress, Err} ->
         Err
   after
      Timeout ->
         do_throw(timeout)
   end;
receive_(C, ?bin(FromAddress), Timeout) ->
   FromPid = pid_from_bin(FromAddress),
   receive_(C, FromPid, Timeout);
receive_(C, F, T) ->
   receive_(C, 
            xqerl_types:cast_as(F, 'xs:base64Binary'), 
            xqerl_types:cast_as(T, 'xs:integer')).

%% Spawns a child actor that executes a null-ary function. 
%% actor:spawn($fun as function() as item()*) as xs:base64Binary
-spec spawn_(
        xq_types:context(),
        xq_types:xq_function()) -> xq_types:xs_base64Binary().
spawn_(Ctx, Fun) when is_function(Fun, 1) ->
   Pid = erlang:spawn_link(erlang, apply, [Fun, [Ctx#{parent => self()}]]),
   ?bin(pid_to_bin(Pid));
spawn_(_, Fun) when is_function(Fun) ->
   do_throw(bad_arity);
spawn_(Ctx, #xqFunction{body = Fun}) when is_function(Fun) ->
   spawn_(Ctx, Fun);
spawn_(_, F) ->
   ?dbg("F",F),
   ?err('XPTY0004').

%% Return the parent actor of this actor or empty-sequence. 
%% actor:parent() as xs:base64Binary?
-spec parent(
        xq_types:context()) -> xq_types:xs_base64Binary() | [].
parent(#{parent := Pid}) ->
   ?bin(pid_to_bin(Pid));
parent(_) -> [].

%% Return the current actor`s address. 
%% actor:self() as xs:base64Binary
-spec self_(
        xq_types:context()) -> xq_types:xs_base64Binary().
self_(_) ->
   ?bin(pid_to_bin(self())).


%% ====================================================================
%% Internal functions
%% ====================================================================
-define(Q(V), #xqAtomicValue{type = 'xs:QName', 
                             value = #qname{namespace = ?NS,prefix = ?PX,
                              local_name = V}}).
do_throw(bad_arity) ->
   E = #xqError{description = <<"Bad arity of spawned function.">>,
                name = ?Q(<<"bad-arity">>)
                },
   exit(E);
do_throw(bad_pid) ->
   E = #xqError{description = <<"Invalid actor address.">>,
                name = ?Q(<<"invalid-address">>)
                },
   exit(E);
do_throw(timeout) ->
   E = #xqError{description = <<"Receive timed out.">>,
                name = ?Q(<<"timout">>)
                },
   exit(E).


pid_from_bin(<<131,_/binary>> = ToAddress) ->
   case catch binary_to_term(ToAddress, [safe]) of
      Pid when is_pid(Pid) ->
         Pid;
      _ ->
         do_throw(bad_pid)
   end;
pid_from_bin(_) ->
   do_throw(bad_pid).

pid_to_bin(Pid) when is_pid(Pid) ->
   term_to_binary(Pid).

