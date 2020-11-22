-module('app_Demos_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

-export(['sudoku'/1]).
-export(['currencysvg'/1]).
-export(['itunes'/1]).
-export(['raytracer'/1]).
-export(['RexParser'/1]).

suite() -> [{timetrap, {seconds, 240}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "app"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [], [
            'sudoku',
            'currencysvg',
            'itunes',
            'raytracer',
            'RexParser'
        ]}
    ].

'sudoku'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fn = \"sudoku\";\n"
        "        declare variable $board as xs:integer+ := \n"
        "        	( 1,0,0, 3,0,0, 6,0,0, 0,2,0, 5,0,0, 0,0,4, 0,0,9, 0,0,0, \n"
        "        	5,2,0, 0,0,0, 9,6,3, 0,0,0, 7,1,6, 0,0,0, 0,0,0, 0,0,0, \n"
        "        	0,8,0, 0,4,0, 9,0,0, 0,0,5, 3,0,7, 8,0,0, 4,0,6, 0,0,0, \n"
        "        	3,5,0, 0,0,0, 0,0,1);\n"
        "        declare variable $rowStarts as xs:integer+ := (1, 10, 19, 28, 37, 46, 55, 64,73);\n"
        "        declare variable $groups as xs:integer+ := \n"
        "        	( 1,1,1, 2,2,2, 3,3,3, 1,1,1, 2,2,2, 3,3,3, 1,1,1, 2,2,2, 3,3,3, 4,4,4, \n"
        "        	5,5,5, 6,6,6, 4,4,4, 5,5,5, 6,6,6, 4,4,4, 5,5,5, 6,6,6, 7,7,7, 8,8,8, \n"
        "        	9,9,9, 7,7,7, 8,8,8, 9,9,9, 7,7,7, 8,8,8, 9,9,9 );\n"
        "        declare function fn:getRow ($board as xs:integer+, $index as xs:integer) as xs:integer+ { \n"
        "        	let $rowStart := floor(($index - 1) div 9) * 9 \n"
        "        	return one-or-more($board[position() > $rowStart and position() <= $rowStart + 9]) \n"
        "        };\n"
        "        declare function fn:getCol ($board as xs:integer+, $index as xs:integer) as xs:integer+ { \n"
        "        	let $gap := ($index - 1) mod 9, \n"
        "        	    $colIndexes := for $x in $rowStarts \n"
        "        	    		       return $x + $gap \n"
        "        	return one-or-more($board[position() = $colIndexes]) \n"
        "        };\n"
        "        declare function fn:getGroup ($board as xs:integer+, $index as xs:integer) as xs:integer+ { \n"
        "        	let $group := $groups[$index] \n"
        "        	return one-or-more($board[for $x in position() return $groups[$x]= $group]) \n"
        "        };\n"
        "        declare function fn:getAllowedValues ($board as xs:integer+, $index as xs:integer) as xs:integer* { \n"
        "        	let $existingValues := (fn:getRow($board, $index), fn:getCol($board, $index), fn:getGroup($board, $index)) \n"
        "        	return for $x in (1 to 9) return if (not($x = $existingValues)) then $x else () \n"
        "        };\n"
        "        declare function fn:tryValues($board as xs:integer+, $emptyCells as xs:integer+, $possibleValues as xs:integer+) as xs:integer* { \n"
        "        	let $index as xs:integer := $emptyCells[1], \n"
        "        	    $newBoard as xs:integer+ := ($board[position() <$index], $possibleValues[1], $board[position() > $index]), \n"
        "        	    $result as xs:integer* := fn:populateValues($newBoard, $emptyCells[position() != 1]) \n"
        "        	return if (empty($result)) then if (count($possibleValues) > 1) then fn:tryValues($board, $emptyCells, one-or-more($possibleValues[position() != 1])) else () else $result \n"
        "        };\n"
        "        declare function fn:populateValues($board as xs:integer+, $emptyCells as xs:integer*) as xs:integer*{ \n"
        "        	if (not(empty($emptyCells))) \n"
        "        	then let $index as xs:integer := exactly-one($emptyCells[1]), \n"
        "        			 $possibleValues as xs:integer* := distinct-values(fn:getAllowedValues($board, $index)) \n"
        "        		 return if (count($possibleValues) > 1) \n"
        "        		        then fn:tryValues($board, one-or-more($emptyCells), one-or-more($possibleValues)) \n"
        "        		        else if (count($possibleValues) = 1) \n"
        "        		        then let $newBoard as xs:integer+ :=($board[position() < $index], \n"
        "        		                   exactly-one($possibleValues[1]), $board[position() > $index]) \n"
        "        		             return fn:populateValues($newBoard, $emptyCells[position() != 1]) \n"
        "        		        else () \n"
        "        	else $board \n"
        "        };\n"
        "        declare function fn:solveSudoku ($startBoard as xs:integer+) as xs:integer+{ \n"
        "        	let $emptyCells as xs:integer* :=\n"
        "        			for $x in (1 to 81) \n"
        "        			return if ($startBoard[$x] = 0) then $x else (), \n"
        "        		$endBoard as xs:integer* :=fn:populateValues($startBoard,$emptyCells) \n"
        "        	return if (empty($endBoard)) then $startBoard else one-or-more($endBoard)\n"
        "        };\n"
        "        declare function fn:drawResult ($board as xs:integer+) as element(){ \n"
        "        	<html><head><title>Sudoku - XSLT</title><style>table {{ border-collapse: collapse; border: 1px solid black; }} td {{ padding: 10px; }} .norm {{ border-left: 1px solid #CCC; border-top: 1px solid #CCC; }} .csep {{ border-left: 1px solid black; }} .rsep {{ border-top: 1px solid black; }}</style></head><body>{fn:drawBoard($board)}</body></html> };\n"
        "        declare function fn:drawBoard ($board as xs:integer+) as element(){ \n"
        "        	<table>{for $i in 1 to 9 return \n"
        "        		<tr>{for $j at $p in 1 to 9 \n"
        "        			  let $pos := (($i - 1) * 9) + $j \n"
        "        			  return <td class=\"{if ($p mod 3 = 1) then 'csep' else ('norm')} {if ($i mod 3 = 1) then 'rsep' else ('norm')}\"> {$board[$pos]}</td> \n"
        "        			  }</tr> }</table> \n"
        "        };\n"
        "        fn:drawResult(fn:solveSudoku($board))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "sudoku.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(Res, {file, filename:join(__BaseDir, "Demos/sudoku-result.xml")})
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'currencysvg'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: Name: currencysvg :)\n"
        "(: Description: Draw an SVG of currency exchange data :)\n"
        "(: Author: Nick Jones :)\n"
        "(: Date: 2008-10-30 :)\n"
        "(: Declare namespaces :)\n"
        "declare default element namespace \"http://www.w3.org/2000/svg\";\n"
        "declare namespace msg=\"http://www.SDMX.org/resources/SDMXML/schemas/v1_0/message\";\n"
        "declare namespace frbny=\"http://www.newyorkfed.org/xml/schemas/FX/utility\";\n"
        "\n"
        "(: Currency to lookup :)\n"
        "declare variable $input-context := .;\n"
        "\n"
        "(: A list of observations :)\n"
        "declare variable $obs := $input-context/msg:UtilityData/frbny:DataSet/frbny:Series/frbny:Obs;\n"
        "\n"
        "(: Minimum/maximum/average exchange rates :)\n"
        "declare variable $values := $obs/frbny:OBS_VALUE/xs:decimal(.);\n"
        "declare variable $minValue := min($values);\n"
        "declare variable $maxValue := max($values);\n"
        "declare variable $avgValue := avg($values);\n"
        "\n"
        "\n"
        "(: First/last dates :)\n"
        "declare variable $dates := $obs/frbny:TIME_PERIOD/xs:date(.);\n"
        "declare variable $firstDate := min($dates);\n"
        "declare variable $lastDate := max($dates);\n"
        "\n"
        "(: Returns the change in exchange rate over a specified number of days :)\n"
        "declare function local:period-change($ob as element(frbny:Obs,xs:untyped),\n"
        "                                     $days as xs:positiveInteger) as xs:decimal {\n"
        "    let $previous := xs:decimal($ob/following-sibling::frbny:Obs[$days]/frbny:OBS_VALUE)\n"
        "    return xs:decimal($ob/frbny:OBS_VALUE - $previous)\n"
        "};\n"
        "\n"
        "\n"
        "(: Converts an observation to an x,y coordinate pair :)\n"
        "declare function local:coordinate($ob as element(frbny:Obs,xs:untyped)) as xs:decimal+ {\n"
        "  (\n"
        "    xs:decimal((xs:date($ob/frbny:TIME_PERIOD) - $firstDate) div ($lastDate - $firstDate) * 1000)\n"
        "    ,\n"
        "    xs:decimal(1000 - ($ob/frbny:OBS_VALUE - $minValue) div ($maxValue - $minValue) * 1000)\n"
        "  )\n"
        "};\n"
        "\n"
        "(: Labels the largest falls and rises over a specified number of days :)\n"
        "declare function local:label-changes($days as xs:positiveInteger) as element(text,xs:anyType)+ {\n"
        "      let $sortedByChange:= \n"
        "          for $ob in $obs[position() <= last() - $days]\n"
        "          order by local:period-change($ob,$days) descending\n"
        "          return $ob\n"
        "      return\n"
        "        (\n"
        "          local:label-observation($sortedByChange[last()]/following-sibling::frbny:Obs[$days],concat('Largest ',$days,'-day rise'))\n"
        "          ,\n"
        "          local:label-observation($sortedByChange[1]/following-sibling::frbny:Obs[$days],concat('Largest ',$days,'-day fall'))\n"
        "        )\n"
        "};\n"
        "\n"
        "(: Labels an observation :)\n"
        "declare function local:label-observation($ob as element(frbny:Obs,xs:untyped),$label as xs:string) as element(text,xs:anyType) {\n"
        "      let $coord := local:coordinate($ob)\n"
        "      return\n"
        "        <text x=\"{round-half-to-even($coord[1], 4)}\"\n"
        "                  y=\"{round-half-to-even($coord[2], 4)}\"\n"
        "                  text-anchor=\"end\"\n"
        "                  title=\"{concat($ob/frbny:TIME_PERIOD,' - ',$ob/frbny:OBS_VALUE)}\">\n"
        "          {$label}\n"
        "        </text>\n"
        "};\n"
        "\n"
        "<svg viewBox=\"-50,-50,1100,1100\">\n"
        "\n"
        "  <!-- Border -->\n"
        "  <path stroke=\"black\" fill=\"none\" stroke-width=\"1\" d=\"M0,0L1000,0L1000,1000L0,1000L0,0\"/>\n"
        "\n"
        "  <!-- Title -->\n"
        "  <text x=\"500\" y=\"-20\" text-anchor=\"middle\">{string($input-context/msg:UtilityData/msg:Header/msg:Name)}</text>\n"
        "\n"
        "  <!-- Generator -->\n"
        "  <text x=\"500\" y=\"1040\" text-anchor=\"middle\">Generated by XQSharp</text>\n"
        "\n"
        "  <!-- Ranges -->\n"
        "  <text x=\"0\" y=\"1020\" text-anchor=\"middle\">{$firstDate}</text>\n"
        "  <text x=\"1000\" y=\"1020\" text-anchor=\"middle\">{$lastDate}</text>\n"
        "  <text x=\"0\" y=\"0\" text-anchor=\"end\">{$maxValue}</text>\n"
        "  <text x=\"0\" y=\"1000\" text-anchor=\"end\">{$minValue}</text>\n"
        "\n"
        "  <!-- Graph -->\n"
        "  <path stroke=\"red\" fill=\"none\" stroke-width=\"1\">\n"
        "    {\n"
        "      attribute {\"d\"}\n"
        "      {\n"
        "        for $ob at $pos in $obs\n"
        "        let $coord := local:coordinate($ob)\n"
        "        return\n"
        "          concat(if($pos = 1) then \"M\" else \"L\",round-half-to-even($coord[1], 4),\",\",round-half-to-even($coord[2], 4))\n"
        "      }\n"
        "    }\n"
        "  </path>\n"
        "\n"
        "  <!-- Average -->\n"
        "  <path stroke=\"blue\" fill=\"none\" stroke-with=\"2\" d=\"M0,{round-half-to-even(($maxValue - $avgValue) div ($maxValue - $minValue) * 1000, 4)}l1000,0\"/>\n"
        "  <text x=\"0\" y=\"{round-half-to-even(($maxValue - $avgValue) div ($maxValue - $minValue) * 1000, 4)}\" text-anchor=\"end\">Average</text>\n"
        "\n"
        "  {\n"
        "    (: Label largest changes over 1,5,90,365 days :)\n"
        "    for $days in (1,5,90,365)\n"
        "    return local:label-changes(xs:positiveInteger($days))\n"
        "  }\n"
        "</svg>\n",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "Demos/GBPNoon.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "currencysvg.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                {file, filename:join(__BaseDir, "Demos/currencysvg-result.xml")}
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'itunes'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'raytracer'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace raytracer=\"http://www.xqsharp.com/raytracer\";\n"
        "        import module namespace scene=\"http://www.xqsharp.com/raytracer/scene\";\n"
        "        declare variable $width := 64;\n"
        "        declare variable $height := 64;\n"
        "        declare variable $input-context := .;\n"
        "        declare variable $scene := scene:prepare-scene($input-context/scene);\n"
        "        string-join( ( \"P3\", string-join((string($width), string($height)), \" \"), \"255\", (: : Now the pixel data. We take each pixel in the image, and recenter it, so that the : y co-ordinate ($y-recentered) ranges from -0.5 at the bottom of the image, to 0.5 : at the top of the image. : : The aspect ratio is used to \"stretch\" the range of x-coordinate values to stop the : image from being skewed. :) \n"
        "        let $aspect-ratio := $width div $height \n"
        "        for $y in 1 to $height \n"
        "        let $y-recentered := ((-$y div $height) + 0.5) \n"
        "        for $x in 1 to $width \n"
        "        let $x-recentered := (($x div $width) - 0.5) * $aspect-ratio \n"
        "        return (: plot-pixel returns us the rgb values of the color of this pixel. \n"
        "        		  We convert these to an integer value in the range [0, 255], and output them. :) \n"
        "        	string-join( for $channel in raytracer:plot-pixel($scene, $x-recentered, $y-recentered) \n"
        "        			     return string(floor($channel * 255)), \" \") ), \"&#xA;\" )\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "Demos/scene.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, [
            {filename:join(__BaseDir, "Demos/math.xq"), "http://www.xqsharp.com/raytracer/math"},
            {filename:join(__BaseDir, "Demos/materials.xq"),
                "http://www.xqsharp.com/raytracer/materials"},
            {filename:join(__BaseDir, "Demos/shapes.xq"),
                "http://www.xqsharp.com/raytracer/shapes"},
            {filename:join(__BaseDir, "Demos/vector.xq"),
                "http://www.xqsharp.com/raytracer/vector"},
            {filename:join(__BaseDir, "Demos/scene.xq"), "http://www.xqsharp.com/raytracer/scene"},
            {filename:join(__BaseDir, "Demos/raytracer.xq"), "http://www.xqsharp.com/raytracer"}
        ]}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [
        {filename:join(__BaseDir, "Demos/raytracer.xq"), <<"Q{http://www.xqsharp.com/raytracer}">>},
        {filename:join(__BaseDir, "Demos/scene.xq"),
            <<"Q{http://www.xqsharp.com/raytracer/scene}">>},
        {filename:join(__BaseDir, "Demos/vector.xq"),
            <<"Q{http://www.xqsharp.com/raytracer/vector}">>},
        {filename:join(__BaseDir, "Demos/shapes.xq"),
            <<"Q{http://www.xqsharp.com/raytracer/shapes}">>},
        {filename:join(__BaseDir, "Demos/materials.xq"),
            <<"Q{http://www.xqsharp.com/raytracer/materials}">>},
        {filename:join(__BaseDir, "Demos/math.xq"), <<"Q{http://www.xqsharp.com/raytracer/math}">>}
    ],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "raytracer.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert(
                            Res,
                            "starts-with(normalize-space(string-join($result, ' ')), 'P3 64 64 255 0 0 0')"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "ends-with(normalize-space(string-join($result, ' ')), '125 119 179 125 118 178 124 118 177 124 117 176')"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'RexParser'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace p=\"s\";\n"
        "declare default function namespace \"http://www.w3.org/2005/xpath-functions\";\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the combined\n"
        " : (i.e. level > 1) lookahead code.\n"
        " :)\n"
        "declare variable $p:lk as xs:integer := 1;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the position in the\n"
        " : input string of the begin of the token that has been consumed.\n"
        " :)\n"
        "declare variable $p:b0 as xs:integer := 2;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the position in the\n"
        " : input string of the end of the token that has been consumed.\n"
        " :)\n"
        "declare variable $p:e0 as xs:integer := 3;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the code of the\n"
        " : level-1-lookahead token.\n"
        " :)\n"
        "declare variable $p:l1 as xs:integer := 4;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the position in the\n"
        " : input string of the begin of the level-1-lookahead token.\n"
        " :)\n"
        "declare variable $p:b1 as xs:integer := 5;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the position in the\n"
        " : input string of the end of the level-1-lookahead token.\n"
        " :)\n"
        "declare variable $p:e1 as xs:integer := 6;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state for accessing the token code that\n"
        " : was expected when an error was found.\n"
        " :)\n"
        "declare variable $p:error as xs:integer := 7;\n"
        "\n"
        "(:~\n"
        " : The index of the lexer state that points to the first entry\n"
        " : used for collecting action results.\n"
        " :)\n"
        "declare variable $p:result as xs:integer := 8;\n"
        "\n"
        "(:~\n"
        " : The codepoint to charclass mapping for 7 bit codepoints.\n"
        " :)\n"
        "declare variable $p:MAP0 as xs:integer+ :=\n"
        "(\n"
        "  4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,\n"
        "  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,\n"
        "  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,\n"
        "  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The codepoint to charclass mapping for codepoints below the surrogate block.\n"
        " :)\n"
        "declare variable $p:MAP1 as xs:integer+ :=\n"
        "(\n"
        "  54, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58,\n"
        "  58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 90, 91, 91, 123,\n"
        "  91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91,\n"
        "  91, 91, 91, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,\n"
        "  2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The token-set-id to DFA-initial-state mapping.\n"
        " :)\n"
        "declare variable $p:INITIAL as xs:integer+ :=\n"
        "(\n"
        "  1, 2, 3\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The DFA transition table.\n"
        " :)\n"
        "declare variable $p:TRANSITION as xs:integer+ :=\n"
        "(\n"
        "  11, 11, 12, 13, 14, 15, 10, 11, 11, 17, 20, 0, 0, 12, 0, 16, 0, 8, 0\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The DFA-state to expected-token-set mapping.\n"
        " :)\n"
        "declare variable $p:EXPECTED as xs:integer+ :=\n"
        "(\n"
        "  16, 12, 14\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The match-code to case-id map. Maps decision point and lookahead to next action code.\n"
        " :)\n"
        "declare variable $p:CASEID as xs:integer+ :=\n"
        "(\n"
        "  6, 14, 12, 14, 8, 14, 21, 18, 21, 21, 20, 21, 22, 18, 21, 21, 21, 21, 264, 264, 322, 0, 0, 106\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The parser tokenset table. Maps state to lookahead tokenset code.\n"
        " :)\n"
        "declare variable $p:TOKENSET as xs:integer+ :=\n"
        "(\n"
        "  1, 2, 0\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The parser lookback table. Maps lookback code and itemset id to next lookback code.\n"
        " :)\n"
        "declare variable $p:LOOKBACK as xs:integer+ :=\n"
        "(\n"
        "  10, 10, 11, 8, 8, 8, 14, 17, 2, 2, 0, 4, 3, 0, 4, 5, 0, 6, 6, 0\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The parser goto table. Maps state and nonterminal to next action code.\n"
        " :)\n"
        "declare variable $p:GOTO as xs:integer+ :=\n"
        "(\n"
        "  8, 10, 10, 10, 11, 10, 10, 10, 6, 273, 0, 0, 273\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The token-string table.\n"
        " :)\n"
        "declare variable $p:TOKEN as xs:string+ :=\n"
        "(\n"
        "  \"(0)\",\n"
        "  \"EOF\",\n"
        "  \"'a'\",\n"
        "  \"'b'\",\n"
        "  \"'d'\"\n"
        ");\n"
        "\n"
        "(:~\n"
        " : The nonterminal name table.\n"
        " :)\n"
        "declare variable $p:NONTERMINAL as xs:string+ :=\n"
        "(\n"
        "  \"S\",\n"
        "  \"B\"\n"
        ");\n"
        "\n"
        "(:~\n"
        " : Predict the decision for a given decision point based on current\n"
        " : lookahead.\n"
        " :\n"
        " : @param $input the input string.\n"
        " : @param $state the parser state.\n"
        " : @param $dpi the decision point index.\n"
        " : @return the updated parser state.\n"
        " :)\n"
        "declare function p:predict($input as xs:string,\n"
        "                           $state as item()+,\n"
        "                           $dpi as xs:integer) as item()+\n"
        "{\n"
        "  let $state := p:lookahead1($p:TOKENSET[$dpi + 1], $input, $state)\n"
        "  return\n"
        "    if ($state[$p:l1] lt 0) then\n"
        "    (\n"
        "      0,\n"
        "      subsequence($state, $p:lk + 1, $p:error - $p:lk - 1),\n"
        "      element error\n"
        "      {\n"
        "        attribute b {$state[$p:b1]},\n"
        "        attribute e {$state[$p:e1]},\n"
        "        attribute s {- $state[$p:l1]}\n"
        "      },\n"
        "      subsequence($state, $p:error + 1)\n"
        "    )\n"
        "    else\n"
        "      let $j10 := 16 * $dpi + $state[$p:l1]\n"
        "      let $j11 := $j10 idiv 2\n"
        "      let $j12 := $j11 idiv 4\n"
        "      let $action := $p:CASEID[$j10 mod 2 + $p:CASEID[$j11 mod 4 + $p:CASEID[$j12 + 1] + 1] + 1]\n"
        "      return ($action idiv 2, subsequence($state, $p:lk + 1))\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Match next token in input string, starting at given index, using\n"
        " : the DFA entry state for the set of tokens that are expected in\n"
        " : the current context.\n"
        " :\n"
        " : @param $input the input string.\n"
        " : @param $begin the index where to start in input string.\n"
        " : @param $token-set the expected token set id.\n"
        " : @return a sequence of three: the token code of the result token,\n"
        " : with input string begin and end positions. If there is no valid\n"
        " : token, return the negative id of the DFA state that failed, along\n"
        " : with begin and end positions of the longest viable prefix.\n"
        " :)\n"
        "declare function p:match($input as xs:string,\n"
        "                         $begin as xs:integer,\n"
        "                         $token-set as xs:integer) as xs:integer+\n"
        "{\n"
        "  let $result := $p:INITIAL[1 + $token-set]\n"
        "  return p:transition($input,\n"
        "                      $begin,\n"
        "                      $begin,\n"
        "                      $begin,\n"
        "                      $result,\n"
        "                      $result mod 4,\n"
        "                      0)\n"
        "};\n"
        "\n"
        "(:~\n"
        " : The DFA state transition function. If we are in a valid DFA state, save\n"
        " : it's result annotation, consume one input codepoint, calculate the next\n"
        " : state, and use tail recursion to do the same again. Otherwise, return\n"
        " : any valid result or a negative DFA state id in case of an error.\n"
        " :\n"
        " : @param $input the input string.\n"
        " : @param $begin the begin index of the current token in the input string.\n"
        " : @param $current the index of the current position in the input string.\n"
        " : @param $end the end index of the result in the input string.\n"
        " : @param $result the result code.\n"
        " : @param $current-state the current DFA state.\n"
        " : @param $previous-state the  previous DFA state.\n"
        " : @return a sequence of three: the token code of the result token,\n"
        " : with input string begin and end positions. If there is no valid\n"
        " : token, return the negative id of the DFA state that failed, along\n"
        " : with begin and end positions of the longest viable prefix.\n"
        " :)\n"
        "declare function p:transition($input as xs:string,\n"
        "                              $begin as xs:integer,\n"
        "                              $current as xs:integer,\n"
        "                              $end as xs:integer,\n"
        "                              $result as xs:integer,\n"
        "                              $current-state as xs:integer,\n"
        "                              $previous-state as xs:integer)\n"
        "{\n"
        "  if ($current-state eq 0) then\n"
        "    let $result := $result idiv 4\n"
        "    let $end := if ($end gt string-length($input)) then string-length($input) + 1 else $end\n"
        "    return\n"
        "      if ($result ne 0) then\n"
        "      (\n"
        "        $result - 1,\n"
        "        $begin,\n"
        "        $end\n"
        "      )\n"
        "      else\n"
        "      (\n"
        "        - $previous-state,\n"
        "        $begin,\n"
        "        $current - 1\n"
        "      )\n"
        "  else\n"
        "    let $c0 := (string-to-codepoints(substring($input, $current, 1)), 0)[1]\n"
        "    let $c1 :=\n"
        "      if ($c0 < 128) then\n"
        "        $p:MAP0[1 + $c0]\n"
        "      else if ($c0 < 55296) then\n"
        "        let $c1 := $c0 idiv 32\n"
        "        let $c2 := $c1 idiv 32\n"
        "        return $p:MAP1[1 + $c0 mod 32 + $p:MAP1[1 + $c1 mod 32 + $p:MAP1[1 + $c2]]]\n"
        "      else\n"
        "        0\n"
        "    let $current := $current + 1\n"
        "    let $i0 := 4 * $c1 + $current-state - 1\n"
        "    let $i1 := $i0 idiv 2\n"
        "    let $next-state := $p:TRANSITION[$i0 mod 2 + $p:TRANSITION[$i1 + 1] + 1]\n"
        "    return\n"
        "      if ($next-state > 3) then\n"
        "        p:transition($input, $begin, $current, $current, $next-state, $next-state mod 4, $current-state)\n"
        "      else\n"
        "        p:transition($input, $begin, $current, $end, $result, $next-state, $current-state)\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Recursively translate one 32-bit chunk of an expected token bitset\n"
        " : to the corresponding sequence of token strings.\n"
        " :\n"
        " : @param $result the result of previous recursion levels.\n"
        " : @param $chunk the 32-bit chunk of the expected token bitset.\n"
        " : @param $base-token-code the token code of bit 0 in the current chunk.\n"
        " : @return the set of token strings.\n"
        " :)\n"
        "declare function p:token($result as xs:string*,\n"
        "                         $chunk as xs:integer,\n"
        "                         $base-token-code as xs:integer)\n"
        "{\n"
        "  if ($chunk = 0) then\n"
        "    $result\n"
        "  else\n"
        "    p:token\n"
        "    (\n"
        "      ($result, if ($chunk mod 2 != 0) then $p:TOKEN[$base-token-code] else ()),\n"
        "      if ($chunk < 0) then $chunk idiv 2 + 2147483648 else $chunk idiv 2,\n"
        "      $base-token-code + 1\n"
        "    )\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Get GOTO table entry for given nonterminal and parser state.\n"
        " :\n"
        " : @param $nonterminal the nonterminal.\n"
        " : @param $state the LR parser state.\n"
        " : @return the GOTO table entry.\n"
        " :)\n"
        "declare function p:goto($nonterminal as xs:integer, $state as xs:integer) as xs:integer\n"
        "{\n"
        "  let $i0 := 8 * $state + $nonterminal\n"
        "  let $i1 := $i0 idiv 2\n"
        "  return $p:GOTO[$i0 mod 2 + $p:GOTO[$i1 + 1] + 1]\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Calculate expected token set for a given DFA state as a sequence\n"
        " : of strings.\n"
        " :\n"
        " : @param $state the DFA state.\n"
        " : @return the set of token strings.\n"
        " :)\n"
        "declare function p:expected-token-set($state as xs:integer) as xs:string*\n"
        "{\n"
        "  if ($state > 0) then\n"
        "    for $t in 0 to 0\n"
        "    let $i0 := $t * 3 + $state - 1\n"
        "    return p:token((), $p:EXPECTED[$i0 + 1], $t * 32 + 1)\n"
        "  else\n"
        "    ()\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Compare a lookback code to a sorted, zero-terminated list of pairs at\n"
        " : the given index into the LOOKBACK table. A matching first code in a\n"
        " : pair will cause its second code to be returned. The list is sorted in\n"
        " : descending order of first codes, so it is safe to stop when the first\n"
        " : code is less than what is searched for.\n"
        " :\n"
        " : @param $x the lookback code to search for.\n"
        " : @param $i the index into the LOOKBACK table.\n"
        " : @return the new lookback code as the second code from a pair with a\n"
        " : matching first code.\n"
        " :)\n"
        "declare function p:lookback($x as xs:integer, $i as xs:integer)\n"
        "{\n"
        "  let $l := $p:LOOKBACK[$i + 1]\n"
        "  return\n"
        "    if ($l gt $x) then\n"
        "      p:lookback($x, $i + 2)\n"
        "    else if ($l eq $x) then\n"
        "      $p:LOOKBACK[$i + 2]\n"
        "    else\n"
        "      0\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Calculate number of symbols to remove from LR stack for reduction by\n"
        " : walking through lookback codes of reduction and stack entries. A single\n"
        " : invocation combines two of those, more are handled in tail recursion.\n"
        " :\n"
        " : @param $code the reduction lookback code.\n"
        " : @param $count the initial count value.\n"
        " : @param $stack the LR stack.\n"
        " : @param $t the stack running index.\n"
        " : @return the initial count value, increased by the number of calculations\n"
        " : yielding a non-zero lookback code.\n"
        " :)\n"
        "declare function p:count($code as xs:integer, $count as xs:integer, $stack as xs:integer*, $t as xs:integer)\n"
        "{\n"
        "  if ($t lt 0) then\n"
        "    $count\n"
        "  else\n"
        "    let $code := p:lookback($stack[$t + 1], $p:LOOKBACK[$code + 1])\n"
        "    return\n"
        "      if ($code eq 0) then\n"
        "        $count\n"
        "      else\n"
        "        p:count($code, $count + 1, $stack, $t - 3)\n"
        "};\n"
        "\n"
        "declare function local:actual-size($s)\n"
        "{\n"
        "  if (empty($s) or exists($s[last()])) then\n"
        "    count($s)\n"
        "  else\n"
        "    local:actual-size(subsequence($s, 1, count($s) - 1))\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Parse input for given target symbol using LR tables. Each invocation\n"
        " : handles one parsing action (shift, reduce, shift+reduce, accept).\n"
        " : Subsequent actions are handled by tail-recursion.\n"
        " :\n"
        " : @param $input the input string.\n"
        " : @param $target the target symbol code.\n"
        " : @param $state the LR parser state number.\n"
        " : @param $action the action code.\n"
        " : @param $nonterminal current nonterminal, -1 if processing a terminal.\n"
        " : @param $bw the whitespace begin input index.\n"
        " : @param $bs the symbol begin input index.\n"
        " : @param $es the symbol end input index.\n"
        " : @param $stack the LR stack.\n"
        " : @param $lexer-state lexer state, error indicator, and result stack.\n"
        " : @return the updated state.\n"
        " :)\n"
        "declare function p:parse($input as xs:string,\n"
        "                         $target as xs:integer,\n"
        "                         $state as xs:integer,\n"
        "                         $action as xs:integer,\n"
        "                         $nonterminal as xs:integer,\n"
        "                         $bw as xs:integer,\n"
        "                         $bs as xs:integer,\n"
        "                         $es as xs:integer,\n"
        "                         $stack as xs:integer*,\n"
        "                         $lexer-state as item()+)\n"
        "{\n"
        "  trace\n"
        "  (\n"
        "    (),\n"
        "    concat\n"
        "    (\n"
        "      \"count($stack): \", count($stack), \", \",\n"
        "      \"actual size: \", local:actual-size($stack)\n"
        "    )\n"
        "  ),\n"
        "\n"
        "  if ($lexer-state[$p:error]) then\n"
        "    $lexer-state\n"
        "  else\n"
        "    let $argument := $action idiv 128\n"
        "    let $lookback := ($action idiv 8) mod 16\n"
        "    let $action := $action mod 8\n"
        "    return\n"
        "      if ($action eq 6) then (: SHIFT+ACCEPT :)\n"
        "        $lexer-state\n"
        "      else\n"
        "        let $shift-reduce-symbols :=\n"
        "          if ($action eq 1) then (: SHIFT :)\n"
        "            ($argument, -1, -1)\n"
        "          else if ($action eq 2) then (: REDUCE :)\n"
        "            (-1, $argument, $lookback)\n"
        "          else if ($action eq 3) then (: REDUCE+LOOKBACK :)\n"
        "            (-1, $argument, p:count($lookback, 0, $stack, count($stack) - 1))\n"
        "          else if ($action eq 4) then (: SHIFT+REDUCE :)\n"
        "            ($state, $argument, $lookback + 1)\n"
        "          else if ($action eq 5) then (: SHIFT+REDUCE+LOOKBACK :)\n"
        "            ($state, $argument, p:count($lookback, 1, $stack, count($stack) - 1))\n"
        "          else (: ERROR :)\n"
        "            (-1, -1, -1)\n"
        "        let $shift := $shift-reduce-symbols[1]\n"
        "        let $reduce := $shift-reduce-symbols[2]\n"
        "        let $symbols := $shift-reduce-symbols[3]\n"
        "        let $es := if ($shift lt 0 or $nonterminal ge 0) then $es else $lexer-state[$p:e1]\n"
        "        let $lexer-state :=\n"
        "          if ($shift lt 0 or $nonterminal ge 0) then\n"
        "            $lexer-state\n"
        "          else\n"
        "            p:consume\n"
        "            (\n"
        "              $lexer-state[$p:l1],\n"
        "              $input,\n"
        "              $lexer-state\n"
        "            )\n"
        "        let $stack :=\n"
        "          if ($shift lt 0) then\n"
        "            $stack\n"
        "          else\n"
        "            ($stack, if ($nonterminal lt 0) then $lexer-state[$p:b0] else $bs, $state, $lookback)\n"
        "        let $state := if ($shift lt 0) then $state else $shift\n"
        "        return\n"
        "          if ($reduce lt 0) then\n"
        "            if ($shift lt 0) then\n"
        "            (\n"
        "              subsequence($lexer-state, 1, $p:error - 1),\n"
        "              element error\n"
        "              {\n"
        "                attribute b {$lexer-state[$p:b1]},\n"
        "                attribute e {$lexer-state[$p:e1]},\n"
        "                attribute o {$lexer-state[$p:l1]},\n"
        "                attribute s {$p:TOKENSET[$state + 1] + 1}\n"
        "              },\n"
        "              subsequence($lexer-state, $p:error + 1)\n"
        "            )\n"
        "            else\n"
        "              let $lexer-state := p:predict($input, $lexer-state, $state)\n"
        "              return p:parse($input, $target, $state, $lexer-state[$p:lk], -1, $bw, $bs, $es, $stack, $lexer-state)\n"
        "          else\n"
        "            let $state := if ($symbols gt 0) then $stack[last() - 3 * $symbols + 2] else $state\n"
        "            let $bs := if ($symbols gt 0) then $stack[last() - 3 * $symbols + 1] else $lexer-state[$p:b1]\n"
        "            let $es := if ($symbols gt 0) then $es else $bs\n"
        "            let $stack := if ($symbols gt 0) then subsequence($stack, 1, count($stack) - 3 * $symbols) else $stack\n"
        "            let $accept := empty($stack) and $reduce eq $target\n"
        "            let $bs := if ($accept) then $bw else $bs\n"
        "            let $es := if ($accept) then $lexer-state[$p:b1] else $es\n"
        "            let $bw := if ($accept) then $es else $bw\n"
        "            let $index := if ($accept) then $p:result else p:first-child-node-index($lexer-state, count($lexer-state) + 1, $symbols)\n"
        "            let $lexer-state :=\n"
        "            (\n"
        "              subsequence($lexer-state, 1, $index - 1),\n"
        "              element {$p:NONTERMINAL[$reduce + 1]}\n"
        "              {\n"
        "                (: bs, es :)\n"
        "                subsequence($lexer-state, $index)\n"
        "              }\n"
        "            )\n"
        "            return p:parse($input, $target, $state, p:goto($reduce, $state), $reduce, $bw, $bs, $es, $stack, $lexer-state)\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Decrement given index by the given number of elements on the result\n"
        " : stack, skipping any non-element nodes.\n"
        " :\n"
        " : @param $state lexer state, error indicator, and result stack.\n"
        " : @param $index the index into the result stack.\n"
        " : @param $element-count the number of elements to be handled.\n"
        " : @return the decremented index.\n"
        " :)\n"
        "declare function p:first-child-node-index($state as item()+,\n"
        "                                          $index as xs:integer,\n"
        "                                          $element-count as xs:integer)\n"
        "{\n"
        "  if ($element-count eq 0) then\n"
        "    $index\n"
        "  else\n"
        "    let $index := $index - 1\n"
        "    let $element-count := $element-count - (if ($state[$index] instance of element()) then 1 else 0)\n"
        "    return p:first-child-node-index($state, $index, $element-count)\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Create a textual error message from a parsing error.\n"
        " :\n"
        " : @param $input the input string.\n"
        " : @param $error the parsing error descriptor.\n"
        " : @return the error message.\n"
        " :)\n"
        "declare function p:error-message($input as xs:string, $error as element(error)) as xs:string\n"
        "{\n"
        "  let $begin := xs:integer($error/@b)\n"
        "  let $context := string-to-codepoints(substring($input, 1, $begin - 1))\n"
        "  let $linefeeds := index-of($context, 10)\n"
        "  let $line := count($linefeeds) + 1\n"
        "  let $column := ($begin - $linefeeds[last()], $begin)[1]\n"
        "  return\n"
        "    string-join\n"
        "    (\n"
        "      (\n"
        "        if ($error/@o) then\n"
        "          (\"syntax error, found \", $p:TOKEN[$error/@o + 1])\n"
        "        else\n"
        "          \"lexical analysis failed\",\n"
        "        \"&#10;while expecting \",\n"
        "        if ($error/@x) then\n"
        "          $p:TOKEN[$error/@x + 1]\n"
        "        else\n"
        "          let $expected := p:expected-token-set($error/@s)\n"
        "          return\n"
        "          (\n"
        "            \"[\"[exists($expected[2])],\n"
        "            string-join($expected, \", \"),\n"
        "            \"]\"[exists($expected[2])]\n"
        "          ),\n"
        "        \"&#10;\",\n"
        "        if ($error/@o or $error/@e = $begin) then\n"
        "          ()\n"
        "        else\n"
        "          (\"after successfully scanning \", string($error/@e - $begin), \" characters beginning \"),\n"
        "        \"at line \", string($line), \", column \", string($column), \":&#10;\",\n"
        "        \"...\", substring($input, $begin, 64), \"...\"\n"
        "      ),\n"
        "      \"\"\n"
        "    )\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Consume one token, i.e. compare lookahead token 1 with expected\n"
        " : token and in case of a match, shift lookahead tokens down such that\n"
        " : l1 becomes the current token, and higher lookahead tokens move down.\n"
        " : When lookahead token 1 does not match the expected token, raise an\n"
        " : error by saving the expected token code in the error field of the\n"
        " : lexer state.\n"
        " :\n"
        " : @param $code the expected token.\n"
        " : @param $input the input string.\n"
        " : @param $state lexer state, error indicator, and result stack.\n"
        " : @return the updated state.\n"
        " :)\n"
        "declare function p:consume($code as xs:integer, $input as xs:string, $state as item()+) as item()+\n"
        "{\n"
        "  if ($state[$p:error]) then\n"
        "    $state\n"
        "  else if ($state[$p:l1] eq $code) then\n"
        "  (\n"
        "    subsequence($state, $p:l1, 3),\n"
        "    0, 0, 0,\n"
        "    subsequence($state, 7),\n"
        "    let $begin := $state[$p:e0]\n"
        "    let $end := $state[$p:b1]\n"
        "    where $begin ne $end\n"
        "    return\n"
        "      text\n"
        "      {\n"
        "        substring($input, $begin, $end - $begin)\n"
        "      },\n"
        "    let $token := $p:TOKEN[1 + $state[$p:l1]]\n"
        "    let $name := if (starts-with($token, \"'\")) then \"TOKEN\" else $token\n"
        "    let $begin := $state[$p:b1]\n"
        "    let $end := $state[$p:e1]\n"
        "    return\n"
        "      element {$name}\n"
        "      {\n"
        "        substring($input, $begin, $end - $begin)\n"
        "      }\n"
        "  )\n"
        "  else\n"
        "  (\n"
        "    subsequence($state, 1, $p:error - 1),\n"
        "    element error\n"
        "    {\n"
        "      attribute b {$state[$p:b1]},\n"
        "      attribute e {$state[$p:e1]},\n"
        "      if ($state[$p:l1] lt 0) then\n"
        "        attribute s {- $state[$p:l1]}\n"
        "      else\n"
        "        (attribute o {$state[$p:l1]}, attribute x {$code})\n"
        "    },\n"
        "    subsequence($state, $p:error + 1)\n"
        "  )\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Lookahead one token on level 1.\n"
        " :\n"
        " : @param $set the code of the DFA entry state for the set of valid tokens.\n"
        " : @param $input the input string.\n"
        " : @param $state lexer state, error indicator, and result stack.\n"
        " : @return the updated state.\n"
        " :)\n"
        "declare function p:lookahead1($set as xs:integer, $input as xs:string, $state as item()+) as item()+\n"
        "{\n"
        "  if ($state[$p:l1] ne 0) then\n"
        "    $state\n"
        "  else\n"
        "    let $match :=\n"
        "        p:match($input, $state[$p:e0], $set)\n"
        "    return\n"
        "    (\n"
        "      $match[1],\n"
        "      subsequence($state, $p:b0, 2),\n"
        "      $match,\n"
        "      subsequence($state, 7)\n"
        "    )\n"
        "};\n"
        "\n"
        "(:~\n"
        " : Parse start symbol S from given string.\n"
        " :\n"
        " : @param $s the string to be parsed.\n"
        " : @return the result as generated by parser actions.\n"
        " :)\n"
        "declare function p:parse-S($s as xs:string) as item()*\n"
        "{\n"
        "  let $state := (0, 1, 1, 0, 0, 0, false())\n"
        "  let $state := p:predict($s, $state, 0)\n"
        "  let $state := p:parse($s, 0, 0, $state[$p:lk], -1, 1, 1, 1, (), $state)\n"
        "  let $error := $state[$p:error]\n"
        "  return\n"
        "    if ($error) then\n"
        "      element ERROR {$error/@*, p:error-message($s, $error)}\n"
        "    else\n"
        "      subsequence($state, $p:result)\n"
        "};\n"
        "\n"
        "p:parse-S(\"adadadadadad\")\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "RexParser.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert(
                            Res,
                            "every $i in (1,3,5,7,9,11) satisfies $result/self::S/*[$i][self::B[TOKEN='a']]"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "every $i in (2,4,6,8,10,12) satisfies $result/self::S/*[$i][self::TOKEN='d']"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/self::S/*[13][self::EOF]") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
