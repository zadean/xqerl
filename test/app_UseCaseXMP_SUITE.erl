-module('app_UseCaseXMP_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
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
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
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
   'xmp-queries-results-q12'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('bib') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/bib.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('bib-and-reviews') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/bib.xml","$bib",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/reviews.xml","$reviews",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('books') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/books.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('prices') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/prices.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'xmp-queries-results-q1'(_Config) ->
   Qry = "
      	<bib> { 
      		for $b in /bib/book 
      		where $b/publisher = \"Addison-Wesley\" and $b/@year > 1991 
      		return <book year=\"{ $b/@year }\">{ $b/title }</book> } 
      	</bib>",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book year=\"1994\"><title>TCP/IP Illustrated</title></book><book year=\"1992\"><title>Advanced Programming in the Unix environment</title></book></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q2'(_Config) ->
   Qry = "
      	<results> { 
      		for $b in /bib/book, $t in $b/title, $a in $b/author 
      		return <result> { $t } { $a } </result> } 
      	</results>",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author></result><result><title>Data on the Web</title><author><last>Buneman</last><first>Peter</first></author></result><result><title>Data on the Web</title><author><last>Suciu</last><first>Dan</first></author></result></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q3'(_Config) ->
   Qry = "
      	<results> { 
      		for $b in /bib/book 
      		return <result> { $b/title } { $b/author } </result> } 
      	</results>
      ",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author></result><result><title>The Economics of Technology and Content for Digital TV</title></result></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q4'(_Config) ->
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
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><result><author><last>Abiteboul</last><first>Serge</first></author><title>Data on the Web</title></result><result><author><last>Buneman</last><first>Peter</first></author><title>Data on the Web</title></result><result><author><last>Stevens</last><first>W.</first></author><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title></result><result><author><last>Suciu</last><first>Dan</first></author><title>Data on the Web</title></result></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q5'(_Config) ->
   Qry = "<books-with-prices> { 
        for $b in $bib//book, $a in $reviews//entry 
        where $b/title = $a/title 
        return <book-with-prices> { $b/title } <price-bstore2>{ $a/price/text() }</price-bstore2> <price-bstore1>{ $b/price/text() }</price-bstore1> </book-with-prices> } </books-with-prices>
      ",
   Env = xqerl_test:handle_environment(environment('bib-and-reviews')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<books-with-prices><book-with-prices><title>TCP/IP Illustrated</title><price-bstore2>65.95</price-bstore2><price-bstore1>65.95</price-bstore1></book-with-prices><book-with-prices><title>Advanced Programming in the Unix environment</title><price-bstore2>65.95</price-bstore2><price-bstore1>65.95</price-bstore1></book-with-prices><book-with-prices><title>Data on the Web</title><price-bstore2>34.95</price-bstore2><price-bstore1>39.95</price-bstore1></book-with-prices></books-with-prices>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q6'(_Config) ->
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
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><et-al/></book></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q7'(_Config) ->
   Qry = "
      	<bib> { 
      		for $b in //book 
      		where $b/publisher = \"Addison-Wesley\" and $b/@year > 1991 
      		order by exactly-one($b/title) 
      		return <book> { $b/@year } { $b/title } </book> } 
      	</bib>
      ",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book year=\"1992\"><title>Advanced Programming in the Unix environment</title></book><book year=\"1994\"><title>TCP/IP Illustrated</title></book></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q8'(_Config) ->
   Qry = "
      	for $b in //book 
      	let $e := $b/*[contains(string(.), \"Suciu\") and ends-with(local-name(.), \"or\")] 
      	where exists($e) 
      	return <book> { $b/title } { $e } </book>
      ",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<book><title>Data on the Web</title><author><last>Suciu</last><first>Dan</first></author></book>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q9'(_Config) ->
   Qry = "
      	<results> { 
      		for $t in //(chapter | section)/title 
      		where contains(exactly-one($t/text()), \"XML\") 
      		return $t } 
      	</results>
      ",
   Env = xqerl_test:handle_environment(environment('books')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><title>XML</title><title>XML and Semistructured Data</title></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q10'(_Config) ->
   Qry = "
      	<results> { 
      		let $doc := (/) 
      		for $t in distinct-values($doc//book/title) 
      		let $p := $doc//book[title = $t]/price 
      		return <minprice title=\"{ $t }\"> <price>{ min($p) }</price> </minprice> } 
      	</results>
      ",
   Env = xqerl_test:handle_environment(environment('prices')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<results><minprice title=\"Advanced Programming in the Unix environment\"><price>65.95</price></minprice><minprice title=\"TCP/IP Illustrated\"><price>65.95</price></minprice><minprice title=\"Data on the Web\"><price>34.95</price></minprice></results>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q11'(_Config) ->
   Qry = "
      	<bib> { 
      		for $b in //book[author] 
      		return <book> 
      			{ $b/title } { $b/author } </book> } 
      			{ for $b in //book[editor] 
      				return <reference> { $b/title } {$b/editor/affiliation} </reference> } 
      	</bib>
      ",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author></book><reference><title>The Economics of Technology and Content for Digital TV</title><affiliation>CITI</affiliation></reference></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'xmp-queries-results-q12'(_Config) ->
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
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<bib><book-pair><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title></book-pair></bib>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
