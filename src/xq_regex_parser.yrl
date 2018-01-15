Nonterminals 
   regExp       
   branch       
   piece        
   quantity     
   quantifier
   atom         
   charClass    
   charClassExpr
   charGroup    
   posCharGroup 
   negCharGroup 
   charGroupPart
   charGroupParts
   singleChar   
   charRange    
   charClassEsc.

Terminals  
   'sub' '|' '?' '*' '+' '?:'
   '{' '}' '(' ')' '[' ']' '-' '^' '$'
   'BackReference'
   'CatEsc'       
   'ComplEsc'     
   'MultiCharEsc'
   'MultiCharComplEsc'
   'NormalChar'     
   'QuantExact'     
   'QuantMin'       
   'QuantRange'     
   'SingleCharEsc'  
   'SingleCharNoEsc'
   'WildcardEsc'.

Rootsymbol regExp.

%Left  100   charGroup.
Nonassoc  100   '|'.
%Left  100   charGroupPart.
%Nonassoc  200   singleChar.

%% Regular Expression
%[64]     regExp      ::=      branch ( '|' branch )*
regExp -> branch            : [{branch,'$1'}].
regExp -> branch '|' regExp : [{branch,'$1'}|'$3'].

%% Branch
%[65]     branch      ::=      piece*
branch -> piece        : ['$1'].
branch -> piece branch : ['$1'|'$2'].

%% Piece
% [66]     piece    ::=      atom quantifier?
piece -> atom            : {piece, '$1',one}.
piece -> atom quantifier : {piece, '$1','$2'}.

%% Quantifier
%[67]     quantifier     ::=      ( [?*+] | ( '{' quantity '}' ) ) '?'?
quantifier -> '?'     : {q,"?"}.
quantifier -> '?' '?' : {q,"??"}.
quantifier -> '*'     : {q,"*"}.
quantifier -> '*' '?' : {q,"*?"}.
quantifier -> '+'     : {q,"+"}.
quantifier -> '+' '?' : {q,"+?"}.
quantifier -> quantity    : {q,'$1'}.
quantifier -> quantity '?': {q,'$1'++"?"}.
%[68]     quantity    ::=      QuantRange | QuantMin | QuantExact
quantity -> 'QuantRange' : val('$1').
quantity -> 'QuantMin'   : val('$1').
quantity -> 'QuantExact' : val('$1').
%% Atom
%[72]     atom     ::=      NormalChar | charClass | ( '(' '?:'? regExp ')' ) | backReference
%[72a] backReference ::= "\" [1-9][0-9]*
atom -> 'NormalChar'       : {char,val('$1')}.
atom -> '-'                : {char,"-"}.
atom -> 'sub'              : {char,"-"}.
atom -> charClass          : '$1'.
atom -> '(' regExp ')'     : {paren,'$2'}.
atom -> '('        ')'     : {char,"()"}.
atom -> '(' '?:' regExp ')': {nc_paren,'$3'}.
atom -> '(' '?:'        ')': {char,"(?:)"}.
atom -> 'BackReference'    : {back_ref,list_to_integer(tl(val('$1')))}.

%% Character Class
%[74]     charClass      ::=      SingleCharEsc | charClassEsc | charClassExpr | WildcardEsc | '^' | '$'
charClass -> 'SingleCharEsc' : {char, val('$1')}.
charClass ->  charClassEsc   : '$1'.
charClass ->  charClassExpr  : '$1'.
charClass -> 'WildcardEsc'   : {char, val('$1')}.
charClass -> '^'             : val('$1').
charClass -> '$'             : val('$1').
%% Character Class Expression
%[75]     charClassExpr  ::=      '[' charGroup ']'
charClassExpr ->  '[' charGroup ']' : '$2'.
%% Character Group
%[76]     charGroup      ::=      ( posCharGroup | negCharGroup ) ( '-' charClassExpr )?
charGroup ->  posCharGroup                      : {group,'$1'}.
charGroup ->  posCharGroup 'sub' charClassExpr  : {subtract,{group,'$1'},'$3'}.
charGroup ->  negCharGroup                      : {neg_group,'$1'}.
charGroup ->  negCharGroup 'sub' charClassExpr  : {subtract,{neg_group,'$1'},'$3'}.
%% Positive Character Group
%[77]     posCharGroup   ::=      ( charGroupPart )+
posCharGroup -> charGroupParts             : '$1'.
charGroupParts -> charGroupPart                : ['$1'].
charGroupParts -> charGroupPart quantifier     : ['$1'].
charGroupParts -> charGroupPart '|' charGroupParts : ['$1'|'$3'].
charGroupParts -> charGroupPart charGroupParts : ['$1'|'$2'].
  
