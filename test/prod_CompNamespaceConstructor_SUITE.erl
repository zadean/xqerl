-module('prod_CompNamespaceConstructor_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['nscons-001'/1]).
-export(['nscons-002'/1]).
-export(['nscons-003'/1]).
-export(['nscons-004'/1]).
-export(['nscons-005'/1]).
-export(['nscons-006'/1]).
-export(['nscons-007'/1]).
-export(['nscons-008'/1]).
-export(['nscons-009'/1]).
-export(['nscons-010'/1]).
-export(['nscons-011'/1]).
-export(['nscons-012'/1]).
-export(['nscons-013'/1]).
-export(['nscons-014'/1]).
-export(['nscons-015'/1]).
-export(['nscons-016'/1]).
-export(['nscons-017'/1]).
-export(['nscons-018'/1]).
-export(['nscons-019'/1]).
-export(['nscons-020'/1]).
-export(['nscons-021'/1]).
-export(['nscons-022'/1]).
-export(['nscons-023'/1]).
-export(['nscons-024'/1]).
-export(['nscons-025'/1]).
-export(['nscons-026'/1]).
-export(['nscons-027'/1]).
-export(['nscons-028'/1]).
-export(['nscons-029'/1]).
-export(['nscons-030'/1]).
-export(['nscons-031'/1]).
-export(['nscons-032'/1]).
-export(['nscons-033'/1]).
-export(['nscons-034'/1]).
-export(['nscons-035'/1]).
-export(['nscons-036'/1]).
-export(['nscons-037'/1]).
-export(['nscons-038'/1]).
-export(['nscons-039'/1]).
-export(['nscons-040'/1]).
-export(['nscons-041'/1]).
-export(['nscons-042'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/prod/CompNamespaceConstructor/cnc-module.xq") catch _:_ -> ok end,Config.
all() -> [
   'nscons-001',
   'nscons-002',
   'nscons-003',
   'nscons-004',
   'nscons-005',
   'nscons-006',
   'nscons-007',
   'nscons-008',
   'nscons-009',
   'nscons-010',
   'nscons-011',
   'nscons-012',
   'nscons-013',
   'nscons-014',
   'nscons-015',
   'nscons-016',
   'nscons-017',
   'nscons-018',
   'nscons-019',
   'nscons-020',
   'nscons-021',
   'nscons-022',
   'nscons-023',
   'nscons-024',
   'nscons-025',
   'nscons-026',
   'nscons-027',
   'nscons-028',
   'nscons-029',
   'nscons-030',
   'nscons-031',
   'nscons-032',
   'nscons-033',
   'nscons-034',
   'nscons-035',
   'nscons-036',
   'nscons-037',
   'nscons-038',
   'nscons-039',
   'nscons-040',
   'nscons-041',
   'nscons-042'].
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
environment('cnc-schema') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/CompNamespaceConstructor/schema.xsd","http://www.w3.org/TestSchemas/cnc"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'nscons-001'(_Config) ->
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        <e>{ namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl} }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-002'(_Config) ->
   Qry = "
        declare variable $s := \"saxon\"; 
        declare variable $xsl := \"xsl\"; 
        <e>{ namespace {$s} {\"http://saxon.sf.net/\"}, 
             attribute a {23}, 
             namespace {$xsl} {\"http://www.w3.org/1999/XSL/Transform\"} }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-003'(_Config) ->
   Qry = "
        declare variable $s := \"saxon\"; 
        declare variable $xsl := \"xsl\"; 
        <out> <t:e xmlns:t=\"http://www.example.com/\">{ 
            namespace {\"\"} {\"http://saxon.sf.net/\"}, 
            attribute a {23}, 
            namespace {$xsl} {\"http://www.w3.org/1999/XSL/Transform\"}, <f/> }</t:e> </out>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <out><t:e xmlns:t=\"http://www.example.com/\" xmlns=\"http://saxon.sf.net/\"
        xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"><f xmlns=\"\"/></t:e></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><t:e xmlns:t=\"http://www.example.com/\" xmlns=\"http://saxon.sf.net/\"
        xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"><f xmlns=\"\"/></t:e></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><t:e xmlns:t=\"http://www.example.com/\" xmlns=\"http://saxon.sf.net/\"
        xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" a=\"23\"><f xmlns=\"\"/></t:e></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-004'(_Config) ->
   Qry = "
        declare variable $s := \"saxon\"; 
        declare variable $xml := \"http://www.w3.org/XML/1998/namespace\"; 
        <out> <t:e xmlns:t=\"http://www.example.com/\" xml:space=\"preserve\">{ 
            namespace xml {\"http://www.w3.org/XML/1998/namespace\"}, 
            attribute a {23}, <f/> }</t:e> </out>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <out><t:e xmlns:t=\"http://www.example.com/\" xml:space=\"preserve\" a=\"23\"><f/></t:e></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><t:e xmlns:t=\"http://www.example.com/\" xml:space=\"preserve\" a=\"23\"><f/></t:e></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><t:e xmlns:t=\"http://www.example.com/\" xml:space=\"preserve\" a=\"23\"><f/></t:e></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-005'(_Config) ->
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        element {QName(\"http://saxon.sf.net/\", \"saxon:extension\")} { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, element f {42} }
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" 
            a=\"23\"><f>42</f></saxon:extension>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" 
            a=\"23\"><f>42</f></saxon:extension>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" 
            a=\"23\"><f>42</f></saxon:extension>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-006'(_Config) ->
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        element {QName(\"http://saxon.sf.net/\", \"saxon:extension\")} 
                { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, namespace saxon {$s}, element f {42} }
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"
                 a=\"23\"><f>42</f></saxon:extension>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"
                 a=\"23\"><f>42</f></saxon:extension>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<saxon:extension xmlns:saxon=\"http://saxon.sf.net/\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"
                 a=\"23\"><f>42</f></saxon:extension>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-007'(_Config) ->
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        declare variable $xmlns := \"xmlns\"; 
        <e> { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, namespace xmlns {$s}, element f {42} }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0101" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0101'}) end.
'nscons-008'(_Config) ->
   Qry = "
        declare variable $s := \"http://saxon.sf.net/\"; 
        declare variable $xsl := \"http://www.w3.org/1999/XSL/Transform\"; 
        declare variable $xmlns := \"xml\"; 
        <e> { namespace saxon {$s}, attribute a {23}, namespace xsl {$xsl}, namespace {$xmlns} {$s}, element f {42} }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0101" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0101'}) end.
'nscons-009'(_Config) ->
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        <e> { namespace p {$p1}, namespace p {$p2}, element f {42} }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0102" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0102'}) end.
'nscons-010'(_Config) ->
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        declare variable $r := <e> { namespace p {$p1}, attribute {QName($p2, \"p:att\")} {93.7}, element f {42} }</e>; 
        <out> { exists($r/@*:att[prefix-from-QName(node-name(.))!='p']), exists(in-scope-prefixes($r)[.='p']) }</out>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <out>true true</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>true true</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>true true</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-011'(_Config) ->
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        declare variable $r := element {QName($p2, 'p:e')} { namespace p {$p1}, element f {42} }; 
        <out> { exists($r[prefix-from-QName(node-name(.))!='p']), exists(in-scope-prefixes($r)[.='p']) }</out>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <out>true true</out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out>true true</out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out>true true</out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-012'(_Config) ->
   Qry = "
        declare variable $p1 := \"http://example.com/one\"; 
        declare variable $p2 := \"http://example.com/two\"; 
        declare function local:f($ns as namespace-node()) as element() { 
            <namespace name=\"{name($ns)}\" local-name=\"{local-name($ns)}\" 
                namespace-uri=\"{namespace-uri($ns)}\" string-value=\"{string($ns)}\" typed-value=\"{data($ns)}\" 
                is-untyped=\"{data($ns) instance of xs:untypedAtomic}\" parent-exists=\"{exists($ns/..)}\" 
                is-namespace=\"{$ns instance of namespace-node()}\" 
                is-node=\"{$ns instance of node()}\" is-item=\"{$ns instance of item()}\" 
                same-as-self=\"{$ns is $ns}\"/> 
        }; 
        <out>{ 
            local:f(namespace p {\"http://example.com/one\"}), 
            local:f(namespace {\"\"} {\"http://example.com/two\"}) }</out>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <out><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/one\"
              is-untyped=\"false\"
              string-value=\"http://example.com/one\"
              local-name=\"p\"
              parent-exists=\"false\"
              name=\"p\"
              is-node=\"true\"/><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/two\"
              is-untyped=\"false\"
              string-value=\"http://example.com/two\"
              local-name=\"\"
              parent-exists=\"false\"
              name=\"\"
              is-node=\"true\"/></out>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/one\"
              is-untyped=\"false\"
              string-value=\"http://example.com/one\"
              local-name=\"p\"
              parent-exists=\"false\"
              name=\"p\"
              is-node=\"true\"/><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/two\"
              is-untyped=\"false\"
              string-value=\"http://example.com/two\"
              local-name=\"\"
              parent-exists=\"false\"
              name=\"\"
              is-node=\"true\"/></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/one\"
              is-untyped=\"false\"
              string-value=\"http://example.com/one\"
              local-name=\"p\"
              parent-exists=\"false\"
              name=\"p\"
              is-node=\"true\"/><namespace 
              same-as-self=\"true\" is-namespace=\"true\" namespace-uri=\"\" is-item=\"true\"
              typed-value=\"http://example.com/two\"
              is-untyped=\"false\"
              string-value=\"http://example.com/two\"
              local-name=\"\"
              parent-exists=\"false\"
              name=\"\"
              is-node=\"true\"/></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-013'(_Config) ->
   Qry = "
        let $pre := <prefix>z</prefix>,
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:z=\"http://www.zorba-xquery.com/\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:z=\"http://www.zorba-xquery.com/\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:z=\"http://www.zorba-xquery.com/\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-014'(_Config) ->
   Qry = "
        let $pre := \"z\",
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <e xmlns:z=\"http://www.zorba-xquery.com/\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:z=\"http://www.zorba-xquery.com/\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:z=\"http://www.zorba-xquery.com/\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-015'(_Config) ->
   Qry = "
        declare namespace z=\"http://www.zorba-xquery.com/\";
        <z:e>{ namespace { <a/>/* } { \"http://www.w3.org/\" } }</z:e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <z:e xmlns:z=\"http://www.zorba-xquery.com/\" xmlns=\"http://www.w3.org/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z:e xmlns:z=\"http://www.zorba-xquery.com/\" xmlns=\"http://www.w3.org/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z:e xmlns:z=\"http://www.zorba-xquery.com/\" xmlns=\"http://www.w3.org/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-016'(_Config) ->
   Qry = "
        let $pre := <prefix>z:z</prefix>,
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'nscons-017'(_Config) ->
   Qry = "
        let $pre := \"z z\",
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0074" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0074'}) end.
'nscons-018'(_Config) ->
   Qry = "
        let $pre := 1,
            $uri := \"http://www.zorba-xquery.com/\"
        return
          <e>{ namespace { $pre } { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'nscons-019'(_Config) ->
   Qry = "
        let $uri := \"http://www.w3.org/XML/1998/namespace\"
        return
          <e>{ namespace x { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0101" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0101'}) end.
'nscons-020'(_Config) ->
   Qry = "
        let $uri := \"http://www.w3.org/2000/xmlns/\"
        return
          <e>{ namespace x { $uri } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0101" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0101'}) end.
'nscons-021'(_Config) ->
   Qry = "
        <e>{ namespace x { \"\" } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0101" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0101'}) end.
'nscons-022'(_Config) ->
   Qry = "
        let $elem := <e>{ namespace z { \"http://www.zorba-xquery.com/\" } }</e>
        return
          element { resolve-QName(\"z:f\", $elem) } {}
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <z:f xmlns:z=\"http://www.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z:f xmlns:z=\"http://www.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z:f xmlns:z=\"http://www.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-023'(_Config) ->
   Qry = "
        <z:e>{ namespace z { \"http://www.zorba-xquery.com/\" } }</z:e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'nscons-024'(_Config) ->
   Qry = "
        <e>{ namespace z { \"http://www.zorba-xquery.com/\" }, element z:e {} }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'nscons-025'(_Config) ->
   Qry = "
        element e { attribute z:a {},  namespace z { \"http://www.zorba-xquery.com/\" } }
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'nscons-026'(_Config) ->
   Qry = "
        <e>{ namespace z { \"http://www.zorba-xquery.com/\" }, element { xs:QName(\"z:e\") } { } }</e>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FONS0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FONS0004'}) end.
'nscons-027'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        let $elem := <e>{ mod1:one() }</e>
        return
          element { resolve-QName(\"z:f\", $elem) } {}
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <z:f xmlns:z=\"http://www.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<z:f xmlns:z=\"http://www.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<z:f xmlns:z=\"http://www.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-028'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        let $ns := mod1:one()
        return ($ns is $ns, $ns is mod1:one())
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        true false
      ",
   case xqerl_test:string_value(Res) of
             "true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'nscons-029'(_Config) ->
   Qry = "
        serialize( namespace z { \"http://www.zorba-xquery.com/\" } )
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SENR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SENR0001'}) end.
'nscons-030'(_Config) ->
   Qry = "
        serialize( element e { namespace z { \"http://www.zorba-xquery.com/\" } } )
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        
            contains($result,'xmlns:z')
            contains($result,'\"http://www.zorba-xquery.com/\"')
        
      ",
 case    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"contains($result,'xmlns:z')",Options)) == {xqAtomicValue,'xs:boolean',true}) andalso    (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;"++"contains($result,'\"http://www.zorba-xquery.com/\"')",Options)) == {xqAtomicValue,'xs:boolean',true}) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'nscons-031'(_Config) ->
   Qry = "
        declare copy-namespaces preserve, inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner {
                namespace in { \"http://in.zorba-xquery.com/\" }
              } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-032'(_Config) ->
   Qry = "
        declare copy-namespaces preserve, no-inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner { namespace in { \"http://in.zorba-xquery.com/\" } } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner xmlns:in=\"http://in.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner xmlns:in=\"http://in.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner xmlns:in=\"http://in.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-033'(_Config) ->
   Qry = "
        declare copy-namespaces no-preserve, inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner { namespace in { \"http://in.zorba-xquery.com/\" } } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner xmlns:new=\"http://new.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner xmlns:new=\"http://new.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner xmlns:new=\"http://new.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-034'(_Config) ->
   Qry = "
        declare copy-namespaces no-preserve, no-inherit;
        let $nested := 
            element outer { 
              namespace out { \"http://out.zorba-xquery.com/\" },
              element inner { namespace in { \"http://in.zorba-xquery.com/\" } } 
            },
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-035'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces preserve, inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner xmlns:new=\"http://new.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" xmlns:in=\"http://in.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-036'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces preserve, no-inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner xmlns:in=\"http://in.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner xmlns:in=\"http://in.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner xmlns:in=\"http://in.zorba-xquery.com/\" xmlns:out=\"http://out.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-037'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces no-preserve, inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner xmlns:new=\"http://new.zorba-xquery.com/\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner xmlns:new=\"http://new.zorba-xquery.com/\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner xmlns:new=\"http://new.zorba-xquery.com/\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-038'(_Config) ->
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/cnc-module\";
        declare copy-namespaces no-preserve, no-inherit;
        let $nested := mod1:nested(),
            $elem := element e { namespace new { \"http://new.zorba-xquery.com/\" }, $nested }
        return
          $elem/outer/inner
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <inner/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<inner/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<inner/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-039'(_Config) ->
   Qry = "
        declare copy-namespaces preserve, inherit;
        
        declare function local:rec-add($level as xs:integer) as element() {
          if ($level > 0) then
            element { concat(\"e\", $level) } { 
              namespace { concat(\"pre\", $level) } { concat(\"uri\", $level) },
              local:rec-add($level - 1)
            }
          else
            element e0 {}       
        };

        local:rec-add(2)/e1/e0
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
        <e0 xmlns:pre2=\"uri2\" xmlns:pre1=\"uri1\" />
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e0 xmlns:pre2=\"uri2\" xmlns:pre1=\"uri1\" />"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e0 xmlns:pre2=\"uri2\" xmlns:pre1=\"uri1\" />" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'nscons-040'(_Config) ->
   {skip,"schemaImport"}.
'nscons-041'(_Config) ->
   {skip,"schemaImport"}.
'nscons-042'(_Config) ->
   Qry = "
        element e { namespace {''} {'http://example.com/uri'} }
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0102" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0102'}) end.
