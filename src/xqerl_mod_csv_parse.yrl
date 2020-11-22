Nonterminals 
   file
   record
   records
   nls.

Terminals  
   field 
   efield 
   nl
   sep.

Rootsymbol file.

file -> records    : '$1'.

record -> sep sep record : [<<>> | '$3'].

record -> field sep record : [val('$1') | '$3'].

record -> field sep sep record : [val('$1'), <<>> | '$4'].

record -> field : [val('$1')].

record -> efield sep record : [normval('$1') | '$3'].

record -> efield : [normval('$1')].

records -> record nls records : ['$1' | '$3'].

records -> record nls : ['$1'].

records -> record : ['$1'].

nls -> nl nl : '$1'.

nls -> nl : '$1'.

Erlang code.

%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
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
%% @doc CSV parser.

val({_, _, Token}) -> Token.

normval({_, _, Token}) -> norm(Token).

norm(<<$", $">>) ->
    <<>>;
norm(<<$", _/binary>> = Val) ->
    S = byte_size(Val),
    B = binary:part(Val, 1, S - 2),
    norm1(B, <<>>);
norm(Val) ->
    Val.

% normalize double quote
norm1(<<$", $", Rest/binary>>, Acc) ->
    norm1(Rest, <<Acc/binary, $">>);
norm1(<<C/utf8, Rest/binary>>, Acc) ->
    norm1(Rest, <<Acc/binary, C/utf8>>);
norm1(<<>>, Acc) ->
    Acc.
