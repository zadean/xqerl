-module(ietf_date_parse).
-export([parse/1, parse_and_scan/1, format_error/1]).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 125).
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

%% @doc  IETF date parser. Only needed for fn:parse-ietf-date($value as xs:string?) as xs:dateTime?

-include("xqerl.hrl").

val({_,_,Token}) ->
    Token.

tzname_to_os({_,_,"UT"}) ->  {off_set, '+', 0, 0};
tzname_to_os({_,_,"UTC"}) -> {off_set, '+', 0, 0};
tzname_to_os({_,_,"GMT"}) -> {off_set, '+', 0, 0};
tzname_to_os({_,_,"EST"}) -> {off_set, '-', 5, 0};
tzname_to_os({_,_,"EDT"}) -> {off_set, '-', 4, 0};
tzname_to_os({_,_,"CST"}) -> {off_set, '-', 6, 0};
tzname_to_os({_,_,"CDT"}) -> {off_set, '-', 5, 0};
tzname_to_os({_,_,"MST"}) -> {off_set, '-', 7, 0};
tzname_to_os({_,_,"MDT"}) -> {off_set, '-', 6, 0};
tzname_to_os({_,_,"PST"}) -> {off_set, '-', 8, 0};
tzname_to_os({_,_,"PDT"}) -> {off_set, '-', 7, 0}.

monthname_to_num({_,_,"JAN"}) -> 1;
monthname_to_num({_,_,"FEB"}) -> 2;
monthname_to_num({_,_,"MAR"}) -> 3;
monthname_to_num({_,_,"APR"}) -> 4;
monthname_to_num({_,_,"MAY"}) -> 5;
monthname_to_num({_,_,"JUN"}) -> 6;
monthname_to_num({_,_,"JUL"}) -> 7;
monthname_to_num({_,_,"AUG"}) -> 8;
monthname_to_num({_,_,"SEP"}) -> 9;
monthname_to_num({_,_,"OCT"}) -> 10;
monthname_to_num({_,_,"NOV"}) -> 11;
monthname_to_num({_,_,"DEC"}) -> 12.

  

-file("c:/erlang/erl9.0/lib/parsetools-2.1.5/include/yeccpre.hrl", 0).
%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 1996-2017. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The parser generator will insert appropriate declarations before this line.%

-type yecc_ret() :: {'error', _} | {'ok', _}.

-spec parse(Tokens :: list()) -> yecc_ret().
parse(Tokens) ->
    yeccpars0(Tokens, {no_func, no_line}, 0, [], []).

-spec parse_and_scan({function() | {atom(), atom()}, [_]}
                     | {atom(), atom(), [_]}) -> yecc_ret().
parse_and_scan({F, A}) ->
    yeccpars0([], {{F, A}, no_line}, 0, [], []);
parse_and_scan({M, F, A}) ->
    Arity = length(A),
    yeccpars0([], {{fun M:F/Arity, A}, no_line}, 0, [], []).

-spec format_error(any()) -> [char() | list()].
format_error(Message) ->
    case io_lib:deep_char_list(Message) of
        true ->
            Message;
        _ ->
            io_lib:write(Message)
    end.

%% To be used in grammar files to throw an error message to the parser
%% toplevel. Doesn't have to be exported!
-compile({nowarn_unused_function, return_error/2}).
-spec return_error(integer(), any()) -> no_return().
return_error(Line, Message) ->
    throw({error, {Line, ?MODULE, Message}}).

-define(CODE_VERSION, "1.4").

yeccpars0(Tokens, Tzr, State, States, Vstack) ->
    try yeccpars1(Tokens, Tzr, State, States, Vstack)
    catch 
        error: Error ->
            Stacktrace = erlang:get_stacktrace(),
            try yecc_error_type(Error, Stacktrace) of
                Desc ->
                    erlang:raise(error, {yecc_bug, ?CODE_VERSION, Desc},
                                 Stacktrace)
            catch _:_ -> erlang:raise(error, Error, Stacktrace)
            end;
        %% Probably thrown from return_error/2:
        throw: {error, {_Line, ?MODULE, _M}} = Error ->
            Error
    end.

