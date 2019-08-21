-module('prod_CompNamespaceConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['nscons-001'/1]).
-export(['nscons-002'/1]).
-export(['nscons-003'/1]).
-export(['nscons-004'/1]).
-export(['nscons-005'/1]).
-export(['nscons-006'/1]).
-export(['nscons-007'/1]).
-export(['nscons-008'/1]).
-export(['nscons-009'/1]).
-export(['nscons-010'/1]).
-export(['nscons-011'/1]).
-export(['nscons-012'/1]).
-export(['nscons-013'/1]).
-export(['nscons-014'/1]).
-export(['nscons-015'/1]).
-export(['nscons-016'/1]).
-export(['nscons-017'/1]).
-export(['nscons-018'/1]).
-export(['nscons-019'/1]).
-export(['nscons-020'/1]).
-export(['nscons-021'/1]).
-export(['nscons-022'/1]).
-export(['nscons-023'/1]).
-export(['nscons-024'/1]).
-export(['nscons-025'/1]).
-export(['nscons-026'/1]).
-export(['nscons-027'/1]).
-export(['nscons-028'/1]).
-export(['nscons-029'/1]).
-export(['nscons-030'/1]).
-export(['nscons-031'/1]).
-export(['nscons-032'/1]).
-export(['nscons-033'/1]).
-export(['nscons-034'/1]).
-export(['nscons-035'/1]).
-export(['nscons-036'/1]).
-export(['nscons-037'/1]).
-export(['nscons-038'/1]).
-export(['nscons-039'/1]).
-export(['nscons-040'/1]).
-export(['nscons-041'/1]).
-export(['nscons-042'/1]).
-export(['nscons-043'/1]).
-export(['nscons-044'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
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
   {group, group_0}, 
   {group, group_1}
   ].
groups() -> [
   {group_0, [parallel], [
    'nscons-001', 
    'nscons-002', 
    'nscons-003', 
    'nscons-004', 
    'nscons-005', 
    'nscons-006', 
    'nscons-007', 
    'nscons-008', 
    'nscons-009', 
    'nscons-010', 
    'nscons-011', 
    'nscons-012', 
    'nscons-013', 
    'nscons-014', 
    'nscons-015', 
    'nscons-016', 
    'nscons-017', 
    'nscons-018', 
    'nscons-019', 
    'nscons-020', 
    'nscons-021', 
    'nscons-022', 
    'nscons-023']}, 
   {group_1, [parallel], [
    'nscons-024', 
    'nscons-025', 
    'nscons-026', 
    'nscons-027', 
    'nscons-028', 
    'nscons-029', 
    'nscons-030', 
    'nscons-031', 
    'nscons-032', 
    'nscons-033', 
    'nscons-034', 
    'nscons-035', 
    'nscons-036', 
    'nscons-037', 
    'nscons-038', 
    'nscons-039', 
    'nscons-040', 
    'nscons-041', 
    'nscons-042', 
    'nscons-043', 
    'nscons-044']}].
environment('cnc-schema',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "CompNamespaceConstructor/schema.xsd"),"http://www.w3.org/TestSchemas/cnc"}]}, 
{resources, []}, 
{modules, []}
].
'nscons-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        <e>{ namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl} }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"saxon\"; 
        declare variable $xsl := \"xsl\"; 
        <e>{ namespace {$s} {\"http://saxon.sf.net/\"}, 
             attribute a {23}, 
             namespace {$xsl} {\"http://www.w3.org/1999/XSL/Transform\"} }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"saxon\"; 
        declare variable $xsl := \"xsl\"; 
        <out> <t:e xmlns:t=\"http://www.example.com/\">{ 
            namespace {\"\"} {\"http://saxon.sf.net/\"}, 
            attribute a {23}, 
            namespace {$xsl} {\"http://www.w3.org/1999/XSL/Transform\"}, <f/> }</t:e> </out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><t:e xmlns:t=\"http://www.example.com/\" xmlns=\"http://saxon.sf.net/\"
        xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"><f xmlns=\"\"/></t:e></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"saxon\"; 
        declare variable $xml := \"http://www.w3.org/XML/1998/namespace\"; 
        <out> <t:e xmlns:t=\"http://www.example.com/\" xml:space=\"preserve\">{ 
            namespace xml {\"http://www.w3.org/XML/1998/namespace\"}, 
            attribute a {23}, <f/> }</t:e> </out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><t:e xmlns:t=\"http://www.example.com/\" xml:space=\"preserve\" a=\"23\"><f/></t:e></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        element {QName(\"http://saxon.sf.net/\", \"saxon:extension\")} { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, element f {42} }
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" 
            a=\"23\"><f>42</f></saxon:extension>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        element {QName(\"http://saxon.sf.net/\", \"saxon:extension\")} 
                { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, namespace saxon {$s}, element f {42} }
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"
                 a=\"23\"><f>42</f></saxon:extension>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        declare variable $xmlns := \"xmlns\"; 
        <e> { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, namespace xmlns {$s}, element f {42} }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0101") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        declare variable $xmlns := \"xml\"; 
        <e> { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, namespace {$xmlns} {$s}, element f {42} }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0101") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        <e> { namespace p {$p1}, namespace p {$p2}, element f {42} }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0102") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        declare variable $r := <e> { namespace p {$p1}, attribute {QName($p2, \"p:att\")} {93.7}, element f {42} }</e>; 
        <out> { exists($r/@*:att[prefix-from-QName(node-name(.))!='p']), exists(in-scope-prefixes($r)[.='p']) }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>true true</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        declare variable $r := element {QName($p2, 'p:e')} { namespace p {$p1}, element f {42} }; 
        <out> { exists($r[prefix-from-QName(node-name(.))!='p']), exists(in-scope-prefixes($r)[.='p']) }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>true true</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        declare function local:f($ns as namespace-node()) as element() { 
            <namespace name=\"{name($ns)}\" local-name=\"{local-name($ns)}\" 
                namespace-uri=\"{namespace-uri($ns)}\" string-value=\"{string($ns)}\" typed-value=\"{data($ns)}\" 
                is-untyped=\"{data($ns) instance of xs:untypedAtomic}\" parent-exists=\"{exists($ns/..)}\" 
                is-namespace=\"{$ns instance of namespace-node()}\" 
                is-node=\"{$ns instance of node()}\" is-item=\"{$ns instance of item()}\" 
                same-as-self=\"{$ns is $ns}\"/> 
        }; 
        <out>{ 
            local:f(namespace p {\"http://example.com/one\"}), 
            local:f(namespace {\"\"} {\"http://example.com/two\"}) }</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/one\"
              is-untyped=\"false\"
              string-value=\"http://example.com/one\"
              local-name=\"p\"
              parent-exists=\"false\"
              name=\"p\"
              is-node=\"true\"/><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/two\"
              is-untyped=\"false\"
              string-value=\"http://example.com/two\"
              local-name=\"\"
              parent-exists=\"false\"
              name=\"\"
              is-node=\"true\"/></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := <prefix>z</prefix>,
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:z=\"http://www.zorba-xquery.com/\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := \"z\",
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e xmlns:z=\"http://www.zorba-xquery.com/\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace z=\"http://www.zorba-xquery.com/\";
        <z:e>{ namespace { <a/>/* } { \"http://www.w3.org/\" } }</z:e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<z:e xmlns:z=\"http://www.zorba-xquery.com/\" xmlns=\"http://www.w3.org/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := <prefix>z:z</prefix>,
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := \"z z\",
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0074") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := 1,
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $uri := \"http://www.w3.org/XML/1998/namespace\"
        return
          <e>{ namespace x { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0101") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $uri := \"http://www.w3.org/2000/xmlns/\"
        return
          <e>{ namespace x { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0101") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <e>{ namespace x { \"\" } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0101") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $elem := <e>{ namespace z { \"http://www.zorba-xquery.com/\" } }</e>
        return
          element { resolve-QName(\"z:f\", $elem) } {}
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<z:f xmlns:z=\"http://www.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <z:e>{ namespace z { \"http://www.zorba-xquery.com/\" } }</z:e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <e>{ namespace z { \"http://www.zorba-xquery.com/\" }, element z:e {} }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-024.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        element e { attribute z:a {},  namespace z { \"http://www.zorba-xquery.com/\" } }
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <e>{ namespace z { \"http://www.zorba-xquery.com/\" }, element { xs:QName(\"z:e\") } { } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FONS0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        let $elem := <e>{ mod1:one() }</e>
        return
          element { resolve-QName(\"z:f\", $elem) } {}
      ", 
   LibList = [
    try xqerl_code_server:compile(filename:join(__BaseDir, "CompNamespaceConstructor/cnc-module.xq")) catch _:Error_1 -> Error_1 end], 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-027.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<z:f xmlns:z=\"http://www.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        let $ns := mod1:one()
        return ($ns is $ns, $ns is mod1:one())
      ", 
   LibList = [
    try xqerl_code_server:compile(filename:join(__BaseDir, "CompNamespaceConstructor/cnc-module.xq")) catch _:Error_1 -> Error_1 end], 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-028.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        serialize( namespace z { \"http://www.zorba-xquery.com/\" } )
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        serialize( element e { namespace z { \"http://www.zorba-xquery.com/\" } } )
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"contains($result,'xmlns:z')") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"contains($result,'\"http://www.zorba-xquery.com/\"')") of 
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
'nscons-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare copy-namespaces preserve, inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner {
                namespace in { \"http://in.zorba-xquery.com/\" }
              } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare copy-namespaces preserve, no-inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner { namespace in { \"http://in.zorba-xquery.com/\" } } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<inner xmlns:in=\"http://in.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare copy-namespaces no-preserve, inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner { namespace in { \"http://in.zorba-xquery.com/\" } } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<inner xmlns:new=\"http://new.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare copy-namespaces no-preserve, no-inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner { namespace in { \"http://in.zorba-xquery.com/\" } } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<inner/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces preserve, inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   LibList = [
    try xqerl_code_server:compile(filename:join(__BaseDir, "CompNamespaceConstructor/cnc-module.xq")) catch _:Error_1 -> Error_1 end], 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-035.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces preserve, no-inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   LibList = [
    try xqerl_code_server:compile(filename:join(__BaseDir, "CompNamespaceConstructor/cnc-module.xq")) catch _:Error_1 -> Error_1 end], 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-036.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<inner xmlns:in=\"http://in.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces no-preserve, inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   LibList = [
    try xqerl_code_server:compile(filename:join(__BaseDir, "CompNamespaceConstructor/cnc-module.xq")) catch _:Error_1 -> Error_1 end], 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-037.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<inner xmlns:new=\"http://new.zorba-xquery.com/\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces no-preserve, no-inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ", 
   LibList = [
    try xqerl_code_server:compile(filename:join(__BaseDir, "CompNamespaceConstructor/cnc-module.xq")) catch _:Error_1 -> Error_1 end], 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-038.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<inner/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare copy-namespaces preserve, inherit;
        
        declare function local:rec-add($level as xs:integer) as element() {
          if ($level > 0) then
            element { concat(\"e\", $level) } { 
              namespace { concat(\"pre\", $level) } { concat(\"uri\", $level) },
              local:rec-add($level - 1)
            }
          else
            element e0 {}       
        };

        local:rec-add(2)/e1/e0
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e0 xmlns:pre2=\"uri2\" xmlns:pre1=\"uri1\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'nscons-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'nscons-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        element e { namespace {''} {'http://example.com/uri'} }
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0102") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := xs:anyURI('ns'),
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'nscons-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $pre := xs:duration('P1D'),
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "nscons-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.