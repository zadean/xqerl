-module('app_UseCaseR31_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['UseCaseR31-001'/1]).
-export(['UseCaseR31-002'/1]).
-export(['UseCaseR31-003'/1]).
-export(['UseCaseR31-004'/1]).
-export(['UseCaseR31-009'/1]).
-export(['UseCaseR31-012'/1]).
-export(['UseCaseR31-013'/1]).
-export(['UseCaseR31-014'/1]).
-export(['UseCaseR31-015'/1]).
-export(['UseCaseR31-016'/1]).
-export(['UseCaseR31-017'/1]).
-export(['UseCaseR31-018'/1]).
-export(['UseCaseR31-019'/1]).
-export(['UseCaseR31-022'/1]).
-export(['UseCaseR31-023'/1]).
-export(['UseCaseR31-025'/1]).
-export(['UseCaseR31-026'/1]).
-export(['UseCaseR31-027'/1]).
-export(['UseCaseR31-028'/1]).
-export(['UseCaseR31-029'/1]).
-export(['UseCaseR31-030'/1]).
-export(['UseCaseR31-031'/1]).
-export(['UseCaseR31-032'/1]).
-export(['UseCaseR31-033'/1]).
-export(['UseCaseR31-034-err'/1]).
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
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'UseCaseR31-001', 
'UseCaseR31-002', 
'UseCaseR31-003', 
'UseCaseR31-004', 
'UseCaseR31-009', 
'UseCaseR31-012', 
'UseCaseR31-013', 
'UseCaseR31-014', 
'UseCaseR31-015', 
'UseCaseR31-016', 
'UseCaseR31-017', 
'UseCaseR31-018', 
'UseCaseR31-019', 
'UseCaseR31-022', 
'UseCaseR31-023', 
'UseCaseR31-025', 
'UseCaseR31-026', 
'UseCaseR31-027', 
'UseCaseR31-028', 
'UseCaseR31-029', 
'UseCaseR31-030', 
'UseCaseR31-031', 
'UseCaseR31-032', 
'UseCaseR31-033', 
'UseCaseR31-034-err'
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
environment('employees',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "UseCaseR31/employees.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('gnt',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "UseCaseR31/gnt.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('json-docs',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "UseCaseR31/Wikipedia-Origami.xml"), "","http://www.w3.org/qt3/app/UseCaseR31/Wikipedia-Origami.xml"}]}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/qt3/app/"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{filename:join(__BaseDir, "UseCaseR31/incoming.json"),"http://www.w3.org/qt3/app/UseCaseR31/incoming-json"}, 
{filename:join(__BaseDir, "UseCaseR31/users2.json"),"http://www.w3.org/qt3/app/UseCaseR31/users2-json"}, 
{filename:join(__BaseDir, "UseCaseR31/colors.json"),"http://www.w3.org/qt3/app/UseCaseR31/colors-json"}, 
{filename:join(__BaseDir, "UseCaseR31/table.json"),"http://www.w3.org/qt3/app/UseCaseR31/table-json"}, 
{filename:join(__BaseDir, "UseCaseR31/satellites.json"),"http://www.w3.org/qt3/app/UseCaseR31/satellites-json"}, 
{filename:join(__BaseDir, "UseCaseR31/bookinfo.json"),"http://www.w3.org/qt3/app/UseCaseR31/bookinfo-json"}, 
{filename:join(__BaseDir, "UseCaseR31/employees.json"),"http://www.w3.org/qt3/app/UseCaseR31/employees-json"}, 
{filename:join(__BaseDir, "UseCaseR31/mildred.json"),"http://www.w3.org/qt3/app/UseCaseR31/mildred-json"}]}, 
{modules, []}
]; 
environment('users-json',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, [{"http://www.w3.org/2010/09/qt-fots-catalog/users-json",[{query,__BaseDir,"unparsed-text-lines(\"UseCaseR31/users.json\") ! parse-json(.)"}]}]}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"users-collection-uri","xs:string","'http://www.w3.org/2010/09/qt-fots-catalog/users-json'"}]}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('sales-json',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, [{"http://www.w3.org/2010/09/qt-fots-catalog/sales-json",[{query,__BaseDir,"unparsed-text-lines(\"UseCaseR31/sales.json\") ! parse-json(.)"}]}]}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, [{"sales-collection-uri","xs:string","'http://www.w3.org/2010/09/qt-fots-catalog/sales-json'"}]}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'UseCaseR31-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $e in /employees/employee,
    $d in $e/department