yecc_error_type(function_clause, [{?MODULE,F,ArityOrArgs,_} | _]) ->
    case atom_to_list(F) of
        "yeccgoto_" ++ SymbolL ->
            {ok,[{atom,_,Symbol}],_} = erl_scan:string(SymbolL),
            State = case ArityOrArgs of
                        [S,_,_,_,_,_,_] -> S;
                        _ -> state_is_unknown
                    end,
            {Symbol, State, missing_in_goto_table}
    end.

yeccpars1([Token | Tokens], Tzr, State, States, Vstack) ->
    yeccpars2(State, element(1, Token), States, Vstack, Token, Tokens, Tzr);
yeccpars1([], {{F, A},_Line}, State, States, Vstack) ->
    case apply(F, A) of
        {ok, Tokens, Endline} ->
            yeccpars1(Tokens, {{F, A}, Endline}, State, States, Vstack);
        {eof, Endline} ->
            yeccpars1([], {no_func, Endline}, State, States, Vstack);
        {error, Descriptor, _Endline} ->
            {error, Descriptor}
    end;
yeccpars1([], {no_func, no_line}, State, States, Vstack) ->
    Line = 999999,
    yeccpars2(State, '$end', States, Vstack, yecc_end(Line), [],
              {no_func, Line});
yeccpars1([], {no_func, Endline}, State, States, Vstack) ->
    yeccpars2(State, '$end', States, Vstack, yecc_end(Endline), [],
              {no_func, Endline}).

%% yeccpars1/7 is called from generated code.
%%
%% When using the {includefile, Includefile} option, make sure that
%% yeccpars1/7 can be found by parsing the file without following
%% include directives. yecc will otherwise assume that an old
%% yeccpre.hrl is included (one which defines yeccpars1/5).
yeccpars1(State1, State, States, Vstack, Token0, [Token | Tokens], Tzr) ->
    yeccpars2(State, element(1, Token), [State1 | States],
              [Token0 | Vstack], Token, Tokens, Tzr);
yeccpars1(State1, State, States, Vstack, Token0, [], {{_F,_A}, _Line}=Tzr) ->
    yeccpars1([], Tzr, State, [State1 | States], [Token0 | Vstack]);
yeccpars1(State1, State, States, Vstack, Token0, [], {no_func, no_line}) ->
    Line = yecctoken_end_location(Token0),
    yeccpars2(State, '$end', [State1 | States], [Token0 | Vstack],
              yecc_end(Line), [], {no_func, Line});
yeccpars1(State1, State, States, Vstack, Token0, [], {no_func, Line}) ->
    yeccpars2(State, '$end', [State1 | States], [Token0 | Vstack],
              yecc_end(Line), [], {no_func, Line}).

%% For internal use only.
yecc_end({Line,_Column}) ->
    {'$end', Line};
yecc_end(Line) ->
    {'$end', Line}.

yecctoken_end_location(Token) ->
    try erl_anno:end_location(element(2, Token)) of
        undefined -> yecctoken_location(Token);
        Loc -> Loc
    catch _:_ -> yecctoken_location(Token)
    end.

-compile({nowarn_unused_function, yeccerror/1}).
yeccerror(Token) ->
    Text = yecctoken_to_string(Token),
    Location = yecctoken_location(Token),
    {error, {Location, ?MODULE, ["syntax error before: ", Text]}}.

-compile({nowarn_unused_function, yecctoken_to_string/1}).
yecctoken_to_string(Token) ->
    try erl_scan:text(Token) of
        undefined -> yecctoken2string(Token);
        Txt -> Txt
    catch _:_ -> yecctoken2string(Token)
    end.

yecctoken_location(Token) ->
    try erl_scan:location(Token)
    catch _:_ -> element(2, Token)
    end.

