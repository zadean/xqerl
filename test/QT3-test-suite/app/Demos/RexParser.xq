declare namespace p="s";
declare default function namespace "http://www.w3.org/2005/xpath-functions";

(:~
 : The index of the lexer state for accessing the combined
 : (i.e. level > 1) lookahead code.
 :)
declare variable $p:lk as xs:integer := 1;

(:~
 : The index of the lexer state for accessing the position in the
 : input string of the begin of the token that has been consumed.
 :)
declare variable $p:b0 as xs:integer := 2;

(:~
 : The index of the lexer state for accessing the position in the
 : input string of the end of the token that has been consumed.
 :)
declare variable $p:e0 as xs:integer := 3;

(:~
 : The index of the lexer state for accessing the code of the
 : level-1-lookahead token.
 :)
declare variable $p:l1 as xs:integer := 4;

(:~
 : The index of the lexer state for accessing the position in the
 : input string of the begin of the level-1-lookahead token.
 :)
declare variable $p:b1 as xs:integer := 5;

(:~
 : The index of the lexer state for accessing the position in the
 : input string of the end of the level-1-lookahead token.
 :)
declare variable $p:e1 as xs:integer := 6;

(:~
 : The index of the lexer state for accessing the token code that
 : was expected when an error was found.
 :)
declare variable $p:error as xs:integer := 7;

(:~
 : The index of the lexer state that points to the first entry
 : used for collecting action results.
 :)
declare variable $p:result as xs:integer := 8;

(:~
 : The codepoint to charclass mapping for 7 bit codepoints.
 :)
declare variable $p:MAP0 as xs:integer+ :=
(
  4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);

(:~
 : The codepoint to charclass mapping for codepoints below the surrogate block.
 :)
declare variable $p:MAP1 as xs:integer+ :=
(
  54, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58,
  58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 90, 91, 91, 123,
  91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91,
  91, 91, 91, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
  2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
);

(:~
 : The token-set-id to DFA-initial-state mapping.
 :)
declare variable $p:INITIAL as xs:integer+ :=
(
  1, 2, 3
);

(:~
 : The DFA transition table.
 :)
declare variable $p:TRANSITION as xs:integer+ :=
(
  11, 11, 12, 13, 14, 15, 10, 11, 11, 17, 20, 0, 0, 12, 0, 16, 0, 8, 0
);

(:~
 : The DFA-state to expected-token-set mapping.
 :)
declare variable $p:EXPECTED as xs:integer+ :=
(
  16, 12, 14
);

(:~
 : The match-code to case-id map. Maps decision point and lookahead to next action code.
 :)
declare variable $p:CASEID as xs:integer+ :=
(
  6, 14, 12, 14, 8, 14, 21, 18, 21, 21, 20, 21, 22, 18, 21, 21, 21, 21, 264, 264, 322, 0, 0, 106
);

(:~
 : The parser tokenset table. Maps state to lookahead tokenset code.
 :)
declare variable $p:TOKENSET as xs:integer+ :=
(
  1, 2, 0
);

(:~
 : The parser lookback table. Maps lookback code and itemset id to next lookback code.
 :)
declare variable $p:LOOKBACK as xs:integer+ :=
(
  10, 10, 11, 8, 8, 8, 14, 17, 2, 2, 0, 4, 3, 0, 4, 5, 0, 6, 6, 0
);

(:~
 : The parser goto table. Maps state and nonterminal to next action code.
 :)
declare variable $p:GOTO as xs:integer+ :=
(
  8, 10, 10, 10, 11, 10, 10, 10, 6, 273, 0, 0, 273
);

(:~
 : The token-string table.
 :)
declare variable $p:TOKEN as xs:string+ :=
(
  "(0)",
  "EOF",
  "'a'",
  "'b'",
  "'d'"
);

(:~
 : The nonterminal name table.
 :)
declare variable $p:NONTERMINAL as xs:string+ :=
(
  "S",
  "B"
);

(:~
 : Predict the decision for a given decision point based on current
 : lookahead.
 :
 : @param $input the input string.
 : @param $state the parser state.
 : @param $dpi the decision point index.
 : @return the updated parser state.
 :)
