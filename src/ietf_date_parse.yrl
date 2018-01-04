Nonterminals tzoffset timezone seconds minutes hours  year daynum asctime datespec input dsep time.

Terminals s ',' ':' '(' ')' digit2 digit tzname monthname dayname plus minus digits.

Rootsymbol input.

Nonassoc 100 minus plus '(' s.
Left 200 timezone seconds minutes .


%% input ::=   S? (dayname ","? S)? ((datespec S time) | asctime) S?
input -> dayname ',' s datespec s time   : ?dbg("time",'$4'),('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = element(4,'$6')}.
input -> dayname     s datespec s time   : ?dbg("time",time),('$3')#xsDateTime{hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = element(4,'$5')}.
input ->               datespec s time   : ?dbg("time",time),('$1')#xsDateTime{hour = element(1,'$3'), minute = element(2,'$3'), second = element(3,'$3'), offset = element(4,'$3')}.
input -> dayname ',' s datespec s time s timezone: ?dbg("time",'$4'),('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = '$8'}.
input -> dayname     s datespec s time s timezone: ?dbg("time",time),('$3')#xsDateTime{hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = '$7'}.
input ->               datespec s time s timezone: ?dbg("time",time),('$1')#xsDateTime{hour = element(1,'$3'), minute = element(2,'$3'), second = element(3,'$3'), offset = '$5'}.
input -> dayname ',' s datespec s time   timezone: ?dbg("time",'$4'),('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = '$7'}.
input -> dayname     s datespec s time   timezone: ?dbg("time",time),('$3')#xsDateTime{hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = '$6'}.
input ->               datespec s time   timezone: ?dbg("time",time),('$1')#xsDateTime{hour = element(1,'$3'), minute = element(2,'$3'), second = element(3,'$3'), offset = '$4'}.

input -> dayname ',' s asctime         s : ?dbg("time",time),'$4'.
input -> dayname     s asctime         s : ?dbg("time",time),'$3'.
input ->               asctime         s : ?dbg("time",time),'$1'.
input -> dayname ',' s asctime           : ?dbg("time",time),'$4'.
input -> dayname     s asctime           : ?dbg("time",time),'$3'.
input ->               asctime           : ?dbg("time",time),'$1'.

%% dayname  ::=   "Mon" | "Tue" | "Wed" | "Thu" | "Fri" | "Sat" | "Sun" | "Monday | "Tuesday" | "Wednesday" | "Thursday" | "Friday" | "Saturday" | "Sunday"

%% datespec ::=   daynum dsep monthname dsep year
datespec -> daynum dsep monthname dsep year : ?dbg("time",time),#xsDateTime{sign = '+', year = '$5', month = monthname_to_num('$3'), day = '$1'}.

%% asctime  ::=   monthname dsep daynum S time S year
asctime -> monthname dsep daynum s time            s year : ?dbg("time",time),#xsDateTime{sign = '+', year = '$7', month = monthname_to_num('$1'), day = '$3', hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = element(4,'$5')}.
asctime -> monthname dsep daynum s time s timezone s year : ?dbg("time",time),#xsDateTime{sign = '+', year = '$9', month = monthname_to_num('$1'), day = '$3', hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = '$7'}.
asctime -> monthname dsep daynum s time   timezone s year : ?dbg("time",time),#xsDateTime{sign = '+', year = '$8', month = monthname_to_num('$1'), day = '$3', hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = '$6'}.

%% dsep  ::=   S | (S? "-" S?)
dsep -> s         :?dbg("time",time).
dsep -> s minus s :?dbg("time",time).
dsep -> s minus   :?dbg("time",time).
dsep ->   minus s :?dbg("time",time).
dsep ->   minus   :?dbg("time",time).

%% daynum   ::=   digit digit?
daynum -> digit2 : ?dbg("time",time),int_in_range(val('$1'),1,31).
daynum -> digit  : ?dbg("time",time),int_in_range(val('$1'),1,31).

%% year  ::=   digit digit (digit digit)?
year -> digit2 digit2 : ?dbg("time",time),int_in_range(lists:concat([val('$1'),val('$2')]), 0, 9999).
year -> digit2        : ?dbg("time",time),1900 + int_in_range(val('$1'),0,99).

%% digit ::=   [0-9]

%% monthname   ::=   "Jan" | "Feb" | "Mar" | "Apr" | "May" | "Jun" | "Jul" | "Aug" | "Sep" | "Oct" | "Nov" | "Dec"

%% time  ::=   hours ":" minutes (":" seconds)? (S? timezone)?
time -> hours ':' minutes                        : ?dbg("time",time),{'$1','$3',xqerl_numeric:decimal(0),tzname_to_os({[],[],"UTC"})}.
time -> hours ':' minutes ':' seconds            : ?dbg("time",time),{'$1','$3','$5',tzname_to_os({[],[],"UTC"})}.
%% time -> hours ':' minutes ':' seconds s timezone : ?dbg("time",time),{'$1','$3','$5','$7'}.
%% time -> hours ':' minutes ':' seconds   timezone : ?dbg("time",time),{'$1','$3','$5','$6'}.
%% time -> hours ':' minutes             s timezone : ?dbg("time",time),{'$1','$3',xqerl_numeric:decimal(0),'$5'}.
%% time -> hours ':' minutes               timezone : ?dbg("time",time),{'$1','$3',xqerl_numeric:decimal(0),'$4'}.


%% hours ::=   digit digit?
hours -> digit2   : ?dbg("time",time),int_in_range(val('$1'),0,24).
hours -> digit    : ?dbg("time",time),int_in_range(val('$1'),0,9).

%% minutes  ::=   digit digit
minutes -> digit2 : ?dbg("time",time),int_in_range(val('$1'),0,59).

%% seconds  ::=   digit digit ("." digit+)?
seconds -> digit2 digits : ?dbg("time",time),
                     V = xqerl_numeric:decimal(lists:concat([val('$1'),val('$2')])),
                     case xqerl_numeric:greater_than_equal(V, 60) of
                        true ->
                           ?err('FORG0010');
                        _ ->
                           V
                     end.
seconds -> digit2 :  ?dbg("time",time), xqerl_numeric:decimal(int_in_range(val('$1'),0,59)).

%% timezone ::=   tzname | tzoffset (S? "(" S? tzname S? ")")?
timezone -> tzname                        : ?dbg("time",time),tzname_to_os('$1').
timezone -> tzoffset                      : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset s '(' s tzname s ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset s '(' s tzname   ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset s '('   tzname s ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset s '('   tzname   ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset   '(' s tzname s ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset   '(' s tzname   ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset   '('   tzname s ')' : ?dbg("time",time),check_offset('$1'). 
timezone -> tzoffset   '('   tzname   ')' : ?dbg("time",time),check_offset('$1'). 

%% tzname   ::=   "UT" | "UTC" | "GMT" | "EST" | "EDT" | "CST" | "CDT" | "MST" | "MDT" | "PST" | "PDT"

%% tzoffset ::=   ("+"|"-") hours ":"? minutes?
tzoffset -> minus hours             : ?dbg("time",time),{off_set, '-', '$2', 0}.
tzoffset -> minus hours ':'         : ?dbg("time",time),{off_set, '-', '$2', 0}.
tzoffset -> minus hours ':' minutes : ?dbg("time",time),{off_set, '-', '$2', '$4'}.
tzoffset -> plus  hours             : ?dbg("time",time),{off_set, '+', '$2', 0}.
tzoffset -> plus  hours ':'         : ?dbg("time",time),{off_set, '+', '$2', 0}.
tzoffset -> plus  hours ':' minutes : ?dbg("time",time),{off_set, '+', '$2', '$4'}.

tzoffset -> minus digit2 digit2 : ?dbg("time",time),{off_set, '-', int_in_range(val('$2'),0,14), int_in_range(val('$3'),0,59)}.
tzoffset -> plus  digit2 digit2 : ?dbg("time",time),{off_set, '+', int_in_range(val('$2'),0,14), int_in_range(val('$3'),0,59)}.
tzoffset -> minus digit2 digit  : ?dbg("time",time),{off_set, '-', int_in_range([hd(val('$2'))],0,14), int_in_range(tl(val('$2')) ++ val('$3'),0,59)}.
tzoffset -> plus  digit2 digit  : ?dbg("time",time),{off_set, '+', int_in_range([hd(val('$2'))],0,14), int_in_range(tl(val('$2')) ++ val('$3'),0,59)}.

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
-compile([{hipe,[{regalloc,linear_scan}]}]).

val({_,_,Token}) ->
    Token.


tzname_to_os({_,_,"UT"}) ->  ?dbg("time",time),{off_set, '+', 0, 0};
tzname_to_os({_,_,"UTC"}) -> ?dbg("time",time),{off_set, '+', 0, 0};
tzname_to_os({_,_,"GMT"}) -> ?dbg("time",time),{off_set, '+', 0, 0};
tzname_to_os({_,_,"EST"}) -> ?dbg("time",time),{off_set, '-', 5, 0};
tzname_to_os({_,_,"EDT"}) -> ?dbg("time",time),{off_set, '-', 4, 0};
tzname_to_os({_,_,"CST"}) -> ?dbg("time",time),{off_set, '-', 6, 0};
tzname_to_os({_,_,"CDT"}) -> ?dbg("time",time),{off_set, '-', 5, 0};
tzname_to_os({_,_,"MST"}) -> ?dbg("time",time),{off_set, '-', 7, 0};
tzname_to_os({_,_,"MDT"}) -> ?dbg("time",time),{off_set, '-', 6, 0};
tzname_to_os({_,_,"PST"}) -> ?dbg("time",time),{off_set, '-', 8, 0};
tzname_to_os({_,_,"PDT"}) -> ?dbg("time",time),{off_set, '-', 7, 0}.

monthname_to_num({_,_,"JAN"}) -> ?dbg("time",time),1;
monthname_to_num({_,_,"FEB"}) -> ?dbg("time",time),2;
monthname_to_num({_,_,"MAR"}) -> ?dbg("time",time),3;
monthname_to_num({_,_,"APR"}) -> ?dbg("time",time),4;
monthname_to_num({_,_,"MAY"}) -> ?dbg("time",time),5;
monthname_to_num({_,_,"JUN"}) -> ?dbg("time",time),6;
monthname_to_num({_,_,"JUL"}) -> ?dbg("time",time),7;
monthname_to_num({_,_,"AUG"}) -> ?dbg("time",time),8;
monthname_to_num({_,_,"SEP"}) -> ?dbg("time",time),9;
monthname_to_num({_,_,"OCT"}) -> ?dbg("time",time),10;
monthname_to_num({_,_,"NOV"}) -> ?dbg("time",time),11;
monthname_to_num({_,_,"DEC"}) -> ?dbg("time",time),12.

check_offset({off_set, _, H, _}) when H > 14 -> ?err('FORG0010');
check_offset({off_set, _, _, _} = O) -> ?dbg("time",time),O.

int_in_range(Val,Min,Max) ->
   I = list_to_integer(Val),
   if I =< Max, I >= Min ->
         I;
      true ->
         ?err('FORG0010')
   end.
