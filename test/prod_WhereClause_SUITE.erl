-module('prod_WhereClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['WhereExpr001'/1]).
-export(['WhereExpr002'/1]).
-export(['WhereExpr003'/1]).
-export(['WhereExpr004'/1]).
-export(['WhereExpr005'/1]).
-export(['WhereExpr006'/1]).
-export(['WhereExpr007'/1]).
-export(['WhereExpr008'/1]).
-export(['WhereExpr009'/1]).
-export(['WhereExpr010'/1]).
-export(['WhereExpr013'/1]).
-export(['WhereExpr014'/1]).
-export(['WhereExpr015'/1]).
-export(['WhereExpr016'/1]).
-export(['WhereExpr017'/1]).
-export(['WhereExpr018'/1]).
-export(['WhereExpr019'/1]).
-export(['WhereExpr020'/1]).
-export(['WhereExpr020a'/1]).
-export(['WhereExpr021'/1]).
-export(['WhereExpr022'/1]).
-export(['WhereExpr023'/1]).
-export(['WhereExpr024'/1]).
-export(['WhereExpr025'/1]).
-export(['WhereExpr026'/1]).
-export(['WhereExpr027'/1]).
-export(['WhereExpr028'/1]).
-export(['WhereExpr029'/1]).
-export(['WhereExpr030'/1]).
-export(['WhereExpr031'/1]).
-export(['WhereExpr032'/1]).
-export(['WhereExpr033'/1]).
-export(['whereClause-1'/1]).
-export(['whereClause-2'/1]).
-export(['whereClause-3'/1]).
-export(['whereClause-4'/1]).
-export(['whereClause-5'/1]).
-export(['whereClause-6'/1]).
-export(['whereClause-7'/1]).
-export(['whereClause-8'/1]).
-export(['whereClause-9'/1]).
-export(['whereClause-10'/1]).
-export(['whereClause-11'/1]).
-export(['K-WhereExpr-1'/1]).
-export(['K-WhereExpr-2'/1]).
-export(['K-WhereExpr-3'/1]).
-export(['K-WhereExpr-4'/1]).
-export(['K-WhereExpr-5'/1]).
-export(['K-WhereExpr-6'/1]).
-export(['K-WhereExpr-7'/1]).
-export(['K-WhereExpr-8'/1]).
-export(['K-WhereExpr-9'/1]).
-export(['K-WhereExpr-10'/1]).
-export(['K-WhereExpr-11'/1]).
-export(['K2-WhereExpr-1'/1]).
-export(['K2-WhereExpr-1b'/1]).
-export(['K2-WhereExpr-2'/1]).
-export(['cbcl-hash-join-1'/1]).
-export(['cbcl-hash-join-2'/1]).
-export(['cbcl-hash-join-3'/1]).
-export(['cbcl-hash-join-4'/1]).
-export(['cbcl-hash-join-005'/1]).
-export(['cbcl-product-001'/1]).
-export(['cbcl-set-from-optional-item-001'/1]).
-export(['cbcl-hash-join-006'/1]).
-export(['cbcl-hash-join-007'/1]).
-export(['cbcl-hash-join-008'/1]).
-export(['cbcl-hash-join-009'/1]).
-export(['cbcl-hash-join-010'/1]).
-export(['cbcl-group-by-key-001'/1]).
-export(['cbcl-group-by-key-002'/1]).
-export(['cbcl-group-by-key-003'/1]).
-export(['cbcl-group-by-key-004'/1]).
-export(['cbcl-left-outer-join-001'/1]).
-export(['cbcl-hash-join-011'/1]).
-export(['cbcl-map-concat-001'/1]).
-export(['cbcl-map-concat-002'/1]).
-export(['cbcl-map-concat-003'/1]).
-export(['cbcl-left-outer-join-002'/1]).
-export(['cbcl-left-outer-join-003'/1]).
-export(['cbcl-left-outer-join-004'/1]).
-export(['cbcl-hash-join-012'/1]).
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
'WhereExpr001', 
'WhereExpr002', 
'WhereExpr003', 
'WhereExpr004', 
'WhereExpr005', 
'WhereExpr006', 
'WhereExpr007', 
'WhereExpr008', 
'WhereExpr009', 
'WhereExpr010', 
'WhereExpr013', 
'WhereExpr014', 
'WhereExpr015', 
'WhereExpr016', 
'WhereExpr017', 
'WhereExpr018', 
'WhereExpr019', 
'WhereExpr020', 
'WhereExpr020a', 
'WhereExpr021', 
'WhereExpr022', 
'WhereExpr023', 
'WhereExpr024', 
'WhereExpr025', 
'WhereExpr026', 
'WhereExpr027', 
'WhereExpr028', 
'WhereExpr029', 
'WhereExpr030', 
'WhereExpr031', 
'WhereExpr032', 
'WhereExpr033', 
'whereClause-1', 
'whereClause-2', 
'whereClause-3', 
'whereClause-4', 
'whereClause-5', 
'whereClause-6', 
'whereClause-7', 
'whereClause-8', 
'whereClause-9', 
'whereClause-10', 
'whereClause-11', 
'K-WhereExpr-1', 
'K-WhereExpr-2', 
'K-WhereExpr-3', 
'K-WhereExpr-4', 
'K-WhereExpr-5', 
'K-WhereExpr-6', 
'K-WhereExpr-7', 
'K-WhereExpr-8', 
'K-WhereExpr-9', 
'K-WhereExpr-10', 
'K-WhereExpr-11', 
'K2-WhereExpr-1', 
'K2-WhereExpr-1b', 
'K2-WhereExpr-2', 
'cbcl-hash-join-1', 
'cbcl-hash-join-2', 
'cbcl-hash-join-3', 
'cbcl-hash-join-4', 
'cbcl-hash-join-005', 
'cbcl-product-001', 
'cbcl-set-from-optional-item-001', 
'cbcl-hash-join-006', 
'cbcl-hash-join-007', 
'cbcl-hash-join-008', 
'cbcl-hash-join-009', 
'cbcl-hash-join-010', 
'cbcl-group-by-key-001', 
'cbcl-group-by-key-002', 
'cbcl-group-by-key-003', 
'cbcl-group-by-key-004', 
'cbcl-left-outer-join-001', 
'cbcl-hash-join-011', 
'cbcl-map-concat-001', 
'cbcl-map-concat-002', 
'cbcl-map-concat-003', 
'cbcl-left-outer-join-002', 
'cbcl-left-outer-join-003', 
'cbcl-left-outer-join-004', 
'cbcl-hash-join-012'
].
environment('fsx',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "ForClause/fsx.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'WhereExpr001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if ( count( for $f in //* where $f/File return $f/File[1] ) = count( //File[1]) ) then <Same/> else <notSame/>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Same />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $folder in //Folder where $folde/@name = \"ABC\" return <folder/>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $d in /MyComputer/Drive4 where $d/Folder[@id=\"128\"] return <FolderName>{$d/Folder/@name}</FolderName>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<FolderName name=\"Folder00000000047\" />") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $f in /MyComputer/Drive1/Folder[@creator=\"Mani\"]/File where $f/@creation_date=\"08/06/00\" return $f", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<File creation_date=\"08/06/00\" creator=\"Leon\" name=\"File00000000000\" type=\"FileType\" idref=\"1\" id=\"2\">
				<FileName>File00000000000</FileName>
				<description> abides fullest charms aprons batter perspective brags yesterday honor bluest<bold> wills crimeful calm lobby truer miser perseus take</bold> tapers owe ceas rhyme mindful surly suspect fantasticoes spirits legitimation holofernes portraiture trouts suffocating deed strides ithaca<bold> smiles sunshine loud right disdainfully figs searching</bold> curl reins humble nurture hue doom hidden abridgement seein<bold> invisible authentic shapes quae several reaches howled</bold> merry purpos howl burneth scholars untreasur maidenliest dealing</description>
				<SecurityObject name=\"so00000000001\">
					<Denies>
						<Deny>
							<security/>
							<user>system\\Changyuan</user>
						</Deny>
						<Deny>
							<security>
								<right>Read</right>
							</security>
							<user>system\\Toshiko</user>
						</Deny>
					</Denies>
					<Allows>
						<Allow>
							<security>
								<right>Read</right>
								<right>Write</right>
							</security>
							<user>system\\Hyungjeong</user>
						</Allow>
					</Allows>
				</SecurityObject>
				<Stream binary=\"false\" streamid=\"1\" content-type=\"text/xml\" size=\"1001.33\" name=\"sample.xml\" type=\"StreamType\">
					<StreamType>StreamType</StreamType>
					<StreamSize>1001.33</StreamSize>
					<StreamID>1</StreamID>
					<Binary>false</Binary>
					<Summary>This value is constant</Summary>
				</Stream>
			</File>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<empty> { for $folder in /MyComputer/Drive2//Folder where 1 = 2 return <Folder> { $folder/FolderName/text() } </Folder> } </empty>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<empty/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'WhereExpr006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $folder in /MyComputer/Drive4//Folder return <Folder>{ $folder/@name }{ for $file in /MyComputer/Drive4//File where $file/@idref = $folder/@id return <File>{ $file/@name }</File> }</Folder>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<Folder name=\"Folder00000000047\"/><Folder name=\"Folder00000000048\"><File name=\"File00000000077\"/><File name=\"File00000000078\"/><File name=\"File00000000079\"/><File name=\"File00000000080\"/><File name=\"File00000000081\"/></Folder><Folder name=\"Folder00000000049\"><File name=\"File00000000082\"/><File name=\"File00000000083\"/><File name=\"File00000000084\"/><File name=\"File00000000085\"/><File name=\"File00000000086\"/></Folder><Folder name=\"Folder00000000050\"><File name=\"File00000000087\"/><File name=\"File00000000088\"/></Folder><Folder name=\"Folder00000000051\"><File name=\"File00000000089\"/><File name=\"File00000000090\"/><File name=\"File00000000091\"/><File name=\"File00000000092\"/><File name=\"File00000000093\"/><File name=\"File00000000094\"/></Folder><Folder name=\"Folder00000000052\"><File name=\"File00000000095\"/><File name=\"File00000000096\"/></Folder><Folder name=\"Folder00000000053\"><File name=\"File00000000097\"/><File name=\"File00000000098\"/><File name=\"File00000000099\"/></Folder><Folder name=\"Folder00000000054\"><File name=\"File00000000100\"/></Folder>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<fragment-result>{ for $folder in /MyComputer/Drive3/Folder ,$file in /MyComputer/Drive3/Folder/File where $folder/@id = $file/@idref return <Folder> { $folder/@name, $folder/@id } <file>{ $file/@idref, $file/FileName/text() }</file> </Folder> }</fragment-result>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fragment-result><Folder name=\"Folder00000000017\" id=\"67\"><file idref=\"67\">File00000000047</file></Folder><Folder name=\"Folder00000000032\" id=\"97\"><file idref=\"97\">File00000000062</file></Folder></fragment-result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<empty> { for $file in (//Folder)[1]/File where () return $file/FileName } </empty>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<empty/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'WhereExpr009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where $file/SecurityObject/Denies/Deny/security/right return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000011</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where data( $file/SecurityObject//right ) return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where $file/SecurityObject/Denies/Deny/security/right=\"Change\" return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000008</FileName><FileName>File00000000014</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000025</FileName><FileName>File00000000030</FileName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where true() return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<empty> { for $file in (//Folder)[1]/File where false() return $file/FileName } </empty>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<empty/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'WhereExpr016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file at $offset in (//Folder)[1]/File where $offset mod 2 = 1 return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<FileName>File00000000000</FileName><FileName>File00000000002</FileName><FileName>File00000000004</FileName><FileName>File00000000006</FileName><FileName>File00000000008</FileName><FileName>File00000000010</FileName><FileName>File00000000012</FileName><FileName>File00000000014</FileName><FileName>File00000000016</FileName><FileName>File00000000018</FileName><FileName>File00000000020</FileName><FileName>File00000000022</FileName><FileName>File00000000024</FileName><FileName>File00000000026</FileName><FileName>File00000000028</FileName><FileName>File00000000030</FileName>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where true(), true() return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where $undefined return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where_ true() return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr019.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'WhereExpr020a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $file in (//Folder)[1]/File where true() where false() return $file/FileName", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr020a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'WhereExpr022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $file in //File 
         let $namelen := string-length($file/FileName)
         where ($namelen = 15 and $file//Allow/user = 'system\\Hyungjeong') 
         return $file/FileName
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "File00000000000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $file in //File
         count $c
         where ($file//Allow/user = 'system\\Aladin') 
         return $c
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $file in //File 
         let $prefix := substring($file/FileName, 1, 4)
         where ($prefix = 'File')
         where ($file//Allow/user = 'system\\Hyungjeong')
         return $file/FileName
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "File00000000000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $file in //File 
         where current-date() gt xs:date('1900-01-01')
         let $prefix := substring($file/FileName, 1, 4)
         where ($prefix = 'File')
         where ($file//Allow/user = 'system\\Hyungjeong')
         return $file/FileName
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "File00000000000") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $doc := (/)
         return (11 to 15)!
            (for $file in $doc//File
            count $c
            where $c = position()
            return $file/FileName)
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "File00000000000 File00000000001 File00000000002 File00000000003 File00000000004") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $doc := (/)
         return (11 to 15)!
            (for $file at $c in $doc//File
            where $c = last()
            return string($file/FileName))
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('fsx',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "File00000000004 File00000000004 File00000000004 File00000000004 File00000000004") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $x := 1 to 10
         where $x = 1
         return $x
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 5 6 7 8 9 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $x := 1 to 10
         where count($x) = 1
         return $x
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $n external := 10;
         for $x allowing empty in 1 to $n
         where $x lt 5
         return $x
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $n external := 0;
         for $x allowing empty in 1 to $n
         where not($x = 5)
         return concat(\"[\", $x, \"]\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "[]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $x allowing empty in 1 to 5
         where $x lt 0
         return empty($x)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'WhereExpr033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $n external := 0;
         for $x in -2 to +2
         where ($n - $x)
         return $x
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "WhereExpr033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-2 -1 1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (fn:true()) where $var or fn:true() return $var or fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (fn:false()) where fn:not($var or fn:false()) return $var or fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (fn:true()) where $var and fn:true() return $var and fn:true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := (fn:false()) where fn:not($var and fn:false()) return $var and fn:false()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := 100 where typeswitch($var) case $i as xs:string return fn:false() case $i as xs:integer return fn:true() default return fn:false() return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"100") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := \"String\" where fn:string($var) = \"String\" return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "String") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := \"String\" where fn:string-length($var) = 6 return fn:string-length($var)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := 100 where fn:count(($var)) = 1 return fn:count(($var))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement>Some content</anElement> where $var is $var return $var is $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $var := 1 
         where some $x in (1, 2) satisfies fn:string($var) = \"1\" 
         return fn:string($var )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'whereClause-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         let $var := 1 
         where every $x in (1, 1) satisfies fn:string($var) = \"1\" 
         return fn:string($var )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "whereClause-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(for $fo in (1, 2, 3) where $fo eq 3 return $fo)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(exactly-one((for $fo in (1, 2, 3) where $fo eq 3 return $fo)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "count((for $fo in (1, 2, 3) where xs:time(\"08:08:23Z\") return $fo)) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in 1 where count(($i, 2, timezone-from-time(current-time()))) return true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(for $i in 1 where false() return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(for $i in 1 where true() return $i) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(for $i in 1 where (1, current-time())[1] treat as xs:integer eq 0 return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(for $i in 1 where (1, current-time())[1] treat as xs:integer eq 1 return $i) eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 2, current-time())[1] where fn:boolean($i treat as xs:integer) return true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 2, current-time())[1] where xs:anyURI(\"example.com/\") return true()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-WhereExpr-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(for $i in (1, 2, current-time())[1] where xs:anyURI(\"\") return true())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-WhereExpr-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-WhereExpr-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"XQ10+"}. 
'K2-WhereExpr-1b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in 1 where true() where true() return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-WhereExpr-1b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-WhereExpr-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in 1 where true(), true() return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-WhereExpr-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (xs:untypedAtomic(\"123\"), xs:untypedAtomic(\"234\")) for $y in (xs:string(\"123\"), xs:float(123), xs:double(123)) where $x = $y return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "123 123 123") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0004") of 
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
'cbcl-hash-join-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (xs:integer(\"123\"), xs:integer(\"234\")) for $y in (xs:integer(\"123\"), xs:integer(\"456\")) where $x = $y return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (xs:date(\"2010-10-10\"), xs:date(\"1997-01-01+12:00\"), xs:date(\"1997-01-02+12:00\")) for $y in (adjust-date-to-timezone(xs:date(\"2010-10-10\"), implicit-timezone()), xs:date(\"1997-01-01-12:00\")) where $x = $y return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2010-10-10 1997-01-02+12:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (xs:untypedAtomic(\"2.0\"), xs:untypedAtomic(\"3\"), xs:double(\"3.0\")) for $y in (xs:untypedAtomic(\"2\"), xs:untypedAtomic(\"3\"), xs:double(\"3\")) where $x = $y return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "3 3 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0004") of 
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
'cbcl-hash-join-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:durationOrFloat($i as xs:integer) { (xs:float(123), xs:float(234), xs:duration(\"P1D\"))[$i] }; for $x in (xs:untypedAtomic(\"123\"), xs:untypedAtomic(\"234\")) for $y in (for $z in (1,2) return local:durationOrFloat($z)) where $x = $y return $x", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "123 234") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-product-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:odds($arg as xs:integer*) as xs:integer* { $arg[. mod 2 eq 1] }; boolean(zero-or-one(for $x in local:odds((2,4,8)),$y in local:odds((2,4,8)) return ($x,$y)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-product-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-set-from-optional-item-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:odds($arg as xs:integer?) as xs:integer? { $arg[. mod 2 eq 1] }; boolean(for $x in local:odds(2) where $x < 3 return $x + 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-set-from-optional-item-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:sequence($arg as xs:integer) as item()* { if ($arg mod 2 eq 0) then (1, 3, 5, 7, 9) else (\"a\", \"b\", \"c\") }; for $x in local:sequence(2) for $y in local:sequence(3) where $x = $y return ($x, $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:sequence($arg as xs:integer) as item()* { if ($arg mod 2 eq 0) then (1, 3, 5, 7, 9) else (\"a\", \"b\", \"c\") }; for $x in local:sequence(2) for $y in local:sequence(2) where $x = $y return ($x, $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 3 3 5 5 7 7 9 9") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:sequence($arg as xs:integer) as item()* { if ($arg mod 2 eq 0) then (1, 3, 5, 7, 9, \"cheese\") else (xs:untypedAtomic(\"1\"), xs:untypedAtomic(\"2\")) }; for $x in local:sequence(2) for $y in local:sequence(3) where $x = $y return ($x, $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (1,2,3,\"cheese\") for $y in (1,2,3,\"cheese\") where $x = $y return ($x, $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (1,2,3, xs:untypedAtomic(\"1\")) for $y in (1,2,3,\"cheese\") where $x = $y return ($x, $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-group-by-key-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:get-words() { tokenize(\"she sells sea shells by the sea shore\", \"\\s+\") }; let $words := local:get-words() let $distinct-words := distinct-values($words) for $word in $distinct-words return <word word=\"{$word}\" count=\"{count($words[. = $word])}\" />", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-group-by-key-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<word word=\"she\" count=\"1\"/><word word=\"sells\" count=\"1\"/><word word=\"sea\" count=\"2\"/><word word=\"shells\" count=\"1\"/><word word=\"by\" count=\"1\"/><word word=\"the\" count=\"1\"/><word word=\"shore\" count=\"1\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-group-by-key-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := distinct-values($items) for $dist in $distinct-items, $item in $items where $item = $dist return $item", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-group-by-key-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 4 4 4 4 4 4 4 4 4 4 5 5 5 5 5 5 5 5 5 5 6 6 6 6 6 6 6 6 6 6 7 7 7 7 7 7 7 7 7 7 8 8 8 8 8 8 8 8 8 8 9 9 9 9 9 9 9 9 9 9 0 0 0 0 0 0 0 0 0 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-group-by-key-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := distinct-values($items) for $dist in $distinct-items return min( if ($dist = 0) then 0 else for $item in $items where $item = $dist return fn:round(1000 div $item))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-group-by-key-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000 500 333 250 200 167 143 125 111 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-group-by-key-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := distinct-values($items) for $dist in $distinct-items return min( for $item in $items where $item = $dist return if ($dist = 0) then 0 else fn:round(1000 div $item))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-group-by-key-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000 500 333 250 200 167 143 125 111 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-left-outer-join-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $items := for $x in 1 to 100 return $x mod 10, $distinct-items := for $y in 1 to (count($items) idiv 10) return $y mod 10 for $dist in $distinct-items return if ($dist = 0) then 0 else min( for $item in $items where $item = $dist return fn:round(1000 div $item))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-left-outer-join-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1000 500 333 250 200 167 143 125 111 0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in <t><r><d>1</d><d>1</d><d>1</d></r><r><d>1</d><d>2</d><d>3</d></r><r><d>2</d><d>3</d><d>4</d></r></t>/r, $y in <t><r><d>1</d><d>1</d><d>1</d></r><r><d>2</d><d>4</d><d>6</d></r><r><d>3</d><d>2</d><d>1</d></r></t>/r where $x/d/string(.) = $y/d/string(.) return concat($x, '=', $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "111=111 111=321 123=111 123=246 123=321 234=246 234=321") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-map-concat-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then true() else () }; declare function local:g($x) { if ($x) then \"true\" else \"false\" }; let $x := local:g(true()) for $y in local:f($x) return ($y, $x)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-map-concat-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-map-concat-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then true() else () }; empty(for $x in local:f(false()), $y in 1 to 10 return ($x, $y))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-map-concat-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-map-concat-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:f($x) { if ($x) then true() else () }; for $x in local:f(true()), $y in 1 to 10 return ($x, $y)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-map-concat-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true 1 true 2 true 3 true 4 true 5 true 6 true 7 true 8 true 9 true 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-left-outer-join-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> { for $x in 1 to 10 return <a>{for $y in 1 to 10 where $x > 7 and $y = $x return $y}</a> } </e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-left-outer-join-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><a/><a/><a/><a/><a/><a/><a/><a>8</a><a>9</a><a>10</a></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-left-outer-join-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e> { for $x in 1 to 10 where $x > 7 return <a>{for $y in 1 to 10 where $y = $x return $y}</a> } </e>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-left-outer-join-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><a>8</a><a>9</a><a>10</a></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-left-outer-join-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<tbody> { let $rows := <tables> <table> <row> <entry>Acetazolamide</entry> <entry>Acetazolamide</entry> </row> <row> <entry>Acetazolamide sodium</entry> <entry>Acetazolamide sodium</entry> </row> </table> <table> <row> <entry>Acetylcholine chloride</entry> <entry>Acetylcholine chloride</entry> </row> </table> <table> <row> <entry>Acetylcysteine</entry> <entry>Acetylcysteine</entry> </row> <row> <entry>Acetylcysteine sodium</entry> <entry>Acetylcysteine sodium</entry> </row> </table> </tables>/table/row return for $g in distinct-values($rows/entry[2][string(.)]) order by $g return let $matches := for $row in $rows where $g = string($row/entry[2][string(.)]) return $row/entry[1] return <entry> { $matches/( <link> { node() } </link>, text { if (position() lt last()) then '; ' else () } ) } </entry> } </tbody>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-left-outer-join-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<tbody><entry><link>Acetazolamide</link></entry><entry><link>Acetazolamide sodium</link></entry><entry><link>Acetylcholine chloride</link></entry><entry><link>Acetylcysteine</link></entry><entry><link>Acetylcysteine sodium</link></entry></tbody>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-hash-join-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $strings := ('1','2'); declare variable $untypeds := (<untyped>1</untyped>,<untyped>2</untyped>); for $string in $strings for $untyped in $untypeds where $untyped = $string return $string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-hash-join-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.