Definitions.

QuantRange    = [0-9]*,[0-9]+
QuantMin      = [0-9]+,
QuantExact     = [0-9]+

IsCategory     = ({Letters}|{Marks}|{Numbers}|{Punctuation}|{Separators}|{Symbols}|{Others})
Letters        = L[ultmo]?
Marks          = M[nce]?
Numbers        = N[dlo]?
Punctuation    = P[cdseifo]?
Separators     = Z[slp]?
Symbols        = S[mcko]?
Others         = C[cfon]?
IsBlock        = Is[a-zA-Z0-9\x{002D}]+
MultiCharEsc   = \\[sSiIcCdDwW]
WildcardEsc    = \.

Char           = [^.\?*+{}()|^$\x{005B}\x{005D}]
Other          = [\^\|\-\[\]\(\)\$\:\?\{\}\+\*\.]



Rules.

\\p{{IsCategory}} : {token,{isCategory      ,TokenLine,TokenChars}}.
\\P{{IsCategory}} : {token,{isCategoryComp  ,TokenLine,TokenChars}}.
\\p{{IsBlock}}    : {token,{isBlock         ,TokenLine,TokenChars}}.
\\P{{IsBlock}}    : {token,{isBlockComp     ,TokenLine,TokenChars}}.

{MultiCharEsc}    : {token,{multiCharEsc    ,TokenLine,TokenChars}}.
\^{MultiCharEsc}  : {token,{multiCharEsc    ,TokenLine,TokenChars}}.

{{QuantRange}}    : {token,{quantRange      ,TokenLine,TokenChars}}.
{{QuantMin}}      : {token,{quantMin        ,TokenLine,TokenChars}}.
{{QuantExact}}    : {token,{quantExact      ,TokenLine,TokenChars}}.

\\[1-9][0-9]*     : {token,{backReference   ,TokenLine,TokenChars}}.
\[\\[1-9][0-9]*   : xqerl_error:error('FORX0002'). % back reference in square bracket
\\[1-9][0-9]*\]   : xqerl_error:error('FORX0002'). % back reference in square bracket

{Char}            : {token,{char            ,TokenLine,TokenChars}}.
{Other}           : {token,{other           ,TokenLine,TokenChars}}.
\^[*+?]           : {token,{other           ,TokenLine,"(^)" ++ tl(TokenChars)}}.
\^{{QuantRange}}  : {token,{other           ,TokenLine,"(^)" ++ tl(TokenChars)}}.
\^{{QuantMin}}    : {token,{other           ,TokenLine,"(^)" ++ tl(TokenChars)}}.
\^{{QuantExact}}  : {token,{other           ,TokenLine,"(^)" ++ tl(TokenChars)}}.

\$[*+?]           : {token,{other           ,TokenLine,"($)" ++ tl(TokenChars)}}.
\${{QuantRange}}  : {token,{other           ,TokenLine,"($)" ++ tl(TokenChars)}}.
\${{QuantMin}}    : {token,{other           ,TokenLine,"($)" ++ tl(TokenChars)}}.
\${{QuantExact}}  : {token,{other           ,TokenLine,"($)" ++ tl(TokenChars)}}.

\[\^-             : xqerl_error:error('FORX0002'). % illegal first character of range

Erlang code.
