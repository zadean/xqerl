-module('prod_EQName_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['eqname-001'/1]).
-export(['eqname-002'/1]).
-export(['eqname-003'/1]).
-export(['eqname-004'/1]).
-export(['eqname-005'/1]).
-export(['eqname-006'/1]).
-export(['eqname-007'/1]).
-export(['eqname-008'/1]).
-export(['eqname-009'/1]).
-export(['eqname-010'/1]).
-export(['eqname-011'/1]).
-export(['eqname-012'/1]).
-export(['eqname-013'/1]).
-export(['eqname-014'/1]).
-export(['eqname-015'/1]).
-export(['eqname-016'/1]).
-export(['eqname-017'/1]).
-export(['eqname-018'/1]).
-export(['eqname-019'/1]).
-export(['eqname-020'/1]).
-export(['eqname-021'/1]).
-export(['eqname-022'/1]).
-export(['eqname-023'/1]).
-export(['eqname-024'/1]).
-export(['eqname-025'/1]).
-export(['eqname-026'/1]).
-export(['eqname-027'/1]).
-export(['eqname-028'/1]).
-export(['eqname-029'/1]).
-export(['eqname-029p'/1]).
-export(['eqname-030'/1]).
-export(['eqname-031'/1]).
-export(['eqname-032'/1]).
-export(['eqname-033'/1]).
-export(['eqname-034'/1]).
-export(['eqname-901'/1]).
-export(['eqname-902'/1]).
-export(['eqname-903'/1]).
-export(['eqname-904'/1]).
-export(['eqname-905'/1]).
-export(['eqname-906'/1]).
-export(['eqname-907'/1]).
-export(['eqname-908'/1]).
-export(['eqname-909'/1]).
-export(['eqname-909p'/1]).
-export(['eqname-910'/1]).
-export(['eqname-911'/1]).
-export(['eqname-912'/1]).
-export(['eqname-913'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'eqname-001', 
'eqname-002', 
'eqname-003', 
'eqname-004', 
'eqname-005', 
'eqname-006', 
'eqname-007', 
'eqname-008', 
'eqname-009', 
'eqname-010', 
'eqname-011', 
'eqname-012', 
'eqname-013', 
'eqname-014', 
'eqname-015', 
'eqname-016', 
'eqname-017', 
'eqname-018', 
'eqname-019', 
'eqname-020', 
'eqname-021', 
'eqname-022', 
'eqname-023', 
'eqname-024', 
'eqname-025', 
'eqname-026', 
'eqname-027', 
'eqname-028', 
'eqname-029', 
'eqname-029p', 
'eqname-030', 
'eqname-031', 
'eqname-032', 
'eqname-033', 
'eqname-034', 
'eqname-901', 
'eqname-902', 
'eqname-903', 
'eqname-904', 
'eqname-905', 
'eqname-906', 
'eqname-907', 
'eqname-908', 
'eqname-909', 
'eqname-909p', 
'eqname-910', 
'eqname-911', 
'eqname-912', 
'eqname-913'
].
environment('auction',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
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
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'eqname-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<my:a xmlns:my=\"http://www.example.com/ns/my\"><my:b>42</my:b></my:a>) / Q{http://www.example.com/ns/my}b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><my:b xmlns:my=\"http://www.example.com/ns/my\">42</my:b></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            declare variable $Q{http://www.example.com/ns/my}var := 12; 
            <out>{$Q{http://www.example.com/ns/my}var}</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>12</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function Q{http://www.example.com/ns/my}fn ($a as xs:integer) as xs:integer { $a + 2 }; 
        <out>{Q{http://www.example.com/ns/my}fn(12)}</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>14</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:fn ($a as Q{http://www.w3.org/2001/XMLSchema}integer) as element(Q{http://www.example.com/ns/my}e) { <e xmlns=\"http://www.example.com/ns/my\">{$a}</e> }; <out>{local:fn(12)}</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><e xmlns=\"http://www.example.com/ns/my\">12</e></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare option Q{http://www.example.com/ns}option \"ignore me\"; <a/>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(# Q{http://www.example.com/ns}pragma ignore me #) {<a/>}", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare decimal-format Q{http://www.example.com/ns}format grouping-separator=\"'\"; 
        <a xmlns:ex=\"http://www.example.com/ns\">{format-number(1e9, \"#'###'###'##0.00\", 'ex:format')}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a xmlns:ex=\"http://www.example.com/ns\">1'000'000'000.00</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns\"><ex:b>93.7</ex:b></a>) /Q{http://www&#x2e;example&#x2E;com/ns}b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><ex:b xmlns:ex=\"http://www.example.com/ns\">93.7</ex:b></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ ns\"><ex:b>93.7</ex:b></a>) /Q{ http://www.example.com/ ns }b/namespace-uri() }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>http://www.example.com/ ns</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><ex:b xmlns:ex=\"http://www.example.com/ns?p='23'\">93.7</ex:b></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<my:a xmlns:my=\"http://www.example.com/ns/my\"><my:b>42</my:b></my:a>) / Q{http://www.example.com/ns/my}* + 5 }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>47</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out xmlns=\"http://www.example.com/one\">{ (<my:a xmlns:my=\"http://www.example.com/ns/my\"><my:b>42</my:b><b xmlns=\"\">93</b></my:a>) / Q{}* + 5 }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out xmlns=\"http://www.example.com/one\">98</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string((//Q{http://www.example.com/AuctionWatch}Start)[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $Q{http://example.com/ns}x in 1 to 10 return $Q{http://example.com/ns}x + 1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 3 4 5 6 7 8 9 10 11") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(<a foo=\"3\" bar=\"5\" xml:space=\"preserve\"/> / @Q{}*, '.')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"3.5\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"\"5.3\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string-join(<a foo=\"3\" bar=\"5\" xml:space=\"preserve\"/> / @Q{http://www.w3.org/XML/1998/namespace}*, '.')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"\"preserve\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'eqname-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(<?alpha?>, <?beta?>, <?gamma?>)/processing-instruction(Q{}alpha)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{  http://www.w3.org/2005/xpath-functions/math}pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"math:pi()") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math   }pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"math:pi()") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{  
         http://www.w3.org/2005/xpath-functions/math
         }pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"math:pi()") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'eqname-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $Q{ urn:foo bar }x in 1 to 5 return $Q{urn:foo   bar}x + $Q{urn:foo bar}x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $Q{}T in 1 to 5 return $Q{  }T + $T", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2 4 6 8 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string((//Q{  http://www.example.com/AuctionWatch  }Start)[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(
         /Q{  http://www.example.com/AuctionWatch}AuctionWatchList/
         Q{   http://www.example.com/AuctionWatch}Auction[2]/
         @Q{  http://www.example.com/auctioneers#yabadoo}ID)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "13143816") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         /Q{  http://www.example.com/AuctionWatch}AuctionWatchList/
         Q{   http://www.example.com/AuctionWatch}Auction[2]/
         @Q{  http://www.example.com/auctioneers
         #yabadoo}ID", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{http:&#x2F;&#x2F;www.w3.org&#x2F;2005&#x2F;xpath-functions&#x2F;math}pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"math:pi()") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-029p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'eqname-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($Q{''}a, $Q{http:}a) { $Q{''}a + $Q{http:}a }
         return $f(15, 27)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"42") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $Q{t:e:s:t}f := function($Q{''}a, $Q{http:}a) { $Q{''}a + $Q{http:}a }
         return $Q{t:e:s:t}f(15, 27)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"42") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $Q{%7D}a := 12, $Q{}b := 13
         return $Q{%7D}a + $b
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"25") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $Q{foo%20bar}a := 12, $Q{foo bar}a := 13
         return $Q{foo%20bar}a + $Q{  foo   bar  }a
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"25") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $Q{$Q}a := 12, $Q{//}a := 13, $Q{*}a := 14
         return $Q{$Q}a + $Q{//}a + $Q{*}a
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"39") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-901'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}:b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-901.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-902'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}}b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-902.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-903'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ <Q{http://www.example.com/ns}/> }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-903.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-904'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<out>{ (<a xmlns:ex=\"http://www.example.com/ns?p='23'\"><ex:b>93.7</ex:b></a>) /Q{http://www.example.com/ns?p='23'}:b }</out>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-904.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-905'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}}pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-905.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-906'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{{http://www.w3.org/2005/xpath-functions/math}pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-906.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-907'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-907.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-908'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/ xpath-functions/math}pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-908.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-909'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "Q{&#x7D;http://www.w3.org/2005/xpath-functions/math}pi()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-909.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-909p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}. 
'eqname-910'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/Q{ http://www.w3.org/2000/xmlns/}AuctionWatchList", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-910.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-911'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/Q{###}SomeElement", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-911.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-912'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/Q{%gg}SomeElement", 
   {Env,Opts} = xqerl_test:handle_environment(environment('auction',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-912.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XQST0046") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'eqname-913'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $f := function($Q{ }a, $a) { 15 }
         return $f(1, 2)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "eqname-913.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0039") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.