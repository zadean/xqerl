declare namespace fn = "sudoku";

declare variable $boardHard as xs:integer+ := 
  ( 5,3,0, 0,7,0, 0,0,0, 
    6,0,0, 1,9,5, 0,0,0, 
    0,9,8, 0,0,0, 0,6,0, 
    8,0,0, 0,6,0, 0,0,3, 
    4,0,0, 8,0,3, 0,0,1, 
    7,0,0, 0,2,0, 0,0,6, 
    0,6,0, 0,0,0, 2,8,0, 
    0,0,0, 4,1,9, 0,0,5, 
    0,0,0, 0,8,0, 0,7,9 );

declare variable $boardEasy as xs:integer+ := 
  ( 1,0,0, 3,0,0, 6,0,0, 
    0,2,0, 5,0,0, 0,0,4, 
    0,0,9, 0,0,0, 5,2,0, 
    0,0,0, 9,6,3, 0,0,0, 
    7,1,6, 0,0,0, 0,0,0, 
    0,0,0, 0,8,0, 0,4,0, 
    9,0,0, 0,0,5, 3,0,7, 
    8,0,0, 4,0,6, 0,0,0, 
    3,5,0, 0,0,0, 0,0,1 );

declare variable $rowStarts as xs:integer+ := 
  ( 1, 10, 19, 28, 37, 46, 55, 64, 73 );

declare variable $groups as xs:integer+ := 
  ( 1,1,1, 2,2,2, 3,3,3, 
    1,1,1, 2,2,2, 3,3,3, 
    1,1,1, 2,2,2, 3,3,3, 
    4,4,4, 5,5,5, 6,6,6, 
    4,4,4, 5,5,5, 6,6,6, 
    4,4,4, 5,5,5, 6,6,6, 
    7,7,7, 8,8,8, 9,9,9, 
    7,7,7, 8,8,8, 9,9,9, 
    7,7,7, 8,8,8, 9,9,9 );

declare function fn:getRow($board as xs:integer+,
                           $index as xs:integer) as xs:integer+ 
{ 
  let $rowStart := floor(($index - 1) div 9) * 9 
  return 
  $board[position() > $rowStart and position() <= $rowStart + 9] => one-or-more() 
};

declare function fn:getCol($board as xs:integer+,
                           $index as xs:integer) as xs:integer+ 
{
  let $gap := ($index - 1) mod 9
    , $colIndexes := $rowStarts ! (. + $gap)
  return 
  $board[position() = $colIndexes] => one-or-more() 
};

declare function fn:getGroup($board as xs:integer+, 
                             $index as xs:integer) as xs:integer+ 
{ 
  (
    let $group := $groups[$index]
    for $y at $x in $board
    where $groups[$x] = $group
    return 
    $y
  ) => one-or-more() 
};

declare function fn:getAllowedValues($board as xs:integer+, 
                                     $index as xs:integer) as xs:integer* 
{
  let $existingValues := ( fn:getRow($board, $index), 
                           fn:getCol($board, $index), 
                           fn:getGroup($board, $index) )
  for $x in (1 to 9) 
  return 
  if (not($x = $existingValues)) then 
    $x 
  else 
    () 
};

declare function fn:tryValues($board as xs:integer+, 
                              $emptyCells as xs:integer+, 
                              $possibleValues as xs:integer+) as xs:integer* 
{ 
  let $index as xs:integer := head($emptyCells)
    , $newBoard as xs:integer+ := ( subsequence($board, 1, $index - 1), 
                                    head($possibleValues), 
                                    subsequence($board, $index + 1) )
    , $result as xs:integer* := fn:populateValues($newBoard, tail($emptyCells))
  return 
  if (empty($result)) then 
    if (count($possibleValues) > 1) then 
      fn:tryValues( $board, 
                    $emptyCells, 
                    tail($possibleValues) => one-or-more() ) 
    else () 
  else 
    $result 
};

declare function fn:populateValues($board as xs:integer+, 
                                   $emptyCells as xs:integer*) as xs:integer*
{ 
  if (not(empty($emptyCells))) then 
    let $index as xs:integer := head($emptyCells)
      , $possibleValues as xs:integer* := fn:getAllowedValues($board, $index) 
                                          => distinct-values() 
    return 
    if (count($possibleValues) > 1) then 
      fn:tryValues( $board,
                    $emptyCells => one-or-more(), 
                    $possibleValues => one-or-more() ) 
    else if (count($possibleValues) = 1) then 
      let $newBoard as xs:integer+ := ( subsequence($board, 1, $index - 1), 
                                        exactly-one($possibleValues[1]), 
                                        subsequence($board, $index + 1) )
      return 
      fn:populateValues($newBoard, tail($emptyCells))
    else () 
  else 
    $board 
};

declare function fn:solveSudoku($startBoard as xs:integer+) as xs:integer+
{
  let $filter := function($i, $p) { if ($i eq 0) then $p else () }
    , $emptyCells as xs:integer* := for-each-pair($startBoard, 1 to 81, $filter)
    , $endBoard as xs:integer* := fn:populateValues($startBoard, $emptyCells) 
  return 
  if (empty($endBoard)) then 
    $startBoard 
  else 
    one-or-more($endBoard)
};

declare function fn:drawResult($board as xs:integer+) as element()
{
  element html {
    element head {
      element title {
        'Sudoku - XSLT'
      },
      element style {
        'table { border-collapse: collapse; border: 1px solid black; } '||
        'td { padding: 10px; } '||
        '.norm { border-left: 1px solid #CCC; border-top: 1px solid #CCC; } '||
        '.csep { border-left: 1px solid black; } '||
        '.rsep { border-top: 1px solid black; }'
      }
    },
    element body {
      fn:drawBoard($board)
    }
  }
};

declare function fn:drawBoard($board as xs:integer+) as element()
{
  element table {
    for $i in 1 to 9 
    return  
    element tr {
      for $j at $p in 1 to 9
      let $pos := (($i - 1) * 9) + $j
      return
      element td {
        attribute class {
          if ($p mod 3 = 1) then 'csep' else 'norm',
          if ($i mod 3 = 1) then 'rsep' else 'norm'
        },
        $board[$pos]
      }
    }
  } 
};

fn:solveSudoku($boardHard) => fn:drawResult()
(: fn:solveSudoku($boardEasy) => fn:drawResult() :)
