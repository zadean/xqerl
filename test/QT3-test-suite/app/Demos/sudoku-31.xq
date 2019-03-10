module namespace su = "sudoku";

declare variable $su:boardHard as xs:integer+ := 
  ( 5,3,0, 0,7,0, 0,0,0, 
    6,0,0, 1,9,5, 0,0,0, 
    0,9,8, 0,0,0, 0,6,0, 
    8,0,0, 0,6,0, 0,0,3, 
    4,0,0, 8,0,3, 0,0,1, 
    7,0,0, 0,2,0, 0,0,6, 
    0,6,0, 0,0,0, 2,8,0, 
    0,0,0, 4,1,9, 0,0,5, 
    0,0,0, 0,8,0, 0,7,9 );

declare variable $su:boardEasy as xs:integer+ := 
  ( 1,0,0, 3,0,0, 6,0,0, 
    0,2,0, 5,0,0, 0,0,4, 
    0,0,9, 0,0,0, 5,2,0, 
    0,0,0, 9,6,3, 0,0,0, 
    7,1,6, 0,0,0, 0,0,0, 
    0,0,0, 0,8,0, 0,4,0, 
    9,0,0, 0,0,5, 3,0,7, 
    8,0,0, 4,0,6, 0,0,0, 
    3,5,0, 0,0,0, 0,0,1 );

declare variable $su:rowStarts as xs:integer+ := 
  ( 1, 10, 19, 28, 37, 46, 55, 64, 73 );

declare variable $su:groups as xs:integer+ := 
  ( 1,1,1, 2,2,2, 3,3,3, 
    1,1,1, 2,2,2, 3,3,3, 
    1,1,1, 2,2,2, 3,3,3, 
    4,4,4, 5,5,5, 6,6,6, 
    4,4,4, 5,5,5, 6,6,6, 
    4,4,4, 5,5,5, 6,6,6, 
    7,7,7, 8,8,8, 9,9,9, 
    7,7,7, 8,8,8, 9,9,9, 
    7,7,7, 8,8,8, 9,9,9 );

declare function su:getRow($board as xs:integer+,
                           $index as xs:integer) as xs:integer+ 
{ 
  let $rowStart := floor(($index - 1) div 9) * 9 
  return 
  $board[position() > $rowStart and 
         position() <= $rowStart + 9] => one-or-more() 
};

declare function su:getCol($board as xs:integer+,
                           $index as xs:integer) as xs:integer+ 
{
  let $gap := ($index - 1) mod 9
    , $colIndexes := $su:rowStarts ! (. + $gap)
  return 
  $board[position() = $colIndexes] => one-or-more() 
};

declare function su:getGroup($board as xs:integer+, 
                             $index as xs:integer) as xs:integer+ 
{ 
  (
    let $group := $su:groups[$index]
    for $y at $x in $board
    where $su:groups[$x] = $group
    return 
    $y
  ) => one-or-more() 
};

declare function su:getAllowedValues($board as xs:integer+, 
                                     $index as xs:integer) as xs:integer* 
{
  let $existingValues := ( su:getRow($board, $index), 
                           su:getCol($board, $index), 
                           su:getGroup($board, $index) )
  for $x in (1 to 9) 
  return 
  if (not($x = $existingValues)) then 
    $x 
  else 
    () 
};

declare function su:tryValues($board as xs:integer+, 
                              $emptyCells as xs:integer+, 
                              $possibleValues as xs:integer+) as xs:integer* 
{ 
  let $index as xs:integer := head($emptyCells)
    , $newBoard as xs:integer+ := ( subsequence($board, 1, $index - 1), 
                                    head($possibleValues), 
                                    subsequence($board, $index + 1) )
    , $result as xs:integer* := su:populateValues($newBoard, tail($emptyCells))
  return 
  if (empty($result)) then 
    if (count($possibleValues) > 1) then 
      su:tryValues( $board, 
                    $emptyCells, 
                    tail($possibleValues) => one-or-more() ) 
    else () 
  else 
    $result 
};

