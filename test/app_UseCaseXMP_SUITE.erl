-module('app_UseCaseXMP_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['xmp-queries-results-q1'/1]).
-export(['xmp-queries-results-q2'/1]).
-export(['xmp-queries-results-q3'/1]).
-export(['xmp-queries-results-q4'/1]).
-export(['xmp-queries-results-q5'/1]).
-export(['xmp-queries-results-q6'/1]).
-export(['xmp-queries-results-q7'/1]).
-export(['xmp-queries-results-q8'/1]).
-export(['xmp-queries-results-q9'/1]).
-export(['xmp-queries-results-q10'/1]).
-export(['xmp-queries-results-q11'/1]).
-export(['xmp-queries-results-q12'/1]).
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
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'xmp-queries-results-q1', 
'xmp-queries-results-q2', 
'xmp-queries-results-q3', 
'xmp-queries-results-q4', 
'xmp-queries-results-q5', 
'xmp-queries-results-q6', 
'xmp-queries-results-q7', 
'xmp-queries-results-q8', 
'xmp-queries-results-q9', 
'xmp-queries-results-q10', 
'xmp-queries-results-q11', 
'xmp-queries-results-q12'
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
environment('bib',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/bib.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('bib-and-reviews',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/bib.xml"), "$bib",[]}, 
{filename:join(__BaseDir, "../docs/reviews.xml"), "$reviews",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('books',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/books.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('prices',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/prices.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'xmp-queries-results-q1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<bib> { 
      		for $b in /bib/book 
      		where $b/publisher = \"Addison-Wesley\" and $b/@year > 1991 
      		return <book year=\"{ $b/@year }\">{ $b/title }</book> } 
      	</bib>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book year=\"1994\"><title>TCP/IP Illustrated</title></book><book year=\"1992\"><title>Advanced Programming in the Unix environment</title></book></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<results> { 
      		for $b in /bib/book, $t in $b/title, $a in $b/author 
      		return <result> { $t } { $a } </result> } 
      	</results>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author></result><result><title>Data on the Web</title><author><last>Buneman</last><first>Peter</first></author></result><result><title>Data on the Web</title><author><last>Suciu</last><first>Dan</first></author></result></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<results> { 
      		for $b in /bib/book 
      		return <result> { $b/title } { $b/author } </result> } 
      	</results>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author></result><result><title>The Economics of Technology and Content for Digital TV</title></result></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<results> { 
      		let $a := //author 
      		for $last in distinct-values($a/last), $first in distinct-values($a[last=$last]/first) 
      		order by $last, $first 
      		return <result> 
      				<author> <last>{ $last }</last> <first>{ $first }</first> </author> 
      				{ for $b in /bib/book 
      					where some $ba in $b/author satisfies ($ba/last = $last and $ba/first=$first) 
      					return $b/title } 
      			   </result> } 
      	</results>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result><author><last>Abiteboul</last><first>Serge</first></author><title>Data on the Web</title></result><result><author><last>Buneman</last><first>Peter</first></author><title>Data on the Web</title></result><result><author><last>Stevens</last><first>W.</first></author><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title></result><result><author><last>Suciu</last><first>Dan</first></author><title>Data on the Web</title></result></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<books-with-prices> { 
        for $b in $bib//book, $a in $reviews//entry 
        where $b/title = $a/title 
        return <book-with-prices> { $b/title } <price-bstore2>{ $a/price/text() }</price-bstore2> <price-bstore1>{ $b/price/text() }</price-bstore1> </book-with-prices> } </books-with-prices>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib-and-reviews',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q5.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<books-with-prices><book-with-prices><title>TCP/IP Illustrated</title><price-bstore2>65.95</price-bstore2><price-bstore1>65.95</price-bstore1></book-with-prices><book-with-prices><title>Advanced Programming in the Unix environment</title><price-bstore2>65.95</price-bstore2><price-bstore1>65.95</price-bstore1></book-with-prices><book-with-prices><title>Data on the Web</title><price-bstore2>34.95</price-bstore2><price-bstore1>39.95</price-bstore1></book-with-prices></books-with-prices>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<bib> { 
      		for $b in //book 
      		where count($b/author) > 0 
      		return <book> 
      			{ $b/title } 
      			{ for $a in $b/author[position()<=2] return $a } 
      			{ if (count($b/author) > 2) then <et-al/> else () } 
      			</book> } 
      	</bib>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q6.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><et-al/></book></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<bib> { 
      		for $b in //book 
      		where $b/publisher = \"Addison-Wesley\" and $b/@year > 1991 
      		order by exactly-one($b/title) 
      		return <book> { $b/@year } { $b/title } </book> } 
      	</bib>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q7.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book year=\"1992\"><title>Advanced Programming in the Unix environment</title></book><book year=\"1994\"><title>TCP/IP Illustrated</title></book></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	for $b in //book 
      	let $e := $b/*[contains(string(.), \"Suciu\") and ends-with(local-name(.), \"or\")] 
      	where exists($e) 
      	return <book> { $b/title } { $e } </book>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q8.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<book><title>Data on the Web</title><author><last>Suciu</last><first>Dan</first></author></book>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<results> { 
      		for $t in //(chapter | section)/title 
      		where contains(exactly-one($t/text()), \"XML\") 
      		return $t } 
      	</results>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('books',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q9.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><title>XML</title><title>XML and Semistructured Data</title></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<results> { 
      		let $doc := (/) 
      		for $t in distinct-values($doc//book/title) 
      		let $p := $doc//book[title = $t]/price 
      		return <minprice title=\"{ $t }\"> <price>{ min($p) }</price> </minprice> } 
      	</results>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('prices',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q10.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><minprice title=\"Advanced Programming in the Unix environment\"><price>65.95</price></minprice><minprice title=\"TCP/IP Illustrated\"><price>65.95</price></minprice><minprice title=\"Data on the Web\"><price>34.95</price></minprice></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<bib> { 
      		for $b in //book[author] 
      		return <book> 
      			{ $b/title } { $b/author } </book> } 
      			{ for $b in //book[editor] 
      				return <reference> { $b/title } {$b/editor/affiliation} </reference> } 
      	</bib>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q11.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author></book><reference><title>The Economics of Technology and Content for Digital TV</title><affiliation>CITI</affiliation></reference></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'xmp-queries-results-q12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	<bib> { 
      		for $book1 in //book, $book2 in //book 
      		let $aut1 := 
      			for $a in $book1/author 
      			order by exactly-one($a/last), exactly-one($a/first) 
      			return $a 
      		let $aut2 := 
      			for $a in $book2/author 
      			order by exactly-one($a/last), exactly-one($a/first) 
      			return $a 
      		where $book1 << $book2 and not($book1/title = $book2/title) and deep-equal($aut1, $aut2) 
      		return <book-pair> { $book1/title } { $book2/title } </book-pair> } 
      	</bib>
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('bib',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "xmp-queries-results-q12.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book-pair><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title></book-pair></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.