-module('prod_FunctionDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['function-declaration-001'/1]).
-export(['function-declaration-002'/1]).
-export(['function-declaration-003'/1]).
-export(['function-declaration-004'/1]).
-export(['function-declaration-005'/1]).
-export(['function-declaration-006'/1]).
-export(['function-declaration-007'/1]).
-export(['function-declaration-008'/1]).
-export(['function-declaration-009'/1]).
-export(['function-declaration-010'/1]).
-export(['function-declaration-011'/1]).
-export(['function-declaration-012'/1]).
-export(['function-declaration-013'/1]).
-export(['function-declaration-014'/1]).
-export(['function-declaration-015'/1]).
-export(['function-declaration-016'/1]).
-export(['function-declaration-017'/1]).
-export(['function-declaration-018'/1]).
-export(['function-declaration-019'/1]).
-export(['function-declaration-020'/1]).
-export(['function-declaration-021'/1]).
-export(['function-declaration-022'/1]).
-export(['function-declaration-023'/1]).
-export(['function-declaration-024'/1]).
-export(['function-declaration-025'/1]).
-export(['function-declaration-026'/1]).
-export(['K-FunctionProlog-1'/1]).
-export(['K-FunctionProlog-2'/1]).
-export(['K-FunctionProlog-3'/1]).
-export(['K-FunctionProlog-4'/1]).
-export(['K-FunctionProlog-5'/1]).
-export(['K-FunctionProlog-6'/1]).
-export(['K-FunctionProlog-7'/1]).
-export(['K-FunctionProlog-8'/1]).
-export(['K-FunctionProlog-9'/1]).
-export(['K-FunctionProlog-10'/1]).
-export(['K-FunctionProlog-11'/1]).
-export(['K-FunctionProlog-12a'/1]).
-export(['K-FunctionProlog-12b'/1]).
-export(['K-FunctionProlog-13'/1]).
-export(['K-FunctionProlog-14'/1]).
-export(['K-FunctionProlog-15'/1]).
-export(['K-FunctionProlog-16'/1]).
-export(['K-FunctionProlog-17'/1]).
-export(['K-FunctionProlog-18'/1]).
-export(['K-FunctionProlog-19'/1]).
-export(['K-FunctionProlog-20'/1]).
-export(['K-FunctionProlog-21'/1]).
-export(['K-FunctionProlog-22'/1]).
-export(['K-FunctionProlog-23'/1]).
-export(['K-FunctionProlog-24'/1]).
-export(['K-FunctionProlog-25'/1]).
-export(['K-FunctionProlog-26'/1]).
-export(['K-FunctionProlog-27'/1]).
-export(['K-FunctionProlog-28'/1]).
-export(['K-FunctionProlog-29'/1]).
-export(['K-FunctionProlog-30'/1]).
-export(['K-FunctionProlog-31'/1]).
-export(['K-FunctionProlog-32'/1]).
-export(['K-FunctionProlog-33'/1]).
-export(['K-FunctionProlog-34'/1]).
-export(['K-FunctionProlog-35'/1]).
-export(['K-FunctionProlog-36'/1]).
-export(['K-FunctionProlog-37'/1]).
-export(['K-FunctionProlog-38'/1]).
-export(['K-FunctionProlog-39'/1]).
-export(['K-FunctionProlog-40'/1]).
-export(['K-FunctionProlog-41'/1]).
-export(['K-FunctionProlog-42'/1]).
-export(['K-FunctionProlog-43'/1]).
-export(['K-FunctionProlog-44'/1]).
-export(['K-FunctionProlog-45'/1]).
-export(['K-FunctionProlog-46'/1]).
-export(['K-FunctionProlog-47'/1]).
-export(['K-FunctionProlog-48'/1]).
-export(['K-FunctionProlog-49'/1]).
-export(['K-FunctionProlog-50'/1]).
-export(['K-FunctionProlog-51'/1]).
-export(['K-FunctionProlog-52'/1]).
-export(['K-FunctionProlog-53'/1]).
-export(['K-FunctionProlog-54'/1]).
-export(['K-FunctionProlog-55'/1]).
-export(['K-FunctionProlog-56'/1]).
-export(['K-FunctionProlog-57'/1]).
-export(['K-FunctionProlog-58'/1]).
-export(['K-FunctionProlog-59'/1]).
-export(['K-FunctionProlog-60'/1]).
-export(['K-FunctionProlog-61'/1]).
-export(['K-FunctionProlog-62'/1]).
-export(['K-FunctionProlog-63'/1]).
-export(['K-FunctionProlog-64'/1]).
-export(['K-FunctionProlog-65'/1]).
-export(['K-FunctionProlog-66'/1]).
-export(['K-FunctionProlog-67'/1]).
-export(['K-FunctionProlog-68'/1]).
-export(['K2-FunctionProlog-1'/1]).
-export(['K2-FunctionProlog-2'/1]).
-export(['K2-FunctionProlog-3'/1]).
-export(['K2-FunctionProlog-4'/1]).
-export(['K2-FunctionProlog-5'/1]).
-export(['K2-FunctionProlog-6'/1]).
-export(['K2-FunctionProlog-7'/1]).
-export(['K2-FunctionProlog-8'/1]).
-export(['K2-FunctionProlog-9'/1]).
-export(['K2-FunctionProlog-10'/1]).
-export(['K2-FunctionProlog-11'/1]).
-export(['K2-FunctionProlog-12'/1]).
-export(['K2-FunctionProlog-13'/1]).
-export(['K2-FunctionProlog-14'/1]).
-export(['K2-FunctionProlog-15'/1]).
-export(['K2-FunctionProlog-16'/1]).
-export(['K2-FunctionProlog-17'/1]).
-export(['K2-FunctionProlog-18'/1]).
-export(['K2-FunctionProlog-19'/1]).
-export(['K2-FunctionProlog-20'/1]).
-export(['K2-FunctionProlog-21'/1]).
-export(['K2-FunctionProlog-22'/1]).
-export(['K2-FunctionProlog-23'/1]).
-export(['K2-FunctionProlog-24'/1]).
-export(['K2-FunctionProlog-25'/1]).
-export(['K2-FunctionProlog-26'/1]).
-export(['K2-FunctionProlog-27'/1]).
-export(['K2-FunctionProlog-28'/1]).
-export(['K2-FunctionProlog-29'/1]).
-export(['K2-FunctionProlog-30'/1]).
-export(['K2-FunctionProlog-31'/1]).
-export(['K2-FunctionProlog-32'/1]).
-export(['K2-FunctionProlog-33'/1]).
-export(['K2-FunctionProlog-34'/1]).
-export(['K2-FunctionProlog-35'/1]).
-export(['K2-FunctionProlog-36'/1]).
-export(['K2-FunctionProlog-37'/1]).
-export(['K2-FunctionProlog-38'/1]).
-export(['K2-FunctionProlog-39'/1]).
-export(['K2-FunctionProlog-40'/1]).
-export(['cbcl-function-decl-001'/1]).
-export(['cbcl-function-declaration-002'/1]).
-export(['function-decl-reserved-function-names-001'/1]).
-export(['function-decl-reserved-function-names-002'/1]).
-export(['function-decl-reserved-function-names-003'/1]).
-export(['function-decl-reserved-function-names-004'/1]).
-export(['function-decl-reserved-function-names-005'/1]).
-export(['function-decl-reserved-function-names-006'/1]).
-export(['function-decl-reserved-function-names-007'/1]).
-export(['function-decl-reserved-function-names-008'/1]).
-export(['function-decl-reserved-function-names-009'/1]).
-export(['function-decl-reserved-function-names-010'/1]).
-export(['function-decl-reserved-function-names-011'/1]).
-export(['function-decl-reserved-function-names-012'/1]).
-export(['function-decl-reserved-function-names-013'/1]).
-export(['function-decl-reserved-function-names-014'/1]).
-export(['function-decl-reserved-function-names-015'/1]).
-export(['function-decl-reserved-function-names-016'/1]).
-export(['function-decl-reserved-function-names-017'/1]).
-export(['function-decl-reserved-function-names-018'/1]).
-export(['function-decl-reserved-function-names-019'/1]).
-export(['function-decl-reserved-function-names-020'/1]).
-export(['function-decl-reserved-function-names-021'/1]).
-export(['function-decl-reserved-function-names-022'/1]).
-export(['function-decl-reserved-function-names-023'/1]).
-export(['function-decl-reserved-function-names-024'/1]).
-export(['function-decl-reserved-function-names-025'/1]).
-export(['function-decl-reserved-function-names-026'/1]).
-export(['function-decl-reserved-function-names-027'/1]).
-export(['function-decl-reserved-function-names-028'/1]).
-export(['function-decl-reserved-function-names-029'/1]).
-export(['function-decl-reserved-function-names-030'/1]).
-export(['function-decl-reserved-function-names-031'/1]).
-export(['function-decl-reserved-function-names-032'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'function-declaration-001',
   'function-declaration-002',
   'function-declaration-003',
   'function-declaration-004',
   'function-declaration-005',
   'function-declaration-006',
   'function-declaration-007',
   'function-declaration-008',
   'function-declaration-009',
   'function-declaration-010',
   'function-declaration-011',
   'function-declaration-012',
   'function-declaration-013',
   'function-declaration-014',
   'function-declaration-015',
   'function-declaration-016',
   'function-declaration-017',
   'function-declaration-018',
   'function-declaration-019',
   'function-declaration-020',
   'function-declaration-021',
   'function-declaration-022',
   'function-declaration-023',
   'function-declaration-024',
   'function-declaration-025',
   'function-declaration-026',
   'K-FunctionProlog-1',
   'K-FunctionProlog-2',
   'K-FunctionProlog-3',
   'K-FunctionProlog-4',
   'K-FunctionProlog-5',
   'K-FunctionProlog-6',
   'K-FunctionProlog-7',
   'K-FunctionProlog-8',
   'K-FunctionProlog-9',
   'K-FunctionProlog-10',
   'K-FunctionProlog-11',
   'K-FunctionProlog-12a',
   'K-FunctionProlog-12b',
   'K-FunctionProlog-13',
   'K-FunctionProlog-14',
   'K-FunctionProlog-15',
   'K-FunctionProlog-16',
   'K-FunctionProlog-17',
   'K-FunctionProlog-18',
   'K-FunctionProlog-19',
   'K-FunctionProlog-20',
   'K-FunctionProlog-21',
   'K-FunctionProlog-22',
   'K-FunctionProlog-23',
   'K-FunctionProlog-24',
   'K-FunctionProlog-25',
   'K-FunctionProlog-26',
   'K-FunctionProlog-27',
   'K-FunctionProlog-28',
   'K-FunctionProlog-29',
   'K-FunctionProlog-30',
   'K-FunctionProlog-31',
   'K-FunctionProlog-32',
   'K-FunctionProlog-33',
   'K-FunctionProlog-34',
   'K-FunctionProlog-35',
   'K-FunctionProlog-36',
   'K-FunctionProlog-37',
   'K-FunctionProlog-38',
   'K-FunctionProlog-39',
   'K-FunctionProlog-40',
   'K-FunctionProlog-41',
   'K-FunctionProlog-42',
   'K-FunctionProlog-43',
   'K-FunctionProlog-44',
   'K-FunctionProlog-45',
   'K-FunctionProlog-46',
   'K-FunctionProlog-47',
   'K-FunctionProlog-48',
   'K-FunctionProlog-49',
   'K-FunctionProlog-50',
   'K-FunctionProlog-51',
   'K-FunctionProlog-52',
   'K-FunctionProlog-53',
   'K-FunctionProlog-54',
   'K-FunctionProlog-55',
   'K-FunctionProlog-56',
   'K-FunctionProlog-57',
   'K-FunctionProlog-58',
   'K-FunctionProlog-59',
   'K-FunctionProlog-60',
   'K-FunctionProlog-61',
   'K-FunctionProlog-62',
   'K-FunctionProlog-63',
   'K-FunctionProlog-64',
   'K-FunctionProlog-65',
   'K-FunctionProlog-66',
   'K-FunctionProlog-67',
   'K-FunctionProlog-68',
   'K2-FunctionProlog-1',
   'K2-FunctionProlog-2',
   'K2-FunctionProlog-3',
   'K2-FunctionProlog-4',
   'K2-FunctionProlog-5',
   'K2-FunctionProlog-6',
   'K2-FunctionProlog-7',
   'K2-FunctionProlog-8',
   'K2-FunctionProlog-9',
   'K2-FunctionProlog-10',
   'K2-FunctionProlog-11',
   'K2-FunctionProlog-12',
   'K2-FunctionProlog-13',
   'K2-FunctionProlog-14',
   'K2-FunctionProlog-15',
   'K2-FunctionProlog-16',
   'K2-FunctionProlog-17',
   'K2-FunctionProlog-18',
   'K2-FunctionProlog-19',
   'K2-FunctionProlog-20',
   'K2-FunctionProlog-21',
   'K2-FunctionProlog-22',
   'K2-FunctionProlog-23',
   'K2-FunctionProlog-24',
   'K2-FunctionProlog-25',
   'K2-FunctionProlog-26',
   'K2-FunctionProlog-27',
   'K2-FunctionProlog-28',
   'K2-FunctionProlog-29',
   'K2-FunctionProlog-30',
   'K2-FunctionProlog-31',
   'K2-FunctionProlog-32',
   'K2-FunctionProlog-33',
   'K2-FunctionProlog-34',
   'K2-FunctionProlog-35',
   'K2-FunctionProlog-36',
   'K2-FunctionProlog-37',
   'K2-FunctionProlog-38',
   'K2-FunctionProlog-39',
   'K2-FunctionProlog-40',
   'cbcl-function-decl-001',
   'cbcl-function-declaration-002',
   'function-decl-reserved-function-names-001',
   'function-decl-reserved-function-names-002',
   'function-decl-reserved-function-names-003',
   'function-decl-reserved-function-names-004',
   'function-decl-reserved-function-names-005',
   'function-decl-reserved-function-names-006',
   'function-decl-reserved-function-names-007',
   'function-decl-reserved-function-names-008',
   'function-decl-reserved-function-names-009',
   'function-decl-reserved-function-names-010',
   'function-decl-reserved-function-names-011',
   'function-decl-reserved-function-names-012',
   'function-decl-reserved-function-names-013',
   'function-decl-reserved-function-names-014',
   'function-decl-reserved-function-names-015',
   'function-decl-reserved-function-names-016',
   'function-decl-reserved-function-names-017',
   'function-decl-reserved-function-names-018',
   'function-decl-reserved-function-names-019',
   'function-decl-reserved-function-names-020',
   'function-decl-reserved-function-names-021',
   'function-decl-reserved-function-names-022',
   'function-decl-reserved-function-names-023',
   'function-decl-reserved-function-names-024',
   'function-decl-reserved-function-names-025',
   'function-decl-reserved-function-names-026',
   'function-decl-reserved-function-names-027',
   'function-decl-reserved-function-names-028',
   'function-decl-reserved-function-names-029',
   'function-decl-reserved-function-names-030',
   'function-decl-reserved-function-names-031',
   'function-decl-reserved-function-names-032'].
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
'function-declaration-001'(_Config) ->
   Qry = "
        declare namespace foo = \"http://www..oracle.com/xquery/test\";
        declare function foo:price ($b as element()) as element()* { $b/price };
        1
      ",
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
'function-declaration-002'(_Config) ->
   Qry = "        
        declare function local:foo($n as xs:integer) { <tr> {$n} </tr> };
        local:foo(4)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <tr>4</tr>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<tr>4</tr>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<tr>4</tr>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-003'(_Config) ->
   Qry = "
        declare function local:price ($i as element()) as element()? { $i/price };
        for $j in /bib/book return local:price($j)",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-004'(_Config) ->
   Qry = "
        declare function local:summary($emps as element(employee)*) as element(dept)* { 
            for $d in distinct-values($emps/deptno) 
            let $e := $emps[deptno = $d] 
            return <dept> 
                      <deptno>{$d}</deptno> 
                      <headcount> {count($e)} </headcount> 
                      <payroll> {sum($e/salary)} </payroll> 
                   </dept> 
        };
        local:summary(//employee[location = \"Denver\"])
      ",
   Env = xqerl_test:handle_environment(environment('acme_corp')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-005'(_Config) ->
   Qry = "
        declare function local:mysum($i as xs:integer, $j as xs:integer) { let $j := $i + $j return $j };
        declare function local:invoke_mysum() { let $s := 1 for $d in (1,2,3,4,5) let $s := local:mysum($s, $d) return $s };
        local:invoke_mysum()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 3 4 5 6
      ",
   case xqerl_types:string_value(Res) of
             "2 3 4 5 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'function-declaration-006'(_Config) ->
   Qry = "
        declare function local:mysum($i as xs:integer, $j as xs:integer) { let $j := $i + $j return $j };
        declare function local:invoke_mysum($st as xs:integer) { for $d in (1,2,3,4,5) let $st := local:mysum($d, $st) return $st };
        local:invoke_mysum(0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'function-declaration-007'(_Config) ->
   Qry = "
        declare variable $a := 1;
        declare function local:foo($a as xs:integer) { 
            if ($a > 100) then $a else let $a := $a + 1 return local:foo($a) };
        local:foo($a)",
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
'function-declaration-008'(_Config) ->
   Qry = "
        declare namespace my = \"urn:foo\";
        declare function my:fact($n as xs:integer) as xs:integer { if ($n < 2) then 1 else $n * my:fact($n - 1) };
        declare variable $my:ten := my:fact(10);
        <table> { for $i in 1 to 10 return <tr> <td>10!/{$i}! = {$my:ten div my:fact($i)}</td> </tr> } </table>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-009'(_Config) ->
   Qry = "       
        declare function local:fact($n as xs:integer) as xs:integer { if ($n < 2) then 1 else $n * local:fact(($n)-1) };
        <table> { for $i in 1 to 10 return <tr> <td>{$i}! = {local:fact($i)}</td> </tr> } </table>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-010'(_Config) ->
   Qry = "       
        declare function local:prnt($n as xs:integer,$n2 as xs:string, $n3 as xs:date, $n4 as xs:long, $n5 as xs:string, $n6 as xs:decimal) { if ($n < 2) then 1 else concat($n, \" \",$n2,\" \",$n3,\" \",$n4,\" \",$n5,\" \",$n6) };
        <table> { <td>Value is = {local:prnt(4,xs:string(\"hello\"),xs:date(\"2005-02-22\"), xs:long(5),xs:string(\"well\"),xs:decimal(1.2))}</td> } </table>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-011'(_Config) ->
   Qry = "       
        declare function local:fn1 ($n as xs:integer) as xs:integer { local:fn2($n) };
        declare function local:fn2 ($n as xs:integer) as xs:integer { if ($n = 1) then 1 else $n + local:fn1($n - 1) };
        local:fn1(4)",
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
'function-declaration-012'(_Config) ->
   Qry = "       
        declare function local:fn1 ($n as xs:integer) as xs:integer { local:fn2($n) };
        declare function local:fn2 ($n as xs:integer) as xs:integer { if ($n = 1) then 1 else $n + local:fn1($n - 1) };
        local:fn1(4)",
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
'function-declaration-013'(_Config) ->
   Qry = "       
        declare function local:foo2($i as xs:string) as xs:string {local:foo($i)};
        declare function local:foo($i as xs:string) as xs:string {$i};
        local:foo2(\"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         abc
      ",
   case xqerl_types:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'function-declaration-014'(_Config) ->
   Qry = "
        declare function local:odd($x as xs:integer) as xs:boolean {if ($x = 0) then false() else local:even($x - 1)};
        declare function local:even($x as xs:integer) as xs:boolean {if ($x = 0) then true() else local:odd($x - 1)};
        local:even(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'function-declaration-015'(_Config) ->
   Qry = "
        declare function local:odd($x as xs:integer) as xs:boolean {if ($x = 0) then false() else local:even($x - 1)};
        declare function local:even($x as xs:integer) as xs:boolean {if ($x = 0) then true() else local:odd($x - 1)};
        local:even(3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'function-declaration-016'(_Config) ->
   Qry = "
        declare function local:title($a_book as element()) { for $i in $a_book return $i/title };
        /bib/book/(local:title(.))",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-017'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.example.com/filesystem\";
        declare variable $v as xs:integer := 100;
        declare function local:udf1 ($CUSTNO as xs:integer) { <empty> {$CUSTNO*$v} </empty> };
        local:udf1(10)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empty xmlns=\"http://www.example.com/filesystem\">1000</empty>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empty xmlns=\"http://www.example.com/filesystem\">1000</empty>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empty xmlns=\"http://www.example.com/filesystem\">1000</empty>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-018'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.example.com/filesystem\";
        declare function local:udf1 () { <empty> {10*10} </empty> };
        local:udf1 ()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empty xmlns=\"http://www.example.com/filesystem\">100</empty>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empty xmlns=\"http://www.example.com/filesystem\">100</empty>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empty xmlns=\"http://www.example.com/filesystem\">100</empty>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-019'(_Config) ->
   Qry = "
        declare default element namespace \"http://www.example.com/def\";
        declare namespace test=\"http://www.example.com/test\";
        declare namespace test2=\"http://www.example.com/test2\";
        declare function test:udf1() { <empty> {10*10} </empty> };
        declare function test2:udf1() { <empty/> };
        <A> {test:udf1()} {test2:udf1()} </A>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'function-declaration-020'(_Config) ->
   Qry = "declare namespace foo = \"http://www..oracle.com/xquery/test\";
        declare function foo:price () as xs:integer+ { 100 };
        declare function foo:price ($z as xs:integer) as xs:integer+ { $z };
        declare function foo:price ($x as xs:integer, $y as xs:integer) as xs:integer+ { $x, $y };
        declare function foo:price ($x as xs:integer, $y as xs:integer, $z as xs:integer) as xs:integer+ { $x+$y+$z };
        foo:price(), foo:price(1), foo:price(2,3), foo:price(4,5,6)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         100 1 2 3 15
      ",
   case xqerl_types:string_value(Res) of
             "100 1 2 3 15" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'function-declaration-021'(_Config) ->
   Qry = "
        declare function local:foo ($n as xs:integer) as xs:string { $n };
        local:foo(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'function-declaration-022'(_Config) ->
   Qry = "
        declare function local:foo ($m as xs:integer) { $m };
        declare function local:foo ($n as xs:integer) { $n };
        local:foo(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0034" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0034'}) end.
'function-declaration-023'(_Config) ->
   Qry = "
        declare function foo ($n as xs:integer) { $n };
        foo(4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'function-declaration-024'(_Config) ->
   Qry = "
        declare function local:foo ($n as xs:integer, $n as xs:integer) { $n };
        local:foo(4, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0039" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0039'}) end.
'function-declaration-025'(_Config) ->
   Qry = "declare default function namespace \"\";
        declare function foo ($n as xs:integer, $m as xs:integer) { $n };
        foo(4, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0060" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0060'}) end.
'function-declaration-026'(_Config) ->
   Qry = "
        declare variable $global := node();
        declare function local:function() { exists($global) };
        local:function()",
   Env = xqerl_test:handle_environment(environment('bib2')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-1'(_Config) ->
   Qry = "declare namespace test = \"http://www.w3.org/2005/xpath-datatypes\";
        declare function test:myFunction() { 1};
        1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-2'(_Config) ->
   Qry = "
        declare function wrongNS() { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-3'(_Config) ->
   Qry = "
        declare function xml:wrongNS() { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-4'(_Config) ->
   Qry = "declare namespace my = \"http://www.w3.org/2001/XMLSchema-instance\";
        declare function my:wrongNS() { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-5'(_Config) ->
   Qry = "declare namespace my = \"http://www.w3.org/2001/XMLSchema\";
        declare function my:wrongNS() { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-6'(_Config) ->
   Qry = "
        declare function local:myFunction($arg = 1) {1};
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-7'(_Config) ->
   Qry = "
        declare function local:myFunction($arg = 1 as xs:integer) {1};
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-8'(_Config) ->
   Qry = "
        declare function local:myFunction($arg := 1) {1};
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-9'(_Config) ->
   Qry = "
        declare function local:myFunction($arg := 1 as xs:integer) {1};
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-10'(_Config) ->
   Qry = "
        declare function local:myFunction() as xs:double { \"This is not a double, it's an xs:string.\" };
        local:myFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-11'(_Config) ->
   Qry = "
        declare function local:myFunction() as item() { () };
        local:myFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-12a'(_Config) ->
   {skip,"XQ10"}.
'K-FunctionProlog-12b'(_Config) ->
   Qry = "
        declare function local:computeSum() { $myVariable };
        declare variable $myVariable := 1;
        1",
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
'K-FunctionProlog-13'(_Config) ->
   Qry = "
        declare function local:computeSum() { $prefix:myVariable };
        declare namespaces prefix = \"example.com/Anamespace\";
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-14'(_Config) ->
   Qry = "
        declare function local:myFunction() as xs:integer { subsequence((1, 2, \"a string\"), 3 ,1) };
        fn:boolean(local:myFunction())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-15'(_Config) ->
   Qry = "
        declare function local:myFunction() as xs:anyURI { 1 };
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-16'(_Config) ->
   Qry = "
        declare function local:myFunction as xs:integer { 1 };
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-17'(_Config) ->
   Qry = "
        declare function local:myFunction { 1 };
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-18'(_Config) ->
   Qry = "declare variable $var1 := 1;
        declare function local:func1() as xs:integer { $var1 };
        declare variable $var2 := 2;
        declare function local:func2() as xs:integer { $var2 };
        1 eq local:func1() and 2 eq local:func2()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-19'(_Config) ->
   Qry = "
        declare function local:func1($a1, $a2, $a3) { 1 };
        local:func1(1, 2, 3)",
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
'K-FunctionProlog-20'(_Config) ->
   Qry = "
        declare function local:func($choose, $whenTrue, $whenFalse) { if($choose) then $whenTrue else $whenFalse };
        local:func(true(), current-time(), current-date()) instance of xs:time and local:func(false(), current-time(), current-date()) instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-21'(_Config) ->
   Qry = "
        declare function local:func($a as xs:integer, $unused, $c as xs:integer) { $a + $c };
        local:func(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4
      ",
 Tst = xqerl:run("4"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-22'(_Config) ->
   Qry = "
        declare function local:func($unused, $b as xs:integer, $c as xs:integer) { $b + $c };
        local:func(1, 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-23'(_Config) ->
   Qry = "
        declare function local:func($a as xs:integer, $b as xs:integer, $unused) { $a + $b };
        local:func(1, 2, 3)",
   Qry1 = Qry,
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
'K-FunctionProlog-24'(_Config) ->
   Qry = "
        declare function wrongNS() { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-25'(_Config) ->
   Qry = "declare variable $local:myName := 1;
        declare function local:myName() as xs:integer { 1 };
        $local:myName eq local:myName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-26'(_Config) ->
   Qry = "
        declare function local:myName() { 1 };
        declare function local:myName() { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0034" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0034'}) end.
'K-FunctionProlog-27'(_Config) ->
   Qry = "
        declare function local:myName() as xs:integer { 1 };
        declare function local:myName() as xs:nonPositiveInteger { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0034" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0034'}) end.
'K-FunctionProlog-28'(_Config) ->
   Qry = "
        declare function local:myName($myvar as xs:integer) { 1 };
        declare function local:myName($myvar as xs:nonPositiveInteger) { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0034" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0034'}) end.
'K-FunctionProlog-29'(_Config) ->
   Qry = "
        declare function local:myName($myvar) { 1 };
        declare function local:myName($myvar2) { 1 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0034" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0034'}) end.
'K-FunctionProlog-30'(_Config) ->
   Qry = "
        declare function local:myName($var as xs:integer) as xs:integer { $var };
        declare function local:myName() as xs:integer { 1 };
        (local:myName(4) - 3) eq local:myName()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-31'(_Config) ->
   Qry = "
        declare function fn:count($var) { fn:count($var) };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-32'(_Config) ->
   Qry = "
        declare function xs:gYear($arg as xs:anyAtomicType?) as xs:gYear? { xs:gYear($arg) };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0045" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0045'}) end.
'K-FunctionProlog-33'(_Config) ->
   Qry = "
        declare function local:myFunction() { \"a string\" + 1 };
        true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-34'(_Config) ->
   Qry = "
        declare function local:MyFunction() { 1 };
        local:myFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionProlog-35'(_Config) ->
   Qry = "
        declare function local:MyFunction() { 1 };
        local:myFunctionn()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionProlog-36'(_Config) ->
   Qry = "
        declare function local:MyFunction($myArg) { 0 };
        $myArg",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-FunctionProlog-37'(_Config) ->
   Qry = "
        declare function local:MyFunction($myArg) { 0 };
        declare function local:MyFunction2($myArg2) { $myArg };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-FunctionProlog-38'(_Config) ->
   Qry = "
        declare function local:MyFunction($myArg) { $myArg2 };
        declare function local:MyFunction2($myArg2) { 0 };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-FunctionProlog-39'(_Config) ->
   Qry = "declare variable $local:myVar := 1;
        declare function local:myFunction($local:myVar) { $local:myVar };
        $local:myVar, local:myFunction(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2
      ",
   case xqerl_types:string_value(Res) of
             "1 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-FunctionProlog-40'(_Config) ->
   Qry = "
        declare function local:myFunction($local:myVar as xs:integer) { for $local:myVar in ($local:myVar, 3) return $local:myVar };
        deep-equal(local:myFunction(1), (1, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-41'(_Config) ->
   Qry = "
        declare function local:myFunction($local:myVar) { $local:myVar + 1 };
        local:myFunction(1), local:myFunction(\"this will fail\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-42'(_Config) ->
   Qry = "
        declare function local:myFunction($local:arg) as item() { 1, $local:arg };
        local:myFunction(()), local:myFunction(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-43'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as item(), $arg2 as xs:integer) { $arg, $arg2 };
        local:myFunction(\"3\", \"3\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-44'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as item(), $arg2 as xs:integer) { $arg, $arg2 };
        local:myFunction(\"3\", ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-45'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as item()?, $arg2 as xs:integer) { $arg, $arg2 };
        local:myFunction((), 4.1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-46'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as empty-sequence()) { $arg };
        local:myFunction(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-47'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as empty-sequence()+) { $arg };
        local:myFunction(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-48'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as empty-sequence()?) { $arg };
        local:myFunction(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FunctionProlog-49'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as empty-sequence()) { $arg };
        empty(local:myFunction(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-50'(_Config) ->
   Qry = "
        declare function local:myFunction($arg) as empty-sequence() { $arg };
        local:myFunction(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FunctionProlog-51'(_Config) ->
   Qry = "
        declare function local:myFunction($arg) { $arg };
        local:myFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionProlog-52'(_Config) ->
   Qry = "
        declare function local:myFunction() as empty-sequence() { fn:error() };
        local:myFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-FunctionProlog-53'(_Config) ->
   Qry = "declare namespace my = \"http://example.com/MyNamespace/\";
        declare variable $my:error-qname := QName(\"http:example.org/\", \"prefix:ncname\");
        declare function my:error($choice, $msg as xs:string) as empty-sequence() { if($choice) then error($my:error-qname, concat('No luck: ', $msg)) else () };
        empty((my:error(false(), \"msg\"), my:error(false(), \"The message\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-54'(_Config) ->
   Qry = "declare namespace my = \"http://example.com/MyNamespace/\";
        declare variable $my:error-qname := QName(\"http://example.com/MyErrorNS\", \"my:qName\");
        declare function my:error($msg as xs:string) as empty-sequence() { error($my:error-qname, concat('No luck: ', $msg)) };
        my:error(\"The message\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' -> {comment, "Correct error"};
           true -> ct:fail({Res, '*'}) end.
'K-FunctionProlog-55'(_Config) ->
   Qry = "declare namespace my = \"http://example.com/MyNamespace/\";
        declare variable $my:error-qname := QName(\"http://example.com/MyErrorNS\", \"my:qName\");
        declare function my:error($choice, $msg as xs:string) as empty-sequence() { if($choice) then error($my:error-qname, concat('No luck: ', $msg)) else () };
        my:error(false(), \"msg\"), my:error(true(), \"The message\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' -> {comment, "Correct error"};
           true -> ct:fail({Res, '*'}) end.
'K-FunctionProlog-56'(_Config) ->
   Qry = "declare namespace my = \"http://example.com/MyNamespace/\";
        declare variable $my:error-qname := QName(\"http://example.com/MyErrorNS\", \"my:qName\");
        declare function my:error($choice, $msg as xs:string) as empty-sequence() { if($choice) then error($my:error-qname, concat('No luck: ', $msg)) else () };
        empty((my:error(false(), \"msg\"), my:error(false(), \"The message\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-57'(_Config) ->
   Qry = "
        declare function local:error() as none { 1 };
        local:error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'K-FunctionProlog-58'(_Config) ->
   Qry = "
        declare function local:error() as none() { 1 };
        local:error()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-59'(_Config) ->
   Qry = "
        declare function local:myFunction($unusedArg) { true() };
        local:myFunction(1 + \"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-60'(_Config) ->
   Qry = "
        declare function local:myFunction($arg) { 1 };
        $arg",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-FunctionProlog-61'(_Config) ->
   Qry = "
        declare function local:myFunction($arg, $arg2, $arg3) { 1 };
        $arg3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-FunctionProlog-62'(_Config) ->
   Qry = "declare variable $my := 3;
        declare function local:myFunction($my, $arg2, $arg4) { 1 };
        $my eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-63'(_Config) ->
   Qry = "local:myFunction(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionProlog-64'(_Config) ->
   Qry = "declare namespace my = \"http://example.com/ANamespace\";
        my:function(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-FunctionProlog-65'(_Config) ->
   Qry = "
        declare function local:myFunction() as empty-sequence() { fn:error() };
        QName(\"http://example.com/ANamespace\", local:myFunction())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-66'(_Config) ->
   Qry = "
        declare function local:myFunction() { fn:error() };
        QName(\"http://example.com/ANamespace\", local:myFunction())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FunctionProlog-67'(_Config) ->
   Qry = "declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
        declare function local:is() as xs:integer { 1 };
        is() eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FunctionProlog-68'(_Config) ->
   Qry = "
        declare function local:myFunction($usedArg) { $usedArg };
        local:myFunction(1 + \"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-1'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as xs:integer) as xs:integer { ((if($arg eq 1) then 1 else $arg - 1), current-time())[1] treat as xs:integer };
        local:myFunction(1) eq local:myFunction(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-2'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as xs:integer) as xs:integer { ((if($arg eq 1) then 1 else $arg - 1), current-time())[1] treat as xs:integer };
        not(local:myFunction(1) ne local:myFunction(2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-3'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as xs:integer) as xs:integer { ((if($arg eq 1) then 1 else $arg - 1), current-time())[1] treat as xs:integer };
        local:myFunction(1) = local:myFunction(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-4'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as xs:integer) as xs:integer { ((if($arg eq 1) then 1 else $arg - 1), current-time())[1] treat as xs:integer };
        not(local:myFunction(1) != local:myFunction(2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-5'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as xs:integer) { $arg };
        local:myFunction(1.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-6'(_Config) ->
   Qry = "
        declare function local:myFunction() as xs:integer { 1.0 };
        local:myFunction()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-7'(_Config) ->
   Qry = "
        declare function local:myFunction() as xs:float { 4.0 };
        (current-time(), 1, 2, \"a string\", local:myFunction(), 4.0, xs:double(\"NaN\"), current-date())[5] instance of xs:float
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-8'(_Config) ->
   Qry = "
        declare function local:myFunction($arg as xs:integer) as xs:integer { if($arg eq 1) then $arg else local:myFunction3($arg - 1) };
        declare function local:myFunction2($arg as xs:integer) as xs:integer { local:myFunction($arg) };
        declare function local:myFunction3($arg as xs:integer) as xs:integer { local:myFunction2($arg) };
        local:myFunction3(3) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-9'(_Config) ->
   Qry = "
        declare function local:multiplySequence($input as xs:integer*) as xs:integer { if (empty($input)) then 1 else $input[1] * local:multiplySequence($input[position() != 1]) };
        local:multiplySequence((1, 2, 3, 4, 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         120
      ",
 Tst = xqerl:run("120"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-10'(_Config) ->
   Qry = "declare default function namespace \"http://example.com\";
        declare function _() { 1 };
        _()",
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
'K2-FunctionProlog-11'(_Config) ->
   Qry = "
        declare function local:_() { 1 };
        local:_()",
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
'K2-FunctionProlog-12'(_Config) ->
   Qry = "
        declare function local:_($arg as node()) { $arg };
        local:_(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-13'(_Config) ->
   Qry = "
        declare function local:_($arg as attribute()?) { 1 };
        local:_(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-FunctionProlog-14'(_Config) ->
   Qry = "       declare function local:myFunc() { e };
        <e/>/local:myFunc()/1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-FunctionProlog-15'(_Config) ->
   Qry = "declare variable $var1 := let $var1 := 1 return 1;
        $var1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-16'(_Config) ->
   Qry = "
        declare function local:myFunction() as item()* {***};
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-FunctionProlog-17'(_Config) ->
   Qry = "       declare function local:func() as xs:integer { <e>1</e> };
        local:func()",
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
'K2-FunctionProlog-18'(_Config) ->
   Qry = "
        declare function local:func() as xs:integer { attribute name {\"1\"} };
        local:func()",
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
'K2-FunctionProlog-19'(_Config) ->
   Qry = "
        declare function local:func() as xs:integer { document {\"1\"} };
        local:func()",
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
'K2-FunctionProlog-20'(_Config) ->
   Qry = "       declare function local:func() as xs:integer { <!--1--> };
        local:func()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-21'(_Config) ->
   Qry = "       declare function local:func() as xs:integer { <?target 1?> };
        local:func()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-22'(_Config) ->
   Qry = "
        declare function local:func() as xs:integer? { text {\"1\"} };
        local:func()",
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
'K2-FunctionProlog-23'(_Config) ->
   Qry = "
        declare function local:recursiveFunction($i as xs:integer) as xs:integer { if($i eq 5) then $i else local:recursiveFunction($i + 1) };
        declare function local:proxy() as xs:integer { local:recursiveFunction(0) + 3 };
        local:proxy()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         8
      ",
 Tst = xqerl:run("8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-24'(_Config) ->
   Qry = "       declare function local:distinct-nodes-stable ($arg as node()*) as xs:boolean* { for $a in $arg return $a };
        local:distinct-nodes-stable((<element1/>,<element2/>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K2-FunctionProlog-25'(_Config) ->
   Qry = "       declare function local:myFunc($recurse as xs:integer) { attribute {concat(\"name\", $recurse)} {()} , if ($recurse = 0) then () else local:myFunc($recurse - 1) };
        <e> { local:myFunc((2, current-time())[1] treat as xs:integer) } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e name2=\"\" name1=\"\" name0=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e name2=\"\" name1=\"\" name0=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e name2=\"\" name1=\"\" name0=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-FunctionProlog-26'(_Config) ->
   Qry = "       declare function local:myFunc() as element(foo) { <bar/> };
        local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-27'(_Config) ->
   Qry = "       declare function local:myFunc() as attribute(foo) { <foo/> };
        local:myFunc()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-28'(_Config) ->
   Qry = "
        declare function local:levenshtein($arg1 as xs:string, $arg2 as xs:string) as xs:decimal { if(string-length($arg1) = 0) then string-length($arg2) else if(string-length($arg2) = 0) then string-length($arg1) else min((local:levenshtein(substring($arg1, 2), $arg2) + 1, local:levenshtein($arg1, substring($arg2, 2)) + 1, local:levenshtein(substring($arg1, 2), substring($arg2, 2)) + (if(substring($arg1, 1, 1) = substring($arg2, 1, 1)) then 0 else 1))) };
        local:levenshtein(\"a\", \"a\"), local:levenshtein(\"aa\", \"aa\"), local:levenshtein(\"aaa\", \"aaa\"), local:levenshtein(\"aa a\", \"aa a\"), local:levenshtein(\"a a a\", \"aaa\"), local:levenshtein(\"aaa\", \"a a a\"), local:levenshtein(\"aaa\", \"aaab\"), local:levenshtein(\"978\", \"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0 0 0 0 2 2 1 3
      ",
   case xqerl_types:string_value(Res) of
             "0 0 0 0 2 2 1 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-FunctionProlog-29'(_Config) ->
   Qry = "function gt function",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-FunctionProlog-30'(_Config) ->
   Qry = "       declare function local:foo($arg) as xs:boolean { $arg };
        local:foo(<e/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-FunctionProlog-31'(_Config) ->
   Qry = "       declare function local:foo($arg) as xs:boolean* { $arg };
        local:foo((<e>true</e>, true(), xs:untypedAtomic(\"false\"), false(), <e> true </e>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true false false true
      ",
   case xqerl_types:string_value(Res) of
             "true true false false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-FunctionProlog-32'(_Config) ->
   Qry = "
        declare function local:foo($arg ) as xs:boolean* { $arg };
        local:foo(current-date())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-FunctionProlog-33'(_Config) ->
   Qry = "       declare function local:foo($arg ) as xs:boolean* { $arg };
        local:foo((<e>true</e>, true(), xs:untypedAtomic(\"false\"), false(), <e> true </e>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true false false true
      ",
   case xqerl_types:string_value(Res) of
             "true true false false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-FunctionProlog-34'(_Config) ->
   Qry = "
        declare function local:foo($arg) as xs:boolean* { $arg };
        local:foo((true(), xs:untypedAtomic(\"false\"))), local:foo((false(), xs:untypedAtomic(\"false\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true false false false
      ",
   case xqerl_types:string_value(Res) of
             "true false false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-FunctionProlog-35'(_Config) ->
   Qry = "
        declare function local:foo($arg) as xs:boolean* { $arg };
        local:foo(xs:untypedAtomic(\"false\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-36'(_Config) ->
   Qry = "
        declare function local:foo($arg) as xs:boolean { $arg };
        local:foo(xs:untypedAtomic(\"false\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FunctionProlog-37'(_Config) ->
   Qry = "       declare function local:foo($arg ) as xs:boolean* { $arg };
        local:foo((<e>true</e>, true(), xs:untypedAtomic(\"false\"), false(), <e> true </e>))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true true false false true
      ",
   case xqerl_types:string_value(Res) of
             "true true false false true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-FunctionProlog-38'(_Config) ->
   Qry = "
        declare function local:foo() as xs:boolean { text {local:doesNotExist()} };
        1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K2-FunctionProlog-39'(_Config) ->
   Qry = "
        declare variable $A:=(<A>{local:functionA()}</A>);
        declare function local:functionA() as element() { <input>testing ...</input> };
        declare function local:functionB ( ) as xs:string { xs:string($A) };
        local:functionB()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         testing ...
      ",
   case xqerl_types:string_value(Res) of
             "testing ..." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-FunctionProlog-40'(_Config) ->
   Qry = "
        declare variable $A:=(<A>{local:functionA()}</A>);
        declare function local:functionA() as element() { <input>testing ...</input> };
        declare function local:functionB ( ) as xs:string { $A };
        local:functionB()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         testing ...
      ",
   case xqerl_types:string_value(Res) of
             "testing ..." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-function-decl-001'(_Config) ->
   Qry = "declare function local:nothing() as empty-sequence() { () }; empty(local:nothing())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-function-declaration-002'(_Config) ->
   Qry = "declare function local:count($x) { count($x) }; local:count((1 to 100000, 1 to 100000))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         200000
      ",
   case xqerl_types:string_value(Res) of
             "200000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'function-decl-reserved-function-names-001'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-002'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function attribute() { fn:true() };
	local:attribute()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-003'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-004'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function comment() { fn:true() };
	local:comment()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-005'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-006'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function document-node() { fn:true() };
	local:document-node()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-007'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-008'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function element() { fn:true() };
	local:element()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-009'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-010'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function empty-sequence() { fn:true() };
	local:empty-sequence()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-011'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-012'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function function() { fn:true() };
	local:function()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-013'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-014'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function if() { fn:true() };
	local:if()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-015'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-016'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function item() { fn:true() };
	local:item()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-017'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-018'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function namespace-node() { fn:true() };
	local:namespace-node()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-019'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-020'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function node() { fn:true() };
	local:node()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-021'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-022'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function processing-instruction() { fn:true() };
	local:processing-instruction()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-023'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-024'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function schema-attribute() { fn:true() };
	local:schema-attribute()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-025'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-026'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function schema-element() { fn:true() };
	local:schema-element()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-027'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-028'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function switch() { fn:true() };
	local:switch()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-029'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-030'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function text() { fn:true() };
	local:text()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'function-decl-reserved-function-names-031'(_Config) ->
   {skip,"XQ10"}.
'function-decl-reserved-function-names-032'(_Config) ->
   Qry = "
	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";
	declare function typeswitch() { fn:true() };
	local:typeswitch()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
