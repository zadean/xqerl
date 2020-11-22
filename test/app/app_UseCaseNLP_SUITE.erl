-module('app_UseCaseNLP_SUITE').

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

-export(['UseCaseNLP-001'/1]).
-export(['UseCaseNLP-002'/1]).
-export(['UseCaseNLP-003'/1]).
-export(['UseCaseNLP-004'/1]).
-export(['UseCaseNLP-005'/1]).
-export(['UseCaseNLP-006a'/1]).
-export(['UseCaseNLP-006b'/1]).

suite() -> [{timetrap, {seconds, 180}}].

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
        {group_0, [parallel], [
            'UseCaseNLP-001',
            'UseCaseNLP-002',
            'UseCaseNLP-003',
            'UseCaseNLP-004',
            'UseCaseNLP-005',
            'UseCaseNLP-006a',
            'UseCaseNLP-006b'
        ]}
    ].

environment('speech-representation.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseNLP/speech-representation.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "speech-representation.json"))}
        ]},
        {modules, []}
    ].

'UseCaseNLP-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          <s>\n"
        "           {\n"
        "            for $w in json-doc('speech-representation.json')?*\n"
        "            return <w pos=\"{ $w(2) }\">{ $w(1) }</w>\n"
        "           }\n"
        "          </s>      \n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-001.xq"), Qry1),
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
                "<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseNLP-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          declare variable $index := map { \"pos\" : 2, \"lemma\" : 1 };\n"
        "          <s>\n"
        "           {\n"
        "            for $w in json-doc('speech-representation.json')?*\n"
        "            return <w pos=\"{ $w($index(\"pos\")) }\">{ $w($index(\"lemma\")) }</w>\n"
        "           }\n"
        "          </s>			  \n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-002.xq"), Qry1),
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
                "<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseNLP-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          array {\n"
        "            for $w in json-doc('speech-representation.json')?*\n"
        "            return map { \"pos\" : $w(2), \"lemma\" : $w(1) }\n"
        "          }\n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\n"
                "        	[ map { \"pos\" : \"DT\", \"lemma\" : \"A\" }, \n"
                "        	  map { \"pos\" : \"NN\", \"lemma\" : \"bride\" }, \n"
                "        	  map { \"pos\" : \",\", \"lemma\" : \",\" }, \n"
                "        	  map { \"pos\" : \"PRP\", \"lemma\" : \"you\" }, \n"
                "        	  map { \"pos\" : \"VBP\", \"lemma\" : \"know\" }, \n"
                "        	  map { \"pos\" : \",\", \"lemma\" : \",\" }, \n"
                "        	  map { \"pos\" : \"MD\", \"lemma\" : \"must\" }, \n"
                "        	  map { \"pos\" : \"VB\", \"lemma\" : \"appear\" }, \n"
                "        	  map { \"pos\" : \"IN\", \"lemma\" : \"like\" }, \n"
                "        	  map { \"pos\" : \"DT\", \"lemma\" : \"a\" }, \n"
                "        	  map { \"pos\" : \"NN\", \"lemma\" : \"bride\" }, \n"
                "        	  map { \"pos\" : \",\", \"lemma\" : \",\" }, \n"
                "        	  map { \"pos\" : \"CC\", \"lemma\" : \"but\" }, \n"
                "        	  map { \"pos\" : \"PRP$\", \"lemma\" : \"my\" }, \n"
                "        	  map { \"pos\" : \"JJ\", \"lemma\" : \"natural\" }, \n"
                "        	  map { \"pos\" : \"NN\", \"lemma\" : \"taste\" }, \n"
                "        	  map { \"pos\" : \"VBZ\", \"lemma\" : \"is\" }, \n"
                "        	  map { \"pos\" : \"DT\", \"lemma\" : \"all\" }, \n"
                "        	  map { \"pos\" : \"IN\", \"lemma\" : \"for\" }, \n"
                "        	  map { \"pos\" : \"NN\", \"lemma\" : \"simplicity\" }, \n"
                "        	  map { \"pos\" : \":\", \"lemma\" : \";\" }, \n"
                "        	  map { \"pos\" : \"DT\", \"lemma\" : \"a\" }, \n"
                "        	  map { \"pos\" : \"JJ\", \"lemma\" : \"simple\" }, \n"
                "        	  map { \"pos\" : \"NN\", \"lemma\" : \"style\" }, \n"
                "        	  map { \"pos\" : \"IN\", \"lemma\" : \"of\" }, \n"
                "        	  map { \"pos\" : \"NN\", \"lemma\" : \"dress\" }, \n"
                "        	  map { \"pos\" : \"VBZ\", \"lemma\" : \"is\" }, \n"
                "        	  map { \"pos\" : \"RB\", \"lemma\" : \"so\" }, \n"
                "        	  map { \"pos\" : \"RB\", \"lemma\" : \"infinitely\" }, \n"
                "        	  map { \"pos\" : \"JJ\", \"lemma\" : \"preferable\" }, \n"
                "        	  map { \"pos\" : \"TO\", \"lemma\" : \"to\" }, \n"
                "        	  map { \"pos\" : \"VB\", \"lemma\" : \"finery\" }, \n"
                "        	  map { \"pos\" : \".\", \"lemma\" : \".\" } \n"
                "        	]\n"
                "        "
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseNLP-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          for $word in json-doc('speech-representation.json')?*\n"
        "          let $pos := $word(2)\n"
        "          let $lexeme := $word(1)\n"
        "          where $pos = (\"JJ\", \"NN\", \"RB\", \"VB\")\n"
        "          group by $pos\n"
        "          order by $pos\n"
        "          return \n"
        "            <pos name=\"{$pos}\">\n"
        "              { \n"
        "                for $l in distinct-values($lexeme)\n"
        "                return <lexeme>{ $l }</lexeme>\n"
        "              }\n"
        "            </pos>\n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-004.xq"), Qry1),
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
                "<pos name=\"JJ\"><lexeme>natural</lexeme><lexeme>simple</lexeme><lexeme>preferable</lexeme></pos><pos name=\"NN\"><lexeme>bride</lexeme><lexeme>taste</lexeme><lexeme>simplicity</lexeme><lexeme>style</lexeme><lexeme>dress</lexeme></pos><pos name=\"RB\"><lexeme>so</lexeme><lexeme>infinitely</lexeme></pos><pos name=\"VB\"><lexeme>appear</lexeme><lexeme>finery</lexeme></pos>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseNLP-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          declare function local:words-only($s)\n"
        "          {\n"
        "            for $w in $s\n"
        "            where not($w(2) = (\".\", \",\", \";\", \":\"))\n"
        "            return $w(1)\n"
        "          };\n"
        "          \n"
        "          for sliding window $w in local:words-only(json-doc('speech-representation.json')?*)\n"
        "              start at $i when true()\n"
        "              only end at $j when $j - $i eq 2\n"
        "          return \n"
        "              array { $w }\n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\n"
                "           \n"
                "            ([ \"A\", \"bride\", \"you\" ], \n"
                "            [ \"bride\", \"you\", \"know\" ], \n"
                "            [ \"you\", \"know\", \"must\" ], \n"
                "            [ \"know\", \"must\", \"appear\" ], \n"
                "            [ \"must\", \"appear\", \"like\" ], \n"
                "            [ \"appear\", \"like\", \"a\" ], \n"
                "            [ \"like\", \"a\", \"bride\" ], \n"
                "            [ \"a\", \"bride\", \"but\" ], \n"
                "            [ \"bride\", \"but\", \"my\" ], \n"
                "            [ \"but\", \"my\", \"natural\" ], \n"
                "            [ \"my\", \"natural\", \"taste\" ], \n"
                "            [ \"natural\", \"taste\", \"is\" ], \n"
                "            [ \"taste\", \"is\", \"all\" ], \n"
                "            [ \"is\", \"all\", \"for\" ], \n"
                "            [ \"all\", \"for\", \"simplicity\" ], \n"
                "            [ \"for\", \"simplicity\", \"a\" ], \n"
                "            [ \"simplicity\", \"a\", \"simple\" ], \n"
                "            [ \"a\", \"simple\", \"style\" ], \n"
                "            [ \"simple\", \"style\", \"of\" ], \n"
                "            [ \"style\", \"of\", \"dress\" ], \n"
                "            [ \"of\", \"dress\", \"is\" ], \n"
                "            [ \"dress\", \"is\", \"so\" ], \n"
                "            [ \"is\", \"so\", \"infinitely\" ], \n"
                "            [ \"so\", \"infinitely\", \"preferable\" ], \n"
                "            [ \"infinitely\", \"preferable\", \"to\" ], \n"
                "            [ \"preferable\", \"to\", \"finery\" ])\n"
                "          \n"
                "        "
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseNLP-006a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)\n"
        "          {\n"
        "            array { $s[$p(.)] },   array { $s[not($p(.))] }\n"
        "          };\n"
        "          \n"
        "          let $f := function($a) { starts-with($a(2), \"VB\") }\n"
        "          return\n"
        "            local:filter(json-doc('speech-representation.json')?*, $f)			  \n"
        "        \n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-006a.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\n"
                "           \n"
                "            [[\"know\", \"VBP\"], [\"appear\", \"VB\"], [\"is\", \"VBZ\"], [\"is\", \"VBZ\"], [\"finery\", \"VB\"]],\n"
                "             [[\"A\", \"DT\"], [\"bride\", \"NN\"], [\",\", \",\"], [\"you\", \"PRP\"], [\",\", \",\"], [\"must\", \"MD\"], \n"
                "              [\"like\", \"IN\"], [\"a\", \"DT\"], [\"bride\", \"NN\"], [\",\", \",\"], [\"but\", \"CC\"], [\"my\", \"PRP$\"], \n"
                "              [\"natural\", \"JJ\"], [\"taste\", \"NN\"], [\"all\", \"DT\"], [\"for\", \"IN\"], [\"simplicity\", \"NN\"], \n"
                "              [\";\", \":\"], [\"a\", \"DT\"], [\"simple\", \"JJ\"], [\"style\", \"NN\"], [\"of\", \"IN\"], [\"dress\", \"NN\"], \n"
                "              [\"so\", \"RB\"], [\"infinitely\", \"RB\"], [\"preferable\", \"JJ\"], [\"to\", \"TO\"], [\".\", \".\"]]\n"
                "          \n"
                "        "
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseNLP-006b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "          declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)\n"
        "          {\n"
        "           map {\n"
        "              true() : array { $s[$p(.)] },   \n"
        "              false() : array { $s[not($p(.))] }\n"
        "            }\n"
        "          };					\n"
        "          let $f := function($a) { starts-with($a(2), \"VB\") }\n"
        "          return\n"
        "            local:filter(json-doc('speech-representation.json')?*, $f)\n"
        "  			  \n"
        "			",
    {Env, Opts} = xqerl_test:handle_environment(
        environment('speech-representation.json', __BaseDir)
    ),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseNLP-006b.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\n"
                "           \n"
                "              map { \n"
                "              true() : \n"
                "                         [ [ \"know\", \"VBP\" ], [ \"appear\", \"VB\" ], [ \"is\", \"VBZ\" ],\n"
                "                           [\"is\", \"VBZ\" ], [ \"finery\", \"VB\" ] ],\n"
                "              \n"
                "              false() :  \n"
                "              \n"
                "                         [ [ \"A\", \"DT\" ], [\"bride\", \"NN\" ], [ \",\", \",\" ], \n"
                "                           [ \"you\", \"PRP\" ], [ \",\", \",\" ], [ \"must\", \"MD\" ], \n"
                "                           [ \"like\", \"IN\" ], [ \"a\", \"DT\" ], [ \"bride\", \"NN\" ], \n"
                "                           [ \",\", \",\" ], [ \"but\", \"CC\" ], [ \"my\", \"PRP$\" ], \n"
                "                           [ \"natural\", \"JJ\" ], [ \"taste\", \"NN\" ], [ \"all\", \"DT\"],\n"
                "                           [ \"for\", \"IN\" ], [ \"simplicity\", \"NN\" ], [ \";\", \":\" ],\n"
                "                           [ \"a\", \"DT\" ], [ \"simple\", \"JJ\" ], [ \"style\", \"NN\" ], \n"
                "                           [ \"of\", \"IN\" ], [ \"dress\", \"NN\" ], [ \"so\", \"RB\" ], \n"
                "                           [ \"infinitely\", \"RB\" ], [ \"preferable\", \"JJ\" ], \n"
                "                           [ \"to\", \"TO\" ], [ \".\", \".\" ] ] \n"
                "              }\n"
                "          \n"
                "        "
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
