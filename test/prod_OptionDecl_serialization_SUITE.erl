-module('prod_OptionDecl_serialization_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-001'/1]).
-export(['Serialization-002'/1]).
-export(['Serialization-003'/1]).
-export(['Serialization-004'/1]).
-export(['Serialization-005'/1]).
-export(['Serialization-006'/1]).
-export(['Serialization-007'/1]).
-export(['Serialization-008'/1]).
-export(['Serialization-009'/1]).
-export(['Serialization-010'/1]).
-export(['Serialization-011'/1]).
-export(['Serialization-012'/1]).
-export(['Serialization-013'/1]).
-export(['Serialization-014'/1]).
-export(['Serialization-015'/1]).
-export(['Serialization-016'/1]).
-export(['Serialization-017'/1]).
-export(['Serialization-018'/1]).
-export(['Serialization-019'/1]).
-export(['Serialization-020'/1]).
-export(['Serialization-021'/1]).
-export(['Serialization-022'/1]).
-export(['Serialization-023'/1]).
-export(['Serialization-024'/1]).
-export(['Serialization-025'/1]).
-export(['Serialization-026'/1]).
-export(['Serialization-026a'/1]).
-export(['Serialization-027'/1]).
-export(['Serialization-027a'/1]).
-export(['Serialization-028'/1]).
-export(['Serialization-029'/1]).
-export(['Serialization-030'/1]).
-export(['Serialization-031'/1]).
-export(['Serialization-032'/1]).
-export(['Serialization-033'/1]).
-export(['Serialization-034'/1]).
-export(['Serialization-035'/1]).
-export(['Serialization-036'/1]).
-export(['Serialization-037'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Serialization-001', 
'Serialization-002', 
'Serialization-003', 
'Serialization-004', 
'Serialization-005', 
'Serialization-006', 
'Serialization-007', 
'Serialization-008', 
'Serialization-009', 
'Serialization-010', 
'Serialization-011', 
'Serialization-012', 
'Serialization-013', 
'Serialization-014', 
'Serialization-015', 
'Serialization-016', 
'Serialization-017', 
'Serialization-018', 
'Serialization-019', 
'Serialization-020', 
'Serialization-021', 
'Serialization-022', 
'Serialization-023', 
'Serialization-024', 
'Serialization-025', 
'Serialization-026', 
'Serialization-026a', 
'Serialization-027', 
'Serialization-027a', 
'Serialization-028', 
'Serialization-029', 
'Serialization-030', 
'Serialization-031', 
'Serialization-032', 
'Serialization-033', 
'Serialization-034', 
'Serialization-035', 
'Serialization-036', 
'Serialization-037'
].

'Serialization-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:cdata-section-elements \"\";
         declare option output:doctype-public \"\";
         declare option output:doctype-system \"\";
         (:declare option output:doctype-public \"none\";
         declare option output:doctype-system \"none\";:)
         declare option output:indent \"no\";
         declare option output:method \"xml\";
         declare option output:suppress-indentation \"\";
         declare option output:undeclare-prefixes \"no\";
         <result>ok</result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"yes\";
         <result>ok</result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         import module namespace test=\"http://www.w3.org/TestModules/test\";
         <result>{test:ok()}</result>
      ", 
   try xqerl_code_server:compile(filename:join(__BaseDir, "Serialization/serialization1-lib.xq")) catch _:_ -> ok end, 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0108") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"yes\";
         declare option output:indent \"yes\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0110") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:doesnotexist \"yes\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0109") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:parameter-document \"Serialization/serialization-parameters.xml\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
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
'Serialization-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:parameter-document \"Serialization/serialization-parameters.xml\";
         declare option output:indent \"yes\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
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
'Serialization-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:byte-order-mark \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:doctype-public \"&#xc381;\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:cdata-section-elements \"::INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:doctype-system \"mustnotincludebothanapostrophe&#x27;andquotationmark&#x22;\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:encoding \"onlyasciiallowedlessthan&#x7f;\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
      true -> {comment, "Correct error"};
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
'Serialization-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:escape-uri-attributes \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:include-content-type \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         (: the charset parameter of the media type MUST NOT be specified explicitly in the value of the media-type parameter. :)
         declare option output:media-type \"text/html; charset=ISO-8859-4\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         (: An expanded QName with a null namespace URI, and the local part of the name equal to one of xml, xhtml, html or text, or having a non-null namespace URI :)
         declare option output:method \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:normalization-form \"__NOT_SUPPORTED__\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SESU0011") of 
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
'Serialization-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:omit-xml-declaration \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:standalone \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:suppress-indentation \"::INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:undeclare-prefixes \"INVALID_VALUE\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0016") of 
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
'Serialization-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:use-character-maps \"...\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0109") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         (: An unsupported xml version which matches the VersionNum of XML Recommendation XML10 :)
         declare option output:version \"1.14159265\";
         <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SESU0013") of 
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
'Serialization-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"html\";
         (: control characters not allowed in html :)
         <result>ok&#x7f;</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0014") of 
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
'Serialization-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:standalone \"yes\";
		 (<a/>,<b/>)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<\\?xml[^t]+\\?><a/><b/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0004") of 
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
'Serialization-026a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}. 
'Serialization-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:standalone \"yes\";
		 \"banana\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"banana"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0004") of 
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
'Serialization-027a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization"}. 
'Serialization-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:doctype-system \"http://www.example.com/\";
		 (<a/>,<b/>)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"<\\?xml.*\\?><a/><b/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0004") of 
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
'Serialization-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:doctype-system \"http://www.example.com/\";
		 \"potato\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"potato"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SEPM0004") of 
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
'Serialization-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:standalone \"omit\";
		 \"banana\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"banana"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:standalone \"yes\";
         declare option output:omit-xml-declaration \"yes\";
		 <a/>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SEPM0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:method \"xml\";
         declare option output:standalone \"no\";
         declare option output:omit-xml-declaration \"yes\";
		 <a/>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SEPM0009") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"&#x6e;&#x6f;\";
         <result>ok</result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \" no \";
         <result>ok</result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:parameter-document \"Serialization/serialization-eqnames.xml\";
         <result>
           <e xmlns=\"http://example.com/a\">ta</e>
           <e xmlns=\"http://example.com/b\">tb</e>
           <e xmlns=\"http://example.com/c\">tc</e>
           <e xmlns=\"http://example.com/d\">td</e>
           <e xmlns=\"http://example.com/e\">te</e>
           <e>tt</e>
         </result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"CDATA\\[ta\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"CDATA\\[tb\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"CDATA\\[tc\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"CDATA\\[td\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"CDATA\\[te\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end, 
   case (   case xqerl_test:assert_serialization_match(Res,<<"CDATA\\[tt\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end) of 
      {comment,C6} -> C6; _ -> {comment,ok}
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
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
'Serialization-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \" 0 \";
         <result>ok</result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
         declare option output:indent \"1\";
         <result>ok</result>
        ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.