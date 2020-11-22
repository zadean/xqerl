Definitions.

% semicolon, not comma
BOM      = (\x{FFFE}|\x{FEFF}|\x{0000})
TEXTDATA = [\x{0020}-\x{0021}\x{0023}-\x{003A}\x{003C}-\x{FEFE}\x{FFFF}-\x{10FFFF}]  
CRLF     = ({LF}{CR}|{CR}{LF}|{CR}|{LF})*
LF       = [\x{0A}]
CR       = [\x{0D}]
DQUOTE   = [\x{0022}]
DDQUOTE  = ({DQUOTE}{DQUOTE})
COMMA    = [\x{003B}] 

ESCAPED    = ({DQUOTE}({TEXTDATA}|{COMMA}|{CR}|{LF}|{DDQUOTE})*{DQUOTE})
NONESCAPED = ({TEXTDATA})*

Rules.
{CRLF}  : {token, {nl,   TokenLine, nl }}.
{CR}    : {token, {nl,   TokenLine, nl }}.
{LF}    : {token, {nl,   TokenLine, nl }}.
{NONESCAPED} : {token, {field,TokenLine, l2b(TokenChars) }}.
{ESCAPED} : {token, {efield,TokenLine, l2b(TokenChars) }}.
{COMMA} : {token, {sep,  TokenLine, sep }}.
{BOM}    : skip_token.

Erlang code.

l2b(L) -> unicode:characters_to_binary(L).