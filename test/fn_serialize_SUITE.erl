-module('fn_serialize_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['serialize-xml-001'/1]).
-export(['serialize-xml-002'/1]).
-export(['serialize-xml-003'/1]).
-export(['serialize-xml-004'/1]).
-export(['serialize-xml-005'/1]).
-export(['serialize-xml-006'/1]).
-export(['serialize-xml-007'/1]).
-export(['serialize-xml-007a'/1]).
-export(['serialize-xml-008'/1]).
-export(['serialize-xml-009'/1]).
-export(['serialize-xml-010'/1]).
-export(['serialize-xml-011'/1]).
-export(['serialize-xml-012'/1]).
-export(['serialize-xml-013'/1]).
-export(['serialize-xml-014'/1]).
-export(['serialize-xml-015'/1]).
-export(['serialize-xml-016'/1]).
-export(['serialize-xml-017'/1]).
-export(['serialize-xml-018'/1]).
-export(['serialize-xml-019'/1]).
-export(['serialize-xml-020'/1]).
-export(['serialize-xml-021'/1]).
-export(['serialize-xml-022'/1]).
-export(['serialize-xml-023'/1]).
-export(['serialize-xml-024'/1]).
-export(['serialize-xml-025'/1]).
-export(['serialize-xml-026'/1]).
-export(['serialize-xml-027'/1]).
-export(['serialize-xml-028'/1]).
-export(['serialize-xml-029'/1]).
-export(['serialize-xml-030'/1]).
-export(['serialize-xml-031'/1]).
-export(['serialize-xml-032'/1]).
-export(['serialize-xml-033'/1]).
-export(['serialize-xml-034'/1]).
-export(['serialize-xml-035'/1]).
-export(['serialize-xml-036'/1]).
-export(['serialize-xml-101'/1]).
-export(['serialize-xml-102'/1]).
-export(['serialize-xml-103'/1]).
-export(['serialize-xml-104'/1]).
-export(['serialize-xml-105'/1]).
-export(['serialize-xml-106'/1]).
-export(['serialize-xml-106a'/1]).
-export(['serialize-xml-107'/1]).
-export(['serialize-xml-107a'/1]).
-export(['serialize-xml-108'/1]).
-export(['serialize-xml-109'/1]).
-export(['serialize-xml-110'/1]).
-export(['serialize-xml-119'/1]).
-export(['serialize-xml-120'/1]).
-export(['serialize-xml-123'/1]).
-export(['serialize-xml-124'/1]).
-export(['serialize-xml-125'/1]).
-export(['serialize-xml-126'/1]).
-export(['serialize-xml-127'/1]).
-export(['serialize-xml-128'/1]).
-export(['serialize-xml-129'/1]).
-export(['serialize-xml-130'/1]).
-export(['serialize-xml-131'/1]).
-export(['serialize-xml-131a'/1]).
-export(['serialize-xml-132'/1]).
-export(['serialize-xml-133'/1]).
-export(['serialize-xml-134'/1]).
-export(['serialize-xml-135'/1]).
-export(['serialize-xml-136'/1]).
-export(['serialize-xml-137'/1]).
-export(['serialize-xml-138'/1]).
-export(['serialize-xml-139'/1]).
-export(['serialize-xml-140'/1]).
-export(['serialize-xml-141'/1]).
-export(['serialize-xml-142'/1]).
-export(['serialize-json-001'/1]).
-export(['serialize-json-002'/1]).
-export(['serialize-json-003'/1]).
-export(['serialize-json-004'/1]).
-export(['serialize-json-005'/1]).
-export(['serialize-json-006'/1]).
-export(['serialize-json-007'/1]).
-export(['serialize-json-008'/1]).
-export(['serialize-json-009'/1]).
-export(['serialize-json-010'/1]).
-export(['serialize-json-011'/1]).
-export(['serialize-json-101'/1]).
-export(['serialize-json-102'/1]).
-export(['serialize-json-103'/1]).
-export(['serialize-json-104'/1]).
-export(['serialize-json-105'/1]).
-export(['serialize-json-106'/1]).
-export(['serialize-json-107'/1]).
-export(['serialize-json-108'/1]).
-export(['serialize-json-109'/1]).
-export(['serialize-json-110'/1]).
-export(['serialize-json-111'/1]).
-export(['serialize-json-112'/1]).
-export(['serialize-json-113'/1]).
-export(['serialize-json-114'/1]).
-export(['serialize-json-115'/1]).
-export(['serialize-json-116'/1]).
-export(['serialize-json-117'/1]).
-export(['serialize-json-118'/1]).
-export(['serialize-json-119'/1]).
-export(['serialize-json-120'/1]).
-export(['serialize-json-121'/1]).
-export(['serialize-json-122'/1]).
-export(['serialize-json-123'/1]).
-export(['serialize-json-124'/1]).
-export(['serialize-json-125'/1]).
-export(['serialize-json-126'/1]).
-export(['serialize-json-127'/1]).
-export(['serialize-json-128'/1]).
-export(['serialize-json-130'/1]).
-export(['serialize-json-131'/1]).
-export(['serialize-json-132'/1]).
-export(['serialize-json-133'/1]).
-export(['serialize-json-134'/1]).
-export(['serialize-json-135'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'serialize-xml-001', 
'serialize-xml-002', 
'serialize-xml-003', 
'serialize-xml-004', 
'serialize-xml-005', 
'serialize-xml-006', 
'serialize-xml-007', 
'serialize-xml-007a', 
'serialize-xml-008', 
'serialize-xml-009', 
'serialize-xml-010', 
'serialize-xml-011', 
'serialize-xml-012', 
'serialize-xml-013', 
'serialize-xml-014', 
'serialize-xml-015', 
'serialize-xml-016', 
'serialize-xml-017', 
'serialize-xml-018', 
'serialize-xml-019', 
'serialize-xml-020', 
'serialize-xml-021', 
'serialize-xml-022', 
'serialize-xml-023', 
'serialize-xml-024', 
'serialize-xml-025', 
'serialize-xml-026', 
'serialize-xml-027', 
'serialize-xml-028', 
'serialize-xml-029', 
'serialize-xml-030', 
'serialize-xml-031', 
'serialize-xml-032', 
'serialize-xml-033', 
'serialize-xml-034', 
'serialize-xml-035', 
'serialize-xml-036', 
'serialize-xml-101', 
'serialize-xml-102', 
'serialize-xml-103', 
'serialize-xml-104', 
'serialize-xml-105', 
'serialize-xml-106', 
'serialize-xml-106a', 
'serialize-xml-107', 
'serialize-xml-107a', 
'serialize-xml-108', 
'serialize-xml-109', 
'serialize-xml-110', 
'serialize-xml-119', 
'serialize-xml-120', 
'serialize-xml-123', 
'serialize-xml-124', 
'serialize-xml-125', 
'serialize-xml-126', 
'serialize-xml-127', 
'serialize-xml-128', 
'serialize-xml-129', 
'serialize-xml-130', 
'serialize-xml-131', 
'serialize-xml-131a', 
'serialize-xml-132', 
'serialize-xml-133', 
'serialize-xml-134', 
'serialize-xml-135', 
'serialize-xml-136', 
'serialize-xml-137', 
'serialize-xml-138', 
'serialize-xml-139', 
'serialize-xml-140', 
'serialize-xml-141', 
'serialize-xml-142', 
'serialize-json-001', 
'serialize-json-002', 
'serialize-json-003', 
'serialize-json-004', 
'serialize-json-005', 
'serialize-json-006', 
'serialize-json-007', 
'serialize-json-008', 
'serialize-json-009', 
'serialize-json-010', 
'serialize-json-011', 
'serialize-json-101', 
'serialize-json-102', 
'serialize-json-103', 
'serialize-json-104', 
'serialize-json-105', 
'serialize-json-106', 
'serialize-json-107', 
'serialize-json-108', 
'serialize-json-109', 
'serialize-json-110', 
'serialize-json-111', 
'serialize-json-112', 
'serialize-json-113', 
'serialize-json-114', 
'serialize-json-115', 
'serialize-json-116', 
'serialize-json-117', 
'serialize-json-118', 
'serialize-json-119', 
'serialize-json-120', 
'serialize-json-121', 
'serialize-json-122', 
'serialize-json-123', 
'serialize-json-124', 
'serialize-json-125', 
'serialize-json-126', 
'serialize-json-127', 
'serialize-json-128', 
'serialize-json-130', 
'serialize-json-131', 
'serialize-json-132', 
'serialize-json-133', 
'serialize-json-134', 
'serialize-json-135'
].
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
].
'serialize-xml-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-007a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
          let $params := 
              <output:serialization-parameters
                   xmlns:output=\"http://www.w3.org/2010/xslt-xquery-serialization\">
                <output:method value=\"xml\"/>   
                <output:indent value=\"yes\"/>
                <output:suppress-indentation value=\"p\"/>
              </output:serialization-parameters>
          return serialize(., $params)
        ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "serialize/serialize-008-src.xml"), ".",[]}]}, 
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"matches($result,'\\n\\s+<title>')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"matches($result,'\\n\\s+<p>')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"not(matches($result,'\\n\\s+<code>'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(name#1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            let $params := 
              <output:serialization-parameters
                   xmlns:output=\"http://www.w3.org/2010/xslt-xquery-serialization\">
                <output:use-character-maps>
                  <output:character-map character=\"$\" map-string=\"£\" />
                </output:use-character-maps>
              </output:serialization-parameters>
          return serialize(., $params)
        ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "serialize/serialize-032-src.xml"), ".",[]}]}, 
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result,'£')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            let $params := 
              <output:serialization-parameters
                   xmlns:output=\"http://www.w3.org/2010/xslt-xquery-serialization\">
                <output:method value=\"xml\"/>
                <output:item-separator value=\"|\"/>
              </output:serialization-parameters>
          return serialize(1 to 10, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"matches($result,'1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|10')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            let $params := 
              <output:serialization-parameters
                   xmlns:output=\"http://www.w3.org/2010/xslt-xquery-serialization\">
                <output:method value=\"xml\"/>
                <output:omit-xml-declaration value=\"yes\"/>
                <output:item-separator value=\"==\"/>
              </output:serialization-parameters>
          return serialize((1 to 4)!text{.}, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result,'1==2==3==4')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'serialize-xml-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'serialize-xml-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-106a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-107a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-108'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"xml\",
            \"indent\" : true(),
            \"suppress-indentation\" : QName(\"\",\"p\") 
            }
            return serialize(., $params)
        ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "serialize/serialize-008-src.xml"), ".",[]}]}, 
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-108.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"matches($result,'\\n\\s+<title>')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"matches($result,'\\n\\s+<p>')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"not(matches($result,'\\n\\s+<code>'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-109'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-110'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"xml\",
            \"cdata-section-elements\" : 
            (QName(\"\", \"b\"), QName(\"http://www.example.org/ns/p\", \"b\")),
            \"suppress-indentation\" : QName(\"\", \"para\")
            }
            return serialize(., $params)
        ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "serialize/serialize-110-src.xml"), ".",[]}]}, 
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-110.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"contains($result, 'CDATA[bold]')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, 'CDATA[BOLD]')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"not(contains($result, 'CDATA[italic]'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"not(contains($result, 'CDATA[ITALIC]'))") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-119'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-120'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map { QName(\"\",\"indent\") : true() }
            return contains(serialize(<e><f/></e>, $params), \" \")
        
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-120.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0109") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-123'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-124'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-125'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-126'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-127'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-128'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-129'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-130'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-131'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-131a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'serialize-xml-132'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"use-character-maps\" : map { \"$\":\"£\" } 
            }
            return serialize(., $params)
        ", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "serialize/serialize-032-src.xml"), ".",[]}]}, 
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
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-132.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result,'£')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-133'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"xml\",
            \"item-separator\" : \"|\" 
            }
            return serialize(1 to 10, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-133.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"matches($result,'1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|10')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-134'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"xml\",
            \"omit-xml-declaration\" : true(),
            \"item-separator\" : \"==\" 
            }
            return serialize((1 to 4)!text{.}, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-134.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result,'1==2==3==4')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-135'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'serialize-xml-136'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XML version 1.1"}. 
'serialize-xml-137'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            serialize(<e/>, ())
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-137.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"exists(parse-xml($result)/e)") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-138'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            let $json := '
                {
                  \"method\" : \"xml\",
                  \"indent\" : true, 
                  \"use-character-maps\" : {
                     \"x\" : \"j\",
                     \"m\" : \"so\",
                     \"l\" : \"n\"
                  }     
                }
            '      
            return       
               serialize(<e>xml</e>, parse-json($json))
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-138.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"parse-xml($result)/e/string() eq \"json\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-139'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "   
               serialize(<e>xml</e>, map { 'use-character-maps' : map { QName(\"http://example.org\",\"xyz\") : \"abc\" } })
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-139.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-140'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  
               let $options := map {
                  'use-character-maps' : map {
                     'x' : xs:untypedAtomic('j'),
                     'm' : <e>so</e>,
                     'l' : 'n'
                  }
               }
               return     
                  serialize(<e>[xml]</e>, $options)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-140.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-141'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  
               let $options := map {
                  'use-character-maps' : map {
                     'x' : xs:untypedAtomic('j'),
                     'm' : <e>so</e>,
                     'l' : xs:QName('n')
                  }
               }
               return     
                  serialize(<e>[xml]</e>, $options)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-141.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-xml-142'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "  
               let $options := map {
                    'method' : 'xml',
                    'indent' : xs:untypedAtomic('false'),
                    'item-separator' : xs:untypedAtomic('  ')     
               }
               return     
                  serialize((<e/>,<f/>), $options)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-xml-142.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result,\">  <\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\"
            }       
            return serialize([ ], $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"matches($result,'\\[\\]')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\"
            },
            $arg := array { 1, 2 , (3,4,5), 6 }
            return serialize($arg, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result,'[1,2,3,4,5,6]')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\"
            },   
            $arg := [1, 2 , [3,4,5], 6]        
            return serialize($arg, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result,'[1,2,[3,4,5],6]')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\",
            \"indent\" : true() 
            }          
            return serialize($params, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?method eq \"json\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?indent") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\",
            \"indent\" : true() 
            },         
            $arg := parse-json('{\"abc\":true}')
            return serialize($arg, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?abc") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\"
            }       
            return serialize((), $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"matches($result,'null')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\",
            \"item-separator\" : \"|\" 
            }
            return serialize(1 to 10, $params)
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\",
            \"json-node-output-method\" : \"xml\"
            },
            $s := serialize(comment {\" hello world \"}, $params)
            return matches($s, '\"<!-- hello world -->\"')
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $params := map {
            \"method\" : \"json\",
            \"json-node-output-method\" : \"xml\"
            },
            $s := serialize(array {
            text { \"a\" },
            processing-instruction {\"a\"} {\"b\"},
            comment { \"a\" },
            element {\"a\"} {\"b\"},
            document { element {\"a\"}{\"b\"} }
            }, $params)
            return matches($s, '\\[\"a\",\"<\\?a b\\?>\",\"<!--a-->\",\"<a>b<\\\\/a>\",\"<a>b<\\\\/a>\"\\]')
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
            serialize(map { xs:QName(\"foo\") : 1, \"foo\" : 2 }, map { 'method' : 'json' }) 
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
          serialize(
            map { 
              QName(\"\", \"foo\") : 1, 
              \"foo\" : 2 
            }, 
            map { 
              'method' : 'json', 
              'allow-duplicate-names' : true()
            }
          )
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"
                let $xml := json-to-xml($result, map { 'duplicates' : 'retain' })
                return
                   count($xml/fn:map/fn:number) eq 2
            ") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size(parse-json($result)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(map{}, map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"translate($result,' 	
', '') = '{}'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize((), map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"translate($result,' 	
', '') = 'null'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(12.5, map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"number($result) = 12.5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-space(serialize(true(), map{'method':'json'}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "normalize-space(serialize(false(), map{'method':'json'}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(map{'abc':23}, map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"translate($result,' 	
', '') = '{\"abc\":23}'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(map{'abc':23, 'xyz':49}, map{'method':'json'}) return
            translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"starts-with($result, '{')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"abc\":23')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"xyz\":49')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"ends-with($result, '}')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?abc = 23") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-108'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(parse-json('[1, 2, 3, \"four\", true, false, null]'),
            map{'method':'json'}) return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-108.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[1,2,3,\"four\",true,false,null]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-109'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize([1, 2, 3, \"four\", true(), false()], map{'method':'json'}) return
            translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-109.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[1,2,3,\"four\",true,false]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-110'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(parse-json('[[1, 2], [3, 4], [5, 6], [7], [], [null]]'),
            map{'method':'json'}) return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-110.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[[1,2],[3,4],[5,6],[7],[],[null]]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-111'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(map{\"abc\":array{1 to 10}}, map{'method':'json'}) return translate($r,'
            	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-111.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"abc\":[1,2,3,4,5,6,7,8,9,10]}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-112'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize([map{\"abc\":1},map{\"def\":2},map{\"ghi\":3}], map{'method':'json'})
            return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-112.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":1},{\"def\":2},{\"ghi\":3}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-113'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r :=
            serialize(map{\"abc\": map{\"abc\":map{\"abc\":1}, \"def\": map{\"def\":2}}},
            map{'method':'json'}) return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-113.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"starts-with($result, '{\"abc\":{')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"abc\":{\"abc\":1}')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"def\":{\"def\":2}')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"ends-with($result, '}}')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?(\"abc\")?(\"abc\")?(\"abc\") = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?(\"abc\")?(\"def\")?(\"def\") = 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-114'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize('𝄞', map{'method':'json', 'encoding':'ISO-8859-1'}) return
            translate(normalize-space($r), 'abcdef', 'ABCDEF')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-114.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "\"\\uD834\\uDD1E\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SESU0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-115'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize('
', map{'method':'json'}) return
            translate(normalize-space($r), 'abcdef', 'ABCDEF')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-115.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "\"\\n\"") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-116'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize([map{\"abc\":map{\"abc\":1}},map{\"def\":map{\"def\":2}},map{\"ghi\":map{\"ghi\":3}}],
            map{'method':'json', \"indent\":false()})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-116.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":{\"abc\":1}},{\"def\":{\"def\":2}},{\"ghi\":{\"ghi\":3}}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-117'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r :=
            serialize([map{\"abc\":map{\"abc\":1}},map{\"def\":map{\"def\":2}},map{\"ghi\":map{\"ghi\":3}}],
            map{'method':'json', \"indent\":true()}) return translate($r, codepoints-to-string((32, 9, 10, 13)), '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-117.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[{\"abc\":{\"abc\":1}},{\"def\":{\"def\":2}},{\"ghi\":{\"ghi\":3}}]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-118'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-json(serialize(12.34, map{'method':'json'}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-118.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq xs:double('12.34')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-119'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "parse-json(serialize(12.34e-30, map{'method':'json'}))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-119.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq 12.34e-30") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:double") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-120'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(\"abc\"\"def\", map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-120.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq '\"abc\\\"def\"'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:string") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-121'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(\"abc\\\\def\", map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-121.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result eq '\"abc\\\\\\\\def\"'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result instance of xs:string") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-122'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize([number('NaN'), number('INF'), number('-INF')],
            map{'method':'json'}) return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-122.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-123'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize([0,0,xs:untypedAtomic(\"abcd\")], map{'method':'json'}) return
            translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-123.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[0,0,\"abcd\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-124'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(map{1:\"a\",2:\"b\",4:\"d\",10:\"j\",7:\"g\"}, map{'method':'json'}) return
            translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-124.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"starts-with($result, '{')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"1\":\"a\"')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"2\":\"b\"')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"4\":\"d\"')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"10\":\"j\"')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result, '\"7\":\"g\"')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"ends-with($result, '}')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"parse-json($result)?(\"1\") = \"a\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-125'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize([0,0,xs:date('2011-04-06')], map{'method':'json'}) 
            return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-125.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[0,0,\"2011-04-06\"]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-126'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(map{\"a\":xs:date('2011-04-06')}, map{'method':'json'}) 
            return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-126.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"a\":\"2011-04-06\"}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-127'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(map{\"a\":doc($uri)}, map{'method':'json'}) 
            return translate($r, codepoints-to-string((32, 9, 10, 13)), '')", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "serialize/doc001.xml"), "","http://www.w3.org/fots/serialize-json/doc001.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, [{"uri","xs:string","'http://www.w3.org/fots/serialize-json/doc001.xml'"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-127.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"a\":\"<a>text<\\/a>\"}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-128'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize(map{\"uri\":xs:anyURI('http://www.w3.org/')}, map{'method':'json'})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-128.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "{\"uri\":\"http:\\/\\/www.w3.org\\/\"}") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-130'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize((1, 2, 3, \"four\", true(), false()), map{'method':'json'}) return
            translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-130.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-131'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize(map{\"abc\":(1 to 10)}, map{'method':'json'}) return translate($r,'
            	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-131.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-132'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $r := serialize((map{\"abc\":1},map{\"def\":2},map{\"ghi\":3}), map{'method':'json'})
            return translate($r,' 	
', '')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-132.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-133'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize([1,2,3], map{'method':'json', \"indent\":23})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-133.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-134'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize([1,2,3], map{'method':'json', \"indent\":\"true\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-134.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'serialize-json-135'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "serialize([1,2,3], map{'method':'json', \"indent\":(true(),false())})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "serialize-json-135.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.