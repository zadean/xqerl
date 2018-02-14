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

%% @doc A veritable cornucopia of 'helpful' functions. 
%% All decode/helper functions that are spread throughout the code should be brought in.

-module(xqerl_lib).

-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([lnew/0,
         lget/1,
         lput/2]).


-export([is_xsname_start_char/1]).
-export([is_xsname_char/1]).
-export([is_xschar/1]).
-export([is_xsncname_start_char/1]).

-export([decode_string/1]).

-export([escape_uri/1]).
-export([shrink_spaces/1]).
-export([normalize_spaces/1]).
-export([reserved_namespaces/1]).
-export([encode_for_uri/1]).
-export([pct_encode3/1]).
-export([resolve_against_base_uri/2]).

-export([next_comp_prefix/1]).

-define(space, 32).
-define(cr,    13).
-define(lf,    10).
-define(tab,   9).
%% whitespace consists of 'space', 'carriage return', 'line feed' or 'tab'
-define(WS(H), H==?space; H==?cr; H==?lf; H==?tab).
%% non-space whitespace
-define(NSWS(H), H==?cr; H==?lf; H==?tab).

% characters allowed in XML 1.0
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


reserved_namespaces(Ns) ->
   % check reserved NS 
   if Ns == "http://www.w3.org/XML/1998/namespace";
      Ns == "http://www.w3.org/2001/XMLSchema";
      Ns == "http://www.w3.org/2001/XMLSchema-instance";
      Ns == "http://www.w3.org/2005/xpath-functions";
      Ns == "http://www.w3.org/2005/xpath-functions/math";
      Ns == "http://www.w3.org/2005/xpath-functions/array";
      Ns == "http://www.w3.org/2005/xpath-functions/map";
      Ns == "http://www.w3.org/2012/xquery" -> xqerl_error:error('XQST0045');
      true ->
         ok
   end.

shrink_spaces([]) ->
   [];
shrink_spaces([32,WS|T]) when WS == 32;
                              WS == 13;
                              WS == 10;
                              WS == 9 ->
   shrink_spaces([32|T]);
shrink_spaces("&#xD;"++T) ->
   shrink_spaces([32|T]);
shrink_spaces("&#xA;"++T) ->
   shrink_spaces([32|T]);
shrink_spaces("&#x9;"++T) ->
   shrink_spaces([32|T]);
shrink_spaces([WS|T]) when WS == 13;
                           WS == 10;
                           WS == 9 ->
   shrink_spaces([32|T]);
shrink_spaces([H|T]) ->
   [H|shrink_spaces(T)].


normalize_spaces([]) ->
   [];
normalize_spaces([WS|T]) when WS == 13;
                              WS == 10;
                              WS == 9 ->
   [32|normalize_spaces(T)];
normalize_spaces("&#xD;"++T) ->
   [32|normalize_spaces(T)];
normalize_spaces("&#xA;"++T) ->
   [32|normalize_spaces(T)];
normalize_spaces("&#x9;"++T) ->
   [32|normalize_spaces(T)];
normalize_spaces([H|T]) ->
   [H|normalize_spaces(T)].

encode_for_uri([]) ->
   [];
encode_for_uri([H|T]) when H == $-;
                        H == $_;
                        H == $.;
                        H == $~ ->
   [H|encode_for_uri(T)];
encode_for_uri([H|T]) when H >= $A, H =< $Z ->
   [H|encode_for_uri(T)];
encode_for_uri([H|T]) when H >= $a, H =< $z ->
   [H|encode_for_uri(T)];
encode_for_uri([H|T]) when H >= $0, H =< $9 ->
   [H|encode_for_uri(T)];
encode_for_uri([H|T]) ->
   string:uppercase(edoc_lib:escape_uri([H])) ++ encode_for_uri(T).


pct_encode3([]) ->
   [];
