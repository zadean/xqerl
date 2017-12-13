Nonterminals tzoffset timezone seconds minutes hours  year daynum asctime datespec input dsep %time
             stimezone stime.

%Terminals s ':' digit2 digit tzname monthname plus minus digits.
Terminals s ',' ':' digit2 digit tzname monthname dayname plus minus digits.

Rootsymbol input.

%Unary  300 seconds minutes hours . % datespec 300, asctime 600
%Left   400 tzname tzoffset timezone.
Right  500 s. % 60
%Left  500 s. % 26
%Nonassoc  500 s. % 21
%Right  600 timezone.
%Nonassoc  200 year.


%% whitespace stripped before parse
%% input ::=   S? (dayname ","? S)? ((datespec S time) | asctime) S?
input -> dayname ',' s datespec stime   : ('$4')#xsDateTime{hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = element(4,'$5')}.
input -> dayname ',' s asctime           : '$4'.
input -> dayname     s datespec stime   : ('$3')#xsDateTime{hour = element(1,'$4'), minute = element(2,'$4'), second = element(3,'$4'), offset = element(4,'$4')}.
input -> dayname     s asctime           : '$3'.
input ->     datespec stime   : ('$1')#xsDateTime{hour = element(1,'$2'), minute = element(2,'$2'), second = element(3,'$2'), offset = element(4,'$2')}.
input ->     asctime           : '$1'.

%% dayname  ::=   "Mon" | "Tue" | "Wed" | "Thu" | "Fri" | "Sat" | "Sun" | "Monday | "Tuesday" | "Wednesday" | "Thursday" | "Friday" | "Saturday" | "Sunday"
%% datespec ::=   daynum dsep monthname dsep year
datespec -> daynum dsep monthname dsep year : #xsDateTime{sign = '+', year = '$5', month = monthname_to_num('$3'), day = '$1'}.
%% asctime  ::=   monthname dsep daynum S time S year
asctime -> monthname dsep daynum stime s year : #xsDateTime{sign = '+', year = '$6', month = monthname_to_num('$1'), day = '$3', hour = element(1,'$4'), minute = element(2,'$4'), second = element(3,'$4'), offset = element(4,'$4')}.
%% dsep  ::=   S | (S? "-" S?)
dsep -> s         :?dbg("time",time).
dsep -> s minus s :?dbg("time",time).
dsep -> s minus   :?dbg("time",time).
dsep ->   minus s :?dbg("time",time).
dsep ->   minus   :?dbg("time",time).
%% daynum   ::=   digit digit?
daynum -> digit2 : ?dbg("time",time),
                   case val('$1') of 
                        V when V >= 32;
                               V < 1 ->
                           xqerl_error:error('FORG0010');
                        V ->
                           V
                   end.
daynum -> digit  : ?dbg("time",time),
                   case val('$1') of 
                        V when V >= 32;
                               V < 1 ->
                           xqerl_error:error('FORG0010');
                        V ->
                           V
                    end.
%% year  ::=   digit digit (digit digit)?
year -> digit2 digit2 : ?dbg("time",time),list_to_integer(lists:concat([val('$1'),val('$2')])).
year -> digit2        : ?dbg("time",time),1900 + list_to_integer(val('$1')).
%% digit ::=   [0-9]
%% monthname   ::=   "Jan" | "Feb" | "Mar" | "Apr" | "May" | "Jun" | "Jul" | "Aug" | "Sep" | "Oct" | "Nov" | "Dec"
%% time  ::=   hours ":" minutes (":" seconds)? (S? timezone)?
stime -> s hours ':' minutes ':' seconds stimezone  : ?dbg("time",time),{'$2','$4','$6','$7'}.
%% time -> hours ':' minutes ':' seconds s timezone : ?dbg("time",time),{'$1','$3','$5','$7'}.
%% time -> hours ':' minutes ':' seconds   timezone : ?dbg("time",time),{'$1','$3','$5','$6'}.
stime -> s hours ':' minutes ':' seconds            : ?dbg("time",time),{'$2','$4','$6',{off_set, '+', 0, 0}}.
stime -> s hours ':' minutes             stimezone  : ?dbg("time",time),{'$2','$4',xqerl_numeric:decimal(0),'$5'}.
%% time -> hours ':' minutes             s timezone : ?dbg("time",time),{'$1','$3',xqerl_numeric:decimal(0),'$5'}.
%% time -> hours ':' minutes               timezone : ?dbg("time",time),{'$1','$3',xqerl_numeric:decimal(0),'$4'}.
stime -> s hours ':' minutes                        : ?dbg("time",time),{'$2','$4',xqerl_numeric:decimal(0),{off_set, '+', 0, 0}}.
%% hours ::=   digit digit?
hours -> digit2   : ?dbg("time",time),
                    case val('$1') of 
                        V when V >= 25 ->
                           xqerl_error:error('FORG0010');
                        V ->
                           V
                    end.
hours -> digit    : ?dbg("time",time),val('$1').
%% minutes  ::=   digit digit
minutes -> digit2 : ?dbg("time",time),
                     case val('$1') of 
                        V when V >= 60 ->
                           xqerl_error:error('FORG0010');
                        V ->
                           V
                     end.
%% seconds  ::=   digit digit ("." digit+)?
seconds -> digit2 digits : 
                     V = xqerl_numeric:decimal(lists:concat([val('$1'),val('$2')])),
                     case xqerl_numeric:greater_than_equal(V, 60) of
                        true ->
                           xqerl_error:error('FORG0010');
                        _ ->
                           V
                     end.
seconds -> digit2        : 
                     V = xqerl_numeric:decimal(lists:concat([val('$1')])),
                     case xqerl_numeric:greater_than_equal(V, 60) of
                        true ->
                           xqerl_error:error('FORG0010');
                        _ ->
                           V
                     end.
%% timezone ::=   tzname | tzoffset (S? "(" S? tzname S? ")")?
stimezone -> timezone   : '$1'.
stimezone -> s timezone : '$2'.

timezone -> tzname       : ?dbg("time",time),tzname_to_os('$1').
timezone -> tzoffset     : case element(3,'$1') of
                              V when V > 14 ->
                                 xqerl_error:error('FORG0010');
                              _ ->
                                 '$1'
                           end.
%% tzname   ::=   "UT" | "UTC" | "GMT" | "EST" | "EDT" | "CST" | "CDT" | "MST" | "MDT" | "PST" | "PDT"
%% tzoffset ::=   ("+"|"-") hours ":"? minutes?
tzoffset -> minus hours             : ?dbg("time",time),{off_set, '-', '$2', 0}.
tzoffset -> minus hours ':'         : ?dbg("time",time),{off_set, '-', '$2', 0}.
tzoffset -> minus hours     minutes : ?dbg("time",time),{off_set, '-', '$2', '$3'}.
tzoffset -> minus hours ':' minutes : ?dbg("time",time),{off_set, '-', '$2', '$4'}.
tzoffset -> plus hours              : ?dbg("time",time),{off_set, '+', '$2', 0}.
tzoffset -> plus hours  ':'         : ?dbg("time",time),{off_set, '+', '$2', 0}.
tzoffset -> plus hours      minutes : ?dbg("time",time),{off_set, '+', '$2', '$3'}.
tzoffset -> plus hours  ':' minutes : ?dbg("time",time),{off_set, '+', '$2', '$4'}.

%% S  ::=   ( x09 | x0A | x0D | x20 )+

Erlang code.
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

  
