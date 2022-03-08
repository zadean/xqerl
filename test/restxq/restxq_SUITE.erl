-module('restxq_SUITE').

-include_lib("common_test/include/ct.hrl").

-compile(export_all).

suite() -> [{timetrap, {seconds, 180}}].

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    __BaseDir = filename:join(DD, "restxq"),
    Tests = filename:join(__BaseDir, "tests.xqm"),
    _ = xqerl:compile(Tests),
    [{base_dir, __BaseDir} | Config].

groups() ->
    [
        {group_all, [parallel], [
            get_1,
            get_2,
            get_3,
            get_4,
            get_5,
            head_1,
            head_2,
            head_3,
            post_1,
            post_2,
            post_3,
            post_4,
            post_5,
            post_6,
            options_1,
            options_2,
            options_3,
            post_get_1
        ]}
    ].

all() ->
    [{group, group_all}].

get_1(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "  http:send-request(\n"
        "    <http:request method='get' />,\n"
        "    'http://localhost:8081/test/get/xml'\n"
        "  )\n"
        "let $h := $resp[1]\n"
        "let $s := $h/http:header[@name = 'server']/@value\n"
        "let $b := $resp[2]\n"
        "return\n"
        "$s = 'xqerl' and $h/@status = '200' and $b/root/a = 'text'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_1.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

get_2(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "  let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='get' />,\n"
        "      'http://localhost:8081/test/get/csv'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b => starts-with('\"headA\"')",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_2.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

get_3(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "  let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='get' />,\n"
        "      'http://localhost:8081/test/get/html'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $s := $h/http:header[@name = 'content-type']/@value\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b => normalize-space() = 'hello' and $s = 'text/html'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_3.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

get_4(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "  let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='get' />,\n"
        "      'http://localhost:8081/test/get/json'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $s := $h/http:header[@name = 'content-type']/@value\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $s = 'application/json'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_4.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

get_5(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "  let $body := ('abc123' cast as xs:hexBinary) cast as xs:base64Binary\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='get' />,\n"
        "      'http://localhost:8081/test/get/zip'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $s := $h/http:header[@name = 'content-type']/@value\n"
        "  let $b := $resp[2]\n"
        "  \n"
        "  return\n"
        "  $h/@status = '200' and $s = 'application/octet-stream' and $b = $body",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_5.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

head_1(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='head' />,\n"
        "      'http://localhost:8081/test/get/xml'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $s := $h/http:header[@name = 'server']/@value\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $s = 'xqerl' and $h/@status = '200' and empty($b)",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "head_1.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

head_2(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='head' />,\n"
        "      'http://localhost:8081/test/head/xml'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and empty($b)",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "head_2.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

head_3(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='head' />,\n"
        "      'http://localhost:8081/test/head/redirect'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $s := $h/http:header[@name = 'content-type']/@value\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and empty($b) and $s = 'text/html'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "head_3.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_1(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $body := <root><a>text</a></root>\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "          <http:request method='post'>\n"
        "            <http:body media-type='application/xml'/>\n"
        "          </http:request>,\n"
        "      'http://localhost:8081/test/post/xml',\n"
        "      $body\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b/got/* = $body",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_1.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_2(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $body := '\"headA\",\"headB\",\"headC\"&#10;\"A\",\"B\",3&#10;\"C\",\"D\",6'\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "          <http:request method='post'>\n"
        "            <http:body media-type='text/csv'/>\n"
        "          </http:request>,\n"
        "      'http://localhost:8081/test/post/csv',\n"
        "      $body\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and csv:parse($b/got) = csv:parse($body)",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_2.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_3(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $body := <html><body><p>hello</p></body></html>\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "          <http:request method='post'>\n"
        "            <http:body media-type='text/html'/>\n"
        "          </http:request>,\n"
        "      'http://localhost:8081/test/post/html',\n"
        "      $body\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b/got/* = $body",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_3.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_4(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $body := '{\"map\":[true, 123, \"string\"]}'\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "          <http:request method='post'>\n"
        "            <http:body media-type='application/json'/>\n"
        "          </http:request>,\n"
        "      'http://localhost:8081/test/post/json',\n"
        "      $body\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b/got/text() = ($body => parse-json() => map:keys())",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_4.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_5(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $body := ('abc123' cast as xs:hexBinary) cast as xs:base64Binary\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "          <http:request method='post'>\n"
        "            <http:body media-type='application/octet-stream'/>\n"
        "          </http:request>,\n"
        "      'http://localhost:8081/test/post/zip',\n"
        "      $body\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b = $body",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_5.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_6(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $body := 'message=m1&amp;message2=m2'\n"
        "  let $resp := \n"
        "    http:send-request(\n"
        "          <http:request method='post'>\n"
        "            <http:body media-type='application/x-www-form-urlencoded'/>\n"
        "          </http:request>,\n"
        "      'http://localhost:8081/test/post/form',\n"
        "      $body\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $b := $resp[2]\n"
        "  return\n"
        "  $h/@status = '200' and $b/got/m1 = 'm1' and $b/got/m2 = 'm2'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_6.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

options_1(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='options' />,\n"
        "      'http://localhost:8081/test/head/xml'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $o := $h/http:header[@name = 'allow']/@value\n"
        "  return\n"
        "  $h/@status = '200' and $o eq 'HEAD,OPTIONS'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "options_1.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

options_2(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='options' />,\n"
        "      'http://localhost:8081/test/options/xml'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $o := $h/http:header[@name = 'allow']/@value\n"
        "  return\n"
        "  $h/@status = '200' and $o eq 'GET,HEAD'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "options_2.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

options_3(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $resp := \n"
        "    http:send-request(\n"
        "      <http:request method='options' />,\n"
        "      'http://localhost:8081/test/post/xml'\n"
        "    )\n"
        "  let $h := $resp[1]\n"
        "  let $o := $h/http:header[@name = 'allow']/@value\n"
        "  return\n"
        "  $h/@status = '200' and $o eq 'OPTIONS,POST'",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "options_3.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.

post_get_1(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $host := 'http://localhost:8081'\n"
        "  , $rand := random:integer(999999)\n"
        "  , $orig := <doc id='{$rand}'/>\n"
        "  , $post := http:send-request(\n"
        "               <http:request method='post'>\n"
        "                 <http:body media-type='text/xml'/>\n"
        "               </http:request>,\n"
        "               $host || '/test/post/get?id=' || $rand,\n"
        "               $orig\n"
        "             )\n"
        "  , $loc := $post[1][@status = '201']/http:header[lower-case(@name) = 'location']/@value\n"
        "return\n"
        "  if (empty($loc)) then\n"
        "    false()\n"
        "  else\n"
        "    let $get := http:send-request(\n"
        "                 <http:request method='get' />,\n"
        "                 $host || $loc)\n"
        "    return\n"
        "      if ($get[2] = $orig) then\n"
        "        if (http:send-request(<http:request method='delete' />,\n"
        "                              $host || $loc)[1]/@status = '204') then\n"
        "          let $self := actor:self()\n"
        "          let $get := function(){\n"
        "            actor:send($self, http:send-request(<http:request method='get' />,\n"
        "                                                $host || $loc)[1]/@status = '404')\n"
        "          }\n"
        "          let $from := actor:spawn($get)\n"
        "          return\n"
        "          actor:receive($from)\n"
        "        else\n"
        "          false()\n"
        "      else\n"
        "        false()",
    io:format("Qry: ~p~n", [Qry]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_get_1.xq"), Qry),
            xqerl:run(Mod, #{})
        of
            D -> D
        catch
            _:E -> E
        end,
    case xqerl_test:assert_true(Res) of
        true -> {comment, "Correct result"};
        {false, F} -> ct:fail(F)
    end.
