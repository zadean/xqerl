-module('prod_OrderByClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['orderBy1'/1]).
-export(['orderBy2'/1]).
-export(['orderBy3'/1]).
-export(['orderBy4'/1]).
-export(['orderBy5'/1]).
-export(['orderBy6'/1]).
-export(['orderBy7'/1]).
-export(['orderBy8'/1]).
-export(['orderBy9'/1]).
-export(['orderBy10'/1]).
-export(['orderBy11'/1]).
-export(['orderBy12'/1]).
-export(['orderBy13'/1]).
-export(['orderBy14'/1]).
-export(['orderBy15'/1]).
-export(['orderBy16'/1]).
-export(['orderBy17'/1]).
-export(['orderBy18'/1]).
-export(['orderBy19'/1]).
-export(['orderBy20'/1]).
-export(['orderBy21'/1]).
-export(['orderBy22'/1]).
-export(['orderBy23'/1]).
-export(['orderBy24'/1]).
-export(['orderBy25'/1]).
-export(['orderBy26'/1]).
-export(['orderBy27'/1]).
-export(['orderBy28'/1]).
-export(['orderBy29'/1]).
-export(['orderBy29a'/1]).
-export(['orderBy30'/1]).
-export(['orderBy31'/1]).
-export(['orderBy32'/1]).
-export(['orderBy33'/1]).
-export(['orderBy34'/1]).
-export(['orderBy35'/1]).
-export(['orderBy36'/1]).
-export(['orderBy37'/1]).
-export(['orderBy38'/1]).
-export(['orderBy39'/1]).
-export(['orderBy40'/1]).
-export(['orderBy41'/1]).
-export(['orderBy42'/1]).
-export(['orderBy43'/1]).
-export(['orderBy44'/1]).
-export(['orderBy45'/1]).
-export(['orderBy46'/1]).
-export(['orderBy47'/1]).
-export(['orderBy49'/1]).
-export(['orderBy50'/1]).
-export(['orderBy51'/1]).
-export(['orderBy52'/1]).
-export(['orderBy52a'/1]).
-export(['orderBy53'/1]).
-export(['orderBy54'/1]).
-export(['orderBy55'/1]).
-export(['orderBy56'/1]).
-export(['orderBy57'/1]).
-export(['orderBy59'/1]).
-export(['orderBy60'/1]).
-export(['orderBy61'/1]).
-export(['orderBy62'/1]).
-export(['orderBy63'/1]).
-export(['orderBy64'/1]).
-export(['orderBy65'/1]).
-export(['orderBy66'/1]).
-export(['orderBy67'/1]).
-export(['orderBy68'/1]).
-export(['orderbylocal-1'/1]).
-export(['orderbylocal-2'/1]).
-export(['orderbylocal-3'/1]).
-export(['orderbylocal-4'/1]).
-export(['orderbylocal-5'/1]).
-export(['orderbylocal-6'/1]).
-export(['orderbylocal-7'/1]).
-export(['orderbylocal-8'/1]).
-export(['orderbylocal-9'/1]).
-export(['orderbylocal-10'/1]).
-export(['orderbylocal-11'/1]).
-export(['orderbylocal-12'/1]).
-export(['orderbylocal-16'/1]).
-export(['orderbylocal-17'/1]).
-export(['orderbylocal-18'/1]).
-export(['orderbylocal-19'/1]).
-export(['orderbylocal-20'/1]).
-export(['orderbylocal-21'/1]).
-export(['orderbylocal-22'/1]).
-export(['orderbylocal-25'/1]).
-export(['orderbylocal-26'/1]).
-export(['orderbylocal-27'/1]).
-export(['orderbylocal-28'/1]).
-export(['orderbylocal-29'/1]).
-export(['orderbylocal-30'/1]).
-export(['orderbylocal-31'/1]).
-export(['orderbylocal-32'/1]).
-export(['orderbylocal-35'/1]).
-export(['orderbylocal-36'/1]).
-export(['orderbylocal-37'/1]).
-export(['orderbylocal-38'/1]).
-export(['orderbylocal-39'/1]).
-export(['orderbylocal-40'/1]).
-export(['orderbylocal-41'/1]).
-export(['orderbylocal-42'/1]).
-export(['orderbylocal-43'/1]).
-export(['orderbylocal-44'/1]).
-export(['orderbylocal-45'/1]).
-export(['orderbylocal-46'/1]).
-export(['orderbylocal-47'/1]).
-export(['orderbylocal-49'/1]).
-export(['orderbylocal-50'/1]).
-export(['orderbylocal-51'/1]).
-export(['orderbylocal-52'/1]).
-export(['orderbylocal-55'/1]).
-export(['orderbylocal-56'/1]).
-export(['orderbylocal-57'/1]).
-export(['orderbylocal-59'/1]).
-export(['orderbylocal-60'/1]).
-export(['orderbywithout-1'/1]).
-export(['orderbywithout-2'/1]).
-export(['orderbywithout-3'/1]).
-export(['orderbywithout-4'/1]).
-export(['orderbywithout-5'/1]).
-export(['orderbywithout-6'/1]).
-export(['orderbywithout-7'/1]).
-export(['orderbywithout-8'/1]).
-export(['orderbywithout-9'/1]).
-export(['orderbywithout-10'/1]).
-export(['orderbywithout-11'/1]).
-export(['orderbywithout-12'/1]).
-export(['orderbywithout-13'/1]).
-export(['orderbywithout-14'/1]).
-export(['orderbywithout-15'/1]).
-export(['orderbywithout-16'/1]).
-export(['orderbywithout-17'/1]).
-export(['orderbywithout-18'/1]).
-export(['orderbywithout-19'/1]).
-export(['orderbywithout-20'/1]).
-export(['orderbywithout-21'/1]).
-export(['orderbywithout-22'/1]).
-export(['orderbywithout-23'/1]).
-export(['orderbywithout-24'/1]).
-export(['orderbywithout-25'/1]).
-export(['orderbywithout-26'/1]).
-export(['orderbywithout-27'/1]).
-export(['orderbywithout-28'/1]).
-export(['orderbywithout-29'/1]).
-export(['orderbywithout-30'/1]).
-export(['orderbywithout-31'/1]).
-export(['orderbywithout-32'/1]).
-export(['orderbywithout-33'/1]).
-export(['orderbywithout-34'/1]).
-export(['orderbywithout-35'/1]).
-export(['orderbywithout-36'/1]).
-export(['orderbywithout-37'/1]).
-export(['orderbywithout-38'/1]).
-export(['orderbywithout-39'/1]).
-export(['orderbywithout-40'/1]).
-export(['K2-OrderbyExprWithout-1'/1]).
-export(['K2-OrderbyExprWithout-2'/1]).
-export(['K2-OrderbyExprWithout-3'/1]).
-export(['K2-OrderbyExprWithout-5'/1]).
-export(['K2-OrderbyExprWithout-6'/1]).
-export(['K2-OrderbyExprWithout-7'/1]).
-export(['K2-OrderbyExprWithout-8'/1]).
-export(['K2-OrderbyExprWithout-9'/1]).
-export(['K2-OrderbyExprWithout-10'/1]).
-export(['K2-OrderbyExprWithout-11'/1]).
-export(['K2-OrderbyExprWithout-12'/1]).
-export(['K2-OrderbyExprWithout-13'/1]).
-export(['K2-OrderbyExprWithout-14'/1]).
-export(['K2-OrderbyExprWithout-15'/1]).
-export(['K2-OrderbyExprWithout-16'/1]).
-export(['K2-OrderbyExprWithout-17'/1]).
-export(['K2-OrderbyExprWithout-18'/1]).
-export(['K2-OrderbyExprWithout-19'/1]).
-export(['K2-OrderbyExprWithout-20'/1]).
-export(['K2-OrderbyExprWithout-21'/1]).
-export(['K2-OrderbyExprWithout-22'/1]).
-export(['K2-OrderbyExprWithout-23'/1]).
-export(['K2-OrderbyExprWithout-24'/1]).
-export(['K2-OrderbyExprWithout-25'/1]).
-export(['K2-OrderbyExprWithout-26'/1]).
-export(['K2-OrderbyExprWithout-27'/1]).
-export(['K2-OrderbyExprWithout-28'/1]).
-export(['K2-OrderbyExprWithout-29'/1]).
-export(['K2-OrderbyExprWithout-30'/1]).
-export(['K2-OrderbyExprWithout-31'/1]).
-export(['K2-OrderbyExprWithout-32'/1]).
-export(['K2-OrderbyExprWithout-33'/1]).
-export(['K2-OrderbyExprWithout-34'/1]).
-export(['K2-OrderbyExprWithout-35'/1]).
-export(['K2-OrderbyExprWithout-36'/1]).
-export(['K2-OrderbyExprWithout-37'/1]).
-export(['K2-OrderbyExprWithout-38'/1]).
-export(['K2-OrderbyExprWithout-39'/1]).
-export(['K2-OrderbyExprWithout-40'/1]).
-export(['K2-OrderbyExprWithout-41'/1]).
-export(['K2-OrderbyExprWithout-42'/1]).
-export(['K2-OrderbyExprWithout-43'/1]).
-export(['K2-OrderbyExprWithout-44'/1]).
-export(['K2-OrderbyExprWithout-45'/1]).
-export(['K2-OrderbyExprWithout-46'/1]).
-export(['K2-OrderbyExprWithout-47'/1]).
-export(['K2-OrderbyExprWithout-48'/1]).
-export(['K2-OrderbyExprWithout-49'/1]).
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
'orderBy1', 
'orderBy2', 
'orderBy3', 
'orderBy4', 
'orderBy5', 
'orderBy6', 
'orderBy7', 
'orderBy8', 
'orderBy9', 
'orderBy10', 
'orderBy11', 
'orderBy12', 
'orderBy13', 
'orderBy14', 
'orderBy15', 
'orderBy16', 
'orderBy17', 
'orderBy18', 
'orderBy19', 
'orderBy20', 
'orderBy21', 
'orderBy22', 
'orderBy23', 
'orderBy24', 
'orderBy25', 
'orderBy26', 
'orderBy27', 
'orderBy28', 
'orderBy29', 
'orderBy29a', 
'orderBy30', 
'orderBy31', 
'orderBy32', 
'orderBy33', 
'orderBy34', 
'orderBy35', 
'orderBy36', 
'orderBy37', 
'orderBy38', 
'orderBy39', 
'orderBy40', 
'orderBy41', 
'orderBy42', 
'orderBy43', 
'orderBy44', 
'orderBy45', 
'orderBy46', 
'orderBy47', 
'orderBy49', 
'orderBy50', 
'orderBy51', 
'orderBy52', 
'orderBy52a', 
'orderBy53', 
'orderBy54', 
'orderBy55', 
'orderBy56', 
'orderBy57', 
'orderBy59', 
'orderBy60', 
'orderBy61', 
'orderBy62', 
'orderBy63', 
'orderBy64', 
'orderBy65', 
'orderBy66', 
'orderBy67', 
'orderBy68', 
'orderbylocal-1', 
'orderbylocal-2', 
'orderbylocal-3', 
'orderbylocal-4', 
'orderbylocal-5', 
'orderbylocal-6', 
'orderbylocal-7', 
'orderbylocal-8', 
'orderbylocal-9', 
'orderbylocal-10', 
'orderbylocal-11', 
'orderbylocal-12', 
'orderbylocal-16', 
'orderbylocal-17', 
'orderbylocal-18', 
'orderbylocal-19', 
'orderbylocal-20', 
'orderbylocal-21', 
'orderbylocal-22', 
'orderbylocal-25', 
'orderbylocal-26', 
'orderbylocal-27', 
'orderbylocal-28', 
'orderbylocal-29', 
'orderbylocal-30', 
'orderbylocal-31', 
'orderbylocal-32', 
'orderbylocal-35', 
'orderbylocal-36', 
'orderbylocal-37', 
'orderbylocal-38', 
'orderbylocal-39', 
'orderbylocal-40', 
'orderbylocal-41', 
'orderbylocal-42', 
'orderbylocal-43', 
'orderbylocal-44', 
'orderbylocal-45', 
'orderbylocal-46', 
'orderbylocal-47', 
'orderbylocal-49', 
'orderbylocal-50', 
'orderbylocal-51', 
'orderbylocal-52', 
'orderbylocal-55', 
'orderbylocal-56', 
'orderbylocal-57', 
'orderbylocal-59', 
'orderbylocal-60', 
'orderbywithout-1', 
'orderbywithout-2', 
'orderbywithout-3', 
'orderbywithout-4', 
'orderbywithout-5', 
'orderbywithout-6', 
'orderbywithout-7', 
'orderbywithout-8', 
'orderbywithout-9', 
'orderbywithout-10', 
'orderbywithout-11', 
'orderbywithout-12', 
'orderbywithout-13', 
'orderbywithout-14', 
'orderbywithout-15', 
'orderbywithout-16', 
'orderbywithout-17', 
'orderbywithout-18', 
'orderbywithout-19', 
'orderbywithout-20', 
'orderbywithout-21', 
'orderbywithout-22', 
'orderbywithout-23', 
'orderbywithout-24', 
'orderbywithout-25', 
'orderbywithout-26', 
'orderbywithout-27', 
'orderbywithout-28', 
'orderbywithout-29', 
'orderbywithout-30', 
'orderbywithout-31', 
'orderbywithout-32', 
'orderbywithout-33', 
'orderbywithout-34', 
'orderbywithout-35', 
'orderbywithout-36', 
'orderbywithout-37', 
'orderbywithout-38', 
'orderbywithout-39', 
'orderbywithout-40', 
'K2-OrderbyExprWithout-1', 
'K2-OrderbyExprWithout-2', 
'K2-OrderbyExprWithout-3', 
'K2-OrderbyExprWithout-5', 
'K2-OrderbyExprWithout-6', 
'K2-OrderbyExprWithout-7', 
'K2-OrderbyExprWithout-8', 
'K2-OrderbyExprWithout-9', 
'K2-OrderbyExprWithout-10', 
'K2-OrderbyExprWithout-11', 
'K2-OrderbyExprWithout-12', 
'K2-OrderbyExprWithout-13', 
'K2-OrderbyExprWithout-14', 
'K2-OrderbyExprWithout-15', 
'K2-OrderbyExprWithout-16', 
'K2-OrderbyExprWithout-17', 
'K2-OrderbyExprWithout-18', 
'K2-OrderbyExprWithout-19', 
'K2-OrderbyExprWithout-20', 
'K2-OrderbyExprWithout-21', 
'K2-OrderbyExprWithout-22', 
'K2-OrderbyExprWithout-23', 
'K2-OrderbyExprWithout-24', 
'K2-OrderbyExprWithout-25', 
'K2-OrderbyExprWithout-26', 
'K2-OrderbyExprWithout-27', 
'K2-OrderbyExprWithout-28', 
'K2-OrderbyExprWithout-29', 
'K2-OrderbyExprWithout-30', 
'K2-OrderbyExprWithout-31', 
'K2-OrderbyExprWithout-32', 
'K2-OrderbyExprWithout-33', 
'K2-OrderbyExprWithout-34', 
'K2-OrderbyExprWithout-35', 
'K2-OrderbyExprWithout-36', 
'K2-OrderbyExprWithout-37', 
'K2-OrderbyExprWithout-38', 
'K2-OrderbyExprWithout-39', 
'K2-OrderbyExprWithout-40', 
'K2-OrderbyExprWithout-41', 
'K2-OrderbyExprWithout-42', 
'K2-OrderbyExprWithout-43', 
'K2-OrderbyExprWithout-44', 
'K2-OrderbyExprWithout-45', 
'K2-OrderbyExprWithout-46', 
'K2-OrderbyExprWithout-47', 
'K2-OrderbyExprWithout-48', 
'K2-OrderbyExprWithout-49'
].
environment('orderdata',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "OrderByClause/orderData.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "OrderByClause/orderData.xsd"),"http://www.w3.org/XQueryTestOrderBy"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('orderdata2',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "OrderByClause/orderData.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'orderBy1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy29a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'orderBy30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy52a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'orderBy53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'orderBy67'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         for $j in (text{'Az'}, text{'Bx'}, text{'Cy'}) 
         order by $j/substring(., $j/string-length(.)) 
         return $j/string()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderBy67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Bx\", \"Cy\", \"Az\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderBy68'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $in := <in><e on=\"2017-09-18\"/><e on=\"2016-04-15\"/><e on=\"2012-07-09\"/></in>;
         for $j in ($in//e/@on, xs:date('1999-12-17')) 
         order by $j 
         return $j
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderBy68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",
        \"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",
        \"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by xs:string($x) 
        ascending return xs:string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",
        \"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",
        \"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by xs:string($x) 
        descending return xs:string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String Y String X String W String V String U String T String S String R String P String O String N String M String L String K String J String I String H String G String F String E String D String C String B String A String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",
        \"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",
        \"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"()\") 
        ascending return concat(xs:string($x),\"()\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String() B String() C String() D String() E String() F String() G String() H String() I String() J String() K String() L String() M String() N String() O String() P String() R String() S String() T String() U String() V String() W String() X String() Y String() Z String()</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"()\") descending return concat(xs:string($x),\"()\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String() Y String() X String() W String() V String() U String() T String() S String() R String() P String() O String() N String() M String() L String() K String() J String() I String() H String() G String() F String() E String() D String() C String() B String() A String()</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"another String After\") ascending return concat(xs:string($x),\"another String After\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A Stringanother String After B Stringanother String After C Stringanother String After D Stringanother String After E Stringanother String After F Stringanother String After G Stringanother String After H Stringanother String After I Stringanother String After J Stringanother String After K Stringanother String After L Stringanother String After M Stringanother String After N Stringanother String After O Stringanother String After P Stringanother String After R Stringanother String After S Stringanother String After T Stringanother String After U Stringanother String After V Stringanother String After W Stringanother String After X Stringanother String After Y Stringanother String After Z Stringanother String After</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"another String After\") descending return concat(xs:string($x),\"another String After\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z Stringanother String After Y Stringanother String After X Stringanother String After W Stringanother String After V Stringanother String After U Stringanother String After T Stringanother String After S Stringanother String After R Stringanother String After P Stringanother String After O Stringanother String After N Stringanother String After M Stringanother String After L Stringanother String After K Stringanother String After J Stringanother String After I Stringanother String After H Stringanother String After G Stringanother String After F Stringanother String After E Stringanother String After D Stringanother String After C Stringanother String After B Stringanother String After A Stringanother String After</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"another String Before\",xs:string($x)) ascending return concat(\"another String Before\",xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>another String BeforeA String another String BeforeB String another String BeforeC String another String BeforeD String another String BeforeE String another String BeforeF String another String BeforeG String another String BeforeH String another String BeforeI String another String BeforeJ String another String BeforeK String another String BeforeL String another String BeforeM String another String BeforeN String another String BeforeO String another String BeforeP String another String BeforeR String another String BeforeS String another String BeforeT String another String BeforeU String another String BeforeV String another String BeforeW String another String BeforeX String another String BeforeY String another String BeforeZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"another String Before\",xs:string($x)) descending return concat(\"another String Before\",xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>another String BeforeZ String another String BeforeY String another String BeforeX String another String BeforeW String another String BeforeV String another String BeforeU String another String BeforeT String another String BeforeS String another String BeforeR String another String BeforeP String another String BeforeO String another String BeforeN String another String BeforeM String another String BeforeL String another String BeforeK String another String BeforeJ String another String BeforeI String another String BeforeH String another String BeforeG String another String BeforeF String another String BeforeE String another String BeforeD String another String BeforeC String another String BeforeB String another String BeforeA String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"\") descending return concat(xs:string($x),\"\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String Y String X String W String V String U String T String S String R String P String O String N String M String L String K String J String I String H String G String F String E String D String C String B String A String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"\") ascending return concat(xs:string($x),\"\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"\",xs:string($x)) descending return concat(\"\",xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>Z String Y String X String W String V String U String T String S String R String P String O String N String M String L String K String J String I String H String G String F String E String D String C String B String A String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"\",xs:string($x)) ascending return concat(\"\",xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),xs:string($x)) ascending return concat(xs:string($x),xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A StringA String B StringB String C StringC String D StringD String E StringE String F StringF String G StringG String H StringH String I StringI String J StringJ String K StringK String L StringL String M StringM String N StringN String O StringO String P StringP String R StringR String S StringS String T StringT String U StringU String V StringV String W StringW String X StringX String Y StringY String Z StringZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in(\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by string-length(xs:string($x)) ascending return string-length(xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by count(xs:string($x)) ascending return count(xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by string-length(xs:string($x)) ascending return string-length(xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) ascending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-100000000000000000 -10000000000000000 -1000000000000000 -100000000000000 -10000000000000 -1000000000000 -100000000000 -10000000000 -1000000000 -100000000 -10000000 -1000000 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1000000 -10000000 -100000000 -1000000000 -10000000000 -100000000000 -1000000000000 -10000000000000 -100000000000000 -1000000000000000 -10000000000000000 -100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -2 -20 -200 -2000 -20000 -200000 -2000000 -20000000 -200000000 -2000000000 -20000000000 -200000000000 -2000000000000 -20000000000000 -200000000000000 -2000000000000000 -20000000000000000 -200000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:float($x) descending return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1.0E6 -1.0E7 -1.0E8 -1.0E9 -1.0E10 -1.0E11 -1.0E12 -1.0E13 -1.0E14 -1.0E15 -1.0E16 -1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1000000 -10000000 -100000000 -1000000000 -10000000000 -100000000000 -1000000000000 -10000000000000 -100000000000000 -1000000000000000 -10000000000000000 -100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:double($x) descending return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1.0E6 -1.0E7 -1.0E8 -1.0E9 -1.0E10 -1.0E11 -1.0E12 -1.0E13 -1.0E14 -1.0E15 -1.0E16 -1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:integer($x) descending return xs:integer($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1 -10 -100 -1000 -10000 -100000 -1000000 -10000000 -100000000 -1000000000 -10000000000 -100000000000 -1000000000000 -10000000000000 -100000000000000 -1000000000000000 -10000000000000000 -100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) * -1) descending return (xs:decimal($x) * -1) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) ascending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>200000000000000000 20000000000000000 2000000000000000 200000000000000 20000000000000 2000000000000 200000000000 20000000000 2000000000 200000000 20000000 2000000 200000 20000 2000 200 20 2 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:float($x) descending return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1.0E17 1.0E16 1.0E15 1.0E14 1.0E13 1.0E12 1.0E11 1.0E10 1.0E9 1.0E8 1.0E7 1.0E6 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:double($x) descending return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1.0E17 1.0E16 1.0E15 1.0E14 1.0E13 1.0E12 1.0E11 1.0E10 1.0E9 1.0E8 1.0E7 1.0E6 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:integer($x) descending return xs:integer($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>100000000000000000 10000000000000000 1000000000000000 100000000000000 10000000000000 1000000000000 100000000000 10000000000 1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by string($x) ascending return string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by $x ascending return $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001 0.00000001 0.000000001 0.0000000001 0.00000000001 0.000000000001 0.0000000000001 0.00000000000001 0.000000000000001 0.0000000000000001 0.00000000000000001 0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.2 0.02 0.002 0.0002 0.00002 0.000002 0.0000002 0.00000002 0.000000002 0.0000000002 0.00000000002 0.000000000002 0.0000000000002 0.00000000000002 0.000000000000002 0.0000000000000002 0.00000000000000002 0.000000000000000002 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results>{ for $x in (<a>0.000000000000000001</a>,<a>0.00000000000000001</a>,<a>0.0000000000000001</a>,<a>0.000000000000001</a>,<a>0.00000000000001</a>,<a>0.0000000000001</a>,<a>0.000000000001</a>,<a>0.00000000001</a>,<a>0.0000000001</a>,<a>0.000000001</a>,<a>0.00000001</a>,<a>0.0000001</a>,<a>0.000001</a>,<a>0.00001</a>,<a>0.0001</a>,<a>0.001</a>,<a>0.01</a>,<a>0.1</a>,<a>0.0</a>) order by $x is $x ascending return $x is $x}</results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results>{ for $x in (<a>0.000000000000000001</a>,<a>0.00000000000000001</a>,<a>0.0000000000000001</a>,<a>0.000000000000001</a>,<a>0.00000000000001</a>,<a>0.0000000000001</a>,<a>0.000000000001</a>,<a>0.00000000001</a>,<a>0.0000000001</a>,<a>0.000000001</a>,<a>0.00000001</a>,<a>0.0000001</a>,<a>0.000001</a>,<a>0.00001</a>,<a>0.0001</a>,<a>0.001</a>,<a>0.01</a>,<a>0.1</a>,<a>0.0</a>) order by $x is $x descending return $x is $x }</results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:float($x) descending return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 1.0E-7 1.0E-8 1.0E-9 1.0E-10 1.0E-11 1.0E-12 1.0E-13 1.0E-14 1.0E-15 1.0E-16 1.0E-17 1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001 0.00000001 0.000000001 0.0000000001 0.00000000001 0.000000000001 0.0000000000001 0.00000000000001 0.000000000000001 0.0000000000000001 0.00000000000000001 0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:double($x) descending return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0.1 0.01 0.001 0.0001 0.00001 0.000001 1.0E-7 1.0E-8 1.0E-9 1.0E-10 1.0E-11 1.0E-12 1.0E-13 1.0E-14 1.0E-15 1.0E-16 1.0E-17 1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by string($x) ascending return string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) ascending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -0.0000001 -0.00000001 -0.000000001 -0.0000000001 -0.00000000001 -0.000000000001 -0.0000000000001 -0.00000000000001 -0.000000000000001 -0.0000000000000001 -0.00000000000000001 -0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by (xs:decimal($x) + xs:decimal($x)) descending return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -0.000000000000000002 -0.00000000000000002 -0.0000000000000002 -0.000000000000002 -0.00000000000002 -0.0000000000002 -0.000000000002 -0.00000000002 -0.0000000002 -0.000000002 -0.00000002 -0.0000002 -0.000002 -0.00002 -0.0002 -0.002 -0.02 -0.2</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:float($x) descending return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1.0E-18 -1.0E-17 -1.0E-16 -1.0E-15 -1.0E-14 -1.0E-13 -1.0E-12 -1.0E-11 -1.0E-10 -1.0E-9 -1.0E-8 -1.0E-7 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) descending return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:double($x) descending return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 -1.0E-18 -1.0E-17 -1.0E-16 -1.0E-15 -1.0E-14 -1.0E-13 -1.0E-12 -1.0E-11 -1.0E-10 -1.0E-9 -1.0E-8 -1.0E-7 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by string($x) ascending return string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbylocal-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $x in (\"A\",\"B\",\"C\") order by string($x) ascending collation \"http://nonexistentcollition.org/ifsupportedwoooayouarethebestQueryimplementation/makeitharder\" return string($x)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbylocal-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by xs:string($x) return xs:string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"()\") return concat(xs:string($x),\"()\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String() B String() C String() D String() E String() F String() G String() H String() I String() J String() K String() L String() M String() N String() O String() P String() R String() S String() T String() U String() V String() W String() X String() Y String() Z String()</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"another String After\") return concat(xs:string($x),\"another String After\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A Stringanother String After B Stringanother String After C Stringanother String After D Stringanother String After E Stringanother String After F Stringanother String After G Stringanother String After H Stringanother String After I Stringanother String After J Stringanother String After K Stringanother String After L Stringanother String After M Stringanother String After N Stringanother String After O Stringanother String After P Stringanother String After R Stringanother String After S Stringanother String After T Stringanother String After U Stringanother String After V Stringanother String After W Stringanother String After X Stringanother String After Y Stringanother String After Z Stringanother String After</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"another String Before\",xs:string($x)) return concat(\"another String Before\",xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>another String BeforeA String another String BeforeB String another String BeforeC String another String BeforeD String another String BeforeE String another String BeforeF String another String BeforeG String another String BeforeH String another String BeforeI String another String BeforeJ String another String BeforeK String another String BeforeL String another String BeforeM String another String BeforeN String another String BeforeO String another String BeforeP String another String BeforeR String another String BeforeS String another String BeforeT String another String BeforeU String another String BeforeV String another String BeforeW String another String BeforeX String another String BeforeY String another String BeforeZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),\"\") return concat(xs:string($x),\"\") } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(\"\",xs:string($x)) return concat(\"\",xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A String B String C String D String E String F String G String H String I String J String K String L String M String N String O String P String R String S String T String U String V String W String X String Y String Z String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (<a>A String</a>,<a>B String</a>,<a>C String</a>,<a>D String</a>,<a>E String</a>,<a>F String</a>,<a>G String</a>,<a>H String</a>,<a>I String</a>, <a>J String</a>,<a>K String</a>,<a>L String</a>,<a>M String</a>,<a>N String</a>,<a>O String</a>,<a>P String</a>,<a>R String</a>,<a>S String</a>,<a>T String</a>, <a>U String</a>,<a>V String</a>,<a>W String</a>,<a>X String</a>,<a>Y String</a>,<a>Z String</a>) order by $x is $x return $x is $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by concat(xs:string($x),xs:string($x)) return concat(xs:string($x),xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>A StringA String B StringB String C StringC String D StringD String E StringE String F StringF String G StringG String H StringH String I StringI String J StringJ String K StringK String L StringL String M StringM String N StringN String O StringO String P StringP String R StringR String S StringS String T StringT String U StringU String V StringV String W StringW String X StringX String Y StringY String Z StringZ String</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (<a>A String</a>,<a>B String</a>,<a>C String</a>,<a>D String</a>,<a>E String</a>,<a>F String</a>,<a>G String</a>,<a>H String</a>,<a>I String</a>, <a>J String</a>,<a>K String</a>,<a>L String</a>,<a>M String</a>,<a>N String</a>,<a>O String</a>,<a>P String</a>,<a>R String</a>,<a>S String</a>,<a>T String</a>, <a>U String</a>,<a>V String</a>,<a>W String</a>,<a>X String</a>,<a>Y String</a>,<a>Z String</a>) order by string-length($x) return string-length($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (\"A String\",\"B String\",\"C String\",\"D String\",\"E String\",\"F String\",\"G String\",\"H String\",\"I String\",\"J String\",\"K String\",\"L String\",\"M String\",\"N String\",\"O String\",\"P String\",\"R String\",\"S String\",\"T String\",\"U String\",\"V String\",\"W String\",\"X String\",\"Y String\",\"Z String\") order by count(xs:string($x)) return count(xs:string($x)) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-100000000000000000 -10000000000000000 -1000000000000000 -100000000000000 -10000000000000 -1000000000000 -100000000000 -10000000000 -1000000000 -100000000 -10000000 -1000000 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-200000000000000000 -20000000000000000 -2000000000000000 -200000000000000 -20000000000000 -2000000000000 -200000000000 -20000000000 -2000000000 -200000000 -20000000 -2000000 -200000 -20000 -2000 -200 -20 -2 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (<orderData>-100000000000000000</orderData>,<orderData>-10000000000000000</orderData>,<orderData>-1000000000000000</orderData>,<orderData>-100000000000000</orderData>, <orderData>-10000000000000</orderData>,<orderData>-1000000000000</orderData>,<orderData>-100000000000</orderData>,<orderData>-10000000000</orderData>,<orderData>-1000000000</orderData>, <orderData>-100000000</orderData>,<orderData>-10000000</orderData>,<orderData>-1000000</orderData>,<orderData>-100000</orderData>,<orderData>-10000</orderData>,<orderData>-1000</orderData>, <orderData>-100</orderData>,<orderData>-10</orderData>,<orderData>-1</orderData>,<orderData>-0</orderData>) order by $x is $x return $x is $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:float($x) return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-1.0E17 -1.0E16 -1.0E15 -1.0E14 -1.0E13 -1.0E12 -1.0E11 -1.0E10 -1.0E9 -1.0E8 -1.0E7 -1.0E6 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:double($x) return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-1.0E17 -1.0E16 -1.0E15 -1.0E14 -1.0E13 -1.0E12 -1.0E11 -1.0E10 -1.0E9 -1.0E8 -1.0E7 -1.0E6 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by xs:integer($x) return xs:integer($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-100000000000000000 -10000000000000000 -1000000000000000 -100000000000000 -10000000000000 -1000000000000 -100000000000 -10000000000 -1000000000 -100000000 -10000000 -1000000 -100000 -10000 -1000 -100 -10 -1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-100000000000000000,-10000000000000000,-1000000000000000,-100000000000000,-10000000000000,-1000000000000,-100000000000,-10000000000,-1000000000,-100000000,-10000000,-1000000,-100000,-10000,-1000,-100,-10,-1,-0) order by (xs:decimal($x) * -1) return (xs:decimal($x) * -1) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 2 20 200 2000 20000 200000 2000000 20000000 200000000 2000000000 20000000000 200000000000 2000000000000 20000000000000 200000000000000 2000000000000000 20000000000000000 200000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (<orderData>100000000000000000</orderData>,<orderData>10000000000000000</orderData>,<orderData>1000000000000000</orderData>, <orderData>100000000000000</orderData>,<orderData>10000000000000</orderData>,<orderData>1000000000000</orderData>,<orderData>100000000000</orderData>, <orderData>10000000000</orderData>,<orderData>1000000000</orderData>,<orderData>100000000</orderData>,<orderData>10000000</orderData>, <orderData>1000000</orderData>,<orderData>100000</orderData>,<orderData>10000</orderData>,<orderData>1000</orderData>,<orderData>100</orderData>, <orderData>10</orderData>,<orderData>1</orderData>,<orderData>0</orderData>) order by $x is $x return $x is $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:float($x) return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1.0E6 1.0E7 1.0E8 1.0E9 1.0E10 1.0E11 1.0E12 1.0E13 1.0E14 1.0E15 1.0E16 1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:double($x) return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1.0E6 1.0E7 1.0E8 1.0E9 1.0E10 1.0E11 1.0E12 1.0E13 1.0E14 1.0E15 1.0E16 1.0E17</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by xs:integer($x) return xs:integer($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (100000000000000000,10000000000000000,1000000000000000,100000000000000,10000000000000,1000000000000,100000000000,10000000000,1000000000,100000000,10000000,1000000,100000,10000,1000,100,10,1,0) order by string($x) return string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1 10 100 1000 10000 100000 1000000 10000000 100000000 1000000000 10000000000 100000000000 1000000000000 10000000000000 100000000000000 1000000000000000 10000000000000000 100000000000000000</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by $x return $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000002 0.00000000000000002 0.0000000000000002 0.000000000000002 0.00000000000002 0.0000000000002 0.000000000002 0.00000000002 0.0000000002 0.000000002 0.00000002 0.0000002 0.000002 0.00002 0.0002 0.002 0.02 0.2</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (<orderData>0.000000000000000001</orderData>,<orderData>0.00000000000000001</orderData>,<orderData>0.0000000000000001</orderData>,<orderData>0.000000000000001</orderData>, <orderData>0.00000000000001</orderData>,<orderData>0.0000000000001</orderData>,<orderData>0.000000000001</orderData>,<orderData>0.00000000001</orderData>,<orderData>0.0000000001</orderData>, <orderData>0.000000001</orderData>,<orderData>0.00000001</orderData>,<orderData>0.0000001</orderData>,<orderData>0.000001</orderData>,<orderData>0.00001</orderData>, <orderData>0.0001</orderData>,<orderData>0.001</orderData>,<orderData>0.01</orderData>,<orderData>0.1</orderData>,<orderData>0.0</orderData>) order by $x is $x return $x is $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:float($x) return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1.0E-18 1.0E-17 1.0E-16 1.0E-15 1.0E-14 1.0E-13 1.0E-12 1.0E-11 1.0E-10 1.0E-9 1.0E-8 1.0E-7 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by xs:double($x) return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 1.0E-18 1.0E-17 1.0E-16 1.0E-15 1.0E-14 1.0E-13 1.0E-12 1.0E-11 1.0E-10 1.0E-9 1.0E-8 1.0E-7 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (0.000000000000000001,0.00000000000000001,0.0000000000000001,0.000000000000001,0.00000000000001,0.0000000000001,0.000000000001,0.00000000001,0.0000000001,0.000000001,0.00000001,0.0000001,0.000001,0.00001,0.0001,0.001,0.01,0.1,0.0) order by string($x) return string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>0 0.000000000000000001 0.00000000000000001 0.0000000000000001 0.000000000000001 0.00000000000001 0.0000000000001 0.000000000001 0.00000000001 0.0000000001 0.000000001 0.00000001 0.0000001 0.000001 0.00001 0.0001 0.001 0.01 0.1</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -0.0000001 -0.00000001 -0.000000001 -0.0000000001 -0.00000000001 -0.000000000001 -0.0000000000001 -0.00000000000001 -0.000000000000001 -0.0000000000000001 -0.00000000000000001 -0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by (xs:decimal($x) + xs:decimal($x)) return xs:decimal($x) + xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.2 -0.02 -0.002 -0.0002 -0.00002 -0.000002 -0.0000002 -0.00000002 -0.000000002 -0.0000000002 -0.00000000002 -0.000000000002 -0.0000000000002 -0.00000000000002 -0.000000000000002 -0.0000000000000002 -0.00000000000000002 -0.000000000000000002 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (<orderData>-0.000000000000000001</orderData>,<orderData>-0.00000000000000001</orderData>,<orderData>-0.0000000000000001</orderData>,<orderData>-0.000000000000001</orderData>,<orderData>-0.00000000000001</orderData>,<orderData>-0.0000000000001</orderData>, <orderData>-0.000000000001</orderData>,<orderData>-0.00000000001</orderData>,<orderData>-0.0000000001</orderData>,<orderData>-0.000000001</orderData>, <orderData>-0.00000001</orderData>,<orderData>-0.0000001</orderData>,<orderData>-0.000001</orderData>,<orderData>-0.00001</orderData>,<orderData>-0.0001</orderData>,<orderData>-0.001</orderData>,<orderData>-0.01</orderData>,<orderData>-0.0</orderData>, <orderData>-0.1</orderData>) order by $x is $x return $x is $x } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>true true true true true true true true true true true true true true true true true true true</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:float($x) return xs:float($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -1.0E-7 -1.0E-8 -1.0E-9 -1.0E-10 -1.0E-11 -1.0E-12 -1.0E-13 -1.0E-14 -1.0E-15 -1.0E-16 -1.0E-17 -1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:decimal($x) return xs:decimal($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -0.0000001 -0.00000001 -0.000000001 -0.0000000001 -0.00000000001 -0.000000000001 -0.0000000000001 -0.00000000000001 -0.000000000000001 -0.0000000000000001 -0.00000000000000001 -0.000000000000000001 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by xs:double($x) return xs:double($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.1 -0.01 -0.001 -0.0001 -0.00001 -0.000001 -1.0E-7 -1.0E-8 -1.0E-9 -1.0E-10 -1.0E-11 -1.0E-12 -1.0E-13 -1.0E-14 -1.0E-15 -1.0E-16 -1.0E-17 -1.0E-18 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'orderbywithout-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<results> { for $x in (-0.000000000000000001,-0.00000000000000001,-0.0000000000000001,-0.000000000000001,-0.00000000000001,-0.0000000000001,-0.000000000001,-0.00000000001,-0.0000000001,-0.000000001,-0.00000001,-0.0000001,-0.000001,-0.00001,-0.0001,-0.001,-0.01,-0.0,-0.1) order by string($x) return string($x) } </results>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "orderbywithout-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results>-0.000000000000000001 -0.00000000000000001 -0.0000000000000001 -0.000000000000001 -0.00000000000001 -0.0000000000001 -0.000000000001 -0.00000000001 -0.0000000001 -0.000000001 -0.00000001 -0.0000001 -0.000001 -0.00001 -0.0001 -0.001 -0.01 -0.1 0</results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; let $i as xs:integer* := (1, 2, 3) order by 1 collation \"collation/codepoint\" return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; let $i as xs:integer* := (1, 2, 3) order by 1 collation \"collation/\" return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare base-uri \"http://www.w3.org/2005/xpath-functions/\"; let $i as xs:integer* := (1, 2, 3) order by 1 collation \"collation/\" return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0076") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 3, 2) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 3, 2) order by $i return ($i, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 2 2 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 3, 2) order by $i empty INVALID return ($i, 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 3, 2) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 3, 2), $b := (4, 6, 5) order by $b return $b", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "4 6 5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (1, 4, 2) let $i := (1, $a, 2) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (1, 4, 2) let $i := (1, 3, 2) order by $a return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 3 2 1 3 2 1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (3, 2, 1), $b in (6, 5, 4) order by $a return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1 1 2 2 2 3 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (3, 2, 1), $b in (6, 5, 4) stable order by $b return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 1 3 2 1 3 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $e := <e> <a>3</a> <a>2</a> <a>1</a> </e>; <result> { avg(for $i in $e/a order by $i return $i) } </result>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result>2</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $e := <e> <a>3</a> <a>2</a> <a>1</a> </e>; exactly-one(for $i in $e/a order by $i return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (false(), true(), true(), false(), true(), false()) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false false false true true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean((for $i in (false(), true(), true(), false(), true(), false()) order by $i return $i)[1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(for $i in current-time() order by $i return $i) eq current-time()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 3, 2) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (<e>1</e>, <e>3</e>, <e>2</e>) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e>1</e><e>3</e><e>2</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (<e>1</e>, <e>3</e>, <e>2</e>) order by 1 return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>1</e><e>3</e><e>2</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 3, 2) let $c := 3 stable order by () return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 3, 2) stable order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (<e>1</e>, <e>3</e>, <e>2</e>) stable order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<e>1</e><e>3</e><e>2</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) stable order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:date(\"2001-02-03\"), xs:time(\"01:02:03Z\")) stable order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2001-02-03 01:02:03Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:date(\"2001-02-03\"), xs:time(\"01:02:03Z\")) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "2001-02-03 01:02:03Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { for $i in attribute name {()} order by () return () } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<r/>") of 
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
'K2-OrderbyExprWithout-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<r> { for $i in 1 order by () return () } </r>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<r/>") of 
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
'K2-OrderbyExprWithout-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 2, 3) order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (1, 2, 3) stable order by $i return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) stable order by $i[1] return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:hexBinary(\"FF\")) order by $i[1] return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF FF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:time(\"03:03:03Z\"), xs:hexBinary(\"FF\")) stable order by $i[1] return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF 03:03:03Z FF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $i := (xs:hexBinary(\"FF\"), xs:time(\"03:03:03Z\"), xs:hexBinary(\"FF\")) order by $i[1] return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "FF 03:03:03Z FF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 3, 2) stable order by () return $i", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 3 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
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
'K2-OrderbyExprWithout-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $i in (1, 2, 3) stable order by 1 return reverse(($i, \"FO\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "FO 1 FO 2 FO 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (1, 4, 2) let $i := (1, 3, 2) order by $i return 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'K2-OrderbyExprWithout-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (3, 2, 1) let $a := ($a, 1), $b := (2, 1), $c := (2, 1), $d:= (2, 1) order by $a return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (3, 2, 1) let $b := (2, 1), $c := (2, 1), $d := (2, 1), $e := (2, 1) order by $a return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(for $i in current-date() order by $i return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "if(for $i in <e> <a id=\"3\"/> <b id=\"2\"/> <c id=\"1\"/> </e>/* order by xs:integer($i/@id) return $i) then 4 else 9", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (2, 1) let $b := 1 where true() order by $a return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "for $a in (3, 2, 1), $b in (6) stable order by $b return $a", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $numbers := (1, 2, 1.3, 3e3, xs:double(\"NaN\"), xs:double(\"-INF\"), xs:double(\"INF\")) return (for $i in $numbers order by $i empty least return $i, \"SEP\", for $i in $numbers order by $i empty greatest return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN -INF 1 1.3 2 3000 INF SEP -INF 1 1.3 2 3000 INF NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $numbers := (1, 2, 1.3, 3e3, xs:double(\"NaN\"), xs:double(\"-INF\"), xs:double(\"INF\")) return (for $i in $numbers stable order by $i empty least return $i, \"SEP\", for $i in $numbers order by $i empty greatest return $i)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN -INF 1 1.3 2 3000 INF SEP -INF 1 1.3 2 3000 INF NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $numbers := (<e>NaN</e>, <e/>, <e/>, <e>NaN</e>, <e>NaN</e>, <e>INF</e>, <e>NaN</e>, <e/>, <e>3</e>, comment{\"3\"}) return (for $i in $numbers order by xs:double($i/text()) empty least return xs:double($i/text()), \"SEP\", for $i in $numbers order by xs:double($i/text()) empty greatest return xs:double($i/text()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN NaN NaN 3 INF SEP 3 INF NaN NaN NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-OrderbyExprWithout-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $numbers := (<e>NaN</e>, <e/>, <e/>, <e>NaN</e>, <e>NaN</e>, <e>INF</e>, <e>NaN</e>, <e/>, <e>3</e>, comment{\"3\"}) return (for $i in $numbers stable order by xs:double($i/text()) empty least return xs:double($i/text()), \"SEP\", for $i in $numbers stable order by xs:double($i/text()) empty greatest return xs:double($i/text()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-OrderbyExprWithout-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN NaN NaN 3 INF SEP 3 INF NaN NaN NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.