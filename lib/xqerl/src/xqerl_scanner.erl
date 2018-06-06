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

%% @doc Scans/tokenizes XQuery source code for use in xqerl_parser.
%% @TODO replace with leex. 

-module(xqerl_scanner).

%% main API
-export([tokens/1]).
-export([scan_name/1]).
-export([remove_all_comments/1]).

-define(L, ?LINE).

-define(space, 32).
-define(cr,    13).
-define(lf,    10).
-define(tab,   9).
%% whitespace consists of 'space', 'carriage return', 'line feed' or 'tab'
-define(whitespace(H), H==?space ; H==?cr ; H==?lf ; H==?tab).
-define(notws(H), H=/=?space , H=/=?cr , H=/=?lf , H=/=?tab).

-include("xqerl.hrl").

tokens(Str) ->
   %?dbg("tokens(Str)", Str),
    tokens(strip_ws(Str), []).

tokens_encl([], Acc) ->
    lists:reverse(Acc);
tokens_encl(Str, Acc) ->
    %?dbg("CURR", Acc),
    case scan_token(Str, Acc) of
      {rescan, NewStr} ->
         tokens(NewStr, Acc);
      {direct, NewStr, Depth} ->
         dc_tokens(NewStr, Acc, Depth);
%%       {close, NewStr} ->
%%          %?dbg("close",close),
%%          {Acc, NewStr};
%%       {error, E} ->
%%          xqerl_error:error('XPST0003', #xqError{value = E} );
      {invalid_name, _E} ->
         ?dbg(?LINE,'XPST0003'),
         xqerl_error:error('XPST0003');
      {Token, T} ->
         %?dbg("TE",Token),
         tokens_encl(T, [Token|Acc])
         %tokens_encl(strip_ws(T), [Token|Acc] )         
    end.


tokens([], Acc) ->
   %?dbg("LAST", lists:reverse(Acc)),
   lists:flatten(lists:reverse(Acc));
tokens(Str, Acc) ->
   %?dbg("TT",Str),
   case scan_token(Str, Acc) of
      {rescan, NewStr} ->
         tokens(NewStr, Acc);
      {direct, NewStr, Depth} ->
         dc_tokens(NewStr, Acc, Depth);
%%       {close, NewStr} ->
%%          {Acc, NewStr};
%%       {error, E} ->
%%          xqerl_error:error('XPST0003', #xqError{value = E} );
      {invalid_name, E} ->
         ?dbg(?LINE,E),
         xqerl_error:error('XPST0003');
      {Token, T} ->
         %?dbg("TOKEN",Token),
         tokens(T, [Token|Acc])
         %tokens(strip_ws(T), [Token|Acc])
    end.

dc_tokens([], Acc, _) ->
    tokens([], Acc);
dc_tokens(Str, Acc, Depth) ->
    case scan_dc_token(Str, Acc, Depth) of
      {rescan, NewStr} ->
         dc_tokens(NewStr, Acc, Depth);
      {computed, NewStr} ->
         tokens(strip_ws(NewStr), Acc);
%%       {error, E} ->
%%          ?dbg(?LINE,'XPST0003'),
%%          xqerl_error:error('XPST0003', #xqError{value = E} );
      {Token, T, D2} ->
         dc_tokens(T, [Token|Acc], D2)
    end.

%% when inside a direct constructor, everything is different!!
%% *'PredefinedEntityRef' 
%% *'CharRef' 
%% *'{{' 
%% *'}}'
%% *'EscapeQuot'
%% *'EscapeApos'
%% 'QuotAttrContentChar' *
%% 'ElementContentChar'
%% 'AposAttrContentChar' *

% EscapeQuot
%scan_dc_token("\"\"" ++ T, _A, Depth) -> {{'EscapeQuot', ?L, '""'}, T};
% EscapeApos
%scan_dc_token("''" ++ T, _A, Depth) -> {{'EscapeApos', ?L, '\'\''}, T};
% PredefinedEntityRef
scan_dc_token("&lt;" ++ T, _A, Depth) -> {{'PredefinedEntityRef', ?L, [$<]}, T, Depth};
scan_dc_token("&gt;" ++ T, _A, Depth) -> {{'PredefinedEntityRef', ?L, [$>]}, T, Depth};
scan_dc_token("&amp;" ++ T, _A, Depth) -> {{'PredefinedEntityRef', ?L, [$&]}, T, Depth};
scan_dc_token("&quot;" ++ T, _A, Depth) -> {{'PredefinedEntityRef', ?L, [$"]}, T, Depth};
scan_dc_token("&apos;" ++ T, _A, Depth) -> {{'PredefinedEntityRef', ?L, [$']}, T, Depth};
% double curly brackets
%scan_dc_token("{{" ++ T, _A, Depth) -> {{'{{', ?L, '{{'}, T};
%scan_dc_token("}}" ++ T, _A, Depth) -> {{'}}', ?L, '}}'}, T};
% CharRef
scan_dc_token("&#x" ++ T, _A, Depth) ->  
   {S, T1} = scan_hex_char_ref(T, []),
   {S, T1, Depth};
scan_dc_token("&#" ++ T, _A, Depth) ->  
   {S, T1} = scan_dec_char_ref(T, []),
   {S, T1, Depth};
% EntityRef
scan_dc_token("&" ++ T, _A, Depth) -> 
   {S, T1} = scan_entity_ref(T, "&"),
   {S, T1, Depth};
scan_dc_token("<![CDATA[" ++ T, _A, Depth) ->  
   {CData, T1} = scan_cdata_contents(T, []),
   {[{'<![CDATA[', ?L, '<![CDATA['} , CData, {']]>', ?L, ']]>'}], T1, Depth};
%% scan_dc_token("]]>" ++ T, _A, 0) ->
%%    ?dbg(?MODULE,?LINE),
%%    {computed, T};
%% scan_dc_token("]]>" ++ T, _A, _Depth) ->  
%%    ?dbg(?MODULE,?LINE),
%%    {rescan, T};

% direct comment can trigger direct scanning
scan_dc_token("<!--" ++ T, _A, Depth) ->   
   {Comment, T1} = scan_direct_comment_text(T, []),
   %io:format("Comment: ~p~n", [T1]),
   {[{'<!--', ?L, '<!--'}, Comment, {'-->', ?L, '-->'}], "-->" ++ T1, Depth};
scan_dc_token("-->" ++ T, _A, 0) -> 
   {computed, T};
scan_dc_token("-->" ++ T, _A, _Depth) -> 
   {rescan, T};

% direct PI can trigger direct scanning
scan_dc_token("<?" ++ T, _A, Depth) ->  
   {Target, Contents, T1} = scan_direct_pi_constructor(T),
   {[{'<?', ?L, '<?'}, Target, Contents, {'?>', ?L, '?>'}], T1, Depth};
scan_dc_token("?>" ++ T, _A, 0) -> {computed, T};
scan_dc_token("?>" ++ T, _A, _Depth) -> {rescan, T};
% direct element can trigger direct scanning, T should start with a QName and no whitespace
scan_dc_token("</" ++ [H|T], _A, Depth) when ?notws(H) -> 
   {QName, T1} = if H == $Q ->
                       {Tok1,T2} = scan_QName([H|T]),
                       {Tok2,T3} = scan_name(T2),
                       if Tok2 == invalid_name ->
                             {Tok1,T2};
                          true ->
                             {lists:flatten([Tok1,Tok2]),T3}
                       end;
                    true ->
                       scan_name([H|T])
                 end,
   A1 = {'</', ?L, '</'},
   A2 = [A1, QName],
   {A2, strip_ws(T1), Depth -1};
scan_dc_token("<" ++ [H|T], _A, Depth) when ?notws(H) -> 
   {QName, T1} = if H == $Q ->
                       {Tok1,T2} = scan_QName([H|T]),
                       {Tok2,T3} = scan_name(T2),
                       if Tok2 == invalid_name ->
                             {Tok1,T2};
                          true ->
                             {lists:flatten([Tok1,Tok2]),T3}
                       end;
                    true ->
                       scan_name([H|T])
                 end,
   
   {Atts, T4} = scan_dir_attr_list(T1, []),
   {[{'<', ?L, '<'},QName, Atts  ], strip_ws(T4), Depth +1};

scan_dc_token(Str = "/>" ++ _, _A, 1) -> {computed, Str};
scan_dc_token("/>" ++ T, _A, Depth) ->
   {{'/>', ?L, '/>'}, T, Depth -1};

scan_dc_token(Str = ">" ++ _, _A, 0) -> {computed, Str};
scan_dc_token(">" ++ T, A, Depth) ->
   case lookback(A) of 
      %'S' ->
      %   {{'>', ?L, '>'}, T, Depth };
      'NCName' ->
         {{'>', ?L, '>'}, T, Depth };
      {'</',_,_} ->
         {{'>', ?L, '>'}, T, Depth };
      [] ->
         {{'>', ?L, '>'}, T, Depth };
      X ->
         ?dbg("X",X),
         {{'ElementContentChar', ?L, $>}, T, Depth}
   end;
scan_dc_token("}}" ++ T, _A, Depth) -> {{'}}', ?L, $}}, T, Depth};
scan_dc_token("{{" ++ T, _A, Depth) -> {{'{{', ?L, ${}, T, Depth};

%back to expr
scan_dc_token("{" ++ T, _A, Depth) -> 
   %currently in a direct constructor, 
   %enclosed expressions can happen here, 
   %read ahead to get the entire expression
   {Expr, T1} = scan_enclosed_expr(strip_ws(T), [], 1, 0, 0),
   %io:format("Expr: ~p T: ~p~n", [Expr, T1]),
   Encl = tokens_encl(strip_ws(Expr), [{'{', 99, '{'}]),
   %io:format("Encl: ~p~n", [Encl]),
   {Encl, T1, Depth};

scan_dc_token("}" ++ T, _A, Depth) -> {{'}', ?L, '}'}, T, Depth};
 
scan_dc_token([H|T], _Acc, Depth) -> %when not ?whitespace(H) ->
   case is_content_char(H) of
      true when ?whitespace(H) ->
         {{'S', ?L, H}, T, Depth};
      true ->
         {{'ElementContentChar', ?L, H}, T, Depth};
      _ ->
         xqerl_error:error('XPST0003')
   end.

scan_dir_attr_list(Str = "/>" ++ _T, Acc) ->
   {reorder_dir_attr_list(Acc,[],[]), Str};
scan_dir_attr_list(Str = ">" ++ _T, Acc) ->
   {reorder_dir_attr_list(Acc,[],[]), Str};
scan_dir_attr_list(T, Acc) ->
   %io:format("Got: ~p~n", [T]),
   case scan_dir_attr(T) of
      {[], T1} ->
         {Acc, T1};
      {Att, T1} ->
         scan_dir_attr_list(T1, Acc ++ Att)
   end.

reorder_dir_attr_list([],N,A) -> 
   %?dbg("Acc",N ++ A),
   N ++ A;
reorder_dir_attr_list([{'S',_,_} = S,{_,_,"xmlns"} = X ,{'=',_,_} = E,V|T],N,A) -> 
   reorder_dir_attr_list(T,[S,X,E,V|N],A);
reorder_dir_attr_list([{'S',_,_} = S,[{_,_,"xmlns"},_,_] = X ,{'=',_,_} = E,V|T],N,A) -> 
   reorder_dir_attr_list(T,[S,X,E,V|N],A);
reorder_dir_attr_list([{'S',_,_} = S, X ,{'=',_,_} = E,V|T],N,A) -> 
   reorder_dir_attr_list(T,N,[S,X,E,V|A]);
reorder_dir_attr_list([{'S',_,_}|T],N,A) -> 
   reorder_dir_attr_list(T,N,A).


scan_dir_attr([H|T]) when ?whitespace(H) ->
   S = {'S',1,'S'},
   T1 = strip_ws(T),
   case scan_name(T1) of
      {invalid_name, _} ->
         ?dbg("invalid_name Line",{?LINE,T1}),
 %io:format("invname: ~p~n", [T1]),
         {[S], T1};
      {QName, T2} ->
 %io:format("name: ~p~n", [QName]),
         "=" ++ T3 = strip_ws(T2),
         Q = QName,
         E = {'=', ?L, '='},
         % now in the attribute value
         [Delim|T4] = strip_ws(T3),
 %io:format("delim: ~p~n", [[Delim]]),
         {V, T5} = scan_dir_attr_value(Delim, T4),
 %io:format("V: ~p~n", [V]),
         {[S,Q,E,V], T5}
   end;
scan_dir_attr(T) -> {[],T}.

% { [AttributeStack], T }
scan_dir_attr_value($', T) ->
   {Text, T1} = scan_dir_attr_apos_value(T, []),
   {[{'apos', ?L, 'apos'}, Text, {'apos', ?L, 'apos'}], T1};
scan_dir_attr_value($", T) ->
   {Text, T1} = scan_dir_attr_quot_value(T, []),
   {[{'quot', ?L, 'quot'}, Text, {'quot', ?L, 'quot'}], T1} .

scan_dir_attr_apos_value("''" ++ T, Acc) -> 
   scan_dir_attr_apos_value(T, [{'EscapeApos', ?L, "'"}|Acc]);
scan_dir_attr_apos_value("'" ++ T, Acc) ->
   {lists:reverse(Acc), T};
scan_dir_attr_apos_value("&#x" ++ T, Acc) ->  
   {S, T1} = scan_hex_char_ref(T, []),
   scan_dir_attr_apos_value(T1, [S|Acc]);
scan_dir_attr_apos_value("&#" ++ T, Acc) ->  
   {S, T1} = scan_dec_char_ref(T, []),
   scan_dir_attr_apos_value(T1, [S|Acc]);
scan_dir_attr_apos_value("}}" ++ T, Acc) -> 
   scan_dir_attr_apos_value(T, [{'}}', ?L, $}}|Acc]);
scan_dir_attr_apos_value("{{" ++ T, Acc) -> 
   scan_dir_attr_apos_value(T, [{'{{', ?L, ${}|Acc]);
scan_dir_attr_apos_value("}" ++ T, Acc) -> % end on an expression
   scan_dir_attr_apos_value(T, [{'}', ?L, '}'}|Acc]);
scan_dir_attr_apos_value([H|T], Acc) ->
   case is_apos_attr_content_char(H) of
      true ->
         scan_dir_attr_apos_value(T, [{'AposAttrContentChar', ?L, H}|Acc]);
      _ ->
         % check for predef entities
         if H == $& ->
               %% in an attribute and got an entity
               Str = [H|T],
               {Pre, T2} = case Str of
                        "&lt;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$<]}, T1};
                        "&gt;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$>]}, T1};
                        "&amp;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$&]}, T1};
                        "&quot;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$"]}, T1};
                        "&apos;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$']}, T1}
                     end,
                     %?dbg("scan_dir_attr_quot_value predef entities",{Pre, T2}),
                     scan_dir_attr_apos_value(T2, [Pre | Acc]);
            true ->
               %% in an attribute and got an expression
               % scan ahead to the end of the enclosed statement
               {Expr, T1} = scan_enclosed_expr(T, [], 1, 0, 0),
               SExpr = remove_all_comments(Expr),
               Encl = tokens_encl(SExpr, [{'{', 98, '{'}]),
               scan_dir_attr_apos_value(T1, [Encl | Acc])
         end
   end.


scan_dir_attr_quot_value("\"\"" ++ T, Acc) -> 
   scan_dir_attr_quot_value(T, [{'EscapeQuot', ?L, "\""}|Acc]);
scan_dir_attr_quot_value("\"" ++ T, Acc) ->
   {lists:reverse(Acc), T};
scan_dir_attr_quot_value("&#x" ++ T, Acc) ->  
   {S, T1} = scan_hex_char_ref(T, []),
   scan_dir_attr_quot_value(T1, [S|Acc]);
scan_dir_attr_quot_value("&#" ++ T, Acc) ->  
   {S, T1} = scan_dec_char_ref(T, []),
   scan_dir_attr_quot_value(T1, [S|Acc]);
scan_dir_attr_quot_value("}}" ++ T, Acc) -> 
   scan_dir_attr_quot_value(T, [{'}}', ?L, $}}|Acc]);
scan_dir_attr_quot_value("{{" ++ T, Acc) -> 
   scan_dir_attr_quot_value(T, [{'{{', ?L, ${}|Acc]);
scan_dir_attr_quot_value("}" ++ T, Acc) -> % end on an expression
   scan_dir_attr_quot_value(T, [{'}', ?L, '}'}|Acc]);
scan_dir_attr_quot_value([H|T], Acc) ->
   case is_quot_attr_content_char(H) of
      true ->
         scan_dir_attr_quot_value(T, [{'QuotAttrContentChar', ?L, H}|Acc]);
      _ ->
         % check for predef entities
         if H == $& ->
               %% in an attribute and got an entity
               Str = [H|T],
               {Pre, T2} = case Str of
                        "&lt;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$<]}, T1};
                        "&gt;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$>]}, T1};
                        "&amp;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$&]}, T1};
                        "&quot;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$"]}, T1};
                        "&apos;" ++ T1 ->
                           {{'PredefinedEntityRef', ?L, [$']}, T1}
                     end,
                     %?dbg("scan_dir_attr_quot_value predef entities",{Pre, T2}),
                     scan_dir_attr_quot_value(T2, [Pre | Acc]);
            true ->
               %% in an attribute and got an expression
               % scan ahead to the end of the enclosed statement
               {Expr, T1} = scan_enclosed_expr(T, [], 1, 0, 0),
               %?dbg("scan_dir_attr_quot_value Expr",Expr),
               SExpr = remove_all_comments(Expr),
               Encl = tokens_encl(SExpr, [{'{', ?L, '{'}]),
               %?dbg("scan_dir_attr_quot_value Encl",Encl),
               %?dbg("scan_dir_attr_quot_value T1",T1),
               scan_dir_attr_quot_value(T1, [Encl | Acc])
         end
   end.


is_apos_attr_content_char($') -> false;
is_apos_attr_content_char(C) -> 
   is_content_char(C).

is_quot_attr_content_char($") -> false;
is_quot_attr_content_char(C) -> 
   is_content_char(C).

is_content_char(${) -> false;
is_content_char($}) -> false;
is_content_char($<) -> false;
is_content_char($&) -> false;
is_content_char(C) -> 
   xqerl_lib:is_xschar(C).


% NumberLiteral
scan_token([H | T], _A) when H >= $0, H =< $9 ->  
   case scan_number([H | T]) of
%%       {{integer, L, 0}, T1} ->
%%          case lookback(A) of
%%             '-' ->
%%                {{'DoubleLiteral', L, 0.0}, T1};
%%             _ ->
%%                {{'IntegerLiteral', L, 0}, T1}
%%          end;
      {{integer, L, Num}, T1} ->
         {{'IntegerLiteral', L, Num}, T1};
      {{decimal, L, Num}, T1} ->
         {{'DecimalLiteral', L, Num}, T1};
      {{double, L, Num}, T1} ->
         {{'DoubleLiteral', L, Num}, T1}
   end;

% StringLiteral
scan_token([H|T], _A) when H == $" ; H == $' ->
   %?dbg("StringLiteral",H),
   {Literal, T1} = scan_literal(T, H, []),
   %?dbg("StringLiteral",Literal),
   {{'StringLiteral', ?L, Literal}, T1};

% types
scan_token(Str = "xs:" ++ _T, _A) ->  
   scan_name(Str);

scan_token("Q{}" ++ T, _A) -> {[{'Q', ?L, 'Q'},{'{', ?L, '{'},{'}', ?L, '}'}], T};
scan_token(Str = "Q{" ++ _, _A) ->
   %?dbg("Q",Str),
   scan_QName(Str);
scan_token("decimal-format" ++ T, A) ->  qname_if_path("decimal-format", T, lookback(A));
scan_token("decimal-separator" ++ T, A) ->  qname_if_path("decimal-separator", T, lookback(A));
scan_token("grouping-separator" ++ T, A) ->  qname_if_path("grouping-separator", T, lookback(A));
scan_token("infinity" ++ T, A) ->  qname_if_path("infinity", T, lookback(A));
scan_token("minus-sign" ++ T, A) ->  qname_if_path("minus-sign", T, lookback(A));
scan_token("NaN" ++ T, A) ->  qname_if_path("NaN", T, lookback(A));
scan_token("percent" ++ T, A) ->  qname_if_path("percent", T, lookback(A));
scan_token("per-mille" ++ T, A) ->  qname_if_path("per-mille", T, lookback(A));
scan_token("zero-digit" ++ T, A) ->  qname_if_path("zero-digit", T, lookback(A));
scan_token("digit" ++ T, A) ->  qname_if_path("digit", T, lookback(A));
scan_token("pattern-separator" ++ T, A) ->  qname_if_path("pattern-separator", T, lookback(A));
scan_token("exponent-separator" ++ T, A) ->  qname_if_path("exponent-separator", T, lookback(A));
scan_token("context" ++ T, A) ->  qname_if_path("context", T, lookback(A));
scan_token(Str = "allowing" ++ T, _A) ->  
   case lookforward_is_empty(T) of
      false ->
         scan_name(Str);
      _ ->
         {{'allowing', ?L, 'allowing'}, T}
   end;
scan_token(Str = "tumbling" ++ T, A) ->  
   case lookback(A) of
      'for' ->
         {{'tumbling', ?L, 'tumbling'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "sliding" ++ T, A) ->  
   case lookback(A) of
      'for' ->
         {{'sliding', ?L, 'sliding'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "window" ++ T, _A) ->
   case lookforward_is_var(T) of
      true ->
         {{'window', ?L, 'window'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "when" ++ T, A) ->  
   case lookback(A) of
      'start' ->
         {{'when', ?L, 'when'}, T};
      'end' ->
         {{'when', ?L, 'when'}, T};
      {'$',_,_} ->
         {{'when', ?L, 'when'}, T};
      'NCName' ->
         {{'when', ?L, 'when'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "only" ++ T, A) ->  
   case lookback(A) of
      '/' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      _ ->
         case lookforward_is_end(T) of
            true ->
               {{'only', ?L, 'only'}, T};
            _ ->
               scan_name(Str)
         end
   end;
scan_token("%" ++ T, _A) ->  {{'%', ?L, '%'}, T};
scan_token(Str = "starts" ++ _T, _A) -> 
   scan_name(Str);
scan_token("start" ++ T, A) ->  qname_if_path("start", T, lookback(A));
% function names
%% scan_token(Str = "in-scope-prefixes" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "default-collation" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "for-each-pair" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "for-each" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "format-integer" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "format-number" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "format-date" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "format-time" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "element-with-id" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "local-name" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "document-uri" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "node-name" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "tokenize" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "insert" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "index-of" ++ _T, _A) ->  scan_name(Str);
%% scan_token(Str = "ends" ++ _T, _A) ->  scan_name(Str);

scan_token(Str = "ends" ++ _T, _A) -> 
   scan_name(Str);
scan_token("end" ++ T, A) ->  qname_if_path("end", T, lookback(A));
scan_token(Str = "previous" ++ T, A) ->  
   case lookback(A) of
      '/' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      _ ->
         case lookforward_is_var(T) of
            true ->
               {{'previous', ?L, 'previous'}, T};
            _ ->
               scan_name(Str)
         end
   end;
scan_token(Str = "next" ++ T, _A) -> 
   case lookforward_is_var(T) of
      true ->
         {{'next', ?L, 'next'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "count" ++ T, _A) -> % done  
   case lookforward_is_var(T) of
      true ->
         {{'count', ?L, 'count'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token("group" ++ T, A) ->  qname_if_path("group", T, lookback(A));
scan_token("switch" ++ T, A) -> 
   case lookback(A) of
      ',' ->
         {{'switch', ?L, 'switch'}, T};
      _ ->
         qname_if_path("switch", T, lookback(A))
   end;
scan_token("catch" ++ T, A) ->  qname_if_path("catch", T, lookback(A));
scan_token(Str = "try" ++ T, _A) ->  
   case lookforward_is_curly(strip_ws(T)) of
      true ->
         {{'try', ?L, 'try'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token("||" ++ T, _A) ->  {{'||', ?L, '||'}, T};
scan_token("=>" ++ T, _A) ->  {{'=>', ?L, '=>'}, T};
scan_token(Str = "typeswitch" ++ T, _A) -> 
   case lookforward_is_paren(T) of 
      true ->
         {{'typeswitch', ?L, 'typeswitch'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token("#" ++ T, _A) ->  {{'#', ?L, '#'}, T};
scan_token(Str = "map" ++ T, _A) -> 
   case lookforward_is_paren_or_curly(T) of
      true ->
         {{'map', ?L, 'map'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "array" ++ T, A) ->  
   case lookforward_is_paren_or_curly(T) andalso lookback(A) =/= 'namespace' of 
      true ->
         {{'array', ?L, 'array'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "namespace-node" ++ T, A) -> 
   case lookforward_is_paren_or_curly(T) andalso (not (lookback(A) == 'function')) of
      true ->
         {{'namespace-node', ?L, 'namespace-node'}, T};
      _ ->
         case lookforward_is_ws(T) of
            true ->
               case lookback(A) of
                  '/' ->
                     scan_name(Str);
                  'function' ->
                     scan_name(Str);
                  _ ->
                     {{'namespace-node',1,'namespace-node'}, T}
               end;
            _ ->
               scan_name(Str)
         end
   end;
scan_token(Str = "namespace-u" ++ _T, _A) ->  scan_name(Str);
scan_token(Str = "``[" ++ _T, _A) ->  
   {Toks, T1} = scan_str_const(Str, [], []),
   {lists:flatten(Toks), T1};
scan_token("]``" ++ T, _A) ->  {{']``', ?L, ']``'}, T};
scan_token(Str = "(#" ++ _T, _A) ->  
   {Toks, T1} = scan_pragma(Str, [], []),
   {Toks, T1};
scan_token(")#" ++ T, _A) ->  {{')#', ?L, ')#'}, T};
scan_token("`{" ++ T, _A) ->  {{'`{', ?L, '`{'}, T};
scan_token("}`" ++ T, _A) ->  {{'}`', ?L, '}`'}, T};

scan_token(Str = "schema-element" ++ T, _A) -> 
   case lookforward_is_paren(T) of
      true ->
         {{'schema-element', ?L, 'schema-element'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "schema-attribute" ++ T, _A) -> 
   case lookforward_is_paren(T) of
      true ->
         {{'schema-attribute', ?L, 'schema-attribute'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "processing-instruction" ++ T, A) -> 
   case lookforward_is_paren_or_curly(T) of
      true ->
         {{'processing-instruction', ?L, 'processing-instruction'}, T};
      _ ->
         case lookforward_is_ws(T) of
            true ->
               case lookback(A) of
                  '/' ->
                     scan_name(Str);
                  _ ->
                     {{'processing-instruction',1,'processing-instruction'}, T}
               end;
            _ ->
               scan_name(Str)
         end
   end;
scan_token(Str = "copy-namespaces" ++ T, A) -> 
   case lookback(A) of
      'declare' ->
         {{'copy-namespaces', ?L, 'copy-namespaces'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "empty-sequence" ++ T, _A) -> 
   case lookforward_is_paren(T) of 
      true ->
         {{'empty-sequence', ?L, 'empty-sequence'}, T};
      _ ->
         scan_name(Str)
   end;   
scan_token(Str = "boundary-space" ++ T, A) ->
   case lookback(A) of
      'declare' ->
         {{'boundary-space', ?L, 'boundary-space'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token(Str = "no-preserve" ++ T, A) -> 
   case lookback(A) of
      'boundary-space' ->
         {{'no-preserve', ?L, 'no-preserve'}, T};
      'construction' ->
         {{'no-preserve', ?L, 'no-preserve'}, T};
      'copy-namespaces' ->
         {{'no-preserve', ?L, 'no-preserve'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "no-inherit" ++ T, A) -> 
   case lookback(A) of
      ',' ->
         {{'no-inherit', ?L, 'no-inherit'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "preserve" ++ T, A) -> 
   case lookback(A) of
      'boundary-space' ->
         {{'preserve', ?L, 'preserve'}, T};
      'construction' ->
         {{'preserve', ?L, 'preserve'}, T};
      'copy-namespaces' ->
         {{'preserve', ?L, 'preserve'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "inherit" ++ T, A) -> 
   case lookback(A) of
      ',' ->
         {{'inherit', ?L, 'inherit'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token(Str = "document-node" ++ T, _A) -> 
   case lookforward_is_paren(T) of 
      true ->
         {{'document-node', ?L, 'document-node'}, T};
      _ ->
         scan_name(Str)
   end;   
scan_token(Str = "construction" ++ T, A) -> 
   case lookback(A) of
      'declare' ->
         {{'construction', ?L, 'construction'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token("descending" ++ T, A) -> qname_if_path("descending", T, lookback(A));
scan_token(Str = "unordered" ++ T, A) -> 
   case lookforward_is_paren(T) of 
      true ->
         scan_name(Str);
      _ ->
         case lookforward_is_paren_or_curly(T) of 
            true ->
               {{'unordered', ?L, 'unordered'}, T};
            _ ->
               case lookback(A) of
                  'ordering' ->
                     {{'unordered', ?L, 'unordered'}, T};
                  _ ->
                     scan_name(Str)
               end
         end
   end;
scan_token("satisfies" ++ T, A) -> qname_if_path("satisfies", T, lookback(A));
scan_token(Str = "namespace" ++ T, A) ->
   case lookback(A) of
      [] ->
         case lookforward_is_curly(T) of
            true ->
               {{'namespace', ?L, 'namespace'}, T};
            _ ->
               scan_name(Str)
         end;
      'declare' ->
         {{'namespace', ?L, 'namespace'}, T};
      'module' ->
         {{'namespace', ?L, 'namespace'}, T};
      'element' ->
         {{'namespace', ?L, 'namespace'}, T};
      'schema' ->
         {{'namespace', ?L, 'namespace'}, T};
      'function' ->
         case lookforward_is_paren(T) of
            true ->
               scan_name(Str);
            _ ->
               {{'namespace', ?L, 'namespace'}, T}
         end;
      ',' ->
         {{'namespace', ?L, 'namespace'}, T};
      '(' ->
         {{'namespace', ?L, 'namespace'}, T};
      _ ->
         qname_if_path("namespace", T, lookback(A))
   end;
scan_token("intersect" ++ T, A) -> qname_if_path("intersect", T, lookback(A));
scan_token(Str = "collation-" ++ _T, _A) ->
   scan_name(Str);
scan_token("collation" ++ T, A) -> 
   qname_if_path("collation", T, lookback(A));
scan_token(Str = "ascending" ++ T, A) -> 
   case lookforward_is_paren(T) of
      true ->
         scan_name(Str);
      _ ->
         qname_if_path("ascending", T, lookback(A))
   end;
scan_token("variable" ++ T, A) -> qname_if_path("variable", T, lookback(A));
scan_token(Str = "ordering" ++ T, A) -> 
   case lookback(A) of
      'declare' ->
         {{'ordering',1,'ordering'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "instance" ++ T, A) -> 
   case lookforward_is_ws(T) of
      true ->
         case lookback(A) of
            '/' ->
               scan_name(Str);
            'function' ->
               scan_name(Str);
            _ ->
               {{'instance',1,'instance'}, T}
         end;
      _ ->
         scan_name(Str)
   end;
scan_token("greatest" ++ T, A) -> qname_if_path("greatest", T, lookback(A));
scan_token(Str = "function" ++ T, A) ->  
   case lookforward_is_paren(T) of
      true ->
         {{'function', ?L, 'function'}, T};
      _ ->
         case lookforward_is_ws(T) of
            true ->
               case lookback(A) of
                  '/' ->
                     scan_name(Str);
                  [] ->
                     scan_name(Str);
                  _ ->
                     {{'function', ?L, 'function'}, T}
               end;
            _ ->
               scan_name("function" ++ T)
         end
   end;
scan_token("external" ++ T, A) -> 
   qname_if_path("external", T, lookback(A));
scan_token("encoding" ++ T, A) -> qname_if_path("encoding", T, lookback(A));
scan_token(Str = "document" ++ T, _A) -> 
   case lookforward_is_curly(T) of 
      true ->
         {{'document', ?L, 'document'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "validate" ++ T, _A) -> 
   case lookforward_validate(T) of 
      true ->
         {{'validate', ?L, 'validate'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "castable" ++ T, A) -> 
    case lookforward_is_paren(T) of
       true ->
          scan_name(Str);
       _ ->
         qname_if_path("castable", T, lookback(A))
    end;
scan_token(Str = "base-uri" ++ T, A) -> 
   case lookback(A) of
      'declare' ->
         {{'base-uri', ?L, 'base-uri'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "schema" ++ T, A) -> 
   case lookback(A) of
      'import' ->
         {{'schema', ?L, 'schema'}, T};
      _ ->
         scan_name(Str)
   end;

%%% start Axis keywords
scan_token(Str = "child" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'child', ?L, 'child'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "attribute" ++ T, _A) -> 
   case lookforward_is_paren_or_curly(T) of
      true ->
         {{'attribute', ?L, 'attribute'}, T};
      _ ->
         case lookforward_is_axis(T) of
            true ->
               {{'attribute', ?L, 'attribute'}, T};
            _ ->
               % worst-case a computed constructor
               % 'attribute'    'EQName'    'EnclosedExpr'
               case lookforward_is_ws(T) of 
                  true ->
                     T1 = strip_ws(T),
                     case scan_name(T1) of
                        {invalid_name, _} ->
                           ?dbg("Line",?LINE),
                           scan_name(Str);
                        {_, T2} ->
                           case lookforward_is_paren_or_curly(T2) of
                              true ->
                                 {{'attribute', ?L, 'attribute'}, T};
                              _ ->
                                 scan_name(Str)
                           end
                     end;
                  _ ->
                     scan_name(Str)
               end
         end
   end;
scan_token(Str = "self" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'self', ?L, 'self'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "descendant-or-self" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'descendant-or-self', ?L, 'descendant-or-self'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "descendant" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'descendant', ?L, 'descendant'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "following-sibling" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'following-sibling', ?L, 'following-sibling'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "following" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'following', ?L, 'following'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "parent" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'parent', ?L, 'parent'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "preceding-sibling" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'preceding-sibling', ?L, 'preceding-sibling'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "preceding" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'preceding', ?L, 'preceding'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "ancestor-or-self" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'ancestor-or-self', ?L, 'ancestor-or-self'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "ancestor" ++ T, _A) -> 
   case lookforward_is_axis(T) of
      true ->
         {{'ancestor', ?L, 'ancestor'}, T};
      _ ->
         scan_name(Str)
   end;
%%% end Axis keywords

scan_token(Str = "version" ++ T, A) ->
   case lookback(A) of
      'xquery' ->
         {{'version', ?L, 'version'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "ordered" ++ T, A) -> 
   case lookforward_is_paren(T) of 
      true ->
         scan_name(Str);
      _ ->
         case lookforward_is_paren_or_curly(T) of 
            true ->
               {{'ordered', ?L, 'ordered'}, T};
            _ ->
               case lookback(A) of
                  'ordering' ->
                     {{'ordered', ?L, 'ordered'}, T};
                  _ ->
                     scan_name(Str)
               end
         end
   end;
scan_token(Str = "element" ++ T, A) -> 
   Curly = lookforward_is_paren_or_curly(T),
   case lookforward_is_paren_or_curly(T) orelse 
          (T =/=[] andalso not xmerl_lib:is_namechar(hd(T)) andalso xmerl_lib:is_namechar(hd(strip_ws(T)))) of
      true ->
         case lookback(A) of
            '/' when Curly == false ->
               case lookforward_is_return(T) of
                  true ->
                     scan_name(Str);
                  _ ->
                     {{'element', ?L, 'element'}, T}
               end;
            'element' ->
               scan_name(Str);
            _ ->
               {{'element', ?L, 'element'}, T}
         end;
      _ ->
         case lookforward_is_ws(T) of
            true ->
               case lookback(A) of
                  '/' ->
                     scan_name(Str);
                  'element' ->
                     scan_name(Str);
                  _ ->
                     {{'element', ?L, 'element'}, T}
               end;
            _ ->
               scan_name(Str)
         end
   end;
scan_token(Str = "default" ++ T, A) ->
   case lookback(A) of 
      'declare' ->
         {{'default', ?L, 'default'}, T};
      [] ->
         scan_name(Str);
      LB ->
         qname_if_path("default", T, LB)
   end;
scan_token(Str = "declare" ++ T, _A) -> 
   case is_keyword_declare(T) of
      true ->
         {{'declare', ?L, 'declare'}, T};
      _ ->
         scan_name(Str)
   end;    
scan_token(Str = "comment" ++ T, _A) ->
   case lookforward_is_paren_or_curly(T) of 
      true ->
         {{'comment', ?L, 'comment'}, T};
      _ ->
         scan_name(Str)
   end;    
scan_token(Str = "xquery" ++ T, []) -> 
   case lookforward_is_version(T) of
      true ->
         {{'xquery',1,'xquery'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token("stable" ++ T, A) -> qname_if_path("stable", T, lookback(A));
scan_token(Str = "return" ++ T, A) ->
   case lookforward_is_var(T) of
      true ->
         {{'return',1,'return'}, T};
      _ ->
         case lookback(A) of
            'element' ->
               scan_name(Str);
            'attribute' ->
               scan_name(Str);
            'processing-instruction' ->
               scan_name(Str);
            '/' ->
               qname_if_path("return", T, lookback(A));
            _ ->
               {{'return',?L,'return'}, T}
         end
   end;
scan_token(Str = "option" ++ T, A) -> 
   case lookback(A) of
      'declare' ->
         {{'option',?L,'option'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "module" ++ T, A) -> 
   case lookforward_is_namespace(T) of
      true ->
         {{'module',?L,'module'}, T};
      _ ->
         case lookback(A) of
            import ->
               {{'module',?L,'module'}, T};
            _ ->
               scan_name(Str)
         end
   end;
scan_token("import" ++ T, A) -> 
   case A of
      [] ->
         {{'import',?L,'import'}, T};
      _ ->
         qname_if_path("import", T, lookback(A))
   end;
scan_token("except" ++ T, A) -> qname_if_path("except", T, lookback(A));
scan_token("where" ++ T, A) -> qname_if_path("where", T, lookback(A));
scan_token("union" ++ T, A) -> qname_if_path("union", T, lookback(A));
scan_token("treat" ++ T, A) -> qname_if_path("treat", T, lookback(A));
scan_token("strip" ++ T, A) -> qname_if_path("strip", T, lookback(A));
scan_token(Str = "order" ++ T, A) -> % done
   case lookback(A) of
      'default' ->
         {{'order',1,'order'}, T};
      _ ->
         case lookforward_is_by(T) of
            true ->
               {{'order',1,'order'}, T};
            _ ->
               scan_name(Str)
         end
   end;
scan_token("minus" ++ T, A) -> qname_if_path("minus", T, lookback(A));
scan_token("least" ++ T, A) -> qname_if_path("least", T, lookback(A));
scan_token("every" ++ T, A) -> 
   case lookforward_is_var(T) of
      true ->
         {{'every',1,'every'}, T};
      _ ->
         qname_if_path("every", T, lookback(A))
   end;
scan_token(Str = "some" ++ T, _A) -> 
   case lookforward_is_var(T) of
      true ->
         {{'some',1,'some'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "empty" ++ T, A) -> % done
   case lookforward_greatest_least(T) of 
      true ->
         {{'empty',1,'empty'}, T};
      _ ->
         case lookback(A) of 
            'allowing' ->
               {{'empty',1,'empty'}, T};               
            'order' ->
               {{'empty',1,'empty'}, T};               
            _ ->
               scan_name(Str)
         end
   end;
scan_token(Str = "then" ++ T, A) ->
   case lookback(A) of
      ')' ->
         {{'then',?L,'then'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "text" ++ T, _A) -> 
   case lookforward_is_paren_or_curly(T) of
      true ->
         {{'text',?L,'text'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token("quot" ++ T, A) -> qname_if_path("quot", T, lookback(A));
%scan_token("plus" ++ T, A) -> qname_if_path("plus", T, lookback(A));
scan_token(Str = "node" ++ T, _A) -> % done
   case lookforward_is_paren(T) of
      true ->
         {{'node',1,'node'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token(Str = "type" ++ T, A) ->  % done
   case lookback(A) of
      'validate' ->
         {{'type',1,'type'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "strict" ++ T, A) ->  % done
   case lookback(A) of
      'validate' ->
         {{'strict',1,'strict'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "lax" ++ T, A) ->  % done
   case lookback(A) of
      'validate' ->
         {{'lax',1,'lax'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token(Str = "item" ++ T, A) ->  % done
   case lookforward_is_paren(T) of
      true ->
         {{'item',1,'item'}, T};
      _ ->
         case lookback(A) of
            'context' ->
               {{'item',1,'item'}, T};
            _ ->
               scan_name(Str)
         end
   end;

scan_token(Str = [32,$i,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'idiv',1,'idiv'}, T}
   end;
scan_token(Str = [13,$i,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'idiv',1,'idiv'}, T}
   end;
scan_token(Str = [10,$i,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'idiv',1,'idiv'}, T}
   end;
scan_token(Str = [9 ,$i,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'idiv',1,'idiv'}, T}
   end;
scan_token(Str = "idiv" ++ T, A) -> 
   case lookback(A) of
      ')' ->
         {{'idiv',1,'idiv'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token(Str = [32,$m,$o,$d,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'mod',1,'mod'}, T}
   end;
scan_token(Str = [13,$m,$o,$d,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'mod',1,'mod'}, T}
   end;
scan_token(Str = [10,$m,$o,$d,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'mod',1,'mod'}, T}
   end;
scan_token(Str = [9 ,$m,$o,$d,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'mod',1,'mod'}, T}
   end;
scan_token(Str = "mod" ++ T, A) -> 
   case lookback(A) of
      ')' ->
         {{'mod',1,'mod'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token(Str = [32,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'div',1,'div'}, T}
   end;
scan_token(Str = [13,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'div',1,'div'}, T}
   end;
scan_token(Str = [10,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'div',1,'div'}, T}
   end;
scan_token(Str = [9 ,$d,$i,$v,H|T], A)  when ?whitespace(H) -> 
   case lookback(A) of
      'function' ->
         scan_name(tl(Str));
      _ ->
         {{'div',1,'div'}, T}
   end;
scan_token(Str = "div" ++ T, A) -> 
   case lookback(A) of
      ')' ->
         {{'div',1,'div'}, T};
      _ ->
         scan_name(Str)
   end;

scan_token("else" ++ T, A) -> 
   %?dbg("A",lookback(A)),
   qname_if_path("else", T, lookback(A));

scan_token(Str = "cast" ++ T, A) -> 
    case lookforward_is_paren(T) of
       true ->
          scan_name(Str);
       _ ->
          qname_if_path("cast", T, lookback(A))
    end;
scan_token("case" ++ T, A) -> qname_if_path("case", T, lookback(A));
scan_token("apos" ++ T, A) -> qname_if_path("apos", T, lookback(A));
scan_token(Str = "let" ++ T, _A) -> 
   case lookforward_is_var(T) of
      true ->
         %?dbg("A",A),
         {{'let',1,'let'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "for" ++ T, _A) -> 
   case lookforward_is_var(T) of
      true ->
         {{'for',1,'for'}, T};
      _ ->
         case lookforward_is_window(T) of
            true ->
               {{'for',1,'for'}, T};
            _ ->
               scan_name(Str)
         end
   end;
scan_token("and" ++ [$$|T], _A) -> 
   {{'and',?L,'and'}, [$$|T]};
scan_token(Str = "and" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      _ ->
         {{'and',?L,'and'}, T}
   end;
scan_token(Str = "to" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      _ ->
         {{'to',1,'to'}, T}
   end;
scan_token(Str = "or" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      _ ->
         {{'or',1,'or'}, T}
   end;
scan_token("of" ++ T, A) -> qname_if_path("of", T, lookback(A));
scan_token(Str = "ne" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      _ ->
         {{'ne',1,'ne'}, T}
   end;
scan_token(Str = "lt" ++ [H|T], A) when ?whitespace(H) -> 
   case length(A) =/= 0 of
      true ->
         case lookback(A) of
            '/' ->
               scan_name(Str);
            'function' ->
               scan_name(Str);
            '(' ->
               scan_name(Str);
            _ ->
               {{'lt',1,'lt'}, T}
         end;
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "le" ++ [H|T], A) when ?whitespace(H) -> 
   case length(A) =/= 0 of
      true ->
         case lookback(A) of
            '/' ->
               scan_name(Str);
            'function' ->
               scan_name(Str);
            '(' ->
               scan_name(Str);
            _ ->
               {{'le',?L,'le'}, T}
         end;
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "is" ++ T, A) -> 
   case length(A) =/= 0 of
      true ->
         case lookback(A) of
            '/' ->
               scan_name(Str);
            '{' ->
               scan_name(Str);
            'function' ->
               scan_name(Str);
            O when O == '+';
                   O == '-';
                   O == '*';
                   O == 'div' ->
               scan_name(Str);                   
            _O ->
               %?dbg(?LINE,O),
               {{'is',?L,'is'}, T}
         end;
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "in" ++ T, A) -> 
   case length(A) =/= 0 of
      true ->
         case lookback(A) of
            '/' ->
               scan_name(Str);
            'element' ->
               scan_name(Str);
            'attribute' ->
               scan_name(Str);
            'namespace' ->
               scan_name(Str);
            'function' ->
               scan_name(Str);
            {'$',_,_} ->
               {{'in',?L,'in'}, T};
            'NCName' ->
               {{'in',?L,'in'}, T};
            'empty' ->
               {{'in',?L,'in'}, T};
            ')' ->
               {{'in',?L,'in'}, T};
            '+' ->
               {{'in',?L,'in'}, T};
            '?' ->
               {{'in',?L,'in'}, T};
            '*' ->
               {{'in',?L,'in'}, T};
            _ ->
               %?dbg("in scanner",A),
               scan_name(Str)
         end;
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "if" ++ T, _A) -> 
   case lookforward_is_paren(T) of
      true ->
         {{'if',?L,'if'}, T};
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "gt" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      _ ->
         {{'gt',1,'gt'}, T}
   end;
scan_token(Str = "ge" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      _ ->
         {{'ge',1,'ge'}, T}
   end;
scan_token(Str = "eq" ++ [H|T], A) when ?whitespace(H) -> 
   case lookback(A) of
      '/' ->
         scan_name(Str);
      '(' ->
         scan_name(Str);
      'function' ->
         scan_name(Str);
      _ ->
         {{'eq',1,'eq'}, T}
   end;
scan_token(Str = "by" ++ T, A) -> 
   case lookback(A) of
      'order' ->
         {{'by',1,'by'}, T};
      'group' ->
         {{'by',1,'by'}, T};
      _ ->
         scan_name(Str)   
   end;
scan_token(Str = "at" ++ T, A) -> 
   case lookforward_is_var(T) of
      true ->
         {{'at',?L,'at'}, T};
      _ ->
         case lookforward_is_ws(T) andalso not lookforward_is_paren(T) of
            true ->
               case lookback(A) of
                  '/' ->
                     scan_name(Str);
                  _ ->
                     {{'at',?L,'at'}, T}
               end;
            _ ->
               scan_name(Str)
         end
   end;
scan_token(Str = "as" ++ T, A) -> 
   case lookforward_is_ws(T) of
      true ->
         case lookback(A) of
            '/' ->
               scan_name(Str);
            {'$',_,_} ->
               {{'as',?L,'as'}, T};
            ')' ->
               {{'as',?L,'as'}, T};
            LB ->
               ?dbg("LB",LB),
               case lookforward_is_paren(T) of
                  true ->
                     scan_name(Str);
                  _ ->
                     qname_if_path("as", T, lookback(A))
               end
         end;
      _ ->
         scan_name(Str)
   end;
scan_token(Str = "<![CDATA[" ++ _, _A) ->  {direct, Str, 0};
scan_token("]]>" ++ T, _A) ->  
   ?dbg(?MODULE,?LINE),
   {{']]>', ?L, ']]>'}, T};

% direct comment, send to DC
scan_token(Str = "<!--" ++ _, _A) -> {direct, Str, 0};
% direct PI, send to DC
scan_token(Str = "<?" ++ _, _A) ->  {direct, Str, 0};

scan_token("(/)" ++ T, A) ->  
   case lookback(A) of
      'NCName' ->
         {[{'(', ?L, '('},{'lone-slash', ?L, 'lone-slash'},{')', ?L, ')'}], T};
      ')' -> % maybe a fun call ???
         {[{'(', ?L, '('},{'lone-slash', ?L, 'lone-slash'},{')', ?L, ')'}], T};
      'IntegerLiteral' -> % maybe a fun ref call ???
         {[{'(', ?L, '('},{'lone-slash', ?L, 'lone-slash'},{')', ?L, ')'}], T};
      ':=' -> % maybe a variable ???
         {{'lone-slash', ?L, 'lone-slash'}, T};
      X ->
         ?dbg("X",X),
         {{'lone-slash', ?L, 'lone-slash'}, T}
   end;
scan_token("!=" ++ T, _A) ->  {{'!=', ?L, '!='}, T};
scan_token(".." ++ T, _A) ->  {{'..', ?L, '..'}, T};
scan_token("//" ++ T, _A) ->  {{'//', ?L, '//'}, T};
%scan_token("/>" ++ T, _A) ->  {{'/>', ?L, '/>'}, T};
scan_token("::" ++ T, _A) ->  {{'::', ?L, '::'}, T};
scan_token(":=" ++ T, _A) ->  {{':=', ?L, ':='}, T};
scan_token(Str = ":*" ++ _T, _A) ->  
   {Name,T1} = scan_name(tl(Str)),
   {[{':', ?L, ':'},Name], T1};
scan_token("*:=" ++ T, _A) ->  
   {[{'*', ?L, '*'},{':=', ?L, ':='}], T}
   ;
scan_token(Str = "*:" ++ _T, _A) ->
   scan_name(Str);
%%    case lookforward_is_ws(T) of
%%       true ->
%%          ?dbg(?LINE,'XPST0003'),
%%          xqerl_error:error('XPST0003');
%%       _ ->
%%          {{'*:', ?L, '*:'}, T}
%%    end;
%scan_token("</" ++ T, _A) ->  {{'</', ?L, '</'}, T};
scan_token("<<" ++ T, _A) ->  {{'<<', ?L, '<<'}, T};
scan_token("<=" ++ T, _A) ->  {{'<=', ?L, '<='}, T};
scan_token(">=" ++ T, _A) ->  {{'>=', ?L, '>='}, T};
scan_token(">>" ++ T, _A) ->  {{'>>', ?L, '>>'}, T};
scan_token("-" ++ T, _A) ->  {{'-', ?L, '-'}, T};
scan_token("$" ++ T, _A) ->  
   {QName, T2} = scan_QName(strip_ws(T)),
   {[{'$', ?L, '$'}, QName], T2};
scan_token("(" ++ T, _A) ->  {{'(', ?L, '('}, T};
scan_token(")" ++ T, _A) ->  {{')', ?L, ')'}, T};
scan_token("*" ++ T, _A) ->  {{'*', ?L, '*'}, T};
%%    case lookback(A) of
%%       [] ->
%%          {{'*', ?L, '*'}, T};
%%       'IntegerLiteral' ->
%%          {{'*', ?L, '*'}, T};
%%       X ->
%%          case special_token(X) of
%%             false ->
%%                {{'*', ?L, '*'}, T};
%%              true ->
%%                 % maybe in path, look for QName
%%                 case scan_name("*" ++ T) of
%%                    {invalid_name, _} ->
%%                       {{'*', ?L, '*'}, T};
%%                    {QName, T2} ->
%%                       {QName, T2}
%%                 end                     
%%          end
%%    end;
scan_token("," ++ T, _A) ->  {{',', ?L, ','}, T};
scan_token("." ++ T, A) ->  
   case lookforward_is_number(T) of
      true ->
         scan_token("0." ++ T, A);
      _ ->
         {{'.', ?L, '.'}, T}
   end;
scan_token("/" ++ T, A) ->  
   % look ahead for non path character
   [H1|T1] = strip_ws(T),
   case xqerl_lib:is_xsncname_start_char(H1) of
      true ->
         {{'/', ?L, '/'}, T};
      _ ->
         case H1 of
            $< ->
               {{'/', ?L, '/'}, T};
            $> ->
               {{'/>', ?L, '/>'}, T1};
            $@ ->
               {{'/', ?L, '/'}, T};
            $( ->
               {{'/', ?L, '/'}, T};
            $[ ->
               {{'/', ?L, '/'}, T};
            $* ->
               {{'/', ?L, '/'}, T};
            $$ ->
               {{'/', ?L, '/'}, T};
            $. ->
               {{'/', ?L, '/'}, T};
            %H1 when H1 =< $0, H1 >= $9  ->
            %   {{'/', ?L, '/'}, T};
            _ -> %% kludge
               case lookback(A) of
                  '/>' ->
                     {{'/', ?L, '/'}, T};
                  'NCName' ->
                     {{'/', ?L, '/'}, T};
                  ')' ->
                     {{'/', ?L, '/'}, T};
                  ']' ->
                     {{'/', ?L, '/'}, T};
                  {'$',_,_} ->
                     {{'/', ?L, '/'}, T};
                  'IntegerLiteral' ->
                     xqerl_error:error('XPTY0019'); % path on number
                  B ->
                     ?dbg("B",B),
                     {{'lone-slash', ?L, 'lone-slash'}, T}
               end
         end
   end;
scan_token(":)" ++ _T, A) -> % unbalanced comment
   ?dbg("A",A),
   ?dbg(?LINE,'XPST0003'),
   xqerl_error:error('XPST0003');
scan_token([H,$:,$=|T], _A) when ?whitespace(H) ->
   {{':=', ?L, ':='}, T};
scan_token([H,$:|T], _A) when ?whitespace(H) ->
   {{' :', ?L, ' :'}, T};
scan_token([$:,H|T], _A) when ?whitespace(H) -> 
   {{': ', ?L, ': '}, T};
scan_token(":" ++ T, _A) ->  {{':', ?L, ':'}, T};
scan_token(";" ++ T, _A) ->  {{';', ?L, ';'}, T};
scan_token("?" ++ T, _A) ->  {{'?', ?L, '?'}, T};
scan_token("@" ++ T, _A) ->  {{'@', ?L, '@'}, T};
scan_token("[" ++ T, _A) ->  {{'[', ?L, '['}, T};
scan_token("]" ++ T, _A) ->  {{']', ?L, ']'}, T};
scan_token("{" ++ T, _A) ->  {{'{', ?L, '{'}, T};
scan_token("|" ++ T, _A) ->  {{'|', ?L, '|'}, T};
scan_token("}" ++ T, _A) ->  {{'}', ?L, '}'}, T}; 
scan_token("+" ++ T, _A) ->  {{'+', ?L, '+'}, T};
scan_token("!" ++ T, _A) ->  {{'!', ?L, '!'}, T};
% could be a direct constructor
scan_token(Str = "<" ++ T, A) ->
   case lookback(A) of
      'lone-slash' ->
         %?dbg("lone-slash",A),
         {{'<', ?L, '<'}, T};
      _ ->
         case scan_name(string:trim(T)) of
            {invalid_name, _} ->
               %?dbg("T",T),
               {{'<', ?L, '<'}, T};
            _ -> 
               case scan_name(T) of
                  {invalid_name, _} ->
                     %?dbg("T",T),
                     {{'<', ?L, '<'}, T};
                  _ -> 
                     {direct, Str, 0}
               end
         end
   end;
scan_token("=" ++ T, _A) ->  {{'=', ?L, '='}, T};
scan_token(">" ++ T, _A) ->  {{'>', ?L, '>'}, T};
% QName as the fall-through, for function names
scan_token([H|T], _A) when ?whitespace(H) ->  
   %?dbg("H",H),
   {rescan, T};
scan_token(T, _A) ->
   %?dbg("fallthrough",T),
   scan_name(T).


strip_ws([H|T]) when ?whitespace(H) ->
    strip_ws(T);
strip_ws(T) ->
    T.

scan_integer([], Acc) ->
   {{integer, ?L, list_to_integer(lists:reverse(Acc))}, []};
scan_integer([H|T], Acc) when H >= $0, H =< $9 ->
   scan_integer(T, [H|Acc]);
scan_integer(".e" ++ T, Acc) ->
   scan_decimal("e" ++ T, "0."++Acc);
scan_integer(".E" ++ T, Acc) ->
   scan_decimal("E" ++ T, "0."++Acc);
scan_integer([H], Acc) when H == $. ->
   {{decimal, ?L, xqerl_numeric:decimal(lists:reverse(Acc))}, []};
scan_integer([H|T], Acc) when H == $. ->
   scan_decimal(T, [H|Acc]);
scan_integer(Str = [H|_], Acc) when H == $e;
                                    H == $E ->
   scan_decimal(Str, "0."++Acc);
scan_integer(T, Acc) ->
   {{integer, ?L, list_to_integer(lists:reverse(Acc))}, T}.

scan_decimal([], Acc) ->
   {{decimal, ?L, xqerl_numeric:decimal(lists:reverse(Acc))}, []};
scan_decimal([H|T], Acc) when H >= $0, H =< $9 ->
   scan_decimal(T, [H|Acc]);
scan_decimal("e+" ++ T, Acc) ->
   scan_double(T, "+e" ++ Acc);
scan_decimal("E+" ++ T, Acc) ->
   scan_double(T, "+e" ++ Acc);
scan_decimal("e-" ++ T, Acc) ->
   scan_double(T, "-e" ++ Acc);
scan_decimal("E-" ++ T, Acc) ->
   scan_double(T, "-e" ++ Acc);
scan_decimal("e" ++ T, Acc) ->
   scan_double(T, "+e" ++ Acc);
scan_decimal("E" ++ T, Acc) ->
   scan_double(T, "+e" ++ Acc);
scan_decimal(T, Acc) ->
   {{decimal, ?L, xqerl_numeric:decimal(lists:reverse([$0|Acc]))}, T}.

scan_double([], Acc) ->
    case catch list_to_float(lists:reverse(Acc)) of
       {'EXIT',_} ->
          {{double, ?L, infinity}, []};
       Dbl ->
          {{double, ?L, Dbl}, []}
    end;
scan_double([H|T], Acc) when H >= $0, H =< $9 ->
    {Number, T1} = scan_digits([H|T], Acc),
    case catch list_to_float(Number) of
       {'EXIT',_} ->
          {{double, ?L, infinity}, T1};
       Dbl ->
          {{double, ?L, Dbl}, T1}
    end.

%% scan_number will catch a leading dot

scan_number(T) ->
    scan_number(T, []).

%% scan_number([], Acc) ->
%%     {{integer, ?L, list_to_integer(lists:reverse(Acc))}, []};
scan_number("." ++ T, []) ->
    scan_decimal(T, ".0");
scan_number([H|T], Acc) when H >= $0, H =< $9 ->
    scan_integer(T, [H|Acc]);
scan_number(T, Acc) ->
    {{integer, ?L, list_to_integer(lists:reverse(Acc))}, T}.

scan_digits([], Acc) ->
    {lists:reverse(Acc), []};
scan_digits([H|T], Acc) when H >= $0, H =< $9 ->
    scan_digits(T, [H|Acc]);
scan_digits(T, Acc) ->
    {lists:reverse(Acc), T}.

scan_literal([H, H | T], H, Acc) -> % double delim
   scan_literal(T, H, [H|Acc]);
scan_literal([H|T], H, Acc) ->
    {lists:reverse(Acc), T};
scan_literal("&apos;" ++ T, Delim, Acc) ->
   scan_literal(T, Delim, [$'|Acc]);
scan_literal("&quot;" ++ T, Delim, Acc) ->
   scan_literal(T, Delim, [$"|Acc]);
scan_literal("&amp;" ++ T, Delim, Acc) ->
   scan_literal(T, Delim, [$&|Acc]);
scan_literal("&gt;" ++ T, Delim, Acc) ->
   scan_literal(T, Delim, [$>|Acc]);
scan_literal("&lt;" ++ T, Delim, Acc) ->
   scan_literal(T, Delim, [$<|Acc]);
scan_literal("&#x" ++ T, Delim, Acc) ->
   {{'CharRef', _, CP}, T1} = scan_hex_char_ref(T, []),
   scan_literal(T1, Delim, [CP|Acc]);
scan_literal("&#" ++ T, Delim, Acc) ->
   {{'CharRef', _, CP}, T1} = scan_dec_char_ref(T, []),
   %?dbg("CP",CP),
   scan_literal(T1, Delim, [CP|Acc]);
scan_literal("&" ++ _T, _Delim, _Acc) -> % not allowed in literal
   xqerl_error:error('XPST0003');
scan_literal([H|T], Delim, Acc) ->
    scan_literal(T, Delim, [H|Acc]).

%% scan_dc_token("&#x" ++ T, _A, Depth) ->  
%%    {S, T1} = scan_hex_char_ref(T, []),
%%    {S, T1, Depth};

scan_QName("Q{" ++ T) ->
   {Uri, T1} = scan_braced_uri(T,[]),
   ?dbg("scan_token",{?L, Uri}),
   {[{'Q', ?L, 'Q'},{'{', ?L, '{'},{'StringLiteral', ?L, Uri},{'}', ?L, '}'}], T1};
scan_QName(Str) ->
   scan_name(Str).

%scan_name([H1, H2 | T]) when H1 == $: ; H1 == $_ ->
scan_name([H1, H2 | T]) when H1 == $: ->
    if ?whitespace(H2) ->
          ?dbg("Line",?LINE),
          {invalid_name, [H1,H2|T]};
       true ->
          scan_prefix([H2|T], [H1])
    end;
scan_name([H|T]) when H == $* ->
    scan_prefix([H|T], []);
scan_name([$_|T]) ->
   scan_prefix(T, [$_]);
scan_name([H|T]) ->
   case xmerl_lib:is_letter(H) 
      orelse H == 895 
      orelse H == 383 
   of
      true ->
          scan_prefix(T, [H]);
      false ->
         %?dbg("Line",[H]),
          {invalid_name, [H|T]}
   end;
scan_name(Str) ->
   ?dbg("Line",?LINE),
   {invalid_name, Str}.

scan_prefix([], Acc) ->
    {{'NCName',?L, lists:reverse(Acc)}, []};
scan_prefix(Str = [H|_], Acc) when ?whitespace(H) ->
    {{'NCName',?L, lists:reverse(Acc)}, Str};
scan_prefix(T = "::" ++ _, Acc) ->
    %% This is the next token
    {{'NCName',?L, lists:reverse(Acc)}, T};
scan_prefix(":" ++ T, Acc) ->
    {LocalPart, T1} = scan_local_part(T, []),
    case LocalPart of
       {'*',_, _} ->
          Prefix = {'NCName',?L, lists:reverse(Acc)},
          {[Prefix,{':*',?L, ':*'}], T1};
       {'NCName',_, []} ->
          {{'NCName',?L, lists:reverse(Acc)}, ":" ++ T1};
       {'NCName',_, [H2|_] = L1} ->
          case xmerl_lib:is_letter(H2) 
             orelse H2 =:= $_ 
             orelse H2 == 895
             orelse H2 == 383 of
             true ->
                %?dbg("LocalPart",LocalPart),
                Prefix = {'NCName',?L, lists:reverse(Acc)},
                {[Prefix, {':',?L, ':'}, LocalPart], T1};
             _ ->
                {{'NCName',?L, lists:reverse(Acc)}, ": " ++ L1 ++ T1}
          end%;
%%        _ ->
%%           %?dbg("LocalPart",LocalPart),
%%           Prefix = {'NCName',?L, lists:reverse(Acc)},
%%           {[Prefix, {':',?L, ':'}, LocalPart], T1}
    end;
scan_prefix("*:" ++ T, _Acc) when T =/= [] ->
    {LocalPart, T1} = scan_local_part(T, []),
    Prefix = {'*:',?L, '*:'},
    {[Prefix, LocalPart], T1};
scan_prefix("*" ++ T, []) ->
    {{'*',?L, '*'}, T};
scan_prefix(Str = [H|T], Acc) ->
    case xmerl_lib:is_namechar(H)
       orelse H == 895
       orelse H == 383 of
   true ->
       scan_prefix(T, [H|Acc]);
   false ->
       {{'NCName',?L, lists:reverse(Acc)}, Str}
    end.

scan_local_part([], Acc) ->
   {{'NCName',?L, lists:reverse(Acc)}, []};
scan_local_part([H|T], []) when H == $* ->
   {{'*',?L, '*'}, T};
scan_local_part(Str = [H|_], Acc) when ?whitespace(H) ->
   {{'NCName',?L, lists:reverse(Acc)}, Str};
scan_local_part(Str = [H|_], Acc) when H == $: ->
   {{'NCName',?L, lists:reverse(Acc)}, Str};
scan_local_part(Str = [H|T], Acc) ->
   case xmerl_lib:is_namechar(H)
       orelse H == 895
       orelse H == 383 of
      true ->
         scan_local_part(T, [H|Acc]);
      false ->
         %?dbg("Acc",Acc),
         {{'NCName',?L, lists:reverse(Acc)}, Str}
   end.

special_token('@') -> true;
special_token('::') -> true;
special_token('*:') -> true;
special_token(',') -> true;
special_token('(') -> true;
special_token('[') -> true;
special_token('/') -> true;
special_token('//') -> true;
special_token('|') -> true;
%special_token('+') -> true;
special_token('-') -> true;
special_token('=') -> true;
special_token('!=') -> true;
special_token('<') -> true;
special_token('<=') -> true;
%special_token('>') -> true;
special_token('>=') -> true;
special_token('and') -> true;
special_token('or') -> true;
special_token('mod') -> true;
special_token('div') -> true;
special_token('</') -> true;
special_token(':=') -> true;
special_token('where') -> true;
special_token(_) -> false.

lookback(A) ->
   %?dbg("A",A),
   case A of
      [[X,_]|_] ->
         X;
      [{X,_,_}|_] ->
         X;
      [[{'NCName',_,_},_,_]|_] -> % function call w/ prefix
         'NCName';
      [[{'``[',_,_}|_]|_] -> % string constructor
         '``[';
      _O ->
         %?dbg("lookback",O),
         []
   end.

lookforward_greatest_least(T) ->
   case lookforward_is_ws(T) of
      true ->
         case strip_ws(T) of
            [$g,$r,$e,$a,$t,$e,$s,$t,$,|_]->
               true;
            [$g,$r,$e,$a,$t,$e,$s,$t,S|_] when ?whitespace(S) ->
               true;
            [$l,$e,$a,$s,$t,$,|_] ->
               true;
            [$l,$e,$a,$s,$t,S|_] when ?whitespace(S) ->
               true;
            _ ->
               false
         end;
      _ ->
         false
   end.

lookforward_validate(T) ->
   case lookforward_is_ws(T) of
      true ->
         case strip_ws(T) of
            [${|_] ->
               true;
            [$l,$a,$x|_] ->
               true;
            [$s,$t,$r,$i,$c,$t|_] ->
               true;
            [$t,$y,$p,$e,_] ->
               true;
            _ ->
               false
         end;
      _ ->
         case strip_ws(T) of
            [${|_] ->
               true;
            _ ->
               false
         end
   end.

lookforward_is_by(T) ->
   case lookforward_is_ws(T) of
      true ->
         case strip_ws(T) of
            [$b,$y,S|_] when ?whitespace(S) ->
               true;
            _ ->
               false
         end;
      _ ->
         false
   end.

lookforward_is_ws([H|_]) when ?whitespace(H) ->
   true;
lookforward_is_ws(_) ->
   false.

lookforward_is_axis(T) ->
   case strip_ws(T) of
      "::" ++ _ -> true;
%%       "(" ++ _ -> true;
%%       % or constructor
%%       "{" ++ _ -> true;
      _ -> false
   end.

lookforward_is_return(T) ->
   case strip_ws(T) of
      "return" ++ _ -> true;
      _ -> false
   end.

lookforward_is_number([]) -> false;
lookforward_is_number([H|_]) ->
   if H >= $0 andalso H =< $9 ->
         true;
      H == $. ->
         true;
      true ->
         false
   end.

%% lookforward_is_nameletter([H|_]) ->
%%    xqerl_lib:is_xschar(H).

lookforward_is_end(T) ->
   case strip_ws(T) of
      "end" ++ _ -> true;
      _ -> false
   end.

%% lookforward_is_equal(T) ->
%%    case strip_ws(T) of
%%       "=" ++ _ -> true;
%%       _ -> false
%%    end.

lookforward_is_empty(T) ->
   case strip_ws(T) of
      "empty" ++ _ -> true;
      _ -> false
   end.

lookforward_is_var(T) ->
   case strip_ws(T) of
      "$" ++ _ -> true;
      _ -> false
   end.

lookforward_is_version(T) ->
   case strip_ws(T) of
      "version" ++ _ -> true;
      "encoding" ++ _ -> true;
      _ -> false
   end.

lookforward_is_namespace(T) ->
   case strip_ws(T) of
      "namespace" ++ _ -> true;
      _ -> false
   end.

lookforward_is_window(T) ->
   case strip_ws(T) of
      "sliding" ++ _ -> true;
      "tumbling" ++ _ -> true;
      _ -> false
   end.

lookforward_is_paren(T) ->
   case strip_ws(T) of
      "(" ++ _ -> true;
      _ -> false
   end.

lookforward_is_paren_or_curly(T) ->
   case strip_ws(T) of
      "(" ++ _ -> true;
      "{" ++ _ -> true;
      _ -> false
   end.

is_keyword_declare([H|T]) when ?whitespace(H) ->
   case strip_ws(T) of
      "base-uri" ++ _ -> true;
      "boundary-space" ++ _ -> true;
      "construction" ++ _ -> true;
      "copy-namespaces" ++ _ -> true;
      "decimal-format" ++ _ -> true;
      "default" ++ _ -> true;
      "ordering" ++ _ -> true;
      "namespace" ++ _ -> true;
      "function" ++ _ -> true;
      "variable" ++ _ -> true;
      "context" ++ _ -> true;
      "option" ++ _ -> true;
      "%" ++ _ -> true;
      _ -> false
   end;
is_keyword_declare(_) -> false.

lookforward_is_curly(T) ->
   case strip_ws(T) of
      "{" ++ _ -> true;
      _ -> false
   end.

qname_if_path(Tok, [], _Last) ->
   scan_name(Tok);
qname_if_path(Tok, R, []) ->
   scan_name(Tok ++ R);
qname_if_path(Tok, [H|T], Last) ->
   case xmerl_lib:is_namechar(H) of
      true ->
         scan_name(Tok ++ [H|T]);
      _ ->
         case special_token(Last) orelse (lookforward_is_paren([H|T]) andalso lookback(Last) == 'function') of
            true ->
               scan_name(Tok ++ [H|T]);
            _ ->
               {{list_to_atom(Tok), ?L, list_to_atom(Tok)}, [H|T]}
         end
   end.

scan_direct_comment_text([], _A) ->  
   ?dbg("unbalanced comment",'XPST0003'),
   xqerl_error:error('XPST0003');
%%    {{'comment-text', ?L, lists:reverse(A)}, []};
scan_direct_comment_text("-->" ++ T, A) ->  
   {{'comment-text', ?L, lists:reverse(A)}, T};
scan_direct_comment_text("--" ++ _T, _A) ->  
   ?dbg(?LINE,'XPST0003'),
   xqerl_error:error('XPST0003');
scan_direct_comment_text([H|T], A) ->  
   scan_direct_comment_text(T, [H|A] ).

scan_cdata_contents([], A) ->  
   {{'cdata-contents', ?L, lists:reverse(A)}, []};
scan_cdata_contents("]]>" ++ T, A) ->
   {{'cdata-contents', ?L, lists:reverse(A)}, T};
scan_cdata_contents([H|T], A) ->  
   scan_cdata_contents(T, [H|A] ).

% {Target, Contents, Tail}
scan_direct_pi_constructor([]) ->  
   xqerl_error:error('XPST0003');
scan_direct_pi_constructor([H1, H2, H3, H4 | _]) when H1 == $X orelse H1 == $x ,
                                                      H2 == $M orelse H2 == $m ,
                                                      H3 == $L orelse H3 == $l ,
                                                      ?whitespace(H4) ->  
   xqerl_error:error('XPST0003');
scan_direct_pi_constructor([H|_]) when ?whitespace(H) -> xqerl_error:error('XPST0003');
scan_direct_pi_constructor(Str) ->  
   %T1 = strip_ws(T),
   {{_,_,Target}, T1} = scan_name(Str),
   % significant ws
   case T1 of
      [H|T2] when ?whitespace(H) ->
         T3 = strip_ws(T2),
         case scan_direct_pi_contents(T3, []) of
            {Contents, T4} ->
               {{'PITarget', ?L, Target}, {'DirPIContents', ?L, Contents}, T4};
            {T4} ->
               {{'PITarget', ?L, Target}, [], T4}
         end;
      "?>" ++ T9 ->
         {{'PITarget', ?L, Target}, [], "?>" ++ T9};
      _ ->
         xqerl_error:error('XPST0003') % no significant whitespace found
   end.
   
scan_direct_pi_contents([], Acc) ->
   {lists:reverse(Acc), []};
scan_direct_pi_contents("?>" ++ T, []) ->
   {"?>" ++ T};
scan_direct_pi_contents("?>" ++ T, Acc) ->
   {lists:reverse(Acc), "?>" ++ T};
scan_direct_pi_contents([H|T], Acc) ->
   scan_direct_pi_contents(T, [H|Acc]).


scan_dec_char_ref([H|T], Acc) when H >= $0, H =< $9  ->
  scan_dec_char_ref(T, [H|Acc]);
scan_dec_char_ref([H|T], Acc) when H == $; ->
   CP = list_to_integer(lists:reverse(Acc)),
   Valid = xqerl_lib:is_xschar(CP),
   if Valid ->
         {{'CharRef', ?L, CP}, T};
      true ->
         xqerl_error:error('XQST0090')
   end.

scan_hex_char_ref([H|T], Acc) when H >= $0, H =< $9  ->
   scan_hex_char_ref(T, [H|Acc]);
scan_hex_char_ref([H|T], Acc) when H >= $a, H =< $f  ->
   scan_hex_char_ref(T, [H|Acc]);
scan_hex_char_ref([H|T], Acc) when H >= $A, H =< $F  ->
   scan_hex_char_ref(T, [H|Acc]);
scan_hex_char_ref([H|T], Acc) when H == $; ->
   Hex = lists:reverse(Acc),
   CP = list_to_integer(Hex, 16),
   Valid = xqerl_lib:is_xschar(CP),
   if Valid ->
         {{'CharRef', ?L, CP}, T};
      true ->
         xqerl_error:error('XQST0090')
   end.

scan_entity_ref([H|T], Acc) when H == $; ->
  {{'EntityRef', ?L, lists:reverse([H|Acc])}, T};
scan_entity_ref([H|T], Acc) ->
  scan_entity_ref(T, [H|Acc]).


remove_inline_comment("(:" ++ T, D) ->
   remove_inline_comment(T, D + 1);
remove_inline_comment(":)" ++ T,1) ->
   T;
remove_inline_comment(":)" ++ T, D) ->
   remove_inline_comment(T, D - 1);
remove_inline_comment([_|T], D) ->
   remove_inline_comment(T, D).


scan_enclosed_expr("(:" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) ->
   T1 = remove_inline_comment(T,1),   
   scan_enclosed_expr(T1, Acc, CurlyDepth, AposDepth, QuotDepth);
scan_enclosed_expr("''" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) when AposDepth > 0 ->
   scan_enclosed_expr(T, "''"++Acc, CurlyDepth, AposDepth, QuotDepth);
scan_enclosed_expr("'" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) when AposDepth > 0 ->
   scan_enclosed_expr(T, "'"++Acc, CurlyDepth, AposDepth -1, QuotDepth);
scan_enclosed_expr("'" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) when QuotDepth == 0 ->
   scan_enclosed_expr(T, "'"++Acc, CurlyDepth, AposDepth +1, QuotDepth);
scan_enclosed_expr("\"\"" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) when QuotDepth > 0 ->
   scan_enclosed_expr(T, "\"\""++Acc, CurlyDepth, AposDepth, QuotDepth);
scan_enclosed_expr("\"" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) when QuotDepth > 0 ->
   scan_enclosed_expr(T, "\""++Acc, CurlyDepth, AposDepth, QuotDepth -1);
scan_enclosed_expr("\"" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) when AposDepth == 0 ->
   scan_enclosed_expr(T, "\""++Acc, CurlyDepth, AposDepth, QuotDepth +1);
scan_enclosed_expr([H|T], Acc, CurlyDepth, AposDepth, QuotDepth) when AposDepth > 0 ;
                                                                      QuotDepth > 0 ->
   scan_enclosed_expr(T, [H|Acc], CurlyDepth, AposDepth, QuotDepth);
scan_enclosed_expr("{" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) ->
   scan_enclosed_expr(T, "{"++Acc, CurlyDepth +1, AposDepth, QuotDepth);

scan_enclosed_expr("}" ++ T, Acc, 1, _AposDepth, _QuotDepth) ->
   %?dbg("done",Acc),
   { lists:flatten(lists:reverse([$}|Acc])), T};
scan_enclosed_expr("}" ++ T, Acc, CurlyDepth, AposDepth, QuotDepth) ->
   %?dbg("not done",CurlyDepth),
   scan_enclosed_expr(T, "}"++Acc, CurlyDepth -1, AposDepth, QuotDepth);

scan_enclosed_expr([H|T], Acc, CurlyDepth, AposDepth, QuotDepth) ->
   scan_enclosed_expr(T, [H|Acc], CurlyDepth, AposDepth, QuotDepth);

scan_enclosed_expr(Str, Acc, CurlyDepth, AposDepth, QuotDepth) ->
   ?dbg("scan_enclosed_expr", {Str, Acc, CurlyDepth, AposDepth, QuotDepth}),
   xqerl_error:error('XPST0003').

% remove all xquery comments, they can be nested
% also normalize end-of-line characters 
remove_all_comments(Bin) ->
   scan_comments(Bin, 0, none).

scan_comments([13,10|T], Depth, Type) ->
   [10|scan_comments(T, Depth, Type)];
scan_comments([13|T], Depth, Type) ->
   [10|scan_comments(T, Depth, Type)];
%% scan_comments("{" ++ T, 0, none) -> % start encl expr
%%    ?dbg("H",0),
%%    "{" ++ scan_comments(T, 0, "{");
%% scan_comments("}" ++ T, 0, "{") -> % end encl expr
%%    ?dbg("H",0),
%%    "}" ++ scan_comments(T, 0, none);
scan_comments("(#" ++ T, 0, none) -> % start pragma
   "(#" ++ scan_comments(T, 0, "(#");
scan_comments("#)" ++ T, 0, "(#") -> % end pragma
   "#)" ++ scan_comments(T, 0, none);
scan_comments("'" ++ T, 0, none) -> % start text
   [$'|scan_comments(T, 0, "'")];
scan_comments("'" ++ T, 0, "'") -> % end text
   [$'|scan_comments(T, 0, none)];
scan_comments("\"" ++ T, 0, none) -> % start text
   [$"|scan_comments(T, 0, "\"")];
scan_comments("\"" ++ T, 0, "\"") -> % end text
   [$"|scan_comments(T, 0, none)];

%% scan_comments("(:" ++ T, Depth, "{") -> % start comment
%%    ?dbg("H",Depth),
%%    scan_comments(T, Depth + 1, "{");
%% scan_comments(":)" ++ T, Depth, "{") when Depth > 1 -> % end comment
%%    ?dbg("H",Depth),
%%    scan_comments(T, Depth - 1, "{");

scan_comments("(:" ++ T, Depth, none) -> % start comment
   scan_comments(T, Depth + 1, none);
scan_comments(":)" ++ T, Depth, none) when Depth > 1 -> % end comment
   scan_comments(T, Depth - 1, none);
scan_comments(":)" ++ T, 1, none) -> % end comment
   " "++scan_comments(T, 0, none);
scan_comments([H|T], 0, Q) -> % not in comment
   [H|scan_comments(T, 0, Q)];
scan_comments([], Depth, none) when Depth > 0 -> % in comment with no more text
   ?dbg(?LINE,'XPST0003'),
   xqerl_error:error('XPST0003');
scan_comments([_|T], Depth, Q) -> % in comment
   scan_comments(T, Depth, Q);
scan_comments([], _,_) ->
   [].

scan_str_const([], _A, _L) ->
   ?dbg(?LINE,'XPST0003'),
   xqerl_error:error('XPST0003');
scan_str_const("`{" ++ T, A, L) ->
   New = {'`{', ?L, '`{'},
   {Int, T1} = scan_str_const_interp(T, []),
   Chars = {'StringConstructorChars', ?L, lists:reverse(A)},
   scan_str_const(T1, [], [Int,New,Chars|L]);
scan_str_const("``[" ++ T, A, []) ->
   scan_str_const(T, A, [{'``[', ?L, '``['}]);
%% scan_str_const("``[" ++ T, A, L) ->
%%    scan_str_const(T, A, [{'``[', ?L, '``['}|L]);
scan_str_const("]``" ++ T, A, L) ->
   List = lists:reverse([{']``', ?L, ']``'},{'StringConstructorChars', ?L, lists:reverse(A)} |L]),
   ?dbg("T",T),
   {List, T};
scan_str_const([H|T], A, L) ->
   scan_str_const(T, [H|A], L).


scan_str_const_interp([], _A) -> 
   ?dbg(?LINE,'XPST0003'),
   xqerl_error:error('XPST0003');
scan_str_const_interp(Str = "``[" ++ _, A) ->
   {Toks,Tail} = scan_str_const(Str, [], []),
   {IToks,ITail} = scan_str_const_interp(Tail, A),
   ?dbg("Toks",Toks),
   ?dbg("IToks",IToks),
   {Toks++IToks,ITail};
scan_str_const_interp("}`" ++ T, A) ->
   Expr = lists:reverse(A),
   Toks = tokens_encl(Expr, []),
   {[Toks|[{'}`', ?L, '}`'}]], T};
scan_str_const_interp([H|T], A) -> 
   scan_str_const_interp(T, [H|A]).

% [105]    Pragma            ::=      "(#" S? EQName (S PragmaContents)? "#)"   /* ws: explicit */
scan_pragma("(#" ++ T, _A, _L) ->
   T1 = strip_ws(T), % optional ws
   case T1 of
      [$Q|_] ->
         {L1,T2} = scan_QName(T1),
         {N1,T3} = scan_name(T2),
         L2 = lists:flatten([{'S', ?L, 'S'}, N1,lists:reverse(L1), {'(#', ?L, '(#'}]),
         ?dbg("L2", L2),
         scan_pragma(strip_ws(T3), [], L2);
      _ ->
         {Name, [H2|T2]} =  scan_name(T1),
         L1 = [{'S', ?L, 'S'}, Name, {'(#', ?L, '(#'}],
         if ?whitespace(H2) ->
               scan_pragma(strip_ws(T2), [], L1);
            true ->
               case T2 of
                  ")"++_ when H2 == $# ->
                     scan_pragma([H2|T2], [], L1);
                  _ ->
                     ?dbg("XPST0003",T2),
                     xqerl_error:error('XPST0003')
               end
         end
   end;
scan_pragma("#)"++T, [], L) ->
   case  hd(L) of
      {'S',_,_} ->
         {lists:reverse([{'#)', ?L, '#)'} | tl(L)]),  T};
      _ ->
         {lists:reverse([{'#)', ?L, '#)'} | L]),  T}
   end;
scan_pragma("#)"++T, A, L) ->
   {lists:reverse([{'#)', ?L, '#)'}, {'PragmaContents',2,lists:reverse(A)} | L]),  T};
%%    case  hd(L) of
%%       {'S',_,_} ->
%%          {lists:reverse([{'#)', ?L, '#)'}, {'PragmaContents',2,lists:reverse(A)} | tl(L)]),  T};
%%       _ ->
%%          {lists:reverse([{'#)', ?L, '#)'}, {'PragmaContents',2,lists:reverse(A)} | L]),  T}
%%    end;
scan_pragma([H|T], A, L) ->
   scan_pragma(T, [H|A], L).
%PragmaContents

scan_braced_uri("}" ++ T, Acc) -> 
   {lists:reverse(Acc), T};
scan_braced_uri("&amp;" ++ T, Acc) ->
   scan_braced_uri(T, [$&|Acc]);
scan_braced_uri("&gt;" ++ T, Acc) ->
   scan_braced_uri(T, [$>|Acc]);
scan_braced_uri("&lt;" ++ T, Acc) ->
   scan_braced_uri(T, [$<|Acc]);
scan_braced_uri("&#x" ++ T, Acc) ->
   {{'CharRef', _, CP}, T1} = scan_hex_char_ref(T, []),
   scan_braced_uri(T1, [CP|Acc]);
scan_braced_uri("&#" ++ T, Acc) ->
   {{'CharRef', _, CP}, T1} = scan_dec_char_ref(T, []),
   scan_braced_uri(T1, [CP|Acc]);
scan_braced_uri([H|T], Acc) -> 
   scan_braced_uri(T, [H|Acc]);
scan_braced_uri([], _Acc) -> 
   ?dbg(?LINE,'XPST0003'),
   xqerl_error:error('XPST0003').