pct_encode3([H|T]) when H == $< ;H == $>;
                        H == $\";H == $ ;
                        H == ${ ;H == $};
                        H == $| ;H == $\\;
                        H == $^ ;H == $` ->
   string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode3(T);
pct_encode3([H|T]) when H >= 32, H =< 126 ->
   [H|pct_encode3(T)];
pct_encode3([H|T]) ->
   string:uppercase(xqerl_lib:escape_uri([H])) ++ pct_encode3(T).

decode_string(Str) ->
   decode_string(Str,[]).

decode_string([], Acc) ->
   lists:reverse(Acc);
decode_string("&apos;" ++ T, Acc) ->
   decode_string(T, [$'|Acc]);
decode_string("&quot;" ++ T, Acc) ->
   decode_string(T, [$"|Acc]);
decode_string("&amp;" ++ T, Acc) ->
   decode_string(T, [$&|Acc]);
decode_string("&gt;" ++ T, Acc) ->
   decode_string(T, [$>|Acc]);
decode_string("&lt;" ++ T, Acc) ->
   decode_string(T, [$<|Acc]);
decode_string("&#x" ++ T, Acc) ->
   {CP,T1} = scan_hex_char_ref(T, []),
   decode_string(T1, [CP|Acc]);
decode_string("&#" ++ T, Acc) ->
   {CP,T1} = scan_dec_char_ref(T, []),
   decode_string(T1, [CP|Acc]);
decode_string([H|T], Acc) ->
    decode_string(T, [H|Acc]).

scan_dec_char_ref([H|T], Acc) when H >= $0, H =< $9  ->
  scan_dec_char_ref(T, [H|Acc]);
scan_dec_char_ref([H|T], Acc) when H == $; ->
   {list_to_integer(lists:reverse(Acc)),T}.

scan_hex_char_ref([H|T], Acc) when H >= $0, H =< $9  ->
   scan_hex_char_ref(T, [H|Acc]);
scan_hex_char_ref([H|T], Acc) when H >= $a, H =< $f  ->
   scan_hex_char_ref(T, [H|Acc]);
scan_hex_char_ref([H|T], Acc) when H >= $A, H =< $F  ->
   scan_hex_char_ref(T, [H|Acc]);
scan_hex_char_ref([H|T], Acc) when H == $; ->
   Hex = lists:reverse(Acc),
   {list_to_integer(Hex, 16),T}.

check_bad_percent([$%,$%|_T]) -> ?err('XQST0046');
check_bad_percent([_|T]) -> 
   check_bad_percent(T);
check_bad_percent([]) -> ok.

resolve_against_base_uri(Base,[]) -> 
   Base;
resolve_against_base_uri("xqerl_main",RelPath) ->
   resolve_against_base_uri("file:///",RelPath);
resolve_against_base_uri(Base,RelPath0) ->
   ok = check_bad_percent(RelPath0),
   RelPath = ensure_schema(RelPath0),
   ?dbg("RelPath",RelPath),
   Opts = [{scheme_defaults,[{file,1},{urn,2}|http_uri:scheme_defaults()]},{fragment,true}],
   case http_uri:parse(RelPath,Opts) of
      % not absolute
      {error,_} ->
         NonHeir = lists:member($:, RelPath),
         if NonHeir , RelPath == ":" ->
               {error,malformed};
            NonHeir ->
               RelPath;
            true ->
               ?dbg("Base",Base),
               ?dbg("RelPath",RelPath),
               % leading slash on relative does not mean root
               RelPath1 = if hd(RelPath) == $/ ->
                                tl(RelPath);
                             true ->
                                RelPath
                          end,
               {ok, Parsed} = http_uri:parse(Base,Opts), % fragments allowed on base
               ?dbg("RelPath1",RelPath1),
               ?dbg("Parsed",Parsed),
               parsed_to_path(RelPath1,Parsed)
         end;
      {ok,{_,_,_,_,"/",_,[]}} ->
         ?dbg("RelPath",RelPath),
         RelPath;
      {ok,{_,_,_,_,_,Q,[]} = P} ->
         ?dbg("P",P),
         parsed_to_path([],P) ++ Q;
      _ ->
         % relative with fragment
         ?err('FORG0002')
   end.

parsed_to_path([],{Scheme, _UserInfo, Host, _Port, Path, _Query, Frag}) ->
   Safe = simplify_path(tl(Path)),
   ?dbg("Safe",Safe),
   Dir = Path =/= "/" andalso lists:last(Path) =:= $/,
   if Dir ->
         atom_to_list(Scheme) ++ "://" ++ Host ++ "/" ++ Safe ++ "/";
      Safe == [] ->
         atom_to_list(Scheme) ++ "://" ++ Host;
      true ->
         atom_to_list(Scheme) ++ "://" ++ Host ++ "/" ++ Safe ++ Frag
   end;
parsed_to_path(RelPath,{Scheme, _UserInfo, Host, _Port, Path, _Query, []}) ->
   PathDir = case lists:last(Path) =:= $/ of
                true -> tl(Path);
                false -> filename:dirname(tl(Path))
             end,
   Joined = simplify_path(uri_join(PathDir,RelPath)),
   ?dbg("PathDir",PathDir),
   ?dbg("RelPath",RelPath),
   ?dbg("Joined",Joined),
   Dir = Path =/= "/" andalso lists:last(Path) =:= $/,
   RelDir = RelPath =/= "/" andalso lists:last(RelPath) =:= $/,
   if Joined == [] andalso Dir ->
         atom_to_list(Scheme) ++ "://" ++ Host ++ "/";
      Joined == [] ->
         atom_to_list(Scheme) ++ "://" ++ Host;
      RelDir ->
         atom_to_list(Scheme) ++ "://" ++ Host ++ "/" ++ Joined ++ "/";
      true ->
         atom_to_list(Scheme) ++ "://" ++ Host ++ "/" ++ Joined% ++ Frag
   end;
parsed_to_path(_,_) ->
   ?err('FORG0002').

uri_join([],Path) ->
   Path;
uri_join(Base,Path) ->
   filename:join(Base,Path).

simplify_path(Path) ->
   Split = filename:split(Path),
   Fun = fun(".",Acc) ->
               Acc;
            ("..",Acc) ->
               tl(Acc);
            (S,Acc) ->
               [S|Acc]
         end,
   Sim = lists:foldl(Fun, [], Split),
   build_path(lists:reverse(Sim)).

build_path([]) -> [];
build_path([H]) ->
   H;
build_path([[C,$:,$/] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
   H ++ build_path(T);
build_path([[C,$:,$\\] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
   H ++ build_path(T);
build_path([H|T]) ->
   H ++ "/" ++ build_path(T).

ensure_schema("file:///" ++ _ = Path) -> Path;
ensure_schema("file://" ++ _) -> ?err('FORG0002');
ensure_schema("file:/" ++ _ = Path) -> Path;
ensure_schema("file:" ++ _) -> ?err('FORG0002');
ensure_schema("//" ++ _) -> ?err('FORG0002');
ensure_schema(":" ++ _) -> ?err('FORG0002');
ensure_schema([C, $:, $/ | _]=Path) when C >= $A, C =< $Z; C >= $a, C =< $z ->
    "file:///" ++ Path;
ensure_schema([C, $:, $\ | _]=Path) when C >= $A, C =< $Z; C >= $a, C =< $z ->
    "file:///" ++ Path;
%ensure_schema("/" ++ _ = Path) -> 
%   "file://" ++ Path;
ensure_schema(Path) -> Path.  

lnew() ->
%%    catch ets:delete(local_data),
%%    _ = ets:new(local_data, [set, private, named_table]),
   ok.

lget(Key) ->
   case erlang:get(Key) of
      undefined ->
         [];
      Val ->
         Val
   end.
%%    case ets:lookup(local_data, Key) of
%%       [{_,Val}] ->
%%          Val;
%%       _ ->
%%          []
%%    end.

lput(Key,Val) ->
   %ets:insert(local_data, {Key, Val}),
   _ = erlang:put(Key, Val),
   ok.


next_comp_prefix(Namespaces) ->
   Pxs = [P || #xqNamespace{prefix = P} <- Namespaces],
   F = fun("ns_"++SNum, Max) ->
            case catch list_to_integer(SNum) of
               Int when is_integer(Int) ->
                  erlang:max(Max,Int);
               _ ->
                  Max
            end;
          (_,Max) ->
             Max
       end,
   Last = lists:foldl(F, 0, Pxs),
   "ns_" ++ integer_to_list(Last + 1).





