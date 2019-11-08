-module('restxq_SUITE').

-include_lib("common_test/include/ct.hrl").

-compile(export_all).

suite() -> [{timetrap,{seconds, 180}}].

end_per_suite(_Config) -> 
    ct:timetrap({seconds,60}), 
    xqerl_code_server:unload(all).

init_per_suite(Config) -> 
    {ok,_} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    __BaseDir = filename:join(DD, "restxq"),
    Tests = filename:join(__BaseDir, "tests.xqm"),
    _ = xqerl:compile(Tests),
    [{base_dir, __BaseDir}|Config].

groups() -> [
   {group_all, [parallel], 
    [get_1, get_2, get_3, get_4, get_5,
     head_1, head_2, head_3,
     post_1, post_2, post_3, post_4, post_5, post_6,
     options_1, options_2,
     post_get_1
    ]}].

all() -> 
    [{group, group_all}].

get_1(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $resp := 
  http:send-request(
    <http:request method='get' />,
    'http://localhost:8081/test/get/xml'
  )
let $h := $resp[1]
let $s := $h/http:header[@name = 'server']/@value
let $b := $resp[2]
return
$s = 'xqerl' and $h/@status = '200' and $b/root/a = 'text'", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_1.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

get_2(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/csv'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b => starts-with('\"headA\"')", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_2.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

get_3(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/html'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  return
  $h/@status = '200' and $b => normalize-space() = 'hello' and $s = 'text/html'", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_3.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

get_4(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/json'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  return
  $h/@status = '200' and $s = 'application/json'", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_4.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

get_5(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  let $body := ('abc123' cast as xs:hexBinary) cast as xs:base64Binary
  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/zip'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  
  return
  $h/@status = '200' and $s = 'application/octet-stream' and $b = $body", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "get_5.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

head_1(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $resp := 
    http:send-request(
      <http:request method='head' />,
      'http://localhost:8081/test/get/xml'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'server']/@value
  let $b := $resp[2]
  return
  $s = 'xqerl' and $h/@status = '200' and empty($b)", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "head_1.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

head_2(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $resp := 
    http:send-request(
      <http:request method='head' />,
      'http://localhost:8081/test/head/xml'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b)", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "head_2.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

head_3(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $resp := 
    http:send-request(
      <http:request method='head' />,
      'http://localhost:8081/test/head/redirect'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b) and $s = 'text/html'", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "head_3.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_1(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $body := <root><a>text</a></root>
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/xml'/>
          </http:request>,
      'http://localhost:8081/test/post/xml',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/* = $body", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_1.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_2(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $body := '\"headA\",\"headB\",\"headC\"&#10;\"A\",\"B\",3&#10;\"C\",\"D\",6'
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='text/csv'/>
          </http:request>,
      'http://localhost:8081/test/post/csv',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and csv:parse($b/got) = csv:parse($body)", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_2.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_3(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $body := <html><body><p>hello</p></body></html>
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='text/html'/>
          </http:request>,
      'http://localhost:8081/test/post/html',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/* = $body", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_3.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_4(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $body := '{\"map\":[true, 123, \"string\"]}'
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/json'/>
          </http:request>,
      'http://localhost:8081/test/post/json',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/text() = ($body => parse-json() => map:keys())", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_4.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_5(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $body := ('abc123' cast as xs:hexBinary) cast as xs:base64Binary
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/octet-stream'/>
          </http:request>,
      'http://localhost:8081/test/post/zip',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b = $body", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_5.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_6(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $body := 'message=m1&amp;message2=m2'
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/x-www-form-urlencoded'/>
          </http:request>,
      'http://localhost:8081/test/post/form',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/m1 = 'm1' and $b/got/m2 = 'm2'", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_6.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

options_1(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $resp := 
    http:send-request(
      <http:request method='options' />,
      'http://localhost:8081/test/head/xml'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b)", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "options_1.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

options_2(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $resp := 
    http:send-request(
      <http:request method='options' />,
      'http://localhost:8081/test/options/xml'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b)", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "options_2.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

post_get_1(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $host := 'http://localhost:8081'
      , $rand := random:integer(999999)
      , $orig := <doc id='{$rand}'/>
      , $post := http:send-request(
                   <http:request method='post'>
                     <http:body media-type='text/xml'/>
                   </http:request>,
                   $host || '/test/post/get?id=' || $rand,
                   $orig
                 )
      , $loc := $post[1][@status = '201']/http:header[lower-case(@name) = 'location']/@value
    return
      if (empty($loc)) then
        false()
      else
        let $get := http:send-request(
                     <http:request method='get' />,
                     $host || $loc)
        return
          if ($get[2] = $orig) then
            if (http:send-request(<http:request method='delete' />,
                                  $host || $loc)[1]/@status = '204') then
              http:send-request(
                     <http:request method='get' />,
                     $host || $loc)[1]/@status = '404'
            else
              false()
          else
            false()", 
   io:format("Qry: ~p~n",[Qry]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "post_get_1.xq"), Qry),
             xqerl:run(Mod,#{}) of D -> D catch _:E -> E end,
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Correct result"};
      {false, F} -> ct:fail(F) 
   end.

