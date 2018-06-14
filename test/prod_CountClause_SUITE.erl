-module('prod_CountClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['count-001'/1]).
-export(['count-002'/1]).
-export(['count-003'/1]).
-export(['count-004'/1]).
-export(['count-005'/1]).
-export(['count-006'/1]).
-export(['count-007'/1]).
-export(['count-008'/1]).
-export(['count-009'/1]).
-export(['count-010'/1]).
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
'count-001', 
'count-002', 
'count-003', 
'count-004', 
'count-005', 
'count-006', 
'count-007', 
'count-008', 
'count-009', 
'count-010'
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
].
'count-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 10 
		  count $j
		  return 
		    <item><x>{$x}</x><j>{$j}</j></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x at $j in 1 to 10 
		  return 
		    <item><x>{$x}</x><j>{$j}</j></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 4
		  count $ix
		  for $y in $x to 3
		  count $iy 
		  return 
		    <item><x>{$x}</x><ix>{$ix}</ix><y>{$y}</y><iy>{$iy}</iy></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 4
		  count $ix
		  for $y allowing empty in $x to 3
		  count $iy 
		  return 
		    <item><x>{$x}</x><ix>{$ix}</ix><y>{$y}</y><iy>{$iy}</iy></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item><item><x>4</x><ix>4</ix><y/><iy>7</iy></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 5
		  for $y in 1 to 5
		  count $index
		  where $index mod 3 = 0
		  return 
		    <item><x>{$x}</x><y>{$y}</y><index>{$index}</index></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>6</index></item><item><x>2</x><y>4</y><index>9</index></item><item><x>3</x><y>2</y><index>12</index></item><item><x>3</x><y>5</y><index>15</index></item><item><x>4</x><y>3</y><index>18</index></item><item><x>5</x><y>1</y><index>21</index></item><item><x>5</x><y>4</y><index>24</index></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 5
		  for $y in 1 to 5
		  count $index
		  where $index mod 3 = 0
		  count $index2
		  return 
		    <item><x>{$x}</x><y>{$y}</y><index2>{$index2}</index2></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><y>3</y><index2>1</index2></item><item><x>2</x><y>1</y><index2>2</index2></item><item><x>2</x><y>4</y><index2>3</index2></item><item><x>3</x><y>2</y><index2>4</index2></item><item><x>3</x><y>5</y><index2>5</index2></item><item><x>4</x><y>3</y><index2>6</index2></item><item><x>5</x><y>1</y><index2>7</index2></item><item><x>5</x><y>4</y><index2>8</index2></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 5
		  for $y in 1 to 5
		  count $index
		  where $index mod 3 = 0
		  count $index
		  return 
		    <item><x>{$x}</x><y>{$y}</y><index>{$index}</index></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><y>3</y><index>1</index></item><item><x>2</x><y>1</y><index>2</index></item><item><x>2</x><y>4</y><index>3</index></item><item><x>3</x><y>2</y><index>4</index></item><item><x>3</x><y>5</y><index>5</index></item><item><x>4</x><y>3</y><index>6</index></item><item><x>5</x><y>1</y><index>7</index></item><item><x>5</x><y>4</y><index>8</index></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 2
		  for $y in 1 to 3
		  let $index := $y
		  count $index
		  return 
		    <item><x>{$x}</x><y>{$y}</y><index>{$index}</index></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><y>1</y><index>1</index></item><item><x>1</x><y>2</y><index>2</index></item><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>4</index></item><item><x>2</x><y>2</y><index>5</index></item><item><x>2</x><y>3</y><index>6</index></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        <out>{ 
		  for $x in 1 to 4
		  for $y in 1 to 4
		  count $index
		  let $remainder := $index mod 3
		  order by $remainder, $index
		  count $index2
		  return 
		    <item><x>{$x}</x><y>{$y}</y><remainder>{$remainder}</remainder><index2>{$index2}</index2></item> 
		}</out>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out><item><x>1</x><y>3</y><remainder>0</remainder><index2>1</index2></item><item><x>2</x><y>2</y><remainder>0</remainder><index2>2</index2></item><item><x>3</x><y>1</y><remainder>0</remainder><index2>3</index2></item><item><x>3</x><y>4</y><remainder>0</remainder><index2>4</index2></item><item><x>4</x><y>3</y><remainder>0</remainder><index2>5</index2></item><item><x>1</x><y>1</y><remainder>1</remainder><index2>6</index2></item><item><x>1</x><y>4</y><remainder>1</remainder><index2>7</index2></item><item><x>2</x><y>3</y><remainder>1</remainder><index2>8</index2></item><item><x>3</x><y>2</y><remainder>1</remainder><index2>9</index2></item><item><x>4</x><y>1</y><remainder>1</remainder><index2>10</index2></item><item><x>4</x><y>4</y><remainder>1</remainder><index2>11</index2></item><item><x>1</x><y>2</y><remainder>2</remainder><index2>12</index2></item><item><x>2</x><y>1</y><remainder>2</remainder><index2>13</index2></item><item><x>2</x><y>4</y><remainder>2</remainder><index2>14</index2></item><item><x>3</x><y>3</y><remainder>2</remainder><index2>15</index2></item><item><x>4</x><y>2</y><remainder>2</remainder><index2>16</index2></item></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'count-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
		  for $x in 1 to 4 return
		    for $y in 1 to 4
		    count $index
		    return $index
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "count-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.