-compile({nowarn_unused_function, yecctoken2string/1}).
yecctoken2string({atom, _, A}) -> io_lib:write_atom(A);
yecctoken2string({integer,_,N}) -> io_lib:write(N);
yecctoken2string({float,_,F}) -> io_lib:write(F);
yecctoken2string({char,_,C}) -> io_lib:write_char(C);
yecctoken2string({var,_,V}) -> io_lib:format("~s", [V]);
yecctoken2string({string,_,S}) -> io_lib:write_string(S);
yecctoken2string({reserved_symbol, _, A}) -> io_lib:write(A);
yecctoken2string({_Cat, _, Val}) -> io_lib:format("~tp", [Val]);
yecctoken2string({dot, _}) -> "'.'";
yecctoken2string({'$end', _}) -> [];
yecctoken2string({Other, _}) when is_atom(Other) ->
    io_lib:write_atom(Other);
yecctoken2string(Other) ->
    io_lib:format("~tp", [Other]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 233).

-dialyzer({nowarn_function, yeccpars2/7}).
yeccpars2(0=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_0(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(1=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_1(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(2=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_2(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(3=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_3(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(4=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_4(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(5=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_5(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(6=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_6(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(7=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_7(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(8=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_2(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(9=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_9(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(10=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_10(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(11=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_11(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(12=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_12(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(13=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_13(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(14=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_14(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(15=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_3(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(16=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_16(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(17=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_17(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(18=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_18(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(19=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_19(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(20=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_20(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(21=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_21(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(22=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_22(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(23=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_23(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(24=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_24(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(25=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_25(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(26=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_26(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(27=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_27(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(28=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_17(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(29=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_17(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(30=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_30(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(31=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_31(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(32=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_32(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(33=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_33(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(34=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_34(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(35=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_35(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(36=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_36(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(37=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_37(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(38=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_38(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(39=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_39(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(40=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_40(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(41=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_41(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(42=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_42(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(43=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_43(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(44=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_44(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(45=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(46=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_46(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(47=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_47(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(48=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_48(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(49=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_49(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(50=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_50(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(51=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_3(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(52=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_52(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(53=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_53(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(54=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_50(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(55=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_3(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(56=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_56(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(57=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_57(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(58=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_58(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(59=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_59(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(60=S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_2(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(61=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
%% yeccpars2(62=S, Cat, Ss, Stack, T, Ts, Tzr) ->
%%  yeccpars2_62(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(Other, _, _, _, _, _, _) ->
 erlang:error({yecc_bug,"1.4",{missing_state_in_action_table, Other}}).

yeccpars2_0(S, dayname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 5, Ss, Stack, T, Ts, Tzr);
yeccpars2_0(S, monthname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 8, Ss, Stack, T, Ts, Tzr);
yeccpars2_0(S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_9(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_1/7}).
yeccpars2_1(_S, '$end', _Ss, Stack, _T, _Ts, _Tzr) ->
 {ok, hd(Stack)};
yeccpars2_1(_, _, _, _, T, _, _) ->
 yeccerror(T).

-dialyzer({nowarn_function, yeccpars2_2/7}).
yeccpars2_2(S, minus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 10, Ss, Stack, T, Ts, Tzr);
yeccpars2_2(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 11, Ss, Stack, T, Ts, Tzr);
yeccpars2_2(_, _, _, _, T, _, _) ->
 yeccerror(T).

-dialyzer({nowarn_function, yeccpars2_3/7}).
yeccpars2_3(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 17, Ss, Stack, T, Ts, Tzr);
yeccpars2_3(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_4(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccgoto_input(hd(Ss), Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_5/7}).
yeccpars2_5(S, ',', Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 49, Ss, Stack, T, Ts, Tzr);
yeccpars2_5(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 50, Ss, Stack, T, Ts, Tzr);
yeccpars2_5(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_6(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_6_(Stack),
 yeccgoto_daynum(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_7(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_7_(Stack),
 yeccgoto_daynum(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

%% yeccpars2_8: see yeccpars2_2

-dialyzer({nowarn_function, yeccpars2_9/7}).
yeccpars2_9(S, digit, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 6, Ss, Stack, T, Ts, Tzr);
yeccpars2_9(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 7, Ss, Stack, T, Ts, Tzr);
yeccpars2_9(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_10(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 14, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_10_(Stack),
 yeccgoto_dsep(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_11(S, minus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 12, Ss, Stack, T, Ts, Tzr);
yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_11_(Stack),
 yeccgoto_dsep(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_12(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 13, Ss, Stack, T, Ts, Tzr);
yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_12_(Stack),
 yeccgoto_dsep(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_|Nss] = Ss,
 NewStack = yeccpars2_13_(Stack),
 yeccgoto_dsep(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_14_(Stack),
 yeccgoto_dsep(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

%% yeccpars2_15: see yeccpars2_3

-dialyzer({nowarn_function, yeccpars2_16/7}).
yeccpars2_16(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 45, Ss, Stack, T, Ts, Tzr);
yeccpars2_16(_, _, _, _, T, _, _) ->
 yeccerror(T).

-dialyzer({nowarn_function, yeccpars2_17/7}).
yeccpars2_17(S, digit, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 19, Ss, Stack, T, Ts, Tzr);
yeccpars2_17(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 20, Ss, Stack, T, Ts, Tzr);
yeccpars2_17(_, _, _, _, T, _, _) ->
 yeccerror(T).

-dialyzer({nowarn_function, yeccpars2_18/7}).
yeccpars2_18(S, ':', Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 21, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_19_(Stack),
 yeccgoto_hours(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_20_(Stack),
 yeccgoto_hours(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_21/7}).
yeccpars2_21(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_21(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_22(S, ':', Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_22(S, minus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 28, Ss, Stack, T, Ts, Tzr);
yeccpars2_22(S, plus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 29, Ss, Stack, T, Ts, Tzr);
yeccpars2_22(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_22(S, tzname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_|Nss] = Ss,
 NewStack = yeccpars2_22_(Stack),
 yeccgoto_stime(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_23(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_23_(Stack),
 yeccgoto_minutes(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_24(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_24_(Stack),
 yeccgoto_timezone(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_25(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccgoto_stimezone(hd(Ss), Cat, Ss, Stack, T, Ts, Tzr).

yeccpars2_26(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_,_|Nss] = Ss,
 NewStack = yeccpars2_26_(Stack),
 yeccgoto_stime(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_27/7}).
yeccpars2_27(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 42, Ss, Stack, T, Ts, Tzr);
yeccpars2_27(_, _, _, _, T, _, _) ->
 yeccerror(T).

%% yeccpars2_28: see yeccpars2_17

%% yeccpars2_29: see yeccpars2_17

-dialyzer({nowarn_function, yeccpars2_30/7}).
yeccpars2_30(S, minus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 28, Ss, Stack, T, Ts, Tzr);
yeccpars2_30(S, plus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 29, Ss, Stack, T, Ts, Tzr);
yeccpars2_30(S, tzname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_30(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_31(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_31_(Stack),
 yeccgoto_timezone(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_32(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_32_(Stack),
 yeccgoto_stimezone(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_33(S, ':', Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_33(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_33(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_33_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_34(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_|Nss] = Ss,
 NewStack = yeccpars2_34_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_35(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_35(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_|Nss] = Ss,
 NewStack = yeccpars2_35_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_36(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_|Nss] = Ss,
 NewStack = yeccpars2_36_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_37(S, ':', Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_37(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_37(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_37_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_38(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_|Nss] = Ss,
 NewStack = yeccpars2_38_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_39(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_|Nss] = Ss,
 NewStack = yeccpars2_39_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_|Nss] = Ss,
 NewStack = yeccpars2_40_(Stack),
 yeccgoto_tzoffset(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_41(S, minus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 28, Ss, Stack, T, Ts, Tzr);
yeccpars2_41(S, plus, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 29, Ss, Stack, T, Ts, Tzr);
yeccpars2_41(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_41(S, tzname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_,_,_|Nss] = Ss,
 NewStack = yeccpars2_41_(Stack),
 yeccgoto_stime(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_42(S, digits, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 43, Ss, Stack, T, Ts, Tzr);
yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_42_(Stack),
 yeccgoto_seconds(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_43(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_43_(Stack),
 yeccgoto_seconds(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_,_,_,_|Nss] = Ss,
 NewStack = yeccpars2_44_(Stack),
 yeccgoto_stime(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_45/7}).
yeccpars2_45(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 47, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_,_,_|Nss] = Ss,
 NewStack = yeccpars2_46_(Stack),
 yeccgoto_asctime(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_47(S, digit2, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 48, Ss, Stack, T, Ts, Tzr);
yeccpars2_47(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 NewStack = yeccpars2_47_(Stack),
 yeccgoto_year(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_48_(Stack),
 yeccgoto_year(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_49/7}).
yeccpars2_49(S, s, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 54, Ss, Stack, T, Ts, Tzr);
yeccpars2_49(_, _, _, _, T, _, _) ->
 yeccerror(T).

yeccpars2_50(S, monthname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 8, Ss, Stack, T, Ts, Tzr);
yeccpars2_50(S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_9(S, Cat, Ss, Stack, T, Ts, Tzr).

%% yeccpars2_51: see yeccpars2_3

yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_|Nss] = Ss,
 NewStack = yeccpars2_52_(Stack),
 yeccgoto_input(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_|Nss] = Ss,
 NewStack = yeccpars2_53_(Stack),
 yeccgoto_input(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

%% yeccpars2_54: see yeccpars2_50

%% yeccpars2_55: see yeccpars2_3

yeccpars2_56(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_|Nss] = Ss,
 NewStack = yeccpars2_56_(Stack),
 yeccgoto_input(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_57(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_,_|Nss] = Ss,
 NewStack = yeccpars2_57_(Stack),
 yeccgoto_input(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_58(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_|Nss] = Ss,
 NewStack = yeccpars2_58_(Stack),
 yeccgoto_input(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccpars2_59/7}).
yeccpars2_59(S, monthname, Ss, Stack, T, Ts, Tzr) ->
 yeccpars1(S, 60, Ss, Stack, T, Ts, Tzr);
yeccpars2_59(_, _, _, _, T, _, _) ->
 yeccerror(T).

%% yeccpars2_60: see yeccpars2_2

%% yeccpars2_61: see yeccpars2_45

yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 [_,_,_,_|Nss] = Ss,
 NewStack = yeccpars2_62_(Stack),
 yeccgoto_datespec(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_asctime/7}).
yeccgoto_asctime(0=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_4(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_asctime(50=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_asctime(54=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_56(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_datespec/7}).
yeccgoto_datespec(0, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_3(3, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_datespec(50, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_3(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_datespec(54, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_3(55, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_daynum/7}).
yeccgoto_daynum(0, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_2(2, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_daynum(9, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_3(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_daynum(50, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_2(2, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_daynum(54, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_2(2, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_dsep/7}).
yeccgoto_dsep(2, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_59(59, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_dsep(8, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_9(9, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_dsep(60, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_45(61, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_hours/7}).
yeccgoto_hours(17, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_18(18, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_hours(28, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_37(37, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_hours(29, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_33(33, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_input/7}).
yeccgoto_input(0, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_1(1, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_minutes/7}).
yeccgoto_minutes(21, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_22(22, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_minutes(33=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_34(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_minutes(35=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_36(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_minutes(37=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_38(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_minutes(39=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_seconds/7}).
yeccgoto_seconds(27, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_41(41, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_stime/7}).
yeccgoto_stime(3=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_58(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_stime(15, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_16(16, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_stime(51=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_stime(55=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_57(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_stimezone/7}).
yeccgoto_stimezone(22=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_26(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_stimezone(41=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_timezone/7}).
yeccgoto_timezone(22=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_25(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_timezone(30=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_32(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_timezone(41=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_25(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_tzoffset/7}).
yeccgoto_tzoffset(22=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_24(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tzoffset(30=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_24(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tzoffset(41=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_24(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, yeccgoto_year/7}).
yeccgoto_year(45=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_year(61=_S, Cat, Ss, Stack, T, Ts, Tzr) ->
 yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr).

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 806).
-compile({inline,yeccpars2_6_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 43).
yeccpars2_6_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) ,
    case val ( __1 ) of
    V when V >= 32 ;
    V < 1 ->
    xqerl_error : error ( 'FORG0010' ) ;
    V ->
    V
    end
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 822).
-compile({inline,yeccpars2_7_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 35).
yeccpars2_7_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) ,
    case val ( __1 ) of
    V when V >= 32 ;
    V < 1 ->
    xqerl_error : error ( 'FORG0010' ) ;
    V ->
    V
    end
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 838).
-compile({inline,yeccpars2_10_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 33).
yeccpars2_10_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 847).
-compile({inline,yeccpars2_11_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 29).
yeccpars2_11_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 856).
-compile({inline,yeccpars2_12_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 31).
yeccpars2_12_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 865).
-compile({inline,yeccpars2_13_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 30).
yeccpars2_13_(__Stack0) ->
 [__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 874).
-compile({inline,yeccpars2_14_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 32).
yeccpars2_14_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 883).
-compile({inline,yeccpars2_19_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 73).
yeccpars2_19_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , val ( __1 )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 892).
-compile({inline,yeccpars2_20_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 66).
yeccpars2_20_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) ,
    case val ( __1 ) of
    V when V >= 25 ->
    xqerl_error : error ( 'FORG0010' ) ;
    V ->
    V
    end
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 907).
-compile({inline,yeccpars2_22_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 64).
yeccpars2_22_(__Stack0) ->
 [__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { __2 , __4 , 0 , { off_set , '+' , 0 , 0 } }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 916).
-compile({inline,yeccpars2_23_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 75).
yeccpars2_23_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) ,
    case val ( __1 ) of
    V when V >= 60 ->
    xqerl_error : error ( 'FORG0010' ) ;
    V ->
    V
    end
  end | __Stack].

-compile({inline,yeccpars2_24_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 102).
yeccpars2_24_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   case element ( 3 , __1 ) of
    V when V > 14 ->
    xqerl_error : error ( 'FORG0010' ) ;
    _ ->
    __1
    end
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 944).
-compile({inline,yeccpars2_26_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 61).
yeccpars2_26_(__Stack0) ->
 [__5,__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { __2 , __4 , 0 , __5 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 953).
-compile({inline,yeccpars2_31_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 101).
yeccpars2_31_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , tzname_to_os ( __1 )
  end | __Stack].

-compile({inline,yeccpars2_32_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 99).
yeccpars2_32_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   __2
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 970).
-compile({inline,yeccpars2_33_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 114).
yeccpars2_33_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '+' , __2 , 0 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 979).
-compile({inline,yeccpars2_34_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 116).
yeccpars2_34_(__Stack0) ->
 [__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '+' , __2 , __3 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 988).
-compile({inline,yeccpars2_35_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 115).
yeccpars2_35_(__Stack0) ->
 [__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '+' , __2 , 0 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 997).
-compile({inline,yeccpars2_36_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 117).
yeccpars2_36_(__Stack0) ->
 [__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '+' , __2 , __4 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1006).
-compile({inline,yeccpars2_37_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 110).
yeccpars2_37_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '-' , __2 , 0 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1015).
-compile({inline,yeccpars2_38_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 112).
yeccpars2_38_(__Stack0) ->
 [__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '-' , __2 , __3 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1024).
-compile({inline,yeccpars2_39_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 111).
yeccpars2_39_(__Stack0) ->
 [__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '-' , __2 , 0 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1033).
-compile({inline,yeccpars2_40_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 113).
yeccpars2_40_(__Stack0) ->
 [__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { off_set , '-' , __2 , __4 }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1042).
-compile({inline,yeccpars2_41_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 60).
yeccpars2_41_(__Stack0) ->
 [__6,__5,__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { __2 , __4 , __6 , { off_set , '+' , 0 , 0 } }
  end | __Stack].

-compile({inline,yeccpars2_42_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 91).
yeccpars2_42_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   case list_to_integer ( lists : concat ( [ val ( __1 ) ] ) ) of
    V when V >= 60 ->
    xqerl_error : error ( 'FORG0010' ) ;
    V ->
    V
    end
  end | __Stack].

-compile({inline,yeccpars2_43_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 84).
yeccpars2_43_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   case list_to_float ( lists : concat ( [ val ( __1 ) , val ( __2 ) ] ) ) of
    V when V >= 60 ->
    xqerl_error : error ( 'FORG0010' ) ;
    V ->
    V
    end
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1077).
-compile({inline,yeccpars2_44_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 57).
yeccpars2_44_(__Stack0) ->
 [__7,__6,__5,__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , { __2 , __4 , __6 , __7 }
  end | __Stack].

-compile({inline,yeccpars2_46_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 27).
yeccpars2_46_(__Stack0) ->
 [__6,__5,__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   # xsDateTime { sign = '+' , year = __6 , month = monthname_to_num ( __1 ) , day = __3 , hour = element ( 1 , __4 ) , minute = element ( 2 , __4 ) , second = element ( 3 , __4 ) , offset = element ( 4 , __4 ) }
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1094).
-compile({inline,yeccpars2_47_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 53).
yeccpars2_47_(__Stack0) ->
 [__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , 1900 + list_to_integer ( val ( __1 ) )
  end | __Stack].

-file("C:/git/zadean/xqerl/src/ietf_date_parse.erl", 1103).
-compile({inline,yeccpars2_48_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 52).
yeccpars2_48_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   ? dbg ( "time" , time ) , list_to_integer ( lists : concat ( [ val ( __1 ) , val ( __2 ) ] ) )
  end | __Stack].

-compile({inline,yeccpars2_52_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 19).
yeccpars2_52_(__Stack0) ->
 [__3,__2,__1 | __Stack] = __Stack0,
 [begin
   __3
  end | __Stack].

-compile({inline,yeccpars2_53_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 18).
yeccpars2_53_(__Stack0) ->
 [__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ( __3 ) # xsDateTime { hour = element ( 1 , __4 ) , minute = element ( 2 , __4 ) , second = element ( 3 , __4 ) , offset = element ( 4 , __4 ) }
  end | __Stack].

-compile({inline,yeccpars2_56_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 17).
yeccpars2_56_(__Stack0) ->
 [__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   __4
  end | __Stack].

-compile({inline,yeccpars2_57_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 16).
yeccpars2_57_(__Stack0) ->
 [__5,__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   ( __4 ) # xsDateTime { hour = element ( 1 , __5 ) , minute = element ( 2 , __5 ) , second = element ( 3 , __5 ) , offset = element ( 4 , __5 ) }
  end | __Stack].

-compile({inline,yeccpars2_58_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 20).
yeccpars2_58_(__Stack0) ->
 [__2,__1 | __Stack] = __Stack0,
 [begin
   ( __1 ) # xsDateTime { hour = element ( 1 , __2 ) , minute = element ( 2 , __2 ) , second = element ( 3 , __2 ) , offset = element ( 4 , __2 ) }
  end | __Stack].

-compile({inline,yeccpars2_62_/1}).
-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 25).
yeccpars2_62_(__Stack0) ->
 [__5,__4,__3,__2,__1 | __Stack] = __Stack0,
 [begin
   # xsDateTime { sign = '+' , year = __5 , month = monthname_to_num ( __3 ) , day = __1 }
  end | __Stack].


-file("C:/git/zadean/xqerl/src/ietf_date_parse.yrl", 181).
