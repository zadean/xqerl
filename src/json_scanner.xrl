Definitions.

S         = (\r|\n|\v|\t|\s)*
QM        = [\x{0022}]
%AP        = [\x{0027}]
ESCAPE    = [\x{005C}]
HEXDIG4   = ([0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f])
UNESCAPED = [\x{0020}-\x{0021}\x{0023}-\x{005B}\x{005D}-\x{10FFFF}]
ESCAPED   = ({ESCAPE}\x{0022}|{ESCAPE}\x{005C}|{ESCAPE}\x{002F}|{ESCAPE}\x{0062}|{ESCAPE}\x{0066}|{ESCAPE}\x{006E}|{ESCAPE}\x{0072}|{ESCAPE}\x{0074}|{ESCAPE}\x{0075}{HEXDIG4})

CHAR   = ({UNESCAPED}|{ESCAPED})*
STRING = {QM}{CHAR}{QM}
%STRING = {AP}{CHAR}{AP}

Rules.
% string
{STRING} : {token,{string ,TokenLine,TokenChars }}. 

% values
false : {token,{false,TokenLine,false}}.
true  : {token,{true,TokenLine,true}}.
null  : {token,{null,TokenLine,null}}.
% number
[\-]?(0|([1-9][0-9]*))(\.[0-9]+)?([eE](\+|\-)?[0-9]+)? : {token,{number,TokenLine,TokenChars}}.
% structure
{S}\[{S} : {token,{array_begin ,TokenLine,array_begin }}.
{S}\]{S} : {token,{array_end   ,TokenLine,array_end   }}.
{S}\{{S} : {token,{object_begin,TokenLine,object_begin}}.
{S}\}{S} : {token,{object_end  ,TokenLine,object_end  }}.
{S}\:{S} : {token,{name_sep    ,TokenLine,name_sep    }}.
{S}\,{S} : {token,{value_sep   ,TokenLine,value_sep   }}.

Erlang code.
