-module('fn_unparsed_text_lines_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-unparsed-text-lines-001'/1]).
-export(['fn-unparsed-text-lines-002'/1]).
-export(['fn-unparsed-text-lines-003'/1]).
-export(['fn-unparsed-text-lines-004'/1]).
-export(['fn-unparsed-text-lines-005'/1]).
-export(['fn-unparsed-text-lines-006'/1]).
-export(['fn-unparsed-text-lines-007'/1]).
-export(['fn-unparsed-text-lines-008'/1]).
-export(['fn-unparsed-text-lines-009'/1]).
-export(['fn-unparsed-text-lines-010'/1]).
-export(['fn-unparsed-text-lines-011'/1]).
-export(['fn-unparsed-text-lines-012'/1]).
-export(['fn-unparsed-text-lines-013'/1]).
-export(['fn-unparsed-text-lines-014'/1]).
-export(['fn-unparsed-text-lines-015'/1]).
-export(['fn-unparsed-text-lines-016'/1]).
-export(['fn-unparsed-text-lines-017'/1]).
-export(['fn-unparsed-text-lines-018'/1]).
-export(['fn-unparsed-text-lines-019'/1]).
-export(['fn-unparsed-text-lines-020'/1]).
-export(['fn-unparsed-text-lines-021'/1]).
-export(['fn-unparsed-text-lines-022'/1]).
-export(['fn-unparsed-text-lines-023'/1]).
-export(['fn-unparsed-text-lines-024'/1]).
-export(['fn-unparsed-text-lines-025'/1]).
-export(['fn-unparsed-text-lines-026'/1]).
-export(['fn-unparsed-text-lines-027'/1]).
-export(['fn-unparsed-text-lines-028'/1]).
-export(['fn-unparsed-text-lines-029'/1]).
-export(['fn-unparsed-text-lines-030'/1]).
-export(['fn-unparsed-text-lines-031'/1]).
-export(['fn-unparsed-text-lines-032'/1]).
-export(['fn-unparsed-text-lines-033'/1]).
-export(['fn-unparsed-text-lines-034'/1]).
-export(['fn-unparsed-text-lines-035'/1]).
-export(['fn-unparsed-text-lines-036'/1]).
-export(['fn-unparsed-text-lines-037'/1]).
-export(['fn-unparsed-text-lines-038'/1]).
-export(['fn-unparsed-text-lines-039'/1]).
-export(['fn-unparsed-text-lines-040'/1]).
-export(['fn-unparsed-text-lines-041'/1]).
-export(['fn-unparsed-text-lines-042'/1]).
-export(['fn-unparsed-text-lines-043'/1]).
-export(['fn-unparsed-text-lines-044'/1]).
-export(['fn-unparsed-text-lines-045'/1]).
-export(['fn-unparsed-text-lines-046'/1]).
-export(['fn-unparsed-text-lines-047'/1]).
-export(['fn-unparsed-text-lines-048'/1]).
-export(['fn-unparsed-text-lines-049'/1]).
-export(['fn-unparsed-text-lines-050'/1]).
-export(['fn-unparsed-text-lines-051'/1]).
-export(['fn-unparsed-text-lines-052'/1]).
-export(['fn-unparsed-text-lines-053'/1]).
-export(['fn-unparsed-text-lines-054'/1]).
-export(['fn-unparsed-text-lines-055'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-unparsed-text-lines-001', 
'fn-unparsed-text-lines-002', 
'fn-unparsed-text-lines-003', 
'fn-unparsed-text-lines-004', 
'fn-unparsed-text-lines-005', 
'fn-unparsed-text-lines-006', 
'fn-unparsed-text-lines-007', 
'fn-unparsed-text-lines-008', 
'fn-unparsed-text-lines-009', 
'fn-unparsed-text-lines-010', 
'fn-unparsed-text-lines-011', 
'fn-unparsed-text-lines-012', 
'fn-unparsed-text-lines-013', 
'fn-unparsed-text-lines-014', 
'fn-unparsed-text-lines-015', 
'fn-unparsed-text-lines-016', 
'fn-unparsed-text-lines-017', 
'fn-unparsed-text-lines-018', 
'fn-unparsed-text-lines-019', 
'fn-unparsed-text-lines-020', 
'fn-unparsed-text-lines-021', 
'fn-unparsed-text-lines-022', 
'fn-unparsed-text-lines-023', 
'fn-unparsed-text-lines-024', 
'fn-unparsed-text-lines-025', 
'fn-unparsed-text-lines-026', 
'fn-unparsed-text-lines-027', 
'fn-unparsed-text-lines-028', 
'fn-unparsed-text-lines-029', 
'fn-unparsed-text-lines-030', 
'fn-unparsed-text-lines-031', 
'fn-unparsed-text-lines-032', 
'fn-unparsed-text-lines-033', 
'fn-unparsed-text-lines-034', 
'fn-unparsed-text-lines-035', 
'fn-unparsed-text-lines-036', 
'fn-unparsed-text-lines-037', 
'fn-unparsed-text-lines-038', 
'fn-unparsed-text-lines-039', 
'fn-unparsed-text-lines-040', 
'fn-unparsed-text-lines-041', 
'fn-unparsed-text-lines-042', 
'fn-unparsed-text-lines-043', 
'fn-unparsed-text-lines-044', 
'fn-unparsed-text-lines-045', 
'fn-unparsed-text-lines-046', 
'fn-unparsed-text-lines-047', 
'fn-unparsed-text-lines-048', 
'fn-unparsed-text-lines-049', 
'fn-unparsed-text-lines-050', 
'fn-unparsed-text-lines-051', 
'fn-unparsed-text-lines-052', 
'fn-unparsed-text-lines-053', 
'fn-unparsed-text-lines-054', 
'fn-unparsed-text-lines-055'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
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
]; 
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/staff.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
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
]; 
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('math',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array-and-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('unparsed-text-lines',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{filename:join(__BaseDir, "unparsed-text/text-plain-utf-16be-bom-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom-lines.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-16le-bom-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom-lines.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom-lines-3.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines-3.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom-lines-2.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines-2.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-lines.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-lines.txt"}, 
{filename:join(__BaseDir, "unparsed-text/unknown-encoding.txt"),"http://www.w3.org/fots/unparsed-text/unknown-encoding.txt"}, 
{filename:join(__BaseDir, "unparsed-text/invalid-xml.xml"),"http://www.w3.org/fots/unparsed-text/invalid-xml.xml"}, 
{filename:join(__BaseDir, "unparsed-text/non-xml-character.txt"),"http://www.w3.org/fots/unparsed-text/non-xml-character.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-xml-iso-8859-1.xml"),"http://www.w3.org/fots/unparsed-text/text-xml-iso-8859-1.xml"}, 
{filename:join(__BaseDir, "unparsed-text/text-xml-utf-16.xml"),"http://www.w3.org/fots/unparsed-text/text-xml-utf-16.xml"}, 
{filename:join(__BaseDir, "unparsed-text/text-xml-utf-8.xml"),"http://www.w3.org/fots/unparsed-text/text-xml-utf-8.xml"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-iso-8859-1.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-invalid.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-iso-8859-1.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-iso-8859-1.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-16be-bom.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-16le-bom.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8-bom.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom.txt"}, 
{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
]; 
environment('unparsed-text-lines-with-base-uri',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
]; 
environment('unparsed-text-lines-with-base-uri-2',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
].
'fn-unparsed-text-lines-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines#0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:exists(fn:unparsed-text-lines#1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:exists(fn:unparsed-text-lines#2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(static-base-uri(), \"utf-8\", \"\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines#3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-unparsed-text-lines-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:unparsed-text-lines( 
                if (current-date() eq xs:date('1900-01-01'))
                then \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\"
                else 1 ),
              fn:unparsed-text-lines( 
                if (current-date() eq xs:date('1900-01-01'))
                then 1
                else \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-unparsed-text-lines-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:unparsed-text-lines( 
                \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
                if (current-date() eq xs:date('1900-01-01'))
                then \"utf-8\"
                else 1 ),
              fn:unparsed-text-lines( 
                \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
                if (current-date() eq xs:date('1900-01-01'))
                then 1
                else \"utf-8\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"staticTyping"}. 
'fn-unparsed-text-lines-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:unparsed-text-lines( 
              \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
              if (current-date() eq xs:date('1900-01-01'))
              then \"utf-8\"
              else () ),
              fn:unparsed-text-lines( 
              \"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\",
              if (current-date() eq xs:date('1900-01-01'))
              then ()
              else \"utf-8\") )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.example.org/#fragment\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.example.org/#fragment\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.example.org/%gg\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.example.org/%gg\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\":/\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\":/\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines( \"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines( \"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-020.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"surely-nobody-supports-this:/path.txt\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"surely-nobody-supports-this:/path.txt\", \"utf-8\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-022.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"unparsed-text/text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"unparsed-text/text-plain-utf-8.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"does-not-exist.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"does-not-exist.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"text-plain-utf-8.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"C:\\file-might-exist.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"C:\\file-might-exist.txt\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines-with-base-uri',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines-with-base-uri-2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines-with-base-uri-2',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/does-not-exists.txt"}]}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"\", \"utf-8\")", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/does-not-exists.txt"}]}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/does-not-exist.txt\"))[1]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-035.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1170") of 
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
'fn-unparsed-text-lines-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\", \"123\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-036.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/unknown-encoding.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-037.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FOUT1200") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-lines-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-invalid.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-038.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/non-xml-character.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-039.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1190") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/invalid-xml.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-040.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"'<?xml version=\"1.0\" encoding=\"utf-16\"?><text>hello world'") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1200") of 
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
'fn-unparsed-text-lines-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-042.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-043.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-044.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-iso-8859-1.txt\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-045.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "hello world") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-lines-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-xml-utf-8.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-046.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"utf-8\"?><text>hello world</text>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-xml-utf-16.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-047.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"utf-16\"?><text>hello world</text>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1200") of 
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
'fn-unparsed-text-lines-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text(\"http://www.w3.org/fots/unparsed-text/text-xml-iso-8859-1.xml\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?><text>hello world</text>") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1190") of 
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
'fn-unparsed-text-lines-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-lines.txt\") ! string-length(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-049.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(53, 54, 179, 77, 32)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines.txt\") ! string-length(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-050.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(53, 54, 179, 77, 32)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16le-bom-lines.txt\") ! string-length(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-051.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"(53, 54, 179, 77, 32)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1200") of 
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
'fn-unparsed-text-lines-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-16be-bom-lines.txt\") ! string-length(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-052.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"(53, 54, 179, 77, 32)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOUT1200") of 
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
'fn-unparsed-text-lines-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines-2.txt\") ! string-length(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-053.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(50, 0, 0, 50, 0, 0)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines(\"http://www.w3.org/fots/unparsed-text/text-plain-utf-8-bom-lines-3.txt\") ! string-length(.)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('unparsed-text-lines',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-054.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(46, 0, 20)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-unparsed-text-lines-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:unparsed-text-lines($href)", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{[]}]}, 
{'context-item', [""]}, 
{vars, [{"href","xs:string","'unparsed-text/text-plain-utf-8.txt'"}]}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-unparsed-text-lines-055.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.