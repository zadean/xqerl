%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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

%% @doc A veritable cornucopia of 'helpful' functions. 
%% All decode/helper functions that are spread throughout the code should be brought in.

-module(xqerl_lib).

%% ====================================================================
%% API functions
%% ====================================================================
-export([is_xsname_start_char/1]).
-export([is_xsname_char/1]).
-export([is_xschar/1]).
-export([is_xsncname_start_char/1]).
-export([escape_uri/1]).

-define(space, 32).
-define(cr,    13).
-define(lf,    10).
-define(tab,   9).
%% whitespace consists of 'space', 'carriage return', 'line feed' or 'tab'
-define(WS(H), H==?space; H==?cr; H==?lf; H==?tab).
%% non-space whitespace
-define(NSWS(H), H==?cr; H==?lf; H==?tab).

% characters allowed in xs:string
% #x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]
% 11 and 12 added to XML 1.1
is_xschar(16#09) -> true;
is_xschar(16#0A) -> true;
%is_xschar(16#0B) -> true; % XML 1.1
%is_xschar(16#0C) -> true; % XML 1.1
is_xschar(16#0D) -> true;
is_xschar(X) when X >= 16#20, X =< 16#D7FF -> true;
is_xschar(X) when X >= 16#E000, X =< 16#FFFD -> true;
is_xschar(X) when X >= 16#10000, X =< 16#10FFFF -> true;
is_xschar(_) -> false.


% ":" | [A-Z] | "_" | [a-z] | [#xC0-#xD6] | [#xD8-#xF6] | [#xF8-#x2FF] | [#x370-#x37D] | 
% [#x37F-#x1FFF] | [#x200C-#x200D] | [#x2070-#x218F] | [#x2C00-#x2FEF] | [#x3001-#xD7FF] | 
% [#xF900-#xFDCF] | [#xFDF0-#xFFFD] | [#x10000-#xEFFFF]
is_xsname_start_char(C) when C >= $a, C =< $z -> true;
is_xsname_start_char(C) when C >= $A, C =< $Z -> true;
is_xsname_start_char($_) -> true; 
is_xsname_start_char($:) -> true;
is_xsname_start_char(C) when C >= 16#C0   , C =< 16#D6    -> true;
is_xsname_start_char(C) when C >= 16#D8   , C =< 16#F6    -> true;
is_xsname_start_char(C) when C >= 16#F8   , C =< 16#2FF   -> true;
is_xsname_start_char(C) when C >= 16#370  , C =< 16#37D   -> true;
is_xsname_start_char(C) when C >= 16#37F  , C =< 16#1FFF  -> true;
is_xsname_start_char(C) when C >= 16#200C , C =< 16#200D  -> true;
is_xsname_start_char(C) when C >= 16#2070 , C =< 16#218F  -> true;
is_xsname_start_char(C) when C >= 16#2C00 , C =< 16#2FEF  -> true;
is_xsname_start_char(C) when C >= 16#3001 , C =< 16#D7FF  -> true;
is_xsname_start_char(C) when C >= 16#F900 , C =< 16#FDCF  -> true;
is_xsname_start_char(C) when C >= 16#FDF0 , C =< 16#FFFD  -> true;
is_xsname_start_char(C) when C >= 16#10000, C =< 16#EFFFF -> true;
is_xsname_start_char(_) -> false.

% NameStartChar | "-" | "." | [0-9] | #xB7 | [#x0300-#x036F] | [#x203F-#x2040]
is_xsname_char(C) when C >= $a, C =< $z -> true;
is_xsname_char(C) when C >= $A, C =< $Z -> true;
is_xsname_char($-) -> true;
is_xsname_char(C) when C >= $0, C =< $9 -> true;
is_xsname_char($.) -> true;
is_xsname_char($_) -> true; 
is_xsname_char($:) -> true;
is_xsname_char(16#B7) -> true;
is_xsname_char(C) when C >= 16#C0   , C =< 16#D6    -> true;
is_xsname_char(C) when C >= 16#D8   , C =< 16#F6    -> true;
is_xsname_char(C) when C >= 16#F8   , C =< 16#2FF   -> true;
is_xsname_char(C) when C >= 16#300  , C =< 16#36F   -> true;
is_xsname_char(C) when C >= 16#370  , C =< 16#37D   -> true;
is_xsname_char(C) when C >= 16#37F  , C =< 16#1FFF  -> true;
is_xsname_char(C) when C >= 16#200C , C =< 16#200D  -> true;
is_xsname_char(C) when C >= 16#203F , C =< 16#2040  -> true;
is_xsname_char(C) when C >= 16#2070 , C =< 16#218F  -> true;
is_xsname_char(C) when C >= 16#2C00 , C =< 16#2FEF  -> true;
is_xsname_char(C) when C >= 16#3001 , C =< 16#D7FF  -> true;
is_xsname_char(C) when C >= 16#F900 , C =< 16#FDCF  -> true;
is_xsname_char(C) when C >= 16#FDF0 , C =< 16#FFFD  -> true;
is_xsname_char(C) when C >= 16#10000, C =< 16#EFFFF -> true;
is_xsname_char(_) -> false.

is_xsncname_start_char($:) -> false;
is_xsncname_start_char(C) -> is_xsname_start_char(C).

%% is_xsncname_char($:) -> false;
%% is_xsncname_char(C) -> is_xsname_char(C).

%% FROM edoc_lib.erl modified for 4 byte
escape_uri([C | Cs]) when C >= $a, C =< $z ->
    [C | escape_uri(Cs)];
escape_uri([C | Cs]) when C >= $A, C =< $Z ->
    [C | escape_uri(Cs)];
escape_uri([C | Cs]) when C >= $0, C =< $9 ->
    [C | escape_uri(Cs)];
escape_uri([C = $. | Cs]) ->
    [C | escape_uri(Cs)];
escape_uri([C = $- | Cs]) ->
    [C | escape_uri(Cs)];
escape_uri([C = $~ | Cs]) ->
    [C | escape_uri(Cs)];
escape_uri([C = $_ | Cs]) ->
    [C | escape_uri(Cs)];
%% The value of each individual byte indicates its UTF-8 function, as follows:
%% 00 to 7F hex (0 to 127): first and only byte of a sequence.
%% 80 to BF hex (128 to 191): continuing byte in a multi-byte sequence.
%% C2 to DF hex (194 to 223): first byte of a two-byte sequence.
%% E0 to EF hex (224 to 239): first byte of a three-byte sequence.
%% F0 to FF hex (240 to 255): first byte of a four-byte sequence.
escape_uri([C | Cs]) when C < 16#80 -> % 1 byte
    escape_byte(C) ++ escape_uri(Cs);
escape_uri([C | Cs]) when C >= 16#80, C =< 16#7ff -> % 2 byte
   % 16#c0 = 192
   % 16#80 = 128
   % 16#3f =  63
   escape_byte(((C bsr 6 ) band 16#3f) + 16#c0) ++ 
   escape_byte(  C         band 16#3f  + 16#80) ++ 
     escape_uri(Cs);
escape_uri([C | Cs]) when C >= 16#800, C =< 16#ffff -> % 3 byte
   escape_byte(((C bsr 12) band 16#3f) + 16#e0) ++ 
   escape_byte(((C bsr 6 ) band 16#3f) + 16#80) ++ 
   escape_byte(  C         band 16#3f  + 16#80) ++ 
     escape_uri(Cs);
escape_uri([C | Cs]) when C >= 16#10000, C =< 16#10ffff -> % 4 byte
   escape_byte(((C bsr 18) band 16#3f) + 16#f0) ++ 
   escape_byte(((C bsr 12) band 16#3f) + 16#80) ++ 
   escape_byte(((C bsr 6 ) band 16#3f) + 16#80) ++ 
   escape_byte(  C         band 16#3f  + 16#80) ++ 
     escape_uri(Cs);
escape_uri([]) ->
    [].

escape_byte(C) when C >= 0, C =< 255 ->
    [$%, hex_digit(C bsr 4), hex_digit(C band 15)].

hex_digit(N) when N >= 0, N =< 9 ->
    N + $0;
hex_digit(N) when N > 9, N =< 15 ->
    N + $A - 10.