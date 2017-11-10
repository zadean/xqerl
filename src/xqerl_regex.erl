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

%% @doc Regex patches to (attempt to) cover the XML Schema regex flags and properties.
%% Most likely need a regex parser that completely translates the pattern. These patches 
%% cover many cases, but NOT all.  

-module(xqerl_regex).
-include("xqerl.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse_repl/2]).
-export([get_depth/1]).
-export([esc_esc/1]).
-export([regex_flags/1]).
-export([regex_comp/2]).



%% ====================================================================
%% Internal functions
%% ====================================================================

string_value(At) -> xqerl_types:string_value(At).

regex_flags([]) -> [dollar_endonly];
regex_flags(Flags) ->
   Flags1 = string_value(Flags),
   Fun = fun(Char, Map) ->
               case Char of
                  $s -> maps:put(s, [dollar_endonly,dotall], Map);
                  $m -> maps:put(m, multiline, Map);
                  $i -> maps:put(i, caseless, Map);
                  $x -> maps:put(x, extended, Map);
                  $q -> maps:put(q, do_qe, Map);
                  C ->
                     ?dbg("Char",C),
                     xqerl_error:error('FORX0001')
               end
         end,        
   M = lists:foldl(Fun, #{}, Flags1),
   %?dbg("M",M),
   lists:flatten(maps:values(M)).

esc_esc([]) -> [];
esc_esc([$\\|T]) ->
   [$\\,$\\|esc_esc(T)];
esc_esc([H|T]) ->
   [H|esc_esc(T)].

get_depth(String) ->
   get_depth(String,0).

get_depth([],D) -> D;
%% get_depth([$(|T],D) when D > 0 ->
%%    get_depth(T,D-1);
get_depth([$)|T],D) ->
   get_depth(T,D+1);
get_depth([_|T],D) ->
   get_depth(T,D).


parse_repl(String,Depth) ->
   parse_repl1(String,Depth).

parse_repl1([],_) -> [];
parse_repl1([$\\,$$|T],D) ->
   [$\\,$$|parse_repl1(T,D)];
parse_repl1([$\\,$\\|T],D) ->
   [$\\,$\\|parse_repl1(T,D)];
parse_repl1([$\\|_],_) ->
   ?err('FORX0004');
parse_repl1([$$,H2|T],D) when H2 >= $0, H2 =< $9 ->
   {Nums,Rest} = get_digits(T,[]),
   Int = list_to_integer([H2|Nums]),
   {NewInt,Tail} = chop_to(Int, D, []),
   BR = "\\g{" ++ NewInt ++ "}" ++ Tail,
   BR ++ parse_repl1(Rest,D);
parse_repl1([$$|_],_) ->
   ?err('FORX0004');
parse_repl1([H|T],D) ->
   [H|parse_repl1(T,D)].

get_digits([],Acc) -> 
   {lists:reverse(Acc),[]};
get_digits([H|T],Acc) when H >= $0, H =< $9 -> 
   get_digits(T,[H|Acc]);
get_digits([H|T],Acc) -> 
   {lists:reverse(Acc),[H|T]}.

   
   
parse([]) -> [];
parse(String) ->
   {ok,Tokens0,_} = xq_regex_scanner:string(String),
   Tokens = case hd(Tokens0) of
      {T,L,"^" ++ Rest} ->
         [{other,0,"^"},{T,L,Rest}|tl(Tokens0)];
      _ ->
         Tokens0
   end,
   {List,_} = lists:mapfoldl(fun({other,_,"("} = T,{Depth,{PDepthO,PDepthC}}) ->
                                   PDepth1 = PDepthO + 1,
                                   {char_prop(T,Depth),{Depth,{PDepth1,PDepthC}}};
                                ({other,_,")"} = T,{Depth,{PDepthO,PDepthC}}) ->
                                   PDepth1 = PDepthC + 1,
                                   {char_prop(T,Depth),{Depth,{PDepthO,PDepth1}}};
                                ({backReference,_,_} = T,{Depth,PDepth}) ->
                                   {char_prop(T,{Depth,PDepth}),{Depth,PDepth}};
                                ({other,_,"["} = T,{Depth,PDepth}) ->
                                   Depth1 = Depth + 1,
                                   {char_prop(T,Depth1),{Depth1,PDepth}};
                                ({other,_,"]"} = T,{Depth,PDepth}) ->
                                   Depth1 = Depth - 1,
                                   {char_prop(T,Depth1),{Depth1,PDepth}};
                                (T,{Depth,PDepth}) ->
                                   {char_prop(T,Depth),{Depth,PDepth}}
                             end, {0,{0,0}}, Tokens),
   lists:flatten(List).


char_prop({char,_,C},_) -> C;
char_prop({other,_,C},_) -> C;
char_prop({quantExact,_,"{" ++C },_) -> 
   I = list_to_integer(lists:droplast(C)),
   if I > 65500 ->
         "{65500}";
      true ->
         "{" ++ C
   end;
char_prop({quantMin,_,C},_) -> C;
char_prop({quantRange,_,"{," ++ _},_) -> ?err('FORX0002'); % no unknown mins
char_prop({quantRange,_,C},_) -> C;
char_prop({multiCharEsc,_,V},D) when V == "\\s";
                                     V == "^\\S" ->
   if D == 0 ->
         "[\\x{0020}\t\n\r]";
      true ->
         "\\x{0020}\t\n\r"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\S";
                                     V == "^\\s" ->
   if D == 0 ->
         "[^\\x{0020}\t\n\r]";
      true ->
         "^\\x{0020}\t\n\r"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\i";
                                     V == "^\\I" ->
   if D == 0 ->
         "[_:\\p{L}]";
      true ->
         "_:\\p{L}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\I";
                                     V == "^\\i" ->
   if D == 0 ->
         "[^_:\\p{L}]";
      true ->
         "^_:\\p{L}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\c";
                                     V == "^\\C" ->
   if D == 0 ->
         "[:_\\-.\\p{L}\\p{N}\\p{M}\\x{00B7}\\x{0300}-\\x{036F}\\x{203F}-\\x{2040}]";
      true ->
         ":_\\-.\\p{L}\\p{N}\\p{M}\\x{00B7}\\x{0300}-\\x{036F}\\x{203F}-\\x{2040}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\C";
                                     V == "^\\c" ->
   if D == 0 ->
         "[^:_\\-.\\p{L}\\p{N}\\p{M}\\x{00B7}\\x{0300}-\\x{036F}\\x{203F}-\\x{2040}]";
      true ->
         "^:_\\-.\\p{L}\\p{N}\\p{M}\\x{00B7}\\x{0300}-\\x{036F}\\x{203F}-\\x{2040}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\d";
                                     V == "^\\D" ->
   if D == 0 ->
         "[\\p{Nd}]";
      true ->
         "\\p{Nd}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\D";
                                     V == "^\\d" ->
   if D == 0 ->
         "[^\\p{Nd}]";
      true ->
         "^\\p{Nd}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\w";
                                     V == "^\\W" ->
   if D == 0 ->
         "[^\\p{P}\\p{Z}\\p{C}]";
      true ->
         "^\\p{P}\\p{Z}\\p{C}"
   end;
char_prop({multiCharEsc,_,V},D) when V == "\\W";
                                     V == "^\\w" ->
   if D == 0 ->
         "[\\p{P}\\p{Z}\\p{C}]";
      true ->
         "\\p{P}\\p{Z}\\p{C}"
   end;
char_prop({backReference,_,"\\" ++ Val},{_,{O,C}}) ->
   Int = list_to_integer(Val),
%   ?dbg("{O,C,Int}",{O,C,Int}),
   if O =/= C ->
         ?err('FORX0002');
%%       C < Int, Int > O ->
%%          ?err('FORX0002');
%%       O > C, O =< Int ->
%%          ?err('FORX0002');
      C < Int ->
         {NewInt, Rest} = chop_to(Int,C,[]),
         "\\g{" ++ NewInt ++ "}" ++ Rest;
      true ->
         "\\g{" ++ Val ++ "}"
   end;
char_prop({isBlock,_,"\\p{" ++ Val0},_) ->
   Val = lists:droplast(Val0),
   {Range} = range(Val),
   "[" ++ Range ++ "]";
char_prop({isBlockComp,_,"\\P{" ++ Val0},_) ->
   Val = lists:droplast(Val0),
   {Range} = range(Val),
   "[^" ++ Range ++ "]";
char_prop({isCategory,_,Val},_) ->
   Val;
char_prop({isCategoryComp,_,Val},_) ->
   Val.

%returns {IntAsList,Tail}
chop_to(Int,Max,Acc) when Int > Max ->
   Next = Int div 10,
   Rem = integer_to_list(Int rem 10),
   %?dbg("{Int,Max,Acc}",{Int,Max,Acc}),
   %?dbg("{Next,Rem}",{Next,Rem}),
   chop_to(Next,Max,Rem ++ Acc);
chop_to(Int,_Max,Acc) ->
   {integer_to_list(Int), Acc}.



% http://www.unicode.org/reports/tr18/ "The values for these properties must follow the Unicode definitions, and include the property and property value aliases from the UCD. Matching of Binary, Enumerated, Catalog, and Name values, must follow the Matching Rules from [UAX44] with one exception: implementations are not required to ignore an initial prefix string of "is" in property values."
% http://www.regular-expressions.info/shorthand.html - \i \c \I \C (XML shorthand)
% returns {MatchesZeroLengthString, MP}
regex_comp(Expr,Flags) ->
   FlagList1 = regex_flags(Flags),
   X = lists:member(extended, FlagList1),
   StrExp = if X ->
                  strip_esc_ws(string_value(Expr));
               true ->
                  string_value(Expr)
            end,
   ?dbg("X",X),
   ?dbg("StrExp",StrExp),
   StrExp1 = parse(StrExp),
   FlagList = FlagList1 ++ [{newline, any}, unicode, ucp, no_start_optimize],
   Opts = FlagList -- [do_qe],
   Q = [F || F <- FlagList, F == do_qe],
   Expr1 = if Q == [] -> StrExp1;
              true -> "\\Q" ++ StrExp1 ++ "\\E"
           end,
   case catch re:compile(Expr1, Opts) of
      {ok, MP} ->
         %?dbg("{Expr1, Opts}",{Expr1, Opts}),
         case catch re:run("",MP) of
            nomatch ->
               {false,MP};
            {match,_} ->
               {true,MP};
            _ ->
               {false,MP}
         end;
      {error,_E} ->
         xqerl_error:error('FORX0002');
      {'EXIT',_E} ->
         xqerl_error:error('FORX0002')
   end.

strip_esc_ws([]) -> [];
strip_esc_ws([$[|T]) -> 
   [$[|no_strip_esc_ws(T)];
strip_esc_ws([H|T]) when H == 16#9;
                         H == 16#A;
                         H == 16#D;
                         H == 16#20 ->
   strip_esc_ws(T);
strip_esc_ws([H|T]) -> 
   [H|strip_esc_ws(T)].

no_strip_esc_ws([]) -> [];
no_strip_esc_ws([$]|T]) -> 
   [$]|strip_esc_ws(T)];
no_strip_esc_ws([H|T]) -> 
   [H|no_strip_esc_ws(T)].
                            

range("IsBasicLatin") -> {"\\x{0000}-\\x{007F}"};
range("IsLatin-1Supplement") -> {"\\x{0080}-\\x{00FF}"};
range("IsLatinExtended-A") -> {"\\x{0100}-\\x{017F}"};
range("IsLatinExtended-B") -> {"\\x{0180}-\\x{024F}"};
range("IsIPAExtensions") -> {"\\x{0250}-\\x{02AF}"};
range("IsSpacingModifierLetters") -> {"\\x{02B0}-\\x{02FF}"};
range("IsCombiningDiacriticalMarks") -> {"\\x{0300}-\\x{036F}"};
range("IsGreek") -> {"\\x{0370}-\\x{03FF}"};
range("IsCyrillic") -> {"\\x{0400}-\\x{04FF}"};
range("IsArmenian") -> {"\\x{0530}-\\x{058F}"};
range("IsHebrew") -> {"\\x{0590}-\\x{05FF}"};
range("IsArabic") -> {"\\x{0600}-\\x{06FF}"};
range("IsSyriac") -> {"\\x{0700}-\\x{074F}"};
range("IsThaana") -> {"\\x{0780}-\\x{07BF}"};
range("IsDevanagari") -> {"\\x{0900}-\\x{097F}"};
range("IsBengali") -> {"\\x{0980}-\\x{09FF}"};
range("IsGurmukhi") -> {"\\x{0A00}-\\x{0A7F}"};
range("IsGujarati") -> {"\\x{0A80}-\\x{0AFF}"};
range("IsOriya") -> {"\\x{0B00}-\\x{0B7F}"};
range("IsTamil") -> {"\\x{0B80}-\\x{0BFF}"};
range("IsTelugu") -> {"\\x{0C00}-\\x{0C7F}"};
range("IsKannada") -> {"\\x{0C80}-\\x{0CFF}"};
range("IsMalayalam") -> {"\\x{0D00}-\\x{0D7F}"};
range("IsSinhala") -> {"\\x{0D80}-\\x{0DFF}"};
range("IsThai") -> {"\\x{0E00}-\\x{0E7F}"};
range("IsLao") -> {"\\x{0E80}-\\x{0EFF}"};
range("IsTibetan") -> {"\\x{0F00}-\\x{0FFF}"};
range("IsMyanmar") -> {"\\x{1000}-\\x{109F}"};
range("IsGeorgian") -> {"\\x{10A0}-\\x{10FF}"};
range("IsHangulJamo") -> {"\\x{1100}-\\x{11FF}"};
range("IsEthiopic") -> {"\\x{1200}-\\x{137F}"};
range("IsCherokee") -> {"\\x{13A0}-\\x{13FF}"};
range("IsUnifiedCanadianAboriginalSyllabics") -> {"\\x{1400}-\\x{167F}"};
range("IsOgham") -> {"\\x{1680}-\\x{169F}"};
range("IsRunic") -> {"\\x{16A0}-\\x{16FF}"};
range("IsKhmer") -> {"\\x{1780}-\\x{17FF}"};
range("IsMongolian") -> {"\\x{1800}-\\x{18AF}"};
range("IsLatinExtendedAdditional") -> {"\\x{1E00}-\\x{1EFF}"};
range("IsGreekExtended") -> {"\\x{1F00}-\\x{1FFF}"};
range("IsGeneralPunctuation") -> {"\\x{2000}-\\x{206F}"};
range("IsSuperscriptsandSubscripts") -> {"\\x{2070}-\\x{209F}"};
range("IsCurrencySymbols") -> {"\\x{20A0}-\\x{20CF}"};
range("IsCombiningMarksforSymbols") -> {"\\x{20D0}-\\x{20FF}"};
range("IsLetterlikeSymbols") -> {"\\x{2100}-\\x{214F}"};
range("IsNumberForms") -> {"\\x{2150}-\\x{218F}"};
range("IsArrows") -> {"\\x{2190}-\\x{21FF}"};
range("IsMathematicalOperators") -> {"\\x{2200}-\\x{22FF}"};
range("IsMiscellaneousTechnical") -> {"\\x{2300}-\\x{23FF}"};
range("IsControlPictures") -> {"\\x{2400}-\\x{243F}"};
range("IsOpticalCharacterRecognition") -> {"\\x{2440}-\\x{245F}"};
range("IsEnclosedAlphanumerics") -> {"\\x{2460}-\\x{24FF}"};
range("IsBoxDrawing") -> {"\\x{2500}-\\x{257F}"};
range("IsBlockElements") -> {"\\x{2580}-\\x{259F}"};
range("IsGeometricShapes") -> {"\\x{25A0}-\\x{25FF}"};
range("IsMiscellaneousSymbols") -> {"\\x{2600}-\\x{26FF}"};
range("IsDingbats") -> {"\\x{2700}-\\x{27BF}"};
range("IsBraillePatterns") -> {"\\x{2800}-\\x{28FF}"};
range("IsCJKRadicalsSupplement") -> {"\\x{2E80}-\\x{2EFF}"};
range("IsKangxiRadicals") -> {"\\x{2F00}-\\x{2FDF}"};
range("IsIdeographicDescriptionCharacters") -> {"\\x{2FF0}-\\x{2FFF}"};
range("IsCJKSymbolsandPunctuation") -> {"\\x{3000}-\\x{303F}"};
range("IsHiragana") -> {"\\x{3040}-\\x{309F}"};
range("IsKatakana") -> {"\\x{30A0}-\\x{30FF}"};
range("IsBopomofo") -> {"\\x{3100}-\\x{312F}"};
range("IsHangulCompatibilityJamo") -> {"\\x{3130}-\\x{318F}"};
range("IsKanbun") -> {"\\x{3190}-\\x{319F}"};
range("IsBopomofoExtended") -> {"\\x{31A0}-\\x{31BF}"};
range("IsEnclosedCJKLettersandMonths") -> {"\\x{3200}-\\x{32FF}"};
range("IsCJKCompatibility") -> {"\\x{3300}-\\x{33FF}"};
range("IsCJKUnifiedIdeographsExtensionA") -> {"\\x{3400}-\\x{4DB5}"};
range("IsCJKUnifiedIdeographs") -> {"\\x{4E00}-\\x{9FFF}"};
range("IsYiSyllables") -> {"\\x{A000}-\\x{A48F}"};
range("IsYiRadicals") -> {"\\x{A490}-\\x{A4CF}"};
range("IsHangulSyllables") -> {"\\x{AC00}-\\x{D7A3}"};
range("IsPrivateUse") -> {"\\x{E000}-\\x{F8FF}"};
range("IsCJKCompatibilityIdeographs") -> {"\\x{F900}-\\x{FAFF}"};
range("IsAlphabeticPresentationForms") -> {"\\x{FB00}-\\x{FB4F}"};
range("IsArabicPresentationForms-A") -> {"\\x{FB50}-\\x{FDFF}"};
range("IsCombiningHalfMarks") -> {"\\x{FE20}-\\x{FE2F}"};
range("IsCJKCompatibilityForms") -> {"\\x{FE30}-\\x{FE4F}"};
range("IsSmallFormVariants") -> {"\\x{FE50}-\\x{FE6F}"};
range("IsArabicPresentationForms-B") -> {"\\x{FE70}-\\x{FEFE}"};
range("IsSpecials") -> {"\\x{FEFF}-\\x{FEFF}\\x{FFF0}-\\x{FFFD}"};
range("IsHalfwidthandFullwidthForms") -> {"\\x{FF00}-\\x{FFEF}"};
range(Unknown) -> {Unknown}.


