-module('op_union_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-union-node-args-001'/1]).
-export(['fn-union-node-args-002'/1]).
-export(['fn-union-node-args-003'/1]).
-export(['fn-union-node-args-004'/1]).
-export(['fn-union-node-args-005'/1]).
-export(['fn-union-node-args-006'/1]).
-export(['fn-union-node-args-007'/1]).
-export(['fn-union-node-args-008'/1]).
-export(['fn-union-node-args-009'/1]).
-export(['fn-union-node-args-010'/1]).
-export(['fn-union-node-args-011'/1]).
-export(['fn-union-node-args-012'/1]).
-export(['fn-union-node-args-013'/1]).
-export(['fn-union-node-args-014'/1]).
-export(['fn-union-node-args-015'/1]).
-export(['fn-union-node-args-016'/1]).
-export(['fn-union-node-args-017'/1]).
-export(['fn-union-node-args-018'/1]).
-export(['fn-union-node-args-019'/1]).
-export(['fn-union-node-args-020'/1]).
-export(['fn-union-node-args-021'/1]).
-export(['fn-union-node-args-022'/1]).
-export(['fn-union-node-args-023'/1]).
-export(['K2-SeqUnion-1'/1]).
-export(['K2-SeqUnion-2'/1]).
-export(['K2-SeqUnion-3'/1]).
-export(['K2-SeqUnion-4'/1]).
-export(['K2-SeqUnion-5'/1]).
-export(['K2-SeqUnion-6'/1]).
-export(['K2-SeqUnion-7'/1]).
-export(['K2-SeqUnion-8'/1]).
-export(['K2-SeqUnion-9'/1]).
-export(['K2-SeqUnion-10'/1]).
-export(['K2-SeqUnion-11'/1]).
-export(['K2-SeqUnion-12'/1]).
-export(['K2-SeqUnion-13'/1]).
-export(['K2-SeqUnion-14'/1]).
-export(['K2-SeqUnion-15'/1]).
-export(['K2-SeqUnion-16'/1]).
-export(['K2-SeqUnion-17'/1]).
-export(['K2-SeqUnion-18'/1]).
-export(['K2-SeqUnion-19'/1]).
-export(['K2-SeqUnion-20'/1]).
-export(['K2-SeqUnion-21'/1]).
-export(['K2-SeqUnion-22'/1]).
-export(['K2-SeqUnion-23'/1]).
-export(['K2-SeqUnion-24'/1]).
-export(['K2-SeqUnion-25'/1]).
-export(['K2-SeqUnion-26'/1]).
-export(['K2-SeqUnion-27'/1]).
-export(['K2-SeqUnion-28'/1]).
-export(['K2-SeqUnion-29'/1]).
-export(['K2-SeqUnion-30'/1]).
-export(['K2-SeqUnion-31'/1]).
-export(['K2-SeqUnion-32'/1]).
-export(['K2-SeqUnion-33'/1]).
-export(['K2-SeqUnion-34'/1]).
-export(['K2-SeqUnion-35'/1]).
-export(['K2-SeqUnion-36'/1]).
-export(['K2-SeqUnion-37'/1]).
-export(['K2-SeqUnion-38'/1]).
-export(['K2-SeqUnion-39'/1]).
-export(['K2-SeqUnion-40'/1]).
-export(['K2-SeqUnion-41'/1]).
-export(['K2-SeqUnion-42'/1]).
-export(['K2-SeqUnion-43'/1]).
-export(['K2-SeqUnion-44'/1]).
-export(['K2-SeqUnion-45'/1]).
-export(['K2-SeqUnion-46'/1]).
-export(['K2-SeqUnion-47'/1]).
-export(['combiningnodeseqhc1'/1]).
-export(['combiningnodeseqhc2'/1]).
-export(['combiningnodeseqhc3'/1]).
-export(['combiningnodeseqhc4'/1]).
-export(['combiningnodeseqhc5'/1]).
-export(['combiningnodeseqhc6'/1]).
-export(['combiningnodeseqhc7'/1]).
-export(['combiningnodeseqhc8'/1]).
-export(['combiningnodeseqhc9'/1]).
-export(['combiningnodeseqhc10'/1]).
-export(['cbcl-fn-union-001'/1]).
-export(['cbcl-fn-union-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-union-node-args-001',
   'fn-union-node-args-002',
   'fn-union-node-args-003',
   'fn-union-node-args-004',
   'fn-union-node-args-005',
   'fn-union-node-args-006',
   'fn-union-node-args-007',
   'fn-union-node-args-008',
   'fn-union-node-args-009',
   'fn-union-node-args-010',
   'fn-union-node-args-011',
   'fn-union-node-args-012',
   'fn-union-node-args-013',
   'fn-union-node-args-014',
   'fn-union-node-args-015',
   'fn-union-node-args-016',
   'fn-union-node-args-017',
   'fn-union-node-args-018',
   'fn-union-node-args-019',
   'fn-union-node-args-020',
   'fn-union-node-args-021',
   'fn-union-node-args-022',
   'fn-union-node-args-023',
   'K2-SeqUnion-1',
   'K2-SeqUnion-2',
   'K2-SeqUnion-3',
   'K2-SeqUnion-4',
   'K2-SeqUnion-5',
   'K2-SeqUnion-6',
   'K2-SeqUnion-7',
   'K2-SeqUnion-8',
   'K2-SeqUnion-9',
   'K2-SeqUnion-10',
   'K2-SeqUnion-11',
   'K2-SeqUnion-12',
   'K2-SeqUnion-13',
   'K2-SeqUnion-14',
   'K2-SeqUnion-15',
   'K2-SeqUnion-16',
   'K2-SeqUnion-17',
   'K2-SeqUnion-18',
   'K2-SeqUnion-19',
   'K2-SeqUnion-20',
   'K2-SeqUnion-21',
   'K2-SeqUnion-22',
   'K2-SeqUnion-23',
   'K2-SeqUnion-24',
   'K2-SeqUnion-25',
   'K2-SeqUnion-26',
   'K2-SeqUnion-27',
   'K2-SeqUnion-28',
   'K2-SeqUnion-29',
   'K2-SeqUnion-30',
   'K2-SeqUnion-31',
   'K2-SeqUnion-32',
   'K2-SeqUnion-33',
   'K2-SeqUnion-34',
   'K2-SeqUnion-35',
   'K2-SeqUnion-36',
   'K2-SeqUnion-37',
   'K2-SeqUnion-38',
   'K2-SeqUnion-39',
   'K2-SeqUnion-40',
   'K2-SeqUnion-41',
   'K2-SeqUnion-42',
   'K2-SeqUnion-43',
   'K2-SeqUnion-44',
   'K2-SeqUnion-45',
   'K2-SeqUnion-46',
   'K2-SeqUnion-47',
   'combiningnodeseqhc1',
   'combiningnodeseqhc2',
   'combiningnodeseqhc3',
   'combiningnodeseqhc4',
   'combiningnodeseqhc5',
   'combiningnodeseqhc6',
   'combiningnodeseqhc7',
   'combiningnodeseqhc8',
   'combiningnodeseqhc9',
   'combiningnodeseqhc10',
   'cbcl-fn-union-001',
   'cbcl-fn-union-002'].
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
environment('acme_corp') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/op/union/acme_corp.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('bib2') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/op/union/bib2.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-union-node-args-001'(_Config) ->
   Qry = "/bib/book[3]/title union /bib/book[1]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>TCP/IP Illustrated</title><title>Data on the Web</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>TCP/IP Illustrated</title><title>Data on the Web</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>TCP/IP Illustrated</title><title>Data on the Web</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-002'(_Config) ->
   Qry = "(/bib/book/title | /bib/book)/local-name()",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         book title book title book title book title
      ",
   case xqerl_types:string_value(Res) of
             "book title book title book title book title" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-union-node-args-003'(_Config) ->
   Qry = "/bib/book[3]/title | root(fn:exactly-one(/bib/book[3]/title))",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><?PI1 Processing Instruction 1?><bib>
    <book year=\"1994\">
        <title>TCP/IP Illustrated</title>
        <author><last>Stevens</last><first>W.</first></author>
        <publisher>Addison-Wesley</publisher>
        <price>65.95</price>
    </book>
 
    <book year=\"1992\">
        <title>Advanced Programming in the Unix environment</title>
        <author><last>Stevens</last><first>W.</first></author>
        <publisher>Addison-Wesley</publisher>
        <price>65.95</price>
    </book>
 
    <book year=\"2000\">
        <title>Data on the Web</title>
        <author><last>Abiteboul</last><first>Serge</first></author>
        <author><last>Buneman</last><first>Peter</first></author>
        <author><last>Suciu</last><first>Dan</first></author>
        <publisher>Morgan Kaufmann Publishers</publisher>
        <price>39.95</price>
    </book>
 
    <book year=\"1999\">
        <title>The Economics of Technology and Content for Digital TV</title>
        <editor>
               <last>Gerbarg</last><first>Darcy</first>
                <affiliation>CITI</affiliation>
        </editor>
            <publisher>Kluwer Academic Publishers</publisher>
        <price>129.95</price>
    </book>
</bib><!-- Comment 2 --><?PI2 Processing Instruction 2?><title>Data on the Web</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><?PI1 Processing Instruction 1?><bib>
    <book year=\"1994\">
        <title>TCP/IP Illustrated</title>
        <author><last>Stevens</last><first>W.</first></author>
        <publisher>Addison-Wesley</publisher>
        <price>65.95</price>
    </book>
 
    <book year=\"1992\">
        <title>Advanced Programming in the Unix environment</title>
        <author><last>Stevens</last><first>W.</first></author>
        <publisher>Addison-Wesley</publisher>
        <price>65.95</price>
    </book>
 
    <book year=\"2000\">
        <title>Data on the Web</title>
        <author><last>Abiteboul</last><first>Serge</first></author>
        <author><last>Buneman</last><first>Peter</first></author>
        <author><last>Suciu</last><first>Dan</first></author>
        <publisher>Morgan Kaufmann Publishers</publisher>
        <price>39.95</price>
    </book>
 
    <book year=\"1999\">
        <title>The Economics of Technology and Content for Digital TV</title>
        <editor>
               <last>Gerbarg</last><first>Darcy</first>
                <affiliation>CITI</affiliation>
        </editor>
            <publisher>Kluwer Academic Publishers</publisher>
        <price>129.95</price>
    </book>
</bib><!-- Comment 2 --><?PI2 Processing Instruction 2?><title>Data on the Web</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><?PI1 Processing Instruction 1?><bib>
    <book year=\"1994\">
        <title>TCP/IP Illustrated</title>
        <author><last>Stevens</last><first>W.</first></author>
        <publisher>Addison-Wesley</publisher>
        <price>65.95</price>
    </book>
 
    <book year=\"1992\">
        <title>Advanced Programming in the Unix environment</title>
        <author><last>Stevens</last><first>W.</first></author>
        <publisher>Addison-Wesley</publisher>
        <price>65.95</price>
    </book>
 
    <book year=\"2000\">
        <title>Data on the Web</title>
        <author><last>Abiteboul</last><first>Serge</first></author>
        <author><last>Buneman</last><first>Peter</first></author>
        <author><last>Suciu</last><first>Dan</first></author>
        <publisher>Morgan Kaufmann Publishers</publisher>
        <price>39.95</price>
    </book>
 
    <book year=\"1999\">
        <title>The Economics of Technology and Content for Digital TV</title>
        <editor>
               <last>Gerbarg</last><first>Darcy</first>
                <affiliation>CITI</affiliation>
        </editor>
            <publisher>Kluwer Academic Publishers</publisher>
        <price>129.95</price>
    </book>
</bib><!-- Comment 2 --><?PI2 Processing Instruction 2?><title>Data on the Web</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-004'(_Config) ->
   Qry = "/bib/book[3]/title/text() union /bib/book[1]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>TCP/IP Illustrated</title>Data on the Web
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>TCP/IP Illustrated</title>Data on the Web"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>TCP/IP Illustrated</title>Data on the Web" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-005'(_Config) ->
   Qry = "/processing-instruction() union /bib/book[2]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-006'(_Config) ->
   Qry = "/processing-instruction(PI1) union /bib/book[3]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <?PI1 Processing Instruction 1?><title>Data on the Web</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?PI1 Processing Instruction 1?><title>Data on the Web</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?PI1 Processing Instruction 1?><title>Data on the Web</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-007'(_Config) ->
   Qry = "/comment() union /bib/book[1]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-008'(_Config) ->
   Qry = "/bib/book[3]/title/text() | /bib/book[1]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>TCP/IP Illustrated</title>Data on the Web
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>TCP/IP Illustrated</title>Data on the Web"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>TCP/IP Illustrated</title>Data on the Web" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-009'(_Config) ->
   Qry = "/processing-instruction() | /bib/book[2]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?PI1 Processing Instruction 1?><title>Advanced Programming in the Unix environment</title><?PI2 Processing Instruction 2?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-010'(_Config) ->
   Qry = "/processing-instruction(PI1) | /bib/book[3]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <?PI1 Processing Instruction 1?><title>Data on the Web</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?PI1 Processing Instruction 1?><title>Data on the Web</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?PI1 Processing Instruction 1?><title>Data on the Web</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-011'(_Config) ->
   Qry = "/comment() | /bib/book[1]/title",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<!-- this file is a copy of bib.xml; just adds a few comments and PI nodes for testing --><!-- Comment 1 --><title>TCP/IP Illustrated</title><!-- Comment 2 -->" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-012'(_Config) ->
   Qry = "//author union //nonexisting",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-013'(_Config) ->
   Qry = "//author | ()",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<author><last>Stevens</last><first>W.</first></author><author><last>Stevens</last><first>W.</first></author><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-union-node-args-014'(_Config) ->
   Qry = "() | ()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_types:string_value(Res) == "") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-union-node-args-015'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-016'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-017'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-018'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-019'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-020'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-021'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-022'(_Config) ->
   {skip,"Validation Environment"}.
'fn-union-node-args-023'(_Config) ->
   Qry = "string-join(for $node in ((//price/text()) , (//price/text())) union ((//price/text()) , (//price/text())) return $node, \"|\")",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         65.95|65.95|39.95|129.95
      ",
   case xqerl_types:string_value(Res) of
             "65.95|65.95|39.95|129.95" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqUnion-1'(_Config) ->
   Qry = "<r> { let $i := <e> <a/> <b/> </e> return ($i/b, $i/a, $i/b, $i/a) | () } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r><a/><b/></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><a/><b/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><a/><b/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-SeqUnion-2'(_Config) ->
   Qry = "<r> { let $i := <e> <a/> <b/> </e> return () | ($i/b, $i/a, $i/b, $i/a) } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r><a/><b/></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><a/><b/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><a/><b/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-SeqUnion-3'(_Config) ->
   Qry = "empty(<e/>/(author union comment))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-4'(_Config) ->
   Qry = "let $i := <e> <a/> <b/> <c/> </e>/a , $t := $i/following-sibling::b return (($i union ($i, $i)), (($t, $t) union $t))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/><b/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/><b/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/><b/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-SeqUnion-5'(_Config) ->
   Qry = "(1, 2, 3) union (1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqUnion-6'(_Config) ->
   Qry = "empty(<e/>/(author union text))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-7'(_Config) ->
   Qry = "empty(<e/>/(author union node))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-8'(_Config) ->
   Qry = "empty(<e/>/(author union element))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-9'(_Config) ->
   Qry = "empty(<e/>/(author union attribute))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-10'(_Config) ->
   Qry = "empty(<e/>/(author union document-node))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-11'(_Config) ->
   Qry = "empty(<e/>/(author union comment))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-12'(_Config) ->
   Qry = "empty(<e/>/(author union processing-instruction))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-13'(_Config) ->
   Qry = "empty(<e/>/(author union item))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-14'(_Config) ->
   Qry = "empty(<e/>/(author union document))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-15'(_Config) ->
   Qry = "empty(<e/>/(author union if))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-16'(_Config) ->
   Qry = "empty(<e/>/(author union then))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-17'(_Config) ->
   Qry = "empty(<e/>/(author union mod))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-18'(_Config) ->
   Qry = "empty(<e/>/(author union div))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-19'(_Config) ->
   Qry = "empty(<e/>/(author union empty-sequence))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-20'(_Config) ->
   Qry = "empty(<e/>/(author union schema-attribute))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-21'(_Config) ->
   Qry = "empty(<e/>/(author union schema-element))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-22'(_Config) ->
   Qry = "empty(<e/>/(a union attribute {\"name\"} {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-23'(_Config) ->
   Qry = "empty(<e/>/(a union attribute name {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-24'(_Config) ->
   Qry = "empty(<e/>/(a union element {\"name\"} {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-SeqUnion-25'(_Config) ->
   Qry = "empty(<e/>/(a union element name {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-SeqUnion-26'(_Config) ->
   Qry = "empty(<e/>/(a union processing-instruction {\"name\"} {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-27'(_Config) ->
   Qry = "empty(<e/>/(a union processing-instruction name {}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-28'(_Config) ->
   Qry = "empty(<e/>/(a union comment {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-29'(_Config) ->
   Qry = "empty(<e/>/(a union text {()}))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-30'(_Config) ->
   Qry = "empty(<e/>/(a union descendant))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-31'(_Config) ->
   Qry = "empty(<e/>/(a union attribute))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-32'(_Config) ->
   Qry = "empty(<e/>/(a union self))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-33'(_Config) ->
   Qry = "empty(<e/>/(a union descendant-or-self))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-34'(_Config) ->
   Qry = "empty(<e/>/(a union following-sibling))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-35'(_Config) ->
   Qry = "empty(<e/>/(a union following))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-36'(_Config) ->
   Qry = "empty(<e/>/(a union preceding-sibling))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-37'(_Config) ->
   Qry = "empty(<e/>/(a union preceding))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-38'(_Config) ->
   Qry = "empty(<e/>/(a union parent))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-39'(_Config) ->
   Qry = "empty(<e/>/(a union ancestor))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-40'(_Config) ->
   Qry = "empty(<e/>/(a union ancestor))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-41'(_Config) ->
   Qry = "empty(<e/>/(a union ancestor-or-self))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-42'(_Config) ->
   Qry = "empty(<e/>/(a union declare))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-43'(_Config) ->
   Qry = "boolean(//employee[location = \"Denver\"] union //employee[last()])",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-44'(_Config) ->
   Qry = "boolean(//employee[location = \"Denver\"] | //employee[last()])",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqUnion-45'(_Config) ->
   Qry = " <r> { //(employee[location = \"Denver\"] union //employee[last()])/./location } </r>",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r><location>Denver</location><location>Denver</location><location>Denver</location><location>Boston</location></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><location>Denver</location><location>Denver</location><location>Denver</location><location>Boston</location></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><location>Denver</location><location>Denver</location><location>Denver</location><location>Boston</location></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-SeqUnion-46'(_Config) ->
   Qry = "1|2|3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqUnion-47'(_Config) ->
   Qry = "1 union 2 union 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'combiningnodeseqhc1'(_Config) ->
   Qry = "for $h in ( (<hours>0</hours>,<hours>1</hours>) | //hours) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc2'(_Config) ->
   Qry = "for $h in ( (<hours>0</hours>,<hours>1</hours>) union (//hours)) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>0</hours><hours>1</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc3'(_Config) ->
   Qry = "for $h in ( (<hours>0</hours>,<hours>40</hours>) | (//hours)) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc4'(_Config) ->
   Qry = "for $h in ( (<hours>0</hours>,<hours>40</hours>) union (//hours)) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>0</hours><hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc5'(_Config) ->
   Qry = "for $h in ( () | (//hours)) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc6'(_Config) ->
   Qry = "for $h in ( () union (//hours)) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc7'(_Config) ->
   Qry = "for $h in ( (//hours[xs:integer(.) le 20]) | (//hours[xs:integer(.) gt 20])) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc8'(_Config) ->
   Qry = "for $h in ( (//hours[xs:integer(.) le 20]) union (//hours[xs:integer(.) gt 20])) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc9'(_Config) ->
   Qry = "for $h in ( ($works//hours) | ($staff//grade[xs:integer(.) gt 12])) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'combiningnodeseqhc10'(_Config) ->
   Qry = "for $h in ( ($works//hours) union ($staff//grade[xs:integer(.) gt 12])) order by number($h) return $h",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours><grade>13</grade><grade>13</grade><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>20</hours><hours>40</hours><hours>40</hours><hours>40</hours><hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-fn-union-001'(_Config) ->
   Qry = "
        declare variable $x := <b/>;
        declare variable $y := <a/>;
        ($x union $y) union $x, ($x intersect $y) union $x, ($x except $y) union $x, ($y except $x) union $x, $x union ($x union $y), $x union ($x intersect $y), $x union ($x except $y), $x union ($y except $x)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <b/><a/><b/><b/><b/><a/><b/><a/><b/><b/><b/><a/>
            <a/><b/><b/><b/><a/><b/><a/><b/><b/><b/><a/><b/>
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<b/><a/><b/><b/><b/><a/><b/><a/><b/><b/><b/><a/>"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P2 -> "deep-equal(<x>"++P2++"</x>" end ++ " , " ++ "<x>" ++ "<a/><b/><b/><b/><a/><b/><a/><b/><b/><b/><a/><b/>"++ "</x>)" )) == "true" orelse ResXml == Exp) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-fn-union-002'(_Config) ->
   Qry = "
        declare variable $doc := <root><test><x/><y/></test></root>;
        $doc/test[x] union $doc/test[y]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <test><x/><y/></test>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<test><x/><y/></test>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<test><x/><y/></test>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
