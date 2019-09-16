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

-module(xqldb_json_objs).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([build_object/3,
         string_to_json/1,
         string_to_json_bin/1]).

build_object(DB, Min, Size) ->
   Bin = xqldb_json_table:get(DB, {Min, Size}),
   {Obj,_} = to_obj(Bin),
   Obj.

string_to_json(Bin) when is_binary(Bin) ->
   string_to_json(unicode:characters_to_list(Bin));
string_to_json(String) ->
   try
      {ok,Toks,_} = xqldb_json_scanner:string(String),
      {ok,Obj} = xqldb_json_parser:parse(Toks),
      Obj
   catch
      _:_:_ ->
         {error,invalid_json}
   end.

string_to_json_bin(Bin) when is_binary(Bin) ->
   string_to_json_bin(unicode:characters_to_list(Bin));
string_to_json_bin(String) ->
   try
      {ok,Toks,_} = xqldb_json_scanner:string(String),
      ?dbg("Toks",Toks),
      xqldb_json_bin:parse(Toks)
   catch
      _:_:_ ->
         {error,invalid_json}
   end.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% to_bin({Key,Value}) when is_binary(Key) ->
%%    KeyLen = byte_size(Key),
%%    [<<4:3,KeyLen:32/integer,Key/binary>>,
%%     to_bin(Value)];
%% to_bin(Num) when is_float(Num) ->
%%    <<5:3,Num/float>>;
%% to_bin(Str) when is_binary(Str) ->
%%    StrLen = byte_size(Str),
%%    <<4:3,StrLen:32/integer,Str/binary>>;
%% to_bin(null) ->
%%    <<7:3>>;
%% to_bin(true) ->
%%    <<6:3,1:1>>;
%% to_bin(false) ->
%%    <<6:3,0:1>>;
%% to_bin({object,L}) ->
%%    [<<0:3>>,
%%     [to_bin(I) || I <- L],
%%     <<1:3>>];
%% to_bin({array,L}) ->
%%    [<<2:3>>,
%%     [to_bin(I) || I <- L],
%%     <<3:3>>].

%% Kind : 3 bits
%% =============
%% start_object   0 - 32 bit Dist - 32 bit size (K,V) count
%% end_object     1 - 32 bit Dist - 32 bit size (K,V) count
%% start_array    2 - 32 bit Dist - 32 bit size (V) count
%% end_array      3 - 32 bit Dist - 32 bit size (V) count
%% string         4 - 32 bit Dist - 32 bit string id
%% number         5 - 32 bit Dist - 64 bit value
%% bool           6 - 32 bit Dist
%% null           7 - 32 bit Dist *

to_obj(<<0:3,R/bitstring>>) ->
   {KVs,Rest} = key_vals(R,[]),
   {{object, KVs}, Rest};
to_obj(<<2:3,R/bitstring>>) ->
   {Vs,Rest} = vals(R,[]),
   {{array, Vs}, Rest};
to_obj(<<4:3,Len:32/integer,Str:Len/binary,R/bitstring>>) ->
  {Str,R};
to_obj(<<5:3,1:1,0:63,R/bitstring>>) ->
  {{neg_zero, <<"-0">>},R};
to_obj(<<5:3,Num/float,R/bitstring>>) ->
  {{Num, float_to_binary(Num)},R};
to_obj(<<6:3,0:1,R/bitstring>>) ->
  {false,R};
to_obj(<<6:3,1:1,R/bitstring>>) ->
  {true,R};
to_obj(<<7:3,R/bitstring>>) ->
  {null,R}.

key_vals(<<1:3,R/bitstring>>,Acc) ->
   {lists:reverse(Acc),R};
key_vals(<<4:3,Len:32/integer,Str:Len/binary,R/bitstring>>,Acc) ->
   {Val,R1} = to_obj(R),
   key_vals(R1,[{Str,Val}|Acc]).

vals(<<3:3,R/bitstring>>,Acc) ->
   {lists:reverse(Acc),R};
vals(R,Acc) ->
   {Val,R1} = to_obj(R),
   vals(R1,[Val|Acc]).


 


