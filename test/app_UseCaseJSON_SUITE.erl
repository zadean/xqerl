-module('app_UseCaseJSON_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['UseCaseJSON-001'/1]).
-export(['UseCaseJSON-002'/1]).
-export(['UseCaseJSON-003'/1]).
-export(['UseCaseJSON-004'/1]).
-export(['UseCaseJSON-005'/1]).
-export(['UseCaseJSON-006'/1]).
-export(['UseCaseJSON-007'/1]).
-export(['UseCaseJSON-008'/1]).
-export(['UseCaseJSON-009'/1]).
-export(['UseCaseJSON-010'/1]).
-export(['UseCaseJSON-011'/1]).
-export(['UseCaseJSON-012'/1]).
-export(['UseCaseJSON-014'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'UseCaseJSON-001',
   'UseCaseJSON-002',
   'UseCaseJSON-003',
   'UseCaseJSON-004',
   'UseCaseJSON-005',
   'UseCaseJSON-006',
   'UseCaseJSON-007',
   'UseCaseJSON-008',
   'UseCaseJSON-009',
   'UseCaseJSON-010',
   'UseCaseJSON-011',
   'UseCaseJSON-012',
   'UseCaseJSON-014'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('mildred.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/mildred.json","mildred.json"}]},
{modules, []}
];
environment('employees.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/employees.json","employees.json"}]},
{modules, []}
];
environment('bookinfo.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/bookinfo.json","bookinfo.json"}]},
{modules, []}
];
environment('users.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/users.json","users.json"}]},
{modules, []}
];
environment('sales.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/sales.json","sales.json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/products.json","products.json"},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/stores.json","stores.json"}]},
{modules, []}
];
environment('satellites.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/satellites.json","satellites.json"}]},
{modules, []}
];
environment('colors.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/colors.json","colors.json"}]},
{modules, []}
];
environment('incoming.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/incoming.json","incoming.json"}]},
{modules, []}
];
environment('table.json') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON.xml"}]},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/table.json","table.json"}]},
{modules, []}
];
environment('Wikipedia-Origami.xml') ->
[{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/app/UseCaseJSON/Wikipedia-Origami.xml",".","http://www.w3.org/2010/09/qt-fots-catalog/UseCaseJSON/Wikipedia-Origami.xml"}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.w3.org/2010/09/qt-fots-catalog/UseCaseJSON/"}]},
{params, [{"uri","xs:string","'Wikipedia-Origami.xml'"}]},
{namespaces, []},
{resources, []},
{modules, []}
].
'UseCaseJSON-001'(_Config) ->
   Qry = "json-doc(\"mildred.json\")?phone?*[?type = 'mobile']?number",
   Env = xqerl_test:handle_environment(environment('mildred.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "07356 740756") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-002'(_Config) ->
   Qry = "
        declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";
        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
        let $input := json-doc('employees.json')
				for $k in map:keys($input)
				return 
				  <department name=\"{$k}\">{
				    let $array := $input($k)
				    for $i in 1 to array:size($array)
				    let $emp := $array($i)
				    return
				      <employee>
				        <firstName>{ $emp('firstName') }</firstName>
				        <lastName>{ $emp('lastName') }</lastName>
				        <age>{ $emp('age') }</age>
				      </employee>
				  }</department>		  ",
   Env = xqerl_test:handle_environment(environment('employees.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<department name=\"accounting\"><employee><firstName>John</firstName><lastName>Doe</lastName><age>23</age></employee><employee><firstName>Mary</firstName><lastName>Smith</lastName><age>32</age></employee></department><department name=\"sales\"><employee><firstName>Sally</firstName><lastName>Green</lastName><age>27</age></employee><employee><firstName>Jim</firstName><lastName>Galley</lastName><age>41</age></employee></department>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_xml(Res,"<department name=\"sales\"><employee><firstName>Sally</firstName><lastName>Green</lastName><age>27</age></employee><employee><firstName>Jim</firstName><lastName>Galley</lastName><age>41</age></employee></department><department name=\"accounting\"><employee><firstName>John</firstName><lastName>Doe</lastName><age>23</age></employee><employee><firstName>Mary</firstName><lastName>Smith</lastName><age>32</age></employee></department>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-003'(_Config) ->
   Qry = "
        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
				declare function local:deep-put($input as item()*, $key as xs:string, $value as item()*) as item()* {
				   for $i in $input return
				     if ($i instance of map(*))
				     then map:merge(map:for-each($i, function($k, $v) {
				                                             if ($k eq $key) then map{$k : $value} else map{$k : local:deep-put($v, $key, $value)} }))
				      else if ($i instance of array(*))
				     then array{ local:deep-put($i?*, $key, $value) }
				      else $i
				};
				local:deep-put(json-doc(\"bookinfo.json\"), \"first\", \"John\")		  
		  ",
   Env = xqerl_test:handle_environment(environment('bookinfo.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map {\"book\" : map {\"title\" : \"Data on the Web\", \"year\" : 2000, \"author\" : [map {\"last\" : \"Abiteboul\", \"first\" : \"John\"}, map {\"last\" : \"Buneman\", \"first\" : \"John\"}, map {\"last\" : \"Suciu\", \"first\" : \"John\"}], \"publisher\" : \"Morgan Kaufmann Publishers\", \"price\" : 39.95}}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-004'(_Config) ->
   Qry = "
        let $users := json-doc('users.json')?*
        for $sarah in $users, $friend in $users
        where $sarah?name = \"Sarah\" and $friend?name = $sarah?friends 
        return $friend?name
		  ",
   Env = xqerl_test:handle_environment(environment('users.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Jim") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-005'(_Config) ->
   Qry = "
        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
        let $products := json-doc('sales.json')?*
        return map:merge((
          for $sales in $products
          let $pname := $sales?product
          group by $pname
          return map { $pname : sum(for $s in $sales return $s?quantity) }
        ))    
		  ",
   Env = xqerl_test:handle_environment(environment('sales.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map { \"broiler\" : 20, \"toaster\" : 200, \"blender\" : 250, \"socks\" : 510, \"shirt\" : 10 }") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-006'(_Config) ->
   Qry = "
        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";
				array {
				  for $store in json-doc('stores.json')?*
				  let $state := $store?state
				  group by $state
				  order by $state
				  return
				    map {
				      $state :  array {
				        for $product in json-doc('products.json')?*
				        let $category := $product?category
				        group by $category
				        order by $category
				        return
				          map {
				            $category :  map:merge((
				              for $sales in json-doc('sales.json')?*
				              where $sales?(\"store number\") = $store?(\"store number\") and $sales?product = $product?name
				              let $pname := $sales?product
				              group by $pname
				              order by $pname
				              return map { $pname :  sum(for $s in $sales return $s?quantity)}
				            ))
				          }
				      }
				   }
				}
		  ",
   Env = xqerl_test:handle_environment(environment('sales.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[map { \"CA\" : [ map { \"clothes\" : map { \"socks\" : 510 }}, map { \"kitchen\" : map { \"broiler\" : 20, \"toaster\" : 150 }} ] }, map { \"MA\" : [ map { \"clothes\" : map { \"shirt\" : 10 }}, map { \"kitchen\" : map { \"toaster\" : 50, \"blender\" : 250 }}]}]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-007'(_Config) ->
   Qry = "
        let $sats := json-doc(\"satellites.json\")(\"satellites\")
        return map { \"visible\" : array { map:keys($sats)[$sats(.)(\"visible\")] }, \"invisible\" : array { map:keys($sats)[not($sats(.)(\"visible\"))] } }
		  ",
   Env = xqerl_test:handle_environment(environment('satellites.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_deep_eq(Res,"map { \"visible\" : [ \"AJISAI (EGS)\", \"AKARI (ASTRO-F)\" ], \"invisible\" : [ \"AAU CUBESAT\" ] }") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_deep_eq(Res,"map { \"visible\" : [ \"AKARI (ASTRO-F)\" , \"AJISAI (EGS)\"], \"invisible\" : [ \"AAU CUBESAT\" ] }") of 
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
'UseCaseJSON-008'(_Config) ->
   Qry = "
        array {
          for $page in doc($uri)//page
          return map {
                  \"title\": string($page/title),
                  \"id\" : string($page/id),
                  \"last updated\" : string($page/revision[1]/timestamp),
                  \"authors\" : array { for $a in $page/revision/contributor/username return string($a) }
                 }               
         }     
		  ",
   Env = xqerl_test:handle_environment(environment('Wikipedia-Origami.xml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[map {\"title\" : \"Kawasaki's theorem\", \"id\" : \"14511776\", \"last updated\" : \"2011-06-21T20:08:56Z\", \"authors\" : [\"Some jerk on the Internet\"]}, map {\"title\" : \"Origami techniques\", \"id\" : \"193590\", \"last updated\" : \"2011-08-31T17:21:49Z\", \"authors\" : [\"Dmcq\"]}, map {\"title\" : \"Mathematics of paper folding\", \"id\" : \"232840\", \"last updated\" : \"2011-07-23T09:10:42Z\", \"authors\" : [\"Tabletop\"]}]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-009'(_Config) ->
   Qry = "   
        declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";
        declare variable $data := map {
          \"color\" : \"blue\",
          \"closed\" : true(),
          \"points\" : [[10,10], [20,10], [20,20], [10,20]]
        };      
        declare variable $stroke := attribute stroke { $data(\"color\") };
        declare variable $points := attribute points { array:flatten($data(\"points\")) };
        if ($data(\"closed\")) then <svg><polygon>{ $stroke, $points }</polygon></svg>
         else <svg><polyline>{ $stroke, $points }</polyline></svg>
		  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<svg><polygon stroke=\"blue\" points=\"10 10 20 10 20 20 10 20\"/></svg>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-010'(_Config) ->
   Qry = "
        <html>
				  <body>				
				    <table>
				      <tr> 
				         { (: Column headings :) 
				            <th> </th>,
				            for $th in json-doc(\"table.json\")(\"col labels\")?*
				            return <th>{ $th }</th>
				         }
				      </tr>
				      {  (: Data for each row :)
				         for $r at $i in json-doc(\"table.json\")(\"data\")?*
				         return
				            <tr>
				             {
				               <th>{ json-doc(\"table.json\")(\"row labels\")[$i] }</th>,
				               for $c in $r?*
				               return <td>{ $c }</td>
				             }
				            </tr>
				      }
				    </table>				
				  </body>
				</html>   
		  ",
   Env = xqerl_test:handle_environment(environment('table.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<html><body><table><tr><th/><th>singular</th><th>plural</th></tr><tr><th>1p 2p 3p</th><td>spinne</td><td>spinnen</td></tr><tr><th/><td>spinnst</td><td>spinnt</td></tr><tr><th/><td>spinnt</td><td>spinnen</td></tr></table></body></html>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-011'(_Config) ->
   Qry = "
        <table>{
          for tumbling window $w in json-doc(\"colors.json\")?*
          start at $x when fn:true()
          end at $y when $y - $x = 2
          return
            <tr>{ for $i in $w return <td>{ $i?color }</td> }</tr>
         }</table>
		  ",
   Env = xqerl_test:handle_environment(environment('colors.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-012'(_Config) ->
   Qry = "
        let $users := [map { \"userid\" : \"W0342\", \"firstname\" : \"Walter\", \"lastname\" : \"Denisovich\" }, map { \"userid\" : \"M0535\", \"firstname\" : \"Mick\", \"lastname\" : \"Goulish\" }]?* 
        let $holdings := [map { \"userid\" : \"W0342\", \"ticker\" : \"DIS\", \"shares\" : 153212312 }, map { \"userid\" : \"M0535\", \"ticker\" : \"DIS\", \"shares\" : 10 }, map { \"userid\" : \"M0535\", \"ticker\" : \"AIG\", \"shares\" : 23412 }]?*   
        return array {
          for $u in $users
          order by $u(\"userid\")
          return map { \"userid\" : $u(\"userid\"), 
                       \"first\" :  $u(\"firstname\"), 
                       \"last\" :   $u(\"lastname\"), 
                       \"holdings\" : array {
                          for $h in $holdings
                          where $h(\"userid\") = $u(\"userid\")
                          order by $h(\"ticker\")
									        return map { \"ticker\" : $h(\"ticker\"), \"share\" : $h(\"shares\") }
										    }
                 }
        }       
		  ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[map {\"userid\" : \"M0535\", \"first\" : \"Mick\", \"last\" : \"Goulish\", \"holdings\" : [map {\"ticker\" : \"AIG\", \"share\" : 23412}, map {\"ticker\" : \"DIS\", \"share\" : 10}]}, map {\"userid\" : \"W0342\", \"first\" : \"Walter\", \"last\" : \"Denisovich\", \"holdings\" : [map {\"ticker\" : \"DIS\", \"share\" : 153212312}]}]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'UseCaseJSON-014'(_Config) ->
   Qry = "
				let $feed := json-doc(\"incoming.json\")(\"feed\")
				  , $entry := $feed(\"entry\")
				return
				if ($entry?*(\"app$control\")(\"yt$state\")(\"name\") = \"restricted\")
				  then map:remove($feed, \"entry\")
				  else $feed
		  ",
   Env = xqerl_test:handle_environment(environment('incoming.json')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"map {\"author\" : [map {\"name\" : map {\"$t\" : \"YouTube\"}, \"uri\" : map {\"$t\" : \"http://www.youtube.com/\"}}], \"category\" : [map {\"scheme\" : \"http://schemas.google.com/g/2005#kind\", \"term\" : \"http://gdata.youtube.com/schemas/2007#video\"}]}") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
