-module('app_Demos_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['sudoku'/1]).
-export(['currencysvg'/1]).
-export(['itunes'/1]).
-export(['raytracer'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "app")
, try  xqerl_module:compile(filename:join(BaseDir, "Demos/raytracer.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "Demos/scene.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "Demos/vector.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "Demos/shapes.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "Demos/materials.xq")) catch _:_ -> ok end
, try  xqerl_module:compile(filename:join(BaseDir, "Demos/math.xq")) catch _:_ -> ok end
,[{base_dir, BaseDir}|Config].
all() -> [
   'sudoku',
   'currencysvg',
   'itunes',
   'raytracer'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'sudoku'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace fn = \"sudoku\";
        declare variable $board as xs:integer+ := 
        	( 1,0,0, 3,0,0, 6,0,0, 0,2,0, 5,0,0, 0,0,4, 0,0,9, 0,0,0, 
        	5,2,0, 0,0,0, 9,6,3, 0,0,0, 7,1,6, 0,0,0, 0,0,0, 0,0,0, 
        	0,8,0, 0,4,0, 9,0,0, 0,0,5, 3,0,7, 8,0,0, 4,0,6, 0,0,0, 
        	3,5,0, 0,0,0, 0,0,1);
        declare variable $rowStarts as xs:integer+ := (1, 10, 19, 28, 37, 46, 55, 64,73);
        declare variable $groups as xs:integer+ := 
        	( 1,1,1, 2,2,2, 3,3,3, 1,1,1, 2,2,2, 3,3,3, 1,1,1, 2,2,2, 3,3,3, 4,4,4, 
        	5,5,5, 6,6,6, 4,4,4, 5,5,5, 6,6,6, 4,4,4, 5,5,5, 6,6,6, 7,7,7, 8,8,8, 
        	9,9,9, 7,7,7, 8,8,8, 9,9,9, 7,7,7, 8,8,8, 9,9,9 );
        declare function fn:getRow ($board as xs:integer+, $index as xs:integer) as xs:integer+ { 
        	let $rowStart := floor(($index - 1) div 9) * 9 
        	return one-or-more($board[position() > $rowStart and position() <= $rowStart + 9]) 
        };
        declare function fn:getCol ($board as xs:integer+, $index as xs:integer) as xs:integer+ { 
        	let $gap := ($index - 1) mod 9, 
        	    $colIndexes := for $x in $rowStarts 
        	    		       return $x + $gap 
        	return one-or-more($board[position() = $colIndexes]) 
        };
        declare function fn:getGroup ($board as xs:integer+, $index as xs:integer) as xs:integer+ { 
        	let $group := $groups[$index] 
        	return one-or-more($board[for $x in position() return $groups[$x]= $group]) 
        };
        declare function fn:getAllowedValues ($board as xs:integer+, $index as xs:integer) as xs:integer* { 
        	let $existingValues := (fn:getRow($board, $index), fn:getCol($board, $index), fn:getGroup($board, $index)) 
        	return for $x in (1 to 9) return if (not($x = $existingValues)) then $x else () 
        };
        declare function fn:tryValues($board as xs:integer+, $emptyCells as xs:integer+, $possibleValues as xs:integer+) as xs:integer* { 
        	let $index as xs:integer := $emptyCells[1], 
        	    $newBoard as xs:integer+ := ($board[position() <$index], $possibleValues[1], $board[position() > $index]), 
        	    $result as xs:integer* := fn:populateValues($newBoard, $emptyCells[position() != 1]) 
        	return if (empty($result)) then if (count($possibleValues) > 1) then fn:tryValues($board, $emptyCells, one-or-more($possibleValues[position() != 1])) else () else $result 
        };
        declare function fn:populateValues($board as xs:integer+, $emptyCells as xs:integer*) as xs:integer*{ 
        	if (not(empty($emptyCells))) 
        	then let $index as xs:integer := exactly-one($emptyCells[1]), 
        			 $possibleValues as xs:integer* := distinct-values(fn:getAllowedValues($board, $index)) 
        		 return if (count($possibleValues) > 1) 
        		        then fn:tryValues($board, one-or-more($emptyCells), one-or-more($possibleValues)) 
        		        else if (count($possibleValues) = 1) 
        		        then let $newBoard as xs:integer+ :=($board[position() < $index], 
        		                   exactly-one($possibleValues[1]), $board[position() > $index]) 
        		             return fn:populateValues($newBoard, $emptyCells[position() != 1]) 
        		        else () 
        	else $board 
        };
        declare function fn:solveSudoku ($startBoard as xs:integer+) as xs:integer+{ 
        	let $emptyCells as xs:integer* :=
        			for $x in (1 to 81) 
        			return if ($startBoard[$x] = 0) then $x else (), 
        		$endBoard as xs:integer* :=fn:populateValues($startBoard,$emptyCells) 
        	return if (empty($endBoard)) then $startBoard else one-or-more($endBoard)
        };
        declare function fn:drawResult ($board as xs:integer+) as element(){ 
        	<html><head><title>Sudoku - XSLT</title><style>table {{ border-collapse: collapse; border: 1px solid black; }} td {{ padding: 10px; }} .norm {{ border-left: 1px solid #CCC; border-top: 1px solid #CCC; }} .csep {{ border-left: 1px solid black; }} .rsep {{ border-top: 1px solid black; }}</style></head><body>{fn:drawBoard($board)}</body></html> };
        declare function fn:drawBoard ($board as xs:integer+) as element(){ 
        	<table>{for $i in 1 to 9 return 
        		<tr>{for $j at $p in 1 to 9 
        			  let $pos := (($i - 1) * 9) + $j 
        			  return <td class=\"{if ($p mod 3 = 1) then 'csep' else ('norm')} {if ($i mod 3 = 1) then 'rsep' else ('norm')}\"> {$board[$pos]}</td> 
        			  }</tr> }</table> 
        };
        fn:drawResult(fn:solveSudoku($board))
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "sudoku.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,{file, filename:join(BaseDir, "Demos/sudoku-result.xml")}) of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'currencysvg'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip," CRASH "}.
'itunes'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.
'raytracer'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace raytracer=\"http://www.xqsharp.com/raytracer\";
        import module namespace scene=\"http://www.xqsharp.com/raytracer/scene\";
        declare variable $width := 64;
        declare variable $height := 64;
        declare variable $input-context := .;
        declare variable $scene := scene:prepare-scene($input-context/scene);
        string-join( ( \"P3\", string-join((string($width), string($height)), \" \"), \"255\", (: : Now the pixel data. We take each pixel in the image, and recenter it, so that the : y co-ordinate ($y-recentered) ranges from -0.5 at the bottom of the image, to 0.5 : at the top of the image. : : The aspect ratio is used to \"stretch\" the range of x-coordinate values to stop the : image from being skewed. :) 
        let $aspect-ratio := $width div $height 
        for $y in 1 to $height 
        let $y-recentered := ((-$y div $height) + 0.5) 
        for $x in 1 to $width 
        let $x-recentered := (($x div $width) - 0.5) * $aspect-ratio 
        return (: plot-pixel returns us the rgb values of the color of this pixel. 
        		  We convert these to an integer value in the range [0, 255], and output them. :) 
        	string-join( for $channel in raytracer:plot-pixel($scene, $x-recentered, $y-recentered) 
        			     return string(floor($channel * 255)), \" \") ), \"&#xA;\" )
      ",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "Demos/scene.xml"),".",[]}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, [{filename:join(BaseDir, "Demos/raytracer.xq"),"http://www.xqsharp.com/raytracer"},
{filename:join(BaseDir, "Demos/scene.xq"),"http://www.xqsharp.com/raytracer/scene"},
{filename:join(BaseDir, "Demos/vector.xq"),"http://www.xqsharp.com/raytracer/vector"},
{filename:join(BaseDir, "Demos/shapes.xq"),"http://www.xqsharp.com/raytracer/shapes"},
{filename:join(BaseDir, "Demos/materials.xq"),"http://www.xqsharp.com/raytracer/materials"},
{filename:join(BaseDir, "Demos/math.xq"),"http://www.xqsharp.com/raytracer/math"}]}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "raytracer.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"starts-with(normalize-space(string-join($result, ' ')), 'P3 64 64 255 0 0 0')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"ends-with(normalize-space(string-join($result, ' ')), '125 119 179 125 118 178 124 118 177 124 117 176')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
