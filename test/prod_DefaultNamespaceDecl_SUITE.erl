-module('prod_DefaultNamespaceDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['default_namespace-001'/1]).
-export(['default_namespace-002'/1]).
-export(['default_namespace-003'/1]).
-export(['default_namespace-004'/1]).
-export(['default_namespace-005'/1]).
-export(['default_namespace-006'/1]).
-export(['default_namespace-007'/1]).
-export(['default_namespace-008'/1]).
-export(['default_namespace-009'/1]).
-export(['default_namespace-010'/1]).
-export(['default_namespace-011'/1]).
-export(['default_namespace-012'/1]).
-export(['default_namespace-013'/1]).
-export(['default_namespace-014'/1]).
-export(['default_namespace-015'/1]).
-export(['default_namespace-016'/1]).
-export(['default_namespace-017'/1]).
-export(['default_namespace-018'/1]).
-export(['default_namespace-019'/1]).
-export(['default_namespace-020'/1]).
-export(['default_namespace-021'/1]).
-export(['default_namespace-022'/1]).
-export(['defaultnamespacedeclerr-1'/1]).
-export(['defaultnamespacedeclerr-2'/1]).
-export(['defaultnamespacedeclerr-3'/1]).
-export(['defaultnamespacedeclerr-4'/1]).
-export(['defaultnamespacedeclerr-5'/1]).
-export(['defaultnamespacedeclerr-6'/1]).
-export(['defaultnamespacedeclerr-7'/1]).
-export(['defaultnamespacedeclerr-8'/1]).
-export(['K-DefaultNamespaceProlog-1'/1]).
-export(['K-DefaultNamespaceProlog-2'/1]).
-export(['K-DefaultNamespaceProlog-3'/1]).
-export(['K-DefaultNamespaceProlog-4'/1]).
-export(['K-DefaultNamespaceProlog-5'/1]).
-export(['K-DefaultNamespaceProlog-6'/1]).
-export(['K-DefaultNamespaceProlog-7'/1]).
-export(['K-DefaultNamespaceProlog-8'/1]).
-export(['K-DefaultNamespaceProlog-9'/1]).
-export(['K-DefaultNamespaceProlog-10'/1]).
-export(['K-DefaultNamespaceProlog-11'/1]).
-export(['K2-DefaultNamespaceProlog-1'/1]).
-export(['K2-DefaultNamespaceProlog-2'/1]).
-export(['K2-DefaultNamespaceProlog-3'/1]).
-export(['K2-DefaultNamespaceProlog-4'/1]).
-export(['K2-DefaultNamespaceProlog-5'/1]).
-export(['K2-DefaultNamespaceProlog-6'/1]).
-export(['K2-DefaultNamespaceProlog-7'/1]).
-export(['K2-DefaultNamespaceProlog-8'/1]).
-export(['K2-DefaultNamespaceProlog-9'/1]).
-export(['K2-DefaultNamespaceProlog-10'/1]).
-export(['K2-DefaultNamespaceProlog-11'/1]).
-export(['K2-DefaultNamespaceProlog-12'/1]).
-export(['K2-DefaultNamespaceProlog-12a'/1]).
-export(['K2-DefaultNamespaceProlog-13'/1]).
-export(['K2-DefaultNamespaceProlog-14'/1]).
-export(['K2-DefaultNamespaceProlog-15'/1]).
-export(['K2-DefaultNamespaceProlog-16'/1]).
-export(['K2-DefaultNamespaceProlog-17'/1]).
-export(['K2-DefaultNamespaceProlog-18'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'default_namespace-001',
   'default_namespace-002',
   'default_namespace-003',
   'default_namespace-004',
   'default_namespace-005',
   'default_namespace-006',
   'default_namespace-007',
   'default_namespace-008',
   'default_namespace-009',
   'default_namespace-010',
   'default_namespace-011',
   'default_namespace-012',
   'default_namespace-013',
   'default_namespace-014',
   'default_namespace-015',
   'default_namespace-016',
   'default_namespace-017',
   'default_namespace-018',
   'default_namespace-019',
   'default_namespace-020',
   'default_namespace-021',
   'default_namespace-022',
   'defaultnamespacedeclerr-1',
   'defaultnamespacedeclerr-2',
   'defaultnamespacedeclerr-3',
   'defaultnamespacedeclerr-4',
   'defaultnamespacedeclerr-5',
   'defaultnamespacedeclerr-6',
   'defaultnamespacedeclerr-7',
   'defaultnamespacedeclerr-8',
   'K-DefaultNamespaceProlog-1',
   'K-DefaultNamespaceProlog-2',
   'K-DefaultNamespaceProlog-3',
   'K-DefaultNamespaceProlog-4',
   'K-DefaultNamespaceProlog-5',
   'K-DefaultNamespaceProlog-6',
   'K-DefaultNamespaceProlog-7',
   'K-DefaultNamespaceProlog-8',
   'K-DefaultNamespaceProlog-9',
   'K-DefaultNamespaceProlog-10',
   'K-DefaultNamespaceProlog-11',
   'K2-DefaultNamespaceProlog-1',
   'K2-DefaultNamespaceProlog-2',
   'K2-DefaultNamespaceProlog-3',
   'K2-DefaultNamespaceProlog-4',
   'K2-DefaultNamespaceProlog-5',
   'K2-DefaultNamespaceProlog-6',
   'K2-DefaultNamespaceProlog-7',
   'K2-DefaultNamespaceProlog-8',
   'K2-DefaultNamespaceProlog-9',
   'K2-DefaultNamespaceProlog-10',
   'K2-DefaultNamespaceProlog-11',
   'K2-DefaultNamespaceProlog-12',
   'K2-DefaultNamespaceProlog-12a',
   'K2-DefaultNamespaceProlog-13',
   'K2-DefaultNamespaceProlog-14',
   'K2-DefaultNamespaceProlog-15',
   'K2-DefaultNamespaceProlog-16',
   'K2-DefaultNamespaceProlog-17',
   'K2-DefaultNamespaceProlog-18'].
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
environment('bib2') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/op/union/bib2.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
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
].
'default_namespace-001'(_Config) ->
   Qry = "declare default function namespace \"http://www..oracle.com/xquery/test\"; declare function price ($b as element()) as element()* { $b/price }; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'default_namespace-002'(_Config) ->
   Qry = "
        declare default function namespace \"http://www..oracle.com/xquery/test\"; 
        declare function foo($n as xs:integer) { <tr> {$n} </tr> }; 
        foo(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <tr>4</tr>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<tr>4</tr>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<tr>4</tr>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-003'(_Config) ->
   Qry = "
        declare default function namespace \"http://www..oracle.com/xquery/test\"; 
        declare function price ($i as element()) as element()? { $i/price }; 
        for $j in /bib/book return price($j)
      ",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-004'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org\"; 
        declare function summary($emps as element(employee)*) as element(dept)* { 
            for $d in fn:distinct-values($emps/deptno) 
            let $e := $emps[deptno = $d] 
            return <dept> <deptno>{$d}</deptno> <headcount> {fn:count($e)} </headcount> <payroll> {fn:sum($e/salary)} </payroll> </dept> 
        }; 
        summary(//employee[location = \"Denver\"])",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-005'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function mysum($i as xs:integer, $j as xs:integer) { let $j := $i + $j return $j }; 
      	declare function invoke_mysum() { let $s := 1 for $d in (1,2,3,4,5) let $s := mysum($s, $d) return $s }; 
      	invoke_mysum()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 3 4 5 6
      ",
   case xqerl_test:string_value(Res) of
             "2 3 4 5 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'default_namespace-006'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function mysum($i as xs:integer, $j as xs:integer) { let $j := $i + $j return $j }; 
      	declare function invoke_mysum($st) { for $d in (1,2,3,4,5) let $st := mysum($d, $st) return $st }; 
      	invoke_mysum(0)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'default_namespace-007'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare variable $a := 1; 
      	declare function foo($a as xs:integer) { if ($a > 100) then $a else let $a := $a + 1 return foo($a) }; 
      	foo($a)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         101
      ",
 Tst = xqerl:run("101"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'default_namespace-008'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function fact($n as xs:integer) as xs:integer { if ($n < 2) then 1 else $n * fact($n - 1) }; 
      	declare variable $ten := fact(10); 
      	<table> { for $i in 1 to 10 return <tr> <td>10!/{$i}! = {$ten div fact($i)}</td> </tr> } </table>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-009'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function fact($n as xs:integer) as xs:integer { if ($n < 2) then 1 else $n * fact(($n)-1) }; 
      	<table> { for $i in 1 to 10 return <tr> <td>{$i}! = {fact($i)}</td> </tr> } </table>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-010'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org\"; 
        declare function prnt($n as xs:integer,$n2 as xs:string, $n3 as xs:date, $n4 as xs:long, $n5 as xs:string, $n6 as xs:decimal) {
             if ($n < 2) then 1 else fn:concat($n, \" \",$n2,\" \",$n3,\" \",$n4,\" \",$n5,\" \",$n6) 
        }; 
        <table> { <td>Value is = {prnt(4,xs:string(\"hello\"),xs:date(\"2005-02-22\"), xs:long(5),xs:string(\"well\"),xs:decimal(1.2))}</td> } </table>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-011'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function fn1 ($n as xs:integer) as xs:integer { fn2($n) }; 
      	declare function fn2 ($n as xs:integer) as xs:integer { if ($n = 1) then 1 else $n + fn1($n - 1) }; 
      	fn1(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'default_namespace-012'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function fn1 ($n as xs:integer) as xs:integer { fn2($n) }; 
      	declare function fn2 ($n as xs:integer) as xs:integer { if ($n = 1) then 1 else $n + fn1($n - 1) }; 
      	fn1(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10
      ",
 Tst = xqerl:run("10"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'default_namespace-013'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function foo2($i as xs:string) as xs:string {foo($i)}; 
      	declare function foo($i as xs:string) as xs:string {$i}; 
      	foo2(\"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'default_namespace-014'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function odd($x as xs:integer) as xs:boolean {if ($x = 0) then fn:false() else even($x - 1)}; 
      	declare function even($x as xs:integer) as xs:boolean {if ($x = 0) then fn:true() else odd($x - 1)}; 
      	even(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'default_namespace-015'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function odd($x as xs:integer) as xs:boolean {if ($x = 0) then fn:false() else even($x - 1)}; 
      	declare function even($x as xs:integer) as xs:boolean {if ($x = 0) then fn:true() else odd($x - 1)}; 
      	even(3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'default_namespace-016'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org\"; 
        declare function title($a_book as element()) as element()* { for $i in $a_book return $i/title }; 
        /bib/book/(title(.))",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-017'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org\"; 
        declare default element namespace \"http://www.example.com/filesystem\"; 
        declare variable $v as xs:integer := 100; 
        declare function udf1 ($CUSTNO as xs:integer) { <empty> {$CUSTNO*$v} </empty> }; 
        udf1(10)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empty xmlns=\"http://www.example.com/filesystem\">1000</empty>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empty xmlns=\"http://www.example.com/filesystem\">1000</empty>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empty xmlns=\"http://www.example.com/filesystem\">1000</empty>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-018'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org\"; 
        declare default element namespace \"http://www.example.com/filesystem\"; 
        declare function udf1 () { <empty> {10*10} </empty> }; 
        udf1 ()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empty xmlns=\"http://www.example.com/filesystem\">100</empty>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empty xmlns=\"http://www.example.com/filesystem\">100</empty>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empty xmlns=\"http://www.example.com/filesystem\">100</empty>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-019'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org\"; 
        declare default element namespace \"http://www.example.com/def\"; 
        declare namespace test=\"http://www.example.com/test\"; 
        declare namespace test2=\"http://www.example.com/test2\"; 
        declare function test:udf1() { <empty> {10*10} </empty> }; 
        declare function test2:udf1() { <empty/> }; 
        <A> {test:udf1()} {test2:udf1()} </A>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'default_namespace-020'(_Config) ->
   Qry = "
      	declare default function namespace \"http://example.org\"; 
      	declare function price () as xs:integer+ { 100 }; 
      	declare function price ($z as xs:integer) as xs:integer+ { $z }; 
      	declare function price ($x as xs:integer, $y as xs:integer) as xs:integer+ { $x, $y }; 
      	declare function price ($x as xs:integer, $y as xs:integer, $z as xs:integer) as xs:integer+ { $x+$y+$z }; 
      	price(), price(1), price(2,3), price(4,5,6)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100 1 2 3 15
      ",
   case xqerl_test:string_value(Res) of
             "100 1 2 3 15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'default_namespace-021'(_Config) ->
   Qry = "
        declare default element namespace \"http:/www.oracle.com/xquery\"; 
        declare variable $x := 7.5; 
        $x + 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9.5
      ",
   case xqerl_test:string_value(Res) of
             "9.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'default_namespace-022'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.example.com/test\"; 
        <test/>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <test xmlns=\"http://www.example.com/test\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<test xmlns=\"http://www.example.com/test\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<test xmlns=\"http://www.example.com/test\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'defaultnamespacedeclerr-1'(_Config) ->
   Qry = "
        declare default element namespace \"http://example.org/names\"; 
        declare default element namespace \"http://someexample.org/names\"; 
        \"abc\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0066'}) end.
'defaultnamespacedeclerr-2'(_Config) ->
   Qry = "
        declare default function namespace \"http://example.org/names\"; 
        declare default function namespace \"http://someexample.org/names\"; 
        \"abc\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0066" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0066'}) end.
'defaultnamespacedeclerr-3'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.w3.org/XML/1998/namespace\";
        <a/>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'defaultnamespacedeclerr-4'(_Config) ->
   Qry = "
        declare default function namespace \"http://www.w3.org/XML/1998/namespace\";
        declare function go() {3};
        go()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'defaultnamespacedeclerr-5'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.w3.org/2000/xmlns/\";
        <a/>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'defaultnamespacedeclerr-6'(_Config) ->
   Qry = "
        declare default function namespace \"http://www.w3.org/2000/xmlns/\";
        declare function go() {3};
        go()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'defaultnamespacedeclerr-7'(_Config) ->
   Qry = "
        declare default element namespace \"http&#x3a;//www.w3.org/2000/xmlns/\";
        <a/>
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'defaultnamespacedeclerr-8'(_Config) ->
   Qry = "
        declare default function namespace \"http&#x3a;//www.w3.org/2000/xmlns/\";
        declare function go() {3};
        go()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0070" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0070'}) end.
'K-DefaultNamespaceProlog-1'(_Config) ->
   Qry = "declare(:..:)default(:..:)element(:..:)namespace(:..:)'http://example.com/'(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DefaultNamespaceProlog-2'(_Config) ->
   Qry = "declare(:..:)default(:..:)element(:..:)namespace(:..:)\"http://example.com/\"(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DefaultNamespaceProlog-3'(_Config) ->
   Qry = "declare(:..:)default(:..:)function(:..:)namespace(:..:)'http://example.com/'(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DefaultNamespaceProlog-4'(_Config) ->
   Qry = "declare(:..:)default(:..:)function(:..:)namespace(:..:)\"http://example.com/\"(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DefaultNamespaceProlog-5'(_Config) ->
   Qry = "declare(:..:)default(:..:)function(:..:)namespace(:..:)\"http://example.com/\"(:..:);(:..:)boolean(1)(:..:)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-DefaultNamespaceProlog-6'(_Config) ->
   Qry = "declare function namespace \"http://example.com/\";1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-DefaultNamespaceProlog-7'(_Config) ->
   Qry = "declare element namespace \"http://example.com/\";1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-DefaultNamespaceProlog-8'(_Config) ->
   Qry = "declare default element namespace = \"http://example.com/\";1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-DefaultNamespaceProlog-9'(_Config) ->
   Qry = "declare default function namespace = \"http://example.com/\";1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-DefaultNamespaceProlog-10'(_Config) ->
   Qry = "declare default element namespace := \"http://example.com/\";1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-DefaultNamespaceProlog-11'(_Config) ->
   Qry = "declare default function namespace := \"http://example.com/\";1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-1'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/defelementns\"; namespace-uri(<foo/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.com/defelementns
      ",
   case xqerl_test:string_value(Res) of
             "http://example.com/defelementns" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DefaultNamespaceProlog-2'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/defelementns\"; namespace-uri(<foo xmlns=\"http://example.com/overriden\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.com/overriden
      ",
   case xqerl_test:string_value(Res) of
             "http://example.com/overriden" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DefaultNamespaceProlog-3'(_Config) ->
   Qry = "default declare default element namespace b = \"http://www.example.com/\"; empty(<e xmlns=\"http://www.example.com/\"><d xmlns=\"\"><b/></d></e>/b:d/b:b)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-4'(_Config) ->
   Qry = "declare default element namespace b = \"http://www.example.com/\"; empty(<e xmlns=\"http://www.example.com/\"><d xmlns=\"\"><b/></d></e>/b:d/b:b)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-DefaultNamespaceProlog-5'(_Config) ->
   Qry = "declare default element namespace b = \"http://www.example.com/\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-6'(_Config) ->
   Qry = "declare default element namespace \"http://example.com/\"; namespace-uri-from-QName(xs:QName(\"localName\")), <e xmlns=\"\"> { \" | \", namespace-uri-from-QName(xs:QName(\"localName\")) } </e>, namespace-uri-from-QName(xs:QName(\"localName\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         http://example.com/<e> |  </e>http://example.com/
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"http://example.com/<e> |  </e>http://example.com/"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "http://example.com/<e> |  </e>http://example.com/" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DefaultNamespaceProlog-7'(_Config) ->
   Qry = "<e xmlns=\"\" xmlns=\"\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0071" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0071'}) end.
'K2-DefaultNamespaceProlog-8'(_Config) ->
   Qry = "<e xmlns=\"http://www.example.com/1\" xmlns=\"http://www.example.com/2\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0071" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0071'}) end.
'K2-DefaultNamespaceProlog-9'(_Config) ->
   Qry = "<e xmlns:p=\"http://www.example.com/1\" xmlns:p=\"http://www.example.com/2\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0071" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0071'}) end.
'K2-DefaultNamespaceProlog-10'(_Config) ->
   Qry = "declare namespace a = \"http://www.example.com/\"; <e xmlns:b=\"http://www.example.com/\" a:localName=\"1\" b:localName=\"2\" />",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0040" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0040'}) end.
'K2-DefaultNamespaceProlog-11'(_Config) ->
   Qry = "<a xmlns=\"http://www.w3.org/2001/XMLSchema\"> {1 cast as byte} <b xmlns=\"http://www.w3.org/1999/XSL/Transform\"> {count(1)} </b> {2 cast as byte} </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a xmlns=\"http://www.w3.org/2001/XMLSchema\">1<b xmlns=\"http://www.w3.org/1999/XSL/Transform\">1</b>2</a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a xmlns=\"http://www.w3.org/2001/XMLSchema\">1<b xmlns=\"http://www.w3.org/1999/XSL/Transform\">1</b>2</a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a xmlns=\"http://www.w3.org/2001/XMLSchema\">1<b xmlns=\"http://www.w3.org/1999/XSL/Transform\">1</b>2</a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-DefaultNamespaceProlog-12'(_Config) ->
   {skip,"XQ10"}.
'K2-DefaultNamespaceProlog-12a'(_Config) ->
   Qry = "<a xmlns=\"http://www.w3.org/2001/XMLSchema\"> {1 cast as byte} <b xmlns=\"http://www.w3.org/1999/XSL/Transform\"> {count(1), 2 cast as byte} </b> {2 cast as byte} </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0052" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0052'}) end.
'K2-DefaultNamespaceProlog-13'(_Config) ->
   Qry = "declare variable $variable := 1; declare default element namespace \"http://example.com\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-14'(_Config) ->
   Qry = "declare variable $variable := 1; declare default element namespace \"http://example.com\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-15'(_Config) ->
   Qry = "declare function local:myFunc() { 1 }; declare default element namespace \"http://example.com\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-16'(_Config) ->
   Qry = "declare option local:myOption \"foo\"; declare default element namespace \"http://example.com\"; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-DefaultNamespaceProlog-17'(_Config) ->
   Qry = "
         declare default element namespace \"http://example.com/\"; 
         for $test as attribute(integer, xs:anyAtomicType) in (<e integer=\"1\"/>/@integer) 
         return data($test)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-DefaultNamespaceProlog-18'(_Config) ->
   Qry = "default eq default",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
