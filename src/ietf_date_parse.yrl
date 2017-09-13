Nonterminals tzoffset timezone seconds minutes hours time year daynum asctime datespec input dsep.

Terminals s '(' ')' ',' ':' fract digit tzname monthname dayname plus minus.

Rootsymbol input.

%% input ::=   S? (dayname ","? S)? ((datespec S time) | asctime) S?
input -> s dayname ',' s datespec s time s : ('$5')#xsDateTime{hour = element(1,'$7'), minute = element(2,'$7'), second = element(3,'$7'), offset = element(4,'$7')}.
input -> s dayname ',' s asctime         s : '$5'.
input -> s dayname ',' s datespec s time   : ('$5')#xsDateTime{hour = element(1,'$7'), minute = element(2,'$7'), second = element(3,'$7'), offset = element(4,'$7')}.
input -> s dayname ',' s asctime           : '$5'.
input ->   dayname ',' s datespec s time s : ('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = element(4,'$6')}.
input ->   dayname ',' s asctime         s : '$4'.
input ->   dayname ',' s datespec s time   : ('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = element(4,'$6')}.
input ->   dayname ',' s asctime           : '$4'.
input -> s dayname     s datespec s time s : ('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = element(4,'$6')}.
input -> s dayname     s asctime         s : '$4'.
input -> s dayname     s datespec s time   : ('$4')#xsDateTime{hour = element(1,'$6'), minute = element(2,'$6'), second = element(3,'$6'), offset = element(4,'$6')}.
input -> s dayname     s asctime           : '$4'.
input ->   dayname     s datespec s time s : ('$3')#xsDateTime{hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = element(4,'$5')}.
input ->   dayname     s asctime         s : '$3'.
input ->   dayname     s datespec s time   : ('$3')#xsDateTime{hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = element(4,'$5')}.
input ->   dayname     s asctime           : '$3'.
input -> s               datespec s time s : ('$2')#xsDateTime{hour = element(1,'$4'), minute = element(2,'$4'), second = element(3,'$4'), offset = element(4,'$4')}.
input -> s               asctime         s : '$2'.
input -> s               datespec s time   : ('$2')#xsDateTime{hour = element(1,'$4'), minute = element(2,'$4'), second = element(3,'$4'), offset = element(4,'$4')}.
input -> s               asctime           : '$2'.
input ->                 datespec s time s : ('$1')#xsDateTime{hour = element(1,'$3'), minute = element(2,'$3'), second = element(3,'$3'), offset = element(4,'$3')}.
input ->                 asctime         s : '$1'.
input ->                 datespec s time   : ('$1')#xsDateTime{hour = element(1,'$3'), minute = element(2,'$3'), second = element(3,'$3'), offset = element(4,'$3')}.
input ->                 asctime           : '$1'.

%% dayname  ::=   "Mon" | "Tue" | "Wed" | "Thu" | "Fri" | "Sat" | "Sun" | "Monday | "Tuesday" | "Wednesday" | "Thursday" | "Friday" | "Saturday" | "Sunday"
%% datespec ::=   daynum dsep monthname dsep year
datespec -> daynum dsep monthname dsep year : #xsDateTime{sign = '+', year = '$5', month = monthname_to_num('$3'), day = '$1'}.
%% asctime  ::=   monthname dsep daynum S time S year
asctime -> monthname dsep daynum s time s year : #xsDateTime{sign = '+', year = '$7', month = monthname_to_num('$1'), day = '$3', hour = element(1,'$5'), minute = element(2,'$5'), second = element(3,'$5'), offset = element(4,'$5')}.
%% dsep  ::=   S | (S? "-" S?)
dsep -> s: ok.
dsep -> s minus s : ok.
dsep -> s minus   : ok.
dsep ->   minus s : ok.
dsep ->   minus   : ok.
%% daynum   ::=   digit digit?
daynum -> digit digit : list_to_integer(lists:concat([val('$1'),val('$2')])).
daynum -> digit       : val('$1').
%% year  ::=   digit digit (digit digit)?
year -> digit digit digit digit : list_to_integer(lists:concat([val('$1'),val('$2'),val('$3'),val('$4')])).
year -> digit digit             : list_to_integer(lists:concat([19,val('$1'),val('$2')])).
%% digit ::=   [0-9]
%% monthname   ::=   "Jan" | "Feb" | "Mar" | "Apr" | "May" | "Jun" | "Jul" | "Aug" | "Sep" | "Oct" | "Nov" | "Dec"
%% time  ::=   hours ":" minutes (":" seconds)? (S? timezone)?
time -> hours ':' minutes ':' seconds s timezone : {'$1','$3','$5','$7'}.
time -> hours ':' minutes ':' seconds   timezone : {'$1','$3','$5','$6'}.
time -> hours ':' minutes ':' seconds            : {'$1','$3','$5',[]}.
time -> hours ':' minutes             s timezone : {'$1','$3',0,'$5'}.
time -> hours ':' minutes               timezone : {'$1','$3',0,'$4'}.
time -> hours ':' minutes                        : {'$1','$3',0,[]}.
%% hours ::=   digit digit?
hours -> digit digit : list_to_integer(lists:concat([val('$1'),val('$2')])).
hours -> digit       : val('$1').
%% minutes  ::=   digit digit
minutes -> digit digit : list_to_integer(lists:concat([val('$1'),val('$2')])).
%% seconds  ::=   digit digit ("." digit+)?
seconds -> fract : list_to_float(val('$1')).
%seconds -> digit digit fract : list_to_float(lists:concat([val('$1'),val('$2'),val('$3')])).
seconds -> digit digit       : list_to_integer(lists:concat([val('$1'),val('$2')])).
%% timezone ::=   tzname | tzoffset (S? "(" S? tzname S? ")")?
timezone -> tzname : tzname_to_os('$1').
timezone -> tzoffset : '$1'.
timezone -> tzoffset s '(' s tzname s ')' : '$1'.
timezone -> tzoffset   '(' s tzname s ')' : '$1'.
timezone -> tzoffset   '('   tzname s ')' : '$1'.
timezone -> tzoffset   '(' s tzname   ')' : '$1'.
timezone -> tzoffset   '('   tzname   ')' : '$1'.
%% tzname   ::=   "UT" | "UTC" | "GMT" | "EST" | "EDT" | "CST" | "CDT" | "MST" | "MDT" | "PST" | "PDT"
%% tzoffset ::=   ("+"|"-") hours ":"? minutes?
tzoffset -> minus hours : {off_set, '-', '$2', 0}.
tzoffset -> minus hours minutes : {off_set, '-', '$2', '$3'}.
tzoffset -> minus hours ':' minutes : {off_set, '-', '$2', '$4'}.
tzoffset -> plus hours : {off_set, '+', '$2', 0}.
tzoffset -> plus hours minutes : {off_set, '+', '$2', '$3'}.
tzoffset -> plus hours ':' minutes : {off_set, '+', '$2', '$4'}.

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

  