declare function p:predict($input as xs:string,
                           $state as item()+,
                           $dpi as xs:integer) as item()+
{
  let $state := p:lookahead1($p:TOKENSET[$dpi + 1], $input, $state)
  return
    if ($state[$p:l1] lt 0) then
    (
      0,
      subsequence($state, $p:lk + 1, $p:error - $p:lk - 1),
      element error
      {
        attribute b {$state[$p:b1]},
        attribute e {$state[$p:e1]},
        attribute s {- $state[$p:l1]}
      },
      subsequence($state, $p:error + 1)
    )
    else
      let $j10 := 16 * $dpi + $state[$p:l1]
      let $j11 := $j10 idiv 2
      let $j12 := $j11 idiv 4
      let $action := $p:CASEID[$j10 mod 2 + $p:CASEID[$j11 mod 4 + $p:CASEID[$j12 + 1] + 1] + 1]
      return ($action idiv 2, subsequence($state, $p:lk + 1))
};

(:~
 : Match next token in input string, starting at given index, using
 : the DFA entry state for the set of tokens that are expected in
 : the current context.
 :
 : @param $input the input string.
 : @param $begin the index where to start in input string.
 : @param $token-set the expected token set id.
 : @return a sequence of three: the token code of the result token,
 : with input string begin and end positions. If there is no valid
 : token, return the negative id of the DFA state that failed, along
 : with begin and end positions of the longest viable prefix.
 :)
declare function p:match($input as xs:string,
                         $begin as xs:integer,
                         $token-set as xs:integer) as xs:integer+
{
  let $result := $p:INITIAL[1 + $token-set]
  return p:transition($input,
                      $begin,
                      $begin,
                      $begin,
                      $result,
                      $result mod 4,
                      0)
};

(:~
 : The DFA state transition function. If we are in a valid DFA state, save
 : it's result annotation, consume one input codepoint, calculate the next
 : state, and use tail recursion to do the same again. Otherwise, return
 : any valid result or a negative DFA state id in case of an error.
 :
 : @param $input the input string.
 : @param $begin the begin index of the current token in the input string.
 : @param $current the index of the current position in the input string.
 : @param $end the end index of the result in the input string.
 : @param $result the result code.
 : @param $current-state the current DFA state.
 : @param $previous-state the  previous DFA state.
 : @return a sequence of three: the token code of the result token,
 : with input string begin and end positions. If there is no valid
 : token, return the negative id of the DFA state that failed, along
 : with begin and end positions of the longest viable prefix.
 :)
declare function p:transition($input as xs:string,
                              $begin as xs:integer,
                              $current as xs:integer,
                              $end as xs:integer,
                              $result as xs:integer,
                              $current-state as xs:integer,
                              $previous-state as xs:integer)
{
  if ($current-state eq 0) then
    let $result := $result idiv 4
    let $end := if ($end gt string-length($input)) then string-length($input) + 1 else $end
    return
      if ($result ne 0) then
      (
        $result - 1,
        $begin,
        $end
      )
      else
      (
        - $previous-state,
        $begin,
        $current - 1
      )
  else
    let $c0 := (string-to-codepoints(substring($input, $current, 1)), 0)[1]
    let $c1 :=
      if ($c0 < 128) then
        $p:MAP0[1 + $c0]
      else if ($c0 < 55296) then
        let $c1 := $c0 idiv 32
        let $c2 := $c1 idiv 32
        return $p:MAP1[1 + $c0 mod 32 + $p:MAP1[1 + $c1 mod 32 + $p:MAP1[1 + $c2]]]
      else
        0
    let $current := $current + 1
    let $i0 := 4 * $c1 + $current-state - 1
    let $i1 := $i0 idiv 2
    let $next-state := $p:TRANSITION[$i0 mod 2 + $p:TRANSITION[$i1 + 1] + 1]
    return
      if ($next-state > 3) then
        p:transition($input, $begin, $current, $current, $next-state, $next-state mod 4, $current-state)
      else
        p:transition($input, $begin, $current, $end, $result, $next-state, $current-state)
};

(:~
 : Recursively translate one 32-bit chunk of an expected token bitset
 : to the corresponding sequence of token strings.
 :
 : @param $result the result of previous recursion levels.
 : @param $chunk the 32-bit chunk of the expected token bitset.
 : @param $base-token-code the token code of bit 0 in the current chunk.
 : @return the set of token strings.
 :)
