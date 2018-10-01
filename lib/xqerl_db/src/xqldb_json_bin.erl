-module(xqldb_json_bin).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([parse/1]).

parse(Tokens) -> parse(Tokens, <<>>).

parse([{object_begin,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,0:3>>);
parse([{object_end,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,1:3>>);
parse([{array_begin,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,2:3>>);
parse([{array_end,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,3:3>>);
parse([{string,_,Chars}|T], Acc) ->
   Str = val(Chars),
   Sz = byte_size(Str),
   parse(T, <<Acc/bitstring,4:3,Sz:32/integer,Str/binary>>);
parse([{esc_string,_,Chars}|T], Acc) ->
   Str = str_val(Chars),
   Sz = byte_size(Str),
   parse(T, <<Acc/bitstring,4:3,Sz:32/integer,Str/binary>>);
parse([{number,_,_},{number,_,_}|_], _) ->
   {error,invalid_json};
parse([{number,_,NumList}|T], Acc) ->
   Flt = list_to_number(val(NumList)),
   if Flt == neg_zero ->
         parse(T, <<Acc/bitstring,5:3,1:1,0:63>>);
      true ->
         parse(T, <<Acc/bitstring,5:3,Flt/float>>)
   end;
parse([{true,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,6:3,1:1>>);
parse([{false,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,6:3,0:1>>);
parse([{null,_,_}|T], Acc) ->
   parse(T, <<Acc/bitstring,7:3>>);
parse([{name_sep,_,_}|T], Acc) ->
   parse(T, Acc);
parse([{value_sep,_,_},{object_end,_,_}|_], _) ->
   {error,invalid_json};
parse([{value_sep,_,_},{array_end,_,_}|_], _) ->
   {error,invalid_json};
parse([{value_sep,_,_}|T], Acc) ->
   parse(T, Acc);
parse([], Acc) -> 
   pad_to_bytes(Acc).

%% ====================================================================
%% Internal functions
%% ====================================================================

pad_to_bytes(Bits) when bit_size(Bits) rem 8 =:= 0 -> Bits;
pad_to_bytes(Bits) ->
   Add = 8 - (bit_size(Bits) rem 8),
   <<Bits/bitstring,0:Add>>.
  

val(Token) when hd(Token) == $" ->
    unicode:characters_to_binary(tl(lists:droplast(Token)));
val(Token) ->
   unicode:characters_to_binary(Token).

str_val(Val) ->
   norm_str(val(Val),<<>>).

list_to_number(List) ->
  xqerl_numeric:double(List).

norm_str(<<>>,Acc) -> Acc;
norm_str(<<$\\,$",T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$" >>);
norm_str(<<$\\,$\\,T/binary>>,Acc)-> norm_str(T,<<Acc/binary,$\\>>);
norm_str(<<$\\,$/,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$/ >>);
norm_str(<<$\\,$b,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\b>>);
norm_str(<<$\\,$f,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\f>>);
norm_str(<<$\\,$n,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\n>>);
norm_str(<<$\\,$r,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\r>>);
norm_str(<<$\\,$t,T/binary>>,Acc) -> norm_str(T,<<Acc/binary,$\t>>);
norm_str(<<$\\,$u,A,B,C,D,$\\,$u,A2,B2,C2,D2,T/binary>>,Acc) ->
   High = list_to_integer([A,B,C,D],16),
   Low  = list_to_integer([A2,B2,C2,D2],16),
   if High >= 16#D800, High =< 16#DFFF, Low >= 16#D800, Low =< 16#DFFF ->
         New = from_surrogates(High, Low),
         NewC = maybe_utf(New),
         norm_str(T, <<Acc/binary,NewC/binary>>);
      true ->
         HighC = maybe_utf(High),
         LowC = maybe_utf(Low),
         norm_str(T, <<Acc/binary,HighC/binary,LowC/binary>>)
   end;
norm_str(<<$\\,$u,A,B,C,D,T/binary>>,Acc) ->
   Int = list_to_integer([A,B,C,D],16),
   H = maybe_utf(Int),
   norm_str(T, <<Acc/binary,H/binary>>);
norm_str(<<H/utf8,T/binary>>,Acc) ->
   norm_str(T, <<Acc/binary,H/utf8>>).


from_surrogates(High, Low) ->
   HC = (High - 16#D800) bsl 10,
   LC = Low - 16#DC00,
   HC bor LC + 16#10000.

maybe_utf(Char) ->
   try 
      <<Char/utf8>>
   catch _:_ ->
      <<$\\,$u,(integer_to_binary(Char,16))/binary>>
   end.
  

%% Kind : 3 bits
%% =============
%% start_object   0
%% end_object     1
%% start_array    2
%% end_array      3
%% string         4
%% number         5
%% bool           6
%% null           7