declare function su:populateValues($board as xs:integer+, 
                                   $emptyCells as xs:integer*) as xs:integer*
{ 
  if (not(empty($emptyCells))) then 
    let $index as xs:integer := head($emptyCells)
      , $possibleValues as xs:integer* := su:getAllowedValues($board, $index) 
                                          => distinct-values() 
    return 
    if (count($possibleValues) > 1) then 
      su:tryValues( $board,
                    $emptyCells => one-or-more(), 
                    $possibleValues => one-or-more() ) 
    else if (count($possibleValues) = 1) then 
      let $newBoard as xs:integer+ := ( subsequence($board, 1, $index - 1), 
                                        exactly-one($possibleValues[1]), 
                                        subsequence($board, $index + 1) )
      return 
      su:populateValues($newBoard, tail($emptyCells))
    else () 
  else 
    $board 
};

declare function su:solveSudoku($startBoard as xs:integer+) as xs:integer+
{
  let $filter := function($i, $p) { if ($i eq 0) then $p else () }
    , $emptyCells as xs:integer* := for-each-pair($startBoard, 1 to 81, $filter)
    , $endBoard as xs:integer* := su:populateValues($startBoard, $emptyCells) 
  return 
  if (empty($endBoard)) then 
    $startBoard 
  else 
    one-or-more($endBoard)
};

declare function su:jsonResult($board as xs:integer+) as map(*)
{
  map {
    'board' : 
      (
        let $ar := array { $board }
        for $rs at $rp in $su:rowStarts
        let $sa := array:subarray($ar, $rs, 9)
        return
        map {
          'row' || $rp : $sa
        }
      ) => map:merge()      
  }
};

declare function su:drawResult($board as xs:integer+) as element()
{
  element html {
    element head {
      element title {
        'Sudoku - XQuery 3.1'
      },
      element style {
        'body { font-family: Arial, Helvetica, sans-serif;} '||
        'table { border-collapse: collapse; border: 1px solid black; margin: 35px;} '||
        'td { padding: 10px 15px 10px 15px; } '||
        '.norm { border-left: 1px solid #CCC; border-top: 1px solid #CCC; } '||
        '.red  { color: red; } '||
        '.bold { font-weight: bold; } '||
        '.csep { border-left: 1px solid black; } '||
        '.rsep { border-top: 1px solid black; }'
      }
    },
    element body {
      su:drawBoard($board)
    }
  }
};

declare function su:drawBoard($board as xs:integer+) as element()
{
  element table {
    for $i in 1 to 9 
    return  
    element tr {
      for $j at $p in 1 to 9
      let $pos := (($i - 1) * 9) + $j
      let $val := $board[$pos]
      return
      element td {
        attribute class {
          if ($p mod 3 = 1) then 'csep' else 'norm',
          if ($i mod 3 = 1) then 'rsep' else 'norm',
          if ($val eq 0)    then 'red'  else 'bold'
        },
        $val
      }
    }
  } 
};

declare 
  %rest:GET
  %rest:path("sudoku/{$level}")
  %rest:query-param("solve", "{$solve}", "no")
  %rest:produces("text/html")
  %output:method("html")
  %output:omit-xml-declaration("yes")
function su:draw($level as xs:string, $solve as xs:string)
{
  if ($level eq 'hard' and $solve eq 'yes') then
    $su:boardHard => su:solveSudoku() => su:drawResult()
  else if ($level eq 'hard') then
    $su:boardHard => su:drawResult()
  else if ($level eq 'easy' and $solve eq 'yes') then
    $su:boardEasy => su:solveSudoku() => su:drawResult()
  else if ($level eq 'easy') then
    $su:boardEasy => su:drawResult()
  else
    error('unknown')
};

declare 
  %rest:GET
  %rest:path("jsudoku/{$level}")
  %rest:query-param("solve", "{$solve}", "no")
  %rest:produces("application/json")
  %output:method("json")
  %output:indent("yes")
function su:json($level as xs:string, $solve as xs:string)
{
  if ($level eq 'hard' and $solve eq 'yes') then
    $su:boardHard => su:solveSudoku() => su:jsonResult()
  else if ($level eq 'hard') then
    $su:boardHard => su:jsonResult()
  else if ($level eq 'easy' and $solve eq 'yes') then
    $su:boardEasy => su:solveSudoku() => su:jsonResult()
  else if ($level eq 'easy') then
    $su:boardEasy => su:jsonResult()
  else
    error('unknown')
};