group by $d
return
   <department name=\"{$d}\">
     {
       let $max := max($e/salary)
       return $e[salary=$max]
     }
   </department>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/@name='Management'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result) = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result//name = 'Charles Madigen'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $e in /employees/employee,
    $d in $e/department
group by $d
return
   map {
     \"department\" : $d,
     \"highest paid employee\" :
       let $max := max($e/salary)
       return $e[salary=$max]/name/text()}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result?(\"highest paid employee\") = \"Charles Madigen\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?department = \"Management\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "   <out>  {
for $employee in /employees/employee
let $salary := $employee/salary
group by $department := $employee/department
let $max-salary := max($salary)
let $highest-earners := $employee[salary = $max-salary]
return
   <department name=\"{$department}\">{ $highest-earners }</department>,

for $employee in /employees/employee
let $salary := $employee/salary
group by $job-type := $employee/employeeType
let $totals := count($employee)
return
    <total-by-job-type type=\"{$job-type}\">{ $totals }</total-by-job-type>
    }</out>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result/department/@name='Management'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result/department) = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result//name = 'Charles Madigen'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/total-by-job-type[@type='full time'] = 13") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/total-by-job-type[@type='contract'] = 9") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result/total-by-job-type[@type='part time'] = 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";

        for $employee in /employees/employee
let $salary := $employee/salary
group by $department := $employee/department
let $max-salary := max($salary)
let $highest-earners := $employee[salary = $max-salary]
return
  map{ \"first\" : map {
     \"department\" : $department,
     \"highest earners\" : $highest-earners/name/text()
   }
, \"job type count\" : map:merge(
for $employee in /employees/employee
let $salary := $employee/salary
group by $job-type := $employee/employeeType
let $totals := count($employee)
return map {
      $job-type : $totals
   }
   )}
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result?first?(\"highest earners\") = \"Charles Madigen\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?first?department = \"Management\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(\"job type count\")?contract = 9") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(\"job type count\")?(\"part time\") = 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result?(\"job type count\")?(\"full time\") = 13") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
      declare variable $book:= (<book>
<isbn>0470192747</isbn>
<publisher>Wiley</publisher>
<title>XSLT 2.0 and XPath 2.0 Programmer's Reference</title>
</book>);

declare variable $author := (<author>
<name>Michael H. Kay</name>
<isbn>0470192747</isbn>
<isbn>...</isbn>
</author>);

      declare variable $index := map:merge($book ! map{isbn : .});