declare function p:token($result as xs:string*,
                         $chunk as xs:integer,
                         $base-token-code as xs:integer)
{
  if ($chunk = 0) then
    $result
  else
    p:token
    (
      ($result, if ($chunk mod 2 != 0) then $p:TOKEN[$base-token-code] else ()),
      if ($chunk < 0) then $chunk idiv 2 + 2147483648 else $chunk idiv 2,
      $base-token-code + 1
    )
};

(:~
 : Get GOTO table entry for given nonterminal and parser state.
 :
 : @param $nonterminal the nonterminal.
 : @param $state the LR parser state.
 : @return the GOTO table entry.
 :)
declare function p:goto($nonterminal as xs:integer, $state as xs:integer) as xs:integer
{
  let $i0 := 8 * $state + $nonterminal
  let $i1 := $i0 idiv 2
  return $p:GOTO[$i0 mod 2 + $p:GOTO[$i1 + 1] + 1]
};

(:~
 : Calculate expected token set for a given DFA state as a sequence
 : of strings.
 :
 : @param $state the DFA state.
 : @return the set of token strings.
 :)
declare function p:expected-token-set($state as xs:integer) as xs:string*
{
  if ($state > 0) then
    for $t in 0 to 0
    let $i0 := $t * 3 + $state - 1
    return p:token((), $p:EXPECTED[$i0 + 1], $t * 32 + 1)
  else
    ()
};

(:~
 : Compare a lookback code to a sorted, zero-terminated list of pairs at
 : the given index into the LOOKBACK table. A matching first code in a
 : pair will cause its second code to be returned. The list is sorted in
 : descending order of first codes, so it is safe to stop when the first
 : code is less than what is searched for.
 :
 : @param $x the lookback code to search for.
 : @param $i the index into the LOOKBACK table.
 : @return the new lookback code as the second code from a pair with a
 : matching first code.
 :)
declare function p:lookback($x as xs:integer, $i as xs:integer)
{
  let $l := $p:LOOKBACK[$i + 1]
  return
    if ($l gt $x) then
      p:lookback($x, $i + 2)
    else if ($l eq $x) then
      $p:LOOKBACK[$i + 2]
    else
      0
};

(:~
 : Calculate number of symbols to remove from LR stack for reduction by
 : walking through lookback codes of reduction and stack entries. A single
 : invocation combines two of those, more are handled in tail recursion.
 :
 : @param $code the reduction lookback code.
 : @param $count the initial count value.
 : @param $stack the LR stack.
 : @param $t the stack running index.
 : @return the initial count value, increased by the number of calculations
 : yielding a non-zero lookback code.
 :)
declare function p:count($code as xs:integer, $count as xs:integer, $stack as xs:integer*, $t as xs:integer)
{
  if ($t lt 0) then
    $count
  else
    let $code := p:lookback($stack[$t + 1], $p:LOOKBACK[$code + 1])
    return
      if ($code eq 0) then
        $count
      else
        p:count($code, $count + 1, $stack, $t - 3)
};

declare function local:actual-size($s)
{
  if (empty($s) or exists($s[last()])) then
    count($s)
  else
    local:actual-size(subsequence($s, 1, count($s) - 1))
};

(:~
 : Parse input for given target symbol using LR tables. Each invocation
 : handles one parsing action (shift, reduce, shift+reduce, accept).
 : Subsequent actions are handled by tail-recursion.
 :
 : @param $input the input string.
 : @param $target the target symbol code.
 : @param $state the LR parser state number.
 : @param $action the action code.
 : @param $nonterminal current nonterminal, -1 if processing a terminal.
 : @param $bw the whitespace begin input index.
 : @param $bs the symbol begin input index.
 : @param $es the symbol end input index.
 : @param $stack the LR stack.
 : @param $lexer-state lexer state, error indicator, and result stack.
 : @return the updated state.
 :)
