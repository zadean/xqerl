Definitions.

%% Regular Expression
%[64]     regExp      ::=      branch ( '|' branch )*

%% Branch
%[65]     branch      ::=      piece*

%% Piece
% [66]     piece    ::=      atom quantifier?

%% Quantifier
%[67]     quantifier  ::=      ( [?*+] | ( '{' quantity '}' ) ) '?'?
%[68]     quantity    ::=      QuantRange | QuantMin | QuantExact
%[69]
QuantRange    = {([0-9]*,[0-9]+)}
%[70]
QuantMin      = {([0-9]+,)}
%[71]
QuantExact     = {[0-9]+}

%% Atom
%[72]     atom     ::=      NormalChar | charClass | ( '(' '?:'? regExp ')' ) | backReference
%[72a] backReference ::= "\" [1-9][0-9]*

%% Normal Character
%[73]
NormalChar = [^.\?*+{}()|^$\x{005B}\x{005D}]

%% Character Class
%[74]     charClass      ::=      SingleCharEsc | charClassEsc | charClassExpr | WildcardEsc | "^" | "$"

%% Character Class Expression
%[75]     charClassExpr  ::=      '[' charGroup ']'

%% Character Group
%[76]     charGroup      ::=      ( posCharGroup | negCharGroup ) ( '-' charClassExpr )?

%% Positive Character Group
%[77]     posCharGroup   ::=      ( charGroupPart )+

%%Negative Character Group
%[78]     negCharGroup   ::=      '^' posCharGroup

%% Character Group Part
%[79]     charGroupPart  ::=      singleChar | charRange | charClassEsc
%[80]     singleChar     ::=      SingleCharEsc | SingleCharNoEsc

%% Character Range
%[81]     charRange      ::=      singleChar '-' singleChar

%% Single Unescaped Character
%[82]
SingleCharNoEsc = [^\x{005B}\x{005D}]

%% Character Class Escape
%[83]    charClassEsc    ::=      ( MultiCharEsc | catEsc | complEsc )

%% Single Character Escape
%[84]
SingleCharEsc  = \\[nrt\\|.?*+(){}$\x{002D}\x{005B}\x{005D}\x{005E}]

BadCharEsc  = \\[^nrt\\|.?*+(){}$\x{002D}\x{005B}\x{005D}\x{005E}]
%BadCharEsc  = \\[ux][0-9a-fA-F]+

%% Category Escape
% add catEsc and complEsc as Terminals
%[85]     catEsc      ::=      '\p{' charProp '}'
%[86]     complEsc    ::=      '\P{' charProp '}'
%[87]     charProp    ::=      IsCategory | IsBlock

%% Categories
%[89]
Letters        = L[ultmo]?
%[90]
Marks          = M[nce]?
%[91]
Numbers        = N[dlo]?
%[92]
Punctuation    = P[cdseifo]?
%[93]
Separators     = Z[slp]?
%[94]
Symbols        = S[mcko]?
%[95]
Others         = C[cfon]?
%[88]
IsCategory     = ({Letters}|{Marks}|{Numbers}|{Punctuation}|{Separators}|{Symbols}|{Others})

%% Block Escape
%[96]
IsBlock        = Is[a-zA-Z0-9\x{002D}]+

%% Multi-Character Escape
%[97]
MultiCharEsc      = \\[sicdw]
MultiCharComplEsc = \\[SICDW]
%[98]
WildcardEsc    = \.

Rules.

\\p{{IsCategory}} : {token,{'CatEsc'    ,TokenLine,TokenChars}}.
\\p{{IsBlock}}    : {token,{'CatEsc'    ,TokenLine,TokenChars}}.
\\P{{IsCategory}} : {token,{'ComplEsc'  ,TokenLine,TokenChars}}.
\\P{{IsBlock}}    : {token,{'ComplEsc'  ,TokenLine,TokenChars}}.

\\[1-9][0-9]*     : {token,{'BackReference' ,TokenLine,TokenChars}}.

\-\[ : {token,{'sub' ,TokenLine,'sub'},"["}.
\[\- : {token,{'[' ,TokenLine,'['},"\\-"}.
\[\^\- : {token,{'[' ,TokenLine,'['},"^\\-"}.
\-\-\] : {token,{'NormalChar'  ,TokenLine,"-"},"-]"}.

\?\: : {token,{'?:' ,TokenLine,'?:'}}.
\^ : {token,{'^' ,TokenLine,'^'}}.
\| : {token,{'|' ,TokenLine,'|'}}.
\- : {token,{'-' ,TokenLine,'-'}}.
\[ : {token,{'[' ,TokenLine,'['}}.
\] : {token,{']' ,TokenLine,']'}}.
\( : {token,{'(' ,TokenLine,'('}}.
\) : {token,{')' ,TokenLine,')'}}.
\$ : {token,{'$' ,TokenLine,'$'}}.
%\: : {token,{':' ,TokenLine,':'}}.
\? : {token,{'?' ,TokenLine,'?'}}.
\{ : {token,{'{' ,TokenLine,'{'}}.
\} : {token,{'}' ,TokenLine,'}'}}.
\+ : {token,{'+' ,TokenLine,'+'}}.
\* : {token,{'*' ,TokenLine,'*'}}.


{QuantRange}    : {token,{'QuantRange'       ,TokenLine,TokenChars}}.
{QuantMin}      : {token,{'QuantMin'         ,TokenLine,TokenChars}}.
{QuantExact}    : {token,{'QuantExact'       ,TokenLine,TokenChars}}.

{NormalChar}      : {token,{'NormalChar'     ,TokenLine,TokenChars}}.

{WildcardEsc}     : {token,{'WildcardEsc'    ,TokenLine,TokenChars}}.
{SingleCharNoEsc} : {token,{'SingleCharNoEsc',TokenLine,TokenChars}}.
{SingleCharEsc}   : {token,{'SingleCharEsc'  ,TokenLine,TokenChars}}.

{MultiCharEsc}    : {token,{'MultiCharEsc'   ,TokenLine,TokenChars}}.
{MultiCharComplEsc} : {token,{'MultiCharComplEsc' ,TokenLine,TokenChars}}.

{BadCharEsc}      : {token,{'BadCharEsc',TokenLine,TokenChars}}.

Erlang code.
