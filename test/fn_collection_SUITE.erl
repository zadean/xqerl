-module('fn_collection_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-collection-1'/1]).
-export(['fn-collection-2'/1]).
-export(['fn-collection-3'/1]).
-export(['fn-collection-4'/1]).
-export(['fn-collection-4d'/1]).
-export(['fn-collection-5'/1]).
-export(['fn-collection-5d'/1]).
-export(['fn-collection-6'/1]).
-export(['fn-collection-7'/1]).
-export(['fn-collection-8'/1]).
-export(['fn-collection-9'/1]).
-export(['fn-collection-10'/1]).
-export(['fn-collection-10d'/1]).
-export(['K2-SeqCollectionFunc-1'/1]).
-export(['K2-SeqCollectionFunc-2'/1]).
-export(['collection-001'/1]).
-export(['collection-002'/1]).
-export(['collection-003'/1]).
-export(['collection-004'/1]).
-export(['collection-005'/1]).
-export(['collection-006'/1]).
-export(['collection-007'/1]).
-export(['collection-008'/1]).
-export(['collection-009'/1]).
-export(['collection-010'/1]).
-export(['collection-900'/1]).
-export(['collection-901'/1]).
-export(['collection-902'/1]).
-export(['collection-903'/1]).
-export(['cbcl-collection-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-collection-1',
   'fn-collection-2',
   'fn-collection-3',
   'fn-collection-4',
   'fn-collection-4d',
   'fn-collection-5',
   'fn-collection-5d',
   'fn-collection-6',
   'fn-collection-7',
   'fn-collection-8',
   'fn-collection-9',
   'fn-collection-10',
   'fn-collection-10d',
   'K2-SeqCollectionFunc-1',
   'K2-SeqCollectionFunc-2',
   'collection-001',
   'collection-002',
   'collection-003',
   'collection-004',
   'collection-005',
   'collection-006',
   'collection-007',
   'collection-008',
   'collection-009',
   'collection-010',
   'collection-900',
   'collection-901',
   'collection-902',
   'collection-903',
   'cbcl-collection-001'].
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
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
[{sources, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
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
environment('default-collection-1') ->
[{sources, []},
{schemas, []},
{collections, [{"",["file:///C:/git/xqerl/test/QT3_1_0/docs/bib.xml",
"file:///C:/git/xqerl/test/QT3_1_0/docs/reviews.xml"]}]},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('simple-collection-1') ->
[{sources, []},
{schemas, []},
{collections, [{"http://www.w3.org/2010/09/qt-fots-catalog/collection1",["file:///C:/git/xqerl/test/QT3_1_0/docs/bib.xml",
"file:///C:/git/xqerl/test/QT3_1_0/docs/reviews.xml"]}]},
{'static-base-uri', [{"http://www.w3.org/2010/09/qt-fots-catalog/"}]},
{params, [{"collection-uri","xs:string","'http://www.w3.org/2010/09/qt-fots-catalog/collection1'"}]},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('default-collection-2') ->
[{sources, []},
{schemas, []},
{collections, [{"",["file:///C:/git/xqerl/test/QT3_1_0/docs/bib.xml",
"file:///C:/git/xqerl/test/QT3_1_0/docs/reviews.xml",
"file:///C:/git/xqerl/test/QT3_1_0/docs/books.xml"]}]},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('simple-collection-2') ->
[{sources, []},
{schemas, []},
{collections, [{"http://www.w3.org/2010/09/qt-fots-catalog/collection2",["file:///C:/git/xqerl/test/QT3_1_0/docs/bib.xml",
"file:///C:/git/xqerl/test/QT3_1_0/docs/reviews.xml",
"file:///C:/git/xqerl/test/QT3_1_0/docs/books.xml"]}]},
{'static-base-uri', []},
{params, [{"collection-uri","xs:string","'http://www.w3.org/2010/09/qt-fots-catalog/collection2'"}]},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-collection-1'(_Config) ->
   Qry = "fn:collection(\"argument1\",\"argument2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-collection-2'(_Config) ->
   Qry = "fn:collection(\"thisfileshouldnotexists\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0002'}) end.
'fn-collection-3'(_Config) ->
   Qry = "fn:collection(\"invalidURI%gg\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0004'}) end.
'fn-collection-4'(_Config) ->
   Qry = "count(fn:collection($collection-uri))",
   Env = xqerl_test:handle_environment(environment('simple-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-collection-4d'(_Config) ->
   Qry = "count(fn:collection())",
   Env = xqerl_test:handle_environment(environment('default-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-collection-5'(_Config) ->
   Qry = "count(fn:collection($collection-uri))",
   Env = xqerl_test:handle_environment(environment('simple-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-collection-5d'(_Config) ->
   Qry = "count(fn:collection())",
   Env = xqerl_test:handle_environment(environment('default-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-collection-6'(_Config) ->
   Qry = "for $x in fn:collection($collection-uri)//title order by string($x) return $x",
   Env = xqerl_test:handle_environment(environment('simple-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>Advanced Programming in the Unix environment</title><title>Advanced Programming in the Unix environment</title><title>Basic Syntax</title><title>Data Model</title><title>Data on the Web</title><title>Data on the Web</title><title>Syntax For Data Model</title><title>TCP/IP Illustrated</title><title>TCP/IP Illustrated</title><title>The Economics of Technology and Content for Digital TV</title><title>XML</title><title>XML and Semistructured Data</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>Advanced Programming in the Unix environment</title><title>Advanced Programming in the Unix environment</title><title>Basic Syntax</title><title>Data Model</title><title>Data on the Web</title><title>Data on the Web</title><title>Syntax For Data Model</title><title>TCP/IP Illustrated</title><title>TCP/IP Illustrated</title><title>The Economics of Technology and Content for Digital TV</title><title>XML</title><title>XML and Semistructured Data</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>Advanced Programming in the Unix environment</title><title>Advanced Programming in the Unix environment</title><title>Basic Syntax</title><title>Data Model</title><title>Data on the Web</title><title>Data on the Web</title><title>Syntax For Data Model</title><title>TCP/IP Illustrated</title><title>TCP/IP Illustrated</title><title>The Economics of Technology and Content for Digital TV</title><title>XML</title><title>XML and Semistructured Data</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-collection-7'(_Config) ->
   Qry = "distinct-values(fn:collection($collection-uri)//*[text()[contains(.,\"TCP/IP\")]]/normalize-space())",
   Env = xqerl_test:handle_environment(environment('simple-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           \"TCP/IP Illustrated\", \"One of the best books on TCP/IP.\"
           
         
      ",
 case (   ct:fail(["<assert-permutation xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\"TCP/IP Illustrated\", \"One of the best books on TCP/IP.\"</assert-permutation>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-collection-8'(_Config) ->
   Qry = "for $d in fn:collection($collection-uri) return ($d//title)[1]",
   Env = xqerl_test:handle_environment(environment('simple-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <title>TCP/IP Illustrated</title><title>Data on the Web</title>
            <title>Data on the Web</title><title>TCP/IP Illustrated</title>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<title>TCP/IP Illustrated</title><title>Data on the Web</title>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P2 -> "deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<title>Data on the Web</title><title>TCP/IP Illustrated</title>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-collection-9'(_Config) ->
   Qry = "for $d in fn:collection($collection-uri) order by count($d//title) return count($d//title)",
   Env = xqerl_test:handle_environment(environment('simple-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3 4 5
      ",
   case xqerl_types:string_value(Res) of
             "3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-collection-10'(_Config) ->
   Qry = "
        let $c1 := fn:collection($collection-uri) 
        let $c2 := fn:collection($collection-uri) 
        for $c at $p in $c1 
        return $c is exactly-one($c2[$p])",
   Env = xqerl_test:handle_environment(environment('simple-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true
      ",
   case xqerl_types:string_value(Res) of
             "true true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-collection-10d'(_Config) ->
   Qry = "
        let $c1 := fn:collection() 
        let $c2 := fn:collection() 
        for $c at $p in $c1 
        return $c is exactly-one($c2[$p])",
   Env = xqerl_test:handle_environment(environment('default-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true true
      ",
   case xqerl_types:string_value(Res) of
             "true true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqCollectionFunc-1'(_Config) ->
   Qry = "collection(\"http:\\\\invalidURI\\someURI%gg\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0004'}) end.
'K2-SeqCollectionFunc-2'(_Config) ->
   Qry = "collection(\":/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0004'}) end.
'collection-001'(_Config) ->
   Qry = "collection()",
   Env = xqerl_test:handle_environment(environment('default-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 2
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 2</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-002'(_Config) ->
   Qry = "collection(())",
   Env = xqerl_test:handle_environment(environment('default-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 2
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 2</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-003'(_Config) ->
   Qry = "collection() | collection(())",
   Env = xqerl_test:handle_environment(environment('default-collection-2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 3
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 3</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-004'(_Config) ->
   {skip,"collection-stability"}.
'collection-005'(_Config) ->
   Qry = "collection(\"http://www.w3.org/2010/09/qt-fots-catalog/collection1\")",
   Env = xqerl_test:handle_environment(environment('simple-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 2
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 2</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-006'(_Config) ->
   Qry = "collection(\"collection1\")",
   Env = xqerl_test:handle_environment(environment('simple-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 2
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 2</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-007'(_Config) ->
   Qry = "collection(\"http://www.w3.org/2010/09/qt-fots-catalog/collection1\") | collection(\"collection1\")",
   Env = xqerl_test:handle_environment(environment('simple-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 2
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 2</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-008'(_Config) ->
   {skip,"collection-stability"}.
'collection-009'(_Config) ->
   Qry = "let $c := collection(\"http://www.w3.org/2010/09/qt-fots-catalog/collection1\") 
            return $c | (for $doc in $c return doc(document-uri($doc)))",
   Env = xqerl_test:handle_environment(environment('simple-collection-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
             
                count($result) = 2
                document-node()*
             
             
         
      ",
 case (   ct:fail(["<all-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
                <assert>count($result) = 2</assert>
                <assert-type>document-node()*</assert-type>
             </all-of>", Res])) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'collection-010'(_Config) ->
   {skip,"directory-as-collection-uri"}.
'collection-900'(_Config) ->
   Qry = "collection(\"nonexistent\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0002'}) end.
'collection-901'(_Config) ->
   Qry = "collection()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0002'}) end.
'collection-902'(_Config) ->
   Qry = "collection(\"##invalid\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0004'}) end.
'collection-903'(_Config) ->
   Qry = "collection(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0002'}) end.
'cbcl-collection-001'(_Config) ->
   Qry = "fn:collection('%gg')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0004'}) end.