declare function p:parse($input as xs:string,
                         $target as xs:integer,
                         $state as xs:integer,
                         $action as xs:integer,
                         $nonterminal as xs:integer,
                         $bw as xs:integer,
                         $bs as xs:integer,
                         $es as xs:integer,
                         $stack as xs:integer*,
                         $lexer-state as item()+)
{
  trace
  (
    (),
    concat
    (
      "count($stack): ", count($stack), ", ",
      "actual size: ", local:actual-size($stack)
    )
  ),

  if ($lexer-state[$p:error]) then
    $lexer-state
  else
    let $argument := $action idiv 128
    let $lookback := ($action idiv 8) mod 16
    let $action := $action mod 8
    return
      if ($action eq 6) then (: SHIFT+ACCEPT :)
        $lexer-state
      else
        let $shift-reduce-symbols :=
          if ($action eq 1) then (: SHIFT :)
            ($argument, -1, -1)
          else if ($action eq 2) then (: REDUCE :)
            (-1, $argument, $lookback)
          else if ($action eq 3) then (: REDUCE+LOOKBACK :)
            (-1, $argument, p:count($lookback, 0, $stack, count($stack) - 1))
          else if ($action eq 4) then (: SHIFT+REDUCE :)
            ($state, $argument, $lookback + 1)
          else if ($action eq 5) then (: SHIFT+REDUCE+LOOKBACK :)
            ($state, $argument, p:count($lookback, 1, $stack, count($stack) - 1))
          else (: ERROR :)
            (-1, -1, -1)
        let $shift := $shift-reduce-symbols[1]
        let $reduce := $shift-reduce-symbols[2]
        let $symbols := $shift-reduce-symbols[3]
        let $es := if ($shift lt 0 or $nonterminal ge 0) then $es else $lexer-state[$p:e1]
        let $lexer-state :=
          if ($shift lt 0 or $nonterminal ge 0) then
            $lexer-state
          else
            p:consume
            (
              $lexer-state[$p:l1],
              $input,
              $lexer-state
            )
        let $stack :=
          if ($shift lt 0) then
            $stack
          else
            ($stack, if ($nonterminal lt 0) then $lexer-state[$p:b0] else $bs, $state, $lookback)
        let $state := if ($shift lt 0) then $state else $shift
        return
          if ($reduce lt 0) then
            if ($shift lt 0) then
            (
              subsequence($lexer-state, 1, $p:error - 1),
              element error
              {
                attribute b {$lexer-state[$p:b1]},
                attribute e {$lexer-state[$p:e1]},
                attribute o {$lexer-state[$p:l1]},
                attribute s {$p:TOKENSET[$state + 1] + 1}
              },
              subsequence($lexer-state, $p:error + 1)
            )
            else
              let $lexer-state := p:predict($input, $lexer-state, $state)
              return p:parse($input, $target, $state, $lexer-state[$p:lk], -1, $bw, $bs, $es, $stack, $lexer-state)
          else
            let $state := if ($symbols gt 0) then $stack[last() - 3 * $symbols + 2] else $state
            let $bs := if ($symbols gt 0) then $stack[last() - 3 * $symbols + 1] else $lexer-state[$p:b1]
            let $es := if ($symbols gt 0) then $es else $bs
            let $stack := if ($symbols gt 0) then subsequence($stack, 1, count($stack) - 3 * $symbols) else $stack
            let $accept := empty($stack) and $reduce eq $target
            let $bs := if ($accept) then $bw else $bs
            let $es := if ($accept) then $lexer-state[$p:b1] else $es
            let $bw := if ($accept) then $es else $bw
            let $index := if ($accept) then $p:result else p:first-child-node-index($lexer-state, count($lexer-state) + 1, $symbols)
            let $lexer-state :=
            (
              subsequence($lexer-state, 1, $index - 1),
              element {$p:NONTERMINAL[$reduce + 1]}
              {
                (: bs, es :)
                subsequence($lexer-state, $index)
              }
            )
            return p:parse($input, $target, $state, p:goto($reduce, $state), $reduce, $bw, $bs, $es, $stack, $lexer-state)
};

(:~
 : Decrement given index by the given number of elements on the result
 : stack, skipping any non-element nodes.
 :
 : @param $state lexer state, error indicator, and result stack.
 : @param $index the index into the result stack.
 : @param $element-count the number of elements to be handled.
 : @return the decremented index.
 :)
declare function p:first-child-node-index($state as item()+,
                                          $index as xs:integer,
                                          $element-count as xs:integer)
{
  if ($element-count eq 0) then
    $index
  else
    let $index := $index - 1
    let $element-count := $element-count - (if ($state[$index] instance of element()) then 1 else 0)
    return p:first-child-node-index($state, $index, $element-count)
};

