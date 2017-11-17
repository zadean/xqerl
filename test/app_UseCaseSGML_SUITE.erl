-module('app_UseCaseSGML_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['sgml-queries-results-q1'/1]).
-export(['sgml-queries-results-q2'/1]).
-export(['sgml-queries-results-q3'/1]).
-export(['sgml-queries-results-q4'/1]).
-export(['sgml-queries-results-q5'/1]).
-export(['sgml-queries-results-q6'/1]).
-export(['sgml-queries-results-q7'/1]).
-export(['sgml-queries-results-q8a'/1]).
-export(['sgml-queries-results-q8b'/1]).
-export(['sgml-queries-results-q9'/1]).
-export(['sgml-queries-results-q10'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'sgml-queries-results-q1',
   'sgml-queries-results-q2',
   'sgml-queries-results-q3',
   'sgml-queries-results-q4',
   'sgml-queries-results-q5',
   'sgml-queries-results-q6',
   'sgml-queries-results-q7',
   'sgml-queries-results-q8a',
   'sgml-queries-results-q8b',
   'sgml-queries-results-q9',
   'sgml-queries-results-q10'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/works.xml","$works",""},
{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
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
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/"}]},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('sgml') ->
[{'decimal-formats', []},
{sources, [{"C:/git/zadean/xqerl/test/QT3-test-suite/docs/sgml.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"C:/git/zadean/xqerl/test/QT3-test-suite/app/"}]},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'sgml-queries-results-q1'(_Config) ->
   Qry = "<result> { //report//para } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>With the ever-changing and growing global market, companies and
 large organizations are searching for ways to become more viable and
 competitive. Downsizing and other cost-cutting measures demand more
 efficient use of corporate resources. One very important resource is
 an organization's information.</para><para>As part of the move toward integrated information management,
 whole industries are developing and implementing standards for
 exchanging technical information. This report describes how one such
 standard, the Standard Generalized Markup Language (SGML), works as
 part of an overall information management strategy.</para><para>While SGML is a fairly recent technology, the use of
 <emph>markup</emph> in computer-generated documents has existed for a
 while.</para><para>Markup is everything in a document that is not content. The
 traditional meaning of markup is the manual <emph>marking</emph> up
 of typewritten text to give instructions for a typesetter or
 compositor about how to fit the text on a page and what typefaces to
 use. This kind of markup is known as <emph>procedural markup</emph>.</para><para>Most electronic publishing systems today use some form of
 procedural markup. Procedural markup codes are good for one
 presentation of the information.</para><para>Generic markup (also known as descriptive markup) describes the
 <emph>purpose</emph> of the text in a document. A basic concept of
 generic markup is that the content of a document must be separate from
 the style. Generic markup allows for multiple presentations of the
 information.</para><para>Industries involved in technical documentation increasingly
 prefer generic over procedural markup schemes. When a company changes
 software or hardware systems, enormous data translation tasks arise,
 often resulting in errors.</para><para>SGML defines a strict markup scheme with a syntax for defining
 document data elements and an overall framework for marking up
 documents.</para><para>SGML can describe and create documents that are not dependent on
 any hardware, software, formatter, or operating system. Since SGML documents
 conform to an international standard, they are portable.</para><para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para><para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para><para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para><para>Content is the information itself. The method for identifying
 the information and its meaning within this framework is called
 <emph>tagging</emph>. Tagging must
 conform to the rules established in the DTD (see <xref xrefid=\"top4\"/>).</para><para>SGML does not standardize style or other processing methods for
 information stored in SGML.</para><para>The Graphic Communications Association has been
 instrumental in the development of SGML. GCA provides conferences,
 tutorials, newsletters, and publication sales for both members and
 non-members.</para><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q2'(_Config) ->
   Qry = "<result> { //intro/para } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>With the ever-changing and growing global market, companies and
 large organizations are searching for ways to become more viable and
 competitive. Downsizing and other cost-cutting measures demand more
 efficient use of corporate resources. One very important resource is
 an organization's information.</para><para>As part of the move toward integrated information management,
 whole industries are developing and implementing standards for
 exchanging technical information. This report describes how one such
 standard, the Standard Generalized Markup Language (SGML), works as
 part of an overall information management strategy.</para><para>While SGML is a fairly recent technology, the use of
 <emph>markup</emph> in computer-generated documents has existed for a
 while.</para><para>Markup is everything in a document that is not content. The
 traditional meaning of markup is the manual <emph>marking</emph> up
 of typewritten text to give instructions for a typesetter or
 compositor about how to fit the text on a page and what typefaces to
 use. This kind of markup is known as <emph>procedural markup</emph>.</para><para>SGML defines a strict markup scheme with a syntax for defining
 document data elements and an overall framework for marking up
 documents.</para><para>SGML can describe and create documents that are not dependent on
 any hardware, software, formatter, or operating system. Since SGML documents
 conform to an international standard, they are portable.</para><para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para><para>The Graphic Communications Association has been
 instrumental in the development of SGML. GCA provides conferences,
 tutorials, newsletters, and publication sales for both members and
 non-members.</para><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q3'(_Config) ->
   Qry = "<result> { for $c in //chapter where empty($c/intro) return $c/section/intro/para } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>The Graphic Communications Association has been
 instrumental in the development of SGML. GCA provides conferences,
 tutorials, newsletters, and publication sales for both members and
 non-members.</para><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q4'(_Config) ->
   Qry = "<result> { (((//chapter)[2]//section)[3]//para)[2] } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q5'(_Config) ->
   Qry = "<result> { //para[@security = \"c\"] } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><para security=\"c\">Exiled members of the former Soviet Union's secret
 police, the KGB, have infiltrated the upper ranks of the GCA and are
 planning the Final Revolution as soon as DSSSL is completed.</para></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q6'(_Config) ->
   Qry = "<result> { for $s in //section/@shorttitle return <stitle>{ $s }</stitle> } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><stitle shorttitle=\"What is markup?\"/><stitle shorttitle=\"What is SGML?\"/><stitle shorttitle=\"How does SGML work?\"/></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q7'(_Config) ->
   Qry = "<result> { for $i in //intro/para[1] return <first_letter>{ substring(string($i), 1, 1) }</first_letter> } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><first_letter>W</first_letter><first_letter>W</first_letter><first_letter>M</first_letter><first_letter>S</first_letter><first_letter>Y</first_letter><first_letter>T</first_letter></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q8a'(_Config) ->
   Qry = "<result> { //section[.//title[contains(., \"is SGML\")]] } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><section shorttitle=\"What is SGML?\">
 <title>What <emph>is</emph> SGML in the grand scheme of the universe, anyway?</title>
 <intro>
 <para>SGML defines a strict markup scheme with a syntax for defining
 document data elements and an overall framework for marking up
 documents.</para>
 <para>SGML can describe and create documents that are not dependent on
 any hardware, software, formatter, or operating system. Since SGML documents
 conform to an international standard, they are portable.</para></intro></section><section shorttitle=\"How does SGML work?\">
 <title>How is SGML and would you recommend it to your grandmother?</title>
 <intro>
 <para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para></intro>
 <topic topicid=\"top4\">
 <title>Structure</title>
 <para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para>
 <para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para></topic>
 <topic topicid=\"top5\">
 <title>Content</title>
 <para>Content is the information itself. The method for identifying
 the information and its meaning within this framework is called
 <emph>tagging</emph>. Tagging must
 conform to the rules established in the DTD (see <xref xrefid=\"top4\"/>).</para>
 <graphic graphname=\"tagexamp\"/></topic>
 <topic topicid=\"top6\">
 <title>Style</title>
 <para>SGML does not standardize style or other processing methods for
 information stored in SGML.</para></topic></section></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q8b'(_Config) ->
   Qry = "<result> { //section[.//title/text()[contains(., \"is SGML\")]] } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<result><section shorttitle=\"How does SGML work?\">
 <title>How is SGML and would you recommend it to your grandmother?</title>
 <intro>
 <para>You can break a typical document into three layers: structure,
 content, and style. SGML works by separating these three aspects and
 deals mainly with the relationship between structure and content.</para></intro>
 <topic topicid=\"top4\">
 <title>Structure</title>
 <para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para>
 <para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para></topic>
 <topic topicid=\"top5\">
 <title>Content</title>
 <para>Content is the information itself. The method for identifying
 the information and its meaning within this framework is called
 <emph>tagging</emph>. Tagging must
 conform to the rules established in the DTD (see <xref xrefid=\"top4\"/>).</para>
 <graphic graphname=\"tagexamp\"/></topic>
 <topic topicid=\"top6\">
 <title>Style</title>
 <para>SGML does not standardize style or other processing methods for
 information stored in SGML.</para></topic></section></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
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
'sgml-queries-results-q9'(_Config) ->
   Qry = "<result> { for $id in //xref/@xrefid return //topic[@topicid = $id] } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><topic topicid=\"top4\">
 <title>Structure</title>
 <para>At the heart of an SGML application is a file called the DTD, or
 Document Type Definition. The DTD sets up the structure of a document,
 much like a database schema describes the types of information it
 handles.</para>
 <para>A database schema also defines the relationships between the
 various types of data. Similarly, a DTD specifies <emph>rules</emph>
 to help ensure documents have a consistent, logical structure.</para></topic></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'sgml-queries-results-q10'(_Config) ->
   Qry = "<result> { let $x := //xref[@xrefid = \"top4\"], $t := //title[. << exactly-one($x)] return $t[last()] } </result>",
   {Env,Opts} = xqerl_test:handle_environment(environment('sgml')),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><title>Content</title></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