%%Negative Character Group
%[78]     negCharGroup   ::=      '^' posCharGroup
negCharGroup ->  '^' posCharGroup : '$2'.
%% Character Group Part
%[79]     charGroupPart  ::=      singleChar | charRange | charClassEsc
charGroupPart -> singleChar   :  if is_tuple('$1') ->
                                       {value,hd(element(2,'$1'))};
                                    '$1' == "\\n" ->
                                       {value,$\n};
                                    '$1' == "\\r" ->
                                       {value,$\r};
                                    '$1' == "\\t" ->
                                       {value,$\t};
                                    '$1' == "\\|";
                                    '$1' == "\\.";
                                    '$1' == "\\?";
                                    '$1' == "\\*";
                                    '$1' == "\\+";
                                    '$1' == "\\(";
                                    '$1' == "\\)";
                                    '$1' == "\\{";
                                    '$1' == "\\}";
                                    '$1' == "\\-";
                                    '$1' == "\\[";
                                    '$1' == "\\]";
                                    '$1' == "\\$";
                                    '$1' == "\\^" ->
                                       {value,hd(tl('$1'))};
                                    true ->
                                       {value,hd('$1')}
                                 end.
charGroupPart -> '('          : {value,$(}.
charGroupPart -> ')'          : {value,$)}.
charGroupPart -> charRange    : '$1'.
charGroupPart -> charClassEsc : '$1'.

%[80]     singleChar     ::=      SingleCharEsc | SingleCharNoEsc
singleChar -> 'SingleCharEsc'   : val('$1').
singleChar -> 'SingleCharNoEsc' : val('$1').
singleChar -> 'NormalChar'      : {char,val('$1')}.
singleChar -> 'WildcardEsc'     : {char,val('$1')}.
singleChar -> '}'               : {char,"}"}.
singleChar -> '{'               : {char,"{"}.
singleChar -> '-'               : {char,"-"}.
%% Character Range
%[81]     charRange      ::=      singleChar '-' singleChar
charRange -> singleChar '-' singleChar :  case '$1' == '$3' of
                                             true when is_tuple('$1') ->
                                                {value,hd(element(2,'$1'))};
                                             true when length('$1') > 1 ->
                                                {value,hd(tl('$1'))};
                                             true ->
                                                {value,hd('$1')};
                                             _ when is_tuple('$1'), is_tuple('$3') ->
                                                {range,hd(element(2,'$1')),hd(element(2,'$3'))};
                                             _ when is_tuple('$1'), length('$3') > 1 ->
                                                {range,hd(element(2,'$1')),hd(tl('$3'))};
                                             _ when is_tuple('$1') ->
                                                {range,hd(element(2,'$1')),hd('$3')};
                                             _ when is_tuple('$3'), length('$1') > 1 ->
                                                {range,hd(tl('$1')),hd(element(2,'$3'))};
                                             _ when is_tuple('$3') ->
                                                {range,hd('$1'),hd(element(2,'$3'))};
                                             _ when length('$1') > 1, length('$3') > 1  ->
                                                {range,hd(tl('$1')),hd(tl('$3'))};
                                             _ when length('$1') > 1  ->
                                                {range,hd(tl('$1')),hd('$3')};
                                             _ when length('$3') > 1  ->
                                                {range,hd('$1'),hd(tl('$3'))};
                                             _ ->
                                                {range,hd('$1'),hd('$3')}
                                          end.
%% Character Class Escape
%[83]    charClassEsc    ::=      ( MultiCharEsc | catEsc | complEsc )
charClassEsc -> 'MultiCharEsc'      : {char_class,     val('$1')}.
charClassEsc -> 'MultiCharComplEsc' : {neg_char_class, val('$1')}.
charClassEsc -> 'CatEsc'            : {char_class,     strip_cat_brackets(val('$1'))}.
charClassEsc -> 'ComplEsc'          : {neg_char_class, strip_cat_brackets(val('$1'))}.
%% Category Escape ---- do these in the scanner as Terminals
%[85]     catEsc      ::=      '\p{' charProp '}'
%[86]     complEsc    ::=      '\P{' charProp '}'
%[87]     charProp    ::=      IsCategory | IsBlock
%MultiCharEsc   = \\[sSiIcCdDwW]




Erlang code.
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

%% @doc  REGEX parser (https://www.w3.org/TR/xmlschema11-2/#regex-branch).

-include("xqerl.hrl").
-compile([{hipe,[{regalloc,linear_scan}]}]).

val({_,_,Token}) ->
   Token.

strip_cat_brackets("\\p{" ++ Rest) ->
   lists:droplast(Rest);
strip_cat_brackets("\\P{" ++ Rest) ->
   lists:droplast(Rest).  