(:~
 : Create a textual error message from a parsing error.
 :
 : @param $input the input string.
 : @param $error the parsing error descriptor.
 : @return the error message.
 :)
declare function p:error-message($input as xs:string, $error as element(error)) as xs:string
{
  let $begin := xs:integer($error/@b)
  let $context := string-to-codepoints(substring($input, 1, $begin - 1))
  let $linefeeds := index-of($context, 10)
  let $line := count($linefeeds) + 1
  let $column := ($begin - $linefeeds[last()], $begin)[1]
  return
    string-join
    (
      (
        if ($error/@o) then
          ("syntax error, found ", $p:TOKEN[$error/@o + 1])
        else
          "lexical analysis failed",
        "&#10;while expecting ",
        if ($error/@x) then
          $p:TOKEN[$error/@x + 1]
        else
          let $expected := p:expected-token-set($error/@s)
          return
          (
            "["[exists($expected[2])],
            string-join($expected, ", "),
            "]"[exists($expected[2])]
          ),
        "&#10;",
        if ($error/@o or $error/@e = $begin) then
          ()
        else
          ("after successfully scanning ", string($error/@e - $begin), " characters beginning "),
        "at line ", string($line), ", column ", string($column), ":&#10;",
        "...", substring($input, $begin, 64), "..."
      ),
      ""
    )
};

(:~
 : Consume one token, i.e. compare lookahead token 1 with expected
 : token and in case of a match, shift lookahead tokens down such that
 : l1 becomes the current token, and higher lookahead tokens move down.
 : When lookahead token 1 does not match the expected token, raise an
 : error by saving the expected token code in the error field of the
 : lexer state.
 :
 : @param $code the expected token.
 : @param $input the input string.
 : @param $state lexer state, error indicator, and result stack.
 : @return the updated state.
 :)
declare function p:consume($code as xs:integer, $input as xs:string, $state as item()+) as item()+
{
  if ($state[$p:error]) then
    $state
  else if ($state[$p:l1] eq $code) then
  (
    subsequence($state, $p:l1, 3),
    0, 0, 0,
    subsequence($state, 7),
    let $begin := $state[$p:e0]
    let $end := $state[$p:b1]
    where $begin ne $end
    return
      text
      {
        substring($input, $begin, $end - $begin)
      },
    let $token := $p:TOKEN[1 + $state[$p:l1]]
    let $name := if (starts-with($token, "'")) then "TOKEN" else $token
    let $begin := $state[$p:b1]
    let $end := $state[$p:e1]
    return
      element {$name}
      {
        substring($input, $begin, $end - $begin)
      }
  )
  else
  (
    subsequence($state, 1, $p:error - 1),
    element error
    {
      attribute b {$state[$p:b1]},
      attribute e {$state[$p:e1]},
      if ($state[$p:l1] lt 0) then
        attribute s {- $state[$p:l1]}
      else
        (attribute o {$state[$p:l1]}, attribute x {$code})
    },
    subsequence($state, $p:error + 1)
  )
};

(:~
 : Lookahead one token on level 1.
 :
 : @param $set the code of the DFA entry state for the set of valid tokens.
 : @param $input the input string.
 : @param $state lexer state, error indicator, and result stack.
 : @return the updated state.
 :)
declare function p:lookahead1($set as xs:integer, $input as xs:string, $state as item()+) as item()+
{
  if ($state[$p:l1] ne 0) then
    $state
  else
    let $match :=
        p:match($input, $state[$p:e0], $set)
    return
    (
      $match[1],
      subsequence($state, $p:b0, 2),
      $match,
      subsequence($state, 7)
    )
};

(:~
 : Parse start symbol S from given string.
 :
 : @param $s the string to be parsed.
 : @return the result as generated by parser actions.
 :)
declare function p:parse-S($s as xs:string) as item()*
{
  let $state := (0, 1, 1, 0, 0, 0, false())
  let $state := p:predict($s, $state, 0)
  let $state := p:parse($s, 0, 0, $state[$p:lk], -1, 1, 1, 1, (), $state)
  let $error := $state[$p:error]
  return
    if ($error) then
      element ERROR {$error/@*, p:error-message($s, $error)}
    else
      subsequence($state, $p:result)
};

p:parse-S("adadadadadad")