<table>{
  for $a in $author
  return <tr>
    <td>{ $a/name/string() }</td>
    <td>{ string-join($a/isbn ! $index(.)/title/string(), \", \") }</td>
  </tr>
}</table>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('map',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"$result//td[1]='Michael H. Kay'") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"$result//td[2]=\"XSLT 2.0 and XPath 2.0 Programmer's Reference\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:play(
  $secret-number as xs:integer,
  $guessed-number as xs:integer,
  $translator as function(xs:string) as xs:string)
{
  switch (true())
  case $guessed-number eq $secret-number
    return $translator(\"You won!\")
  case $guessed-number lt $secret-number
    return $translator(\"The secret number is greater.\")
  default (: $guessed-number gt $secret-number :)
    return $translator(\"The secret number is lower.\")
};

local:play(76, 86, function($x) { $x }), (: Keep English :)

local:play(76, 86, map {
  \"You won!\" : \"Du hast gewonnen!\",
  \"The secret number is greater.\" : \"Die geheime Zahl ist groesser.\",
  \"The secret number is lower.\" :  \"Die geheime Zahl ist kleiner.\" }
)
       ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "The secret number is lower. Die geheime Zahl ist kleiner.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],
 ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],
 ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],
 ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],
 ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']
];
<s>
 {
  for $w in $s?*
  return <w pos=\"{ $w(2) }\">{ $w(1) }</w>
 }
</s>

      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-013.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],
 ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],
 ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],
 ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],
 ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']
];
declare variable $index := map { \"pos\" : 2, \"lemma\" : 1 };

<s>
 {
  for $w in $s?*
  return <w pos=\"{ $w($index(\"pos\")) }\">{ $w($index(\"lemma\")) }</w>
 }
</s>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<s><w pos=\"DT\">A</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"PRP\">you</w><w pos=\"VBP\">know</w><w pos=\",\">,</w><w pos=\"MD\">must</w><w pos=\"VB\">appear</w><w pos=\"IN\">like</w><w pos=\"DT\">a</w><w pos=\"NN\">bride</w><w pos=\",\">,</w><w pos=\"CC\">but</w><w pos=\"PRP$\">my</w><w pos=\"JJ\">natural</w><w pos=\"NN\">taste</w><w pos=\"VBZ\">is</w><w pos=\"DT\">all</w><w pos=\"IN\">for</w><w pos=\"NN\">simplicity</w><w pos=\":\">;</w><w pos=\"DT\">a</w><w pos=\"JJ\">simple</w><w pos=\"NN\">style</w><w pos=\"IN\">of</w><w pos=\"NN\">dress</w><w pos=\"VBZ\">is</w><w pos=\"RB\">so</w><w pos=\"RB\">infinitely</w><w pos=\"JJ\">preferable</w><w pos=\"TO\">to</w><w pos=\"VB\">finery</w><w pos=\".\">.</w></s>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],
 ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],
 ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],
 ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],
 ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']
];
declare variable $index := map { \"pos\" : 2, \"lemma\" : 1 };

for $word in $s?*
let $pos := $word(2)
let $lexeme := $word(1)
where $pos = (\"JJ\", \"NN\", \"RB\", \"VB\")
group by $pos
order by $pos
return
  <pos name=\"{$pos}\">
    {
      for $l in distinct-values($lexeme)
      return <lexeme>{ $l }</lexeme>
    }
  </pos>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<pos name=\"JJ\"><lexeme>natural</lexeme><lexeme>simple</lexeme><lexeme>preferable</lexeme></pos><pos name=\"NN\"><lexeme>bride</lexeme><lexeme>taste</lexeme><lexeme>simplicity</lexeme><lexeme>style</lexeme><lexeme>dress</lexeme></pos><pos name=\"RB\"><lexeme>so</lexeme><lexeme>infinitely</lexeme></pos><pos name=\"VB\"><lexeme>appear</lexeme><lexeme>finery</lexeme></pos>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],
 ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],
 ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],
 ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],
 ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']
];
declare function local:words-only($s)
{
  for $w in $s
  where not($w(2) = (\".\", \",\", \";\", \":\"))
  return $w(1)
};

for sliding window $w in local:words-only($s?*)
    start at $i when true()
    only end at $j when $j - $i eq 2
return
    array { $w }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ \"A\", \"bride\", \"you\" ],
[ \"bride\", \"you\", \"know\" ],
[ \"you\", \"know\", \"must\" ],
[ \"know\", \"must\", \"appear\" ],
[ \"must\", \"appear\", \"like\" ],
[ \"appear\", \"like\", \"a\" ],
[ \"like\", \"a\", \"bride\" ],
[ \"a\", \"bride\", \"but\" ],
[ \"bride\", \"but\", \"my\" ],
[ \"but\", \"my\", \"natural\" ],
[ \"my\", \"natural\", \"taste\" ],
[ \"natural\", \"taste\", \"is\" ],
[ \"taste\", \"is\", \"all\" ],
[ \"is\", \"all\", \"for\" ],
[ \"all\", \"for\", \"simplicity\" ],
[ \"for\", \"simplicity\", \"a\" ],
[ \"simplicity\", \"a\", \"simple\" ],
[ \"a\", \"simple\", \"style\" ],
[ \"simple\", \"style\", \"of\" ],
[ \"style\", \"of\", \"dress\" ],
[ \"of\", \"dress\", \"is\" ],
[ \"dress\", \"is\", \"so\" ],
[ \"is\", \"so\", \"infinitely\" ],
[ \"so\", \"infinitely\", \"preferable\" ],
[ \"infinitely\", \"preferable\", \"to\" ],
[ \"preferable\", \"to\", \"finery\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],
 ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],
 ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],
 ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],
 ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']
];
declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)
{
  array { $s[$p(.)] },   array { $s[not($p(.))] }
};

let $f := function($a) { starts-with($a(2), \"VB\") }
return
  local:filter($s?*, $f)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-017.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ [ \"know\", \"VBP\" ], [ \"appear\", \"VB\" ], [ \"is\", \"VBZ\" ], [ \"is\", \"VBZ\" ],
[ \"finery\", \"VB\" ] ],

[ [ \"A\", \"DT\" ], [ \"bride\", \"NN\" ], [ \",\", \",\" ], [ \"you\", \"PRP\" ],
  [ \",\", \",\" ], [ \"must\", \"MD\" ], [ \"like\", \"IN\" ], [ \"a\", \"DT\" ],
  [ \"bride\", \"NN\" ], [ \",\", \",\" ], [ \"but\", \"CC\" ], [ \"my\", \"PRP$\" ],
  [ \"natural\", \"JJ\" ], [ \"taste\", \"NN\" ], [ \"all\", \"DT\" ], [ \"for\", \"IN\" ],
  [ \"simplicity\", \"NN\" ], [ \";\", \":\" ], [ \"a\", \"DT\" ], [ \"simple\", \"JJ\" ],
  [ \"style\", \"NN\" ], [ \"of\", \"IN\" ], [ \"dress\", \"NN\" ], [ \"so\", \"RB\" ],
  [ \"infinitely\", \"RB\" ], [ \"preferable\", \"JJ\" ], [ \"to\", \"TO\"],
  [ \".\", \".\" ] ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $s :=[['A', 'DT'], ['bride', 'NN'], [',', ','], ['you', 'PRP'], ['know', 'VBP'], [',', ','], ['must', 'MD'],
 ['appear', 'VB'], ['like', 'IN'], ['a', 'DT'], ['bride', 'NN'], [',', ','], ['but', 'CC'], ['my', 'PRP$'],
 ['natural', 'JJ'], ['taste', 'NN'], ['is', 'VBZ'], ['all', 'DT'], ['for', 'IN'], ['simplicity', 'NN'], [';', ':'],
 ['a', 'DT'], ['simple', 'JJ'], ['style', 'NN'], ['of', 'IN'], ['dress', 'NN'], ['is', 'VBZ'],
 ['so', 'RB'], ['infinitely', 'RB'], ['preferable', 'JJ'], ['to', 'TO'], ['finery', 'VB'], ['.', '.']
];
declare function local:filter($s as item()*, $p as function(item()) as xs:boolean)
{
  map {
    true() : array { $s[$p(.)] },
    false() : array { $s[not($p(.))] }
  }
};


let $f := function($a) { starts-with($a(2), \"VB\") }
return
  local:filter($s?*, $f)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('employees',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map {

  true() :
             [ [ \"know\", \"VBP\" ], [ \"appear\", \"VB\" ], [ \"is\", \"VBZ\" ],
               [\"is\", \"VBZ\" ], [ \"finery\", \"VB\" ] ],

  false() :

             [ [ \"A\", \"DT\" ], [\"bride\", \"NN\" ], [ \",\", \",\" ],
               [ \"you\", \"PRP\" ], [ \",\", \",\" ], [ \"must\", \"MD\" ],
               [ \"like\", \"IN\" ], [ \"a\", \"DT\" ], [ \"bride\", \"NN\" ],
               [ \",\", \",\" ], [ \"but\", \"CC\" ], [ \"my\", \"PRP$\" ],
               [ \"natural\", \"JJ\" ], [ \"taste\", \"NN\" ], [ \"all\", \"DT\"],
               [ \"for\", \"IN\" ], [ \"simplicity\", \"NN\" ], [ \";\", \":\" ],
               [ \"a\", \"DT\" ], [ \"simple\", \"JJ\" ], [ \"style\", \"NN\" ],
               [ \"of\", \"IN\" ], [ \"dress\", \"NN\" ], [ \"so\", \"RB\" ],
               [ \"infinitely\", \"RB\" ], [ \"preferable\", \"JJ\" ],
               [ \"to\", \"TO\" ], [ \".\", \".\" ] ]
}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
              declare variable $span := <root><span class=\"ocr_word\" title=\"bbox 1388 430 1461 474\">the</span>
<span class=\"ocr_word\" title=\"bbox 1514 433 1635 476\">other</span>
<span class=\"ocr_word\" title=\"bbox 133 498 317 554\">pcssible</span>
<span class=\"ocr_word\" title=\"bbox 354 498 590 541\">derivation</span>
<span class=\"ocr_word\" title=\"bbox 631 497 738 538\">from</span>
<span class=\"ocr_word\" title=\"bbox 772 495 799 547\" lang=\"grc\" xml:lang=\"grc\">?</span>
<span class=\"ocr_word\" title=\"bbox 835 495 1019 538\" lang=\"grc\" xml:lang=\"grc\">???????</span>
<span class=\"ocr_word\" title=\"bbox 134 567 220 607\">dies</span>
<span class=\"ocr_word\" title=\"bbox 257 566 462 607\">erastinus</span></root>;

declare function local:extract-text($spans)
{
  for $s in $spans//span return string($s)
};

  local:extract-text($span)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "the other pcssible derivation from ? ??????? dies erastinus") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/mildred-json\")?phone?*[?type = 'mobile']?number", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "07356 740756") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace map = \"http://www.w3.org/2005/xpath-functions/map\";
declare namespace array = \"http://www.w3.org/2005/xpath-functions/array\";

let $input := json-doc('http://www.w3.org/qt3/app/UseCaseR31/employees-json')
for $k in map:keys($input)
return
  <department name=\"{ $k }\">
    {
    let $array := $input($k)
    for $i in 1 to array:size($array)
    let $emp := $array($i)
    return
      <employee>
        <firstName>{ $emp('firstName') }</firstName>
        <lastName>{ $emp('lastName') }</lastName>
        <age>{ $emp('age') }</age>
      </employee>
    }
  </department>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-023.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<department name=\"sales\"><employee><firstName>Sally</firstName><lastName>Green</lastName><age>27</age></employee><employee><firstName>Jim</firstName><lastName>Galley</lastName><age>41</age></employee></department><department name=\"accounting\"><employee><firstName>John</firstName><lastName>Doe</lastName><age>23</age></employee><employee><firstName>Mary</firstName><lastName>Smith</lastName><age>32</age></employee></department>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";

declare function local:deep-put($input as item()*, $key as xs:string, $value as item()*) as item()*
{
  let $mf := function($k, $v) {
                if ($k eq $key)
                then map{$k : $value}
                else map{$k : local:deep-put($v, $key, $value)}
             }
  for $i in $input
  return
    if ($i instance of map(*))
    then map:merge(map:for-each($i, $mf))
    else if ($i instance of array(*))
    then array{ local:deep-put($i?*, $key, $value) }
    else $i
};

local:deep-put(json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/bookinfo-json\"), \"first\", \"John\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-025.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"John\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"John\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"John\"
            }
        ],
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      for $sarah in collection($users-collection-uri),
          $friend in collection($users-collection-uri)
      where $sarah('name') = \"Sarah\"
       and $friend('name') = $sarah('friends')?*
      return $friend('name')
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('users-json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jim") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
Q{http://www.w3.org/2005/xpath-functions/map}merge(
  for $sales in collection($sales-collection-uri)
  let $pname := $sales('product')
  group by $pname
  return map { $pname : sum(for $s in $sales return $s('quantity')) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('sales-json',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-027.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map {
  \"blender\" : 250,
  \"broiler\" : 20,
  \"shirt\" : 10,
  \"socks\" : 510,
  \"toaster\" : 200
  }") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
      declare variable $storesVar := array { unparsed-text-lines(\"UseCaseR31/stores.json\") ! parse-json(.) };
      declare variable $productsVar := array { unparsed-text-lines(\"UseCaseR31/products.json\") ! parse-json(.) };
      declare variable $salesVar := array { unparsed-text-lines(\"UseCaseR31/sales.json\") ! parse-json(.) };
      array {
  for $store in $storesVar ? *
  let $state := $store?state
  group by $state
  order by $state
  return
    map {
      $state :  array {
        for $product in $productsVar ? *
        let $category := $product?category
        group by $category
        order by $category
        return
          map {
            $category :  map:merge((
              for $sales in $salesVar ? *
              where $sales?(\"store number\") = $store?(\"store number\") and $sales?product = $product?name
              let $pname := $sales?product
              group by $pname
              return map { $pname :  sum(for $s in $sales return $s?quantity)}
            ))
          }
      }
    }
}", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
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
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-028.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[map{\"CA\":[map{\"clothes\":map{\"socks\":510}},map{\"kitchen\":map{\"broiler\":20,\"toaster\":150}}]},map{\"MA\":[map{\"clothes\":map{\"shirt\":10}},map{\"kitchen\":map{\"toaster\":50,\"blender\":250}}]}]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
let $sats := json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/satellites-json\")(\"satellites\")
return map {
  \"visible\" : array {
     map:keys($sats)[$sats(.)(\"visible\")]
  },
  \"invisible\" : array {
     map:keys($sats)[not($sats(.)(\"visible\"))]
  }
}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"map { \"visible\" : [\"AKARI (ASTRO-F)\",\"AJISAI (EGS)\"], \"invisible\" : [\"AAU CUBESAT\"]}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"map { \"visible\" : [\"AJISAI (EGS)\", \"AKARI (ASTRO-F)\"], \"invisible\" : [\"AAU CUBESAT\"]}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "array {
 for $page in doc(\"UseCaseR31/Wikipedia-Origami.xml\")//page
 return map {
  \"title\": string($page/title),
  \"id\" : string($page/id),
  \"last updated\" : string($page/revision[1]/timestamp),
  \"authors\" : array {
       for $a in $page/revision/contributor/username
       return string($a)
  }
 }
}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"array:get($result,1)?authors = \"Myasuda\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:get($result,1)?title = \"Kawasaki's theorem\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"array:get($result,1)?id = \"14511776\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
  <html><body><table>
    <tr> (: Column headings :)
         {
            <th> </th>,
            for $th in json-doc('http://www.w3.org/qt3/app/UseCaseR31/table-json')?col-labels?*
            return <th>{ $th }</th>
         }
      </tr>
      {  (: Data for each row :)
         for $r at $i in json-doc('http://www.w3.org/qt3/app/UseCaseR31/table-json')?data?*
         return
            <tr>
             {
               <th>{ json-doc('http://www.w3.org/qt3/app/UseCaseR31/table-json')?row-labels[$i] }</th>,
               for $c in $r?*
               return <td>{ $c }</td>
             }
            </tr>
      }
    </table>

  </body>
</html>
   ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-031.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert(Res,"count($result//td[text()='spinnen'])=2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result//td[text()='spinne'])=1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result//td[text()='spinnst'])=1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result//td[text()='spinnt'])=2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"count($result//th[text()='1p 2p 3p'])=1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
  <table>{
  for tumbling window $w in json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/colors-json\")?colors?*
   start at $x when fn:true()
    end at $y when $y - $x = 2
  return
    <tr>{
      for $i in $w?color
      return
        <td>{ $i }</td>
    }</tr>
}</table>
   ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-032.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
  let $dbj := json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/users2-json\")[ .(\"name\") = \"Deadbeat Jim\" ]
return map:put($dbj, \"status\", \"credit card declined\")
   ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-033.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map {
  \"name\" : \"Deadbeat Jim\",
  \"address\" : \"1 E 161st St, Bronx, NY 10451\",
  \"status\" : \"credit card declined\",
  \"risk tolerance\" : \"high\"
}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'UseCaseR31-034-err'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
  let $mf := function($k as node(), $v) {
                map{$k('book') : $v}

             }

  return $mf(json-doc(\"http://www.w3.org/qt3/app/UseCaseR31/bookinfo-json\"), \"first\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('json-docs',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "UseCaseR31-034-err.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.