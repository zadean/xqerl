Definitions.

S = (\r|\n|\v|\t|\s)*

Rules.
% values
false : {token,{false,TokenLine,false}}.
true  : {token,{true,TokenLine,true}}.
null  : {token,{null,TokenLine,null}}.
% number
[\-]?(0|([1-9][0-9]*))(\.[0-9]+)?([eE](\+|\-)?[0-9]+)? : {token,{number,TokenLine,TokenChars}}.
% string

[-.0-9:A-Z_a-z\x{00B7}\x{00C0}-\x{00D6}\x{00D8}-\x{00F6}\x{00F8}-\x{037D}\x{037F}-\x{1FFF}\x{200C}-\x{200D}\x{203F}\x{2040}\x{2070}-\x{218F}\x{2C00}-\x{2FEF}\x{3001}-\x{D7FF}\x{F900}-\x{FDCF}\x{FDF0}-\x{FFFD}] : {token,{chars ,TokenLine,TokenChars }}. 


% structure
(\r|\n|\v|\t|\s)*\[(\r|\n|\v|\t|\s)* : {token,{array_begin ,TokenLine,array_begin }}.
(\r|\n|\v|\t|\s)*\](\r|\n|\v|\t|\s)* : {token,{array_end   ,TokenLine,array_end   }}.
(\r|\n|\v|\t|\s)*\{(\r|\n|\v|\t|\s)* : {token,{object_begin,TokenLine,object_begin}}.
(\r|\n|\v|\t|\s)*\}(\r|\n|\v|\t|\s)* : {token,{object_end  ,TokenLine,object_end  }}.
(\r|\n|\v|\t|\s)*\:(\r|\n|\v|\t|\s)* : {token,{name_sep    ,TokenLine,name_sep    }}.
(\r|\n|\v|\t|\s)*\,(\r|\n|\v|\t|\s)* : {token,{value_sep   ,TokenLine,value_sep   }}.

     
{S}   : skip_token.

Erlang code.
