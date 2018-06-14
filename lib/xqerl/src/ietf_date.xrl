Definitions.

DIGIT     = [0-9]
DIGIT2    = [0-9][0-9]
S         = (\r|\n|\v|\t|\s)+
TZNAME    = ([Uu][Tt])|([Uu][Tt][Cc])|([Gg][Mm][Tt])|([Ee][Ss][Tt])|([Ee][Dd][Tt])|([Cc][Ss][Tt])|([Cc][Dd][Tt])|([Mm][Ss][Tt])|([Mm][Dd][Tt])|([Pp][Ss][Tt])|([Pp][Dd][Tt])
DAYNAME   = ([Mm][Oo][Nn])|([Tt][Uu][Ee])|([Ww][Ee][Dd])|([Tt][Hh][Uu])|([Ff][Rr][Ii])|([Ss][Aa][Tt])|([Ss][Uu][Nn])|([Mm][Oo][Nn][Dd][Aa][Yy])|([Tt][Uu][Ee][Ss][Dd][Aa][Yy])|([Ww][Ee][Dd][Nn][Ee][Ss][Dd][Aa][Yy])|([Tt][Hh][Uu][Rr][Ss][Dd][Aa][Yy])|([Ff][Rr][Ii][Dd][Aa][Yy])|([Ss][Aa][Tt][Uu][Rr][Dd][Aa][Yy])|([Ss][Uu][Nn][Dd][Aa][Yy])
MONTHNAME = ([Jj][Aa][Nn])|([Ff][Ee][Bb])|([Mm][Aa][Rr])|([Aa][Pp][Rr])|([Mm][Aa][Yy])|([Jj][Uu][Nn])|([Jj][Uu][Ll])|([Aa][Uu][Gg])|([Ss][Ee][Pp])|([Oo][Cc][Tt])|([Nn][Oo][Vv])|([Dd][Ee][Cc])

Rules.

{S}\( : {skip_token, "("}. % trim leading whitespace of bracketed timezone

[\,]         : {token,{',',TokenLine,','}}. %skip_token.
[\(]         : {token,{'(',TokenLine,'('}}.
[\)]         : {token,{')',TokenLine,')'}}.
[\:]         : {token,{':',TokenLine,':'}}.
{S}          : {token,{s,TokenLine,s}}.
[\.]         : {token,{dot,TokenLine,'.'}}.
{DIGIT2}     : {token,{digit2,TokenLine,TokenChars}}.
{DIGIT}      : {token,{digit,TokenLine,TokenChars}}.
[\.]{DIGIT}+ : {token,{digits,TokenLine,TokenChars}}.
[\+]         : {token,{plus,TokenLine,TokenChars}}.
[\-]         : {token,{minus,TokenLine,TokenChars}}.
{TZNAME}     : {token,{tzname,TokenLine,string:uppercase(TokenChars)}}.
{MONTHNAME}  : {token,{monthname,TokenLine,string:uppercase(TokenChars)}}.
{DAYNAME}    : {token,{dayname,TokenLine,ignore}}. %skip_token.


Erlang code.
