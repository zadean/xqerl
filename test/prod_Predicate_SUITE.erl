-module('prod_Predicate_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['filterexpressionhc1'/1]).
-export(['filterexpressionhc2'/1]).
-export(['filterexpressionhc3'/1]).
-export(['filterexpressionhc4'/1]).
-export(['filterexpressionhc5'/1]).
-export(['filterexpressionhc6'/1]).
-export(['filterexpressionhc7'/1]).
-export(['filterexpressionhc8'/1]).
-export(['filterexpressionhc9'/1]).
-export(['filterexpressionhc10'/1]).
-export(['filterexpressionhc11'/1]).
-export(['filterexpressionhc12'/1]).
-export(['filterexpressionhc13'/1]).
-export(['filterexpressionhc14'/1]).
-export(['filterexpressionhc15'/1]).
-export(['filterexpressionhc16'/1]).
-export(['filterexpressionhc17'/1]).
-export(['filterexpressionhc18'/1]).
-export(['filterexpressionhc19'/1]).
-export(['filterexpressionhc20'/1]).
-export(['filterexpressionhc21'/1]).
-export(['filterexpressionhc22'/1]).
-export(['K-FilterExpr-1'/1]).
-export(['K-FilterExpr-2'/1]).
-export(['K-FilterExpr-3'/1]).
-export(['K-FilterExpr-4'/1]).
-export(['K-FilterExpr-5'/1]).
-export(['K-FilterExpr-6'/1]).
-export(['K-FilterExpr-7'/1]).
-export(['K-FilterExpr-8'/1]).
-export(['K-FilterExpr-9'/1]).
-export(['K-FilterExpr-10'/1]).
-export(['K-FilterExpr-11'/1]).
-export(['K-FilterExpr-12'/1]).
-export(['K-FilterExpr-13'/1]).
-export(['K-FilterExpr-14'/1]).
-export(['K-FilterExpr-15'/1]).
-export(['K-FilterExpr-16'/1]).
-export(['K-FilterExpr-17'/1]).
-export(['K-FilterExpr-18'/1]).
-export(['K-FilterExpr-19'/1]).
-export(['K-FilterExpr-20'/1]).
-export(['K-FilterExpr-21'/1]).
-export(['K-FilterExpr-22'/1]).
-export(['K-FilterExpr-23'/1]).
-export(['K-FilterExpr-24'/1]).
-export(['K-FilterExpr-25'/1]).
-export(['K-FilterExpr-26'/1]).
-export(['K-FilterExpr-27'/1]).
-export(['K-FilterExpr-28'/1]).
-export(['K-FilterExpr-29'/1]).
-export(['K-FilterExpr-30'/1]).
-export(['K-FilterExpr-31'/1]).
-export(['K-FilterExpr-32'/1]).
-export(['K-FilterExpr-33'/1]).
-export(['K-FilterExpr-34'/1]).
-export(['K-FilterExpr-35'/1]).
-export(['K-FilterExpr-36'/1]).
-export(['K-FilterExpr-37'/1]).
-export(['K-FilterExpr-38'/1]).
-export(['K-FilterExpr-39'/1]).
-export(['K-FilterExpr-40'/1]).
-export(['K-FilterExpr-41'/1]).
-export(['K-FilterExpr-42'/1]).
-export(['K-FilterExpr-43'/1]).
-export(['K-FilterExpr-44'/1]).
-export(['K-FilterExpr-45'/1]).
-export(['K-FilterExpr-46'/1]).
-export(['K-FilterExpr-47'/1]).
-export(['K-FilterExpr-48'/1]).
-export(['K-FilterExpr-49'/1]).
-export(['K-FilterExpr-50'/1]).
-export(['K-FilterExpr-51'/1]).
-export(['K-FilterExpr-52'/1]).
-export(['K-FilterExpr-53'/1]).
-export(['K-FilterExpr-54'/1]).
-export(['K-FilterExpr-55'/1]).
-export(['K-FilterExpr-56'/1]).
-export(['K-FilterExpr-57'/1]).
-export(['K-FilterExpr-58'/1]).
-export(['K-FilterExpr-59'/1]).
-export(['K-FilterExpr-60'/1]).
-export(['K-FilterExpr-61'/1]).
-export(['K-FilterExpr-62'/1]).
-export(['K-FilterExpr-63'/1]).
-export(['K-FilterExpr-64'/1]).
-export(['K-FilterExpr-65'/1]).
-export(['K-FilterExpr-66'/1]).
-export(['K-FilterExpr-67'/1]).
-export(['K-FilterExpr-68'/1]).
-export(['K-FilterExpr-69'/1]).
-export(['K-FilterExpr-70'/1]).
-export(['K-FilterExpr-71'/1]).
-export(['K-FilterExpr-72'/1]).
-export(['K-FilterExpr-73'/1]).
-export(['K-FilterExpr-74'/1]).
-export(['K-FilterExpr-75'/1]).
-export(['K-FilterExpr-76'/1]).
-export(['K-FilterExpr-77'/1]).
-export(['K-FilterExpr-78'/1]).
-export(['K-FilterExpr-79'/1]).
-export(['K-FilterExpr-80'/1]).
-export(['K-FilterExpr-81'/1]).
-export(['K-FilterExpr-82'/1]).
-export(['K-FilterExpr-83'/1]).
-export(['K-FilterExpr-84'/1]).
-export(['K-FilterExpr-85'/1]).
-export(['K-FilterExpr-86'/1]).
-export(['K-FilterExpr-87'/1]).
-export(['K-FilterExpr-88'/1]).
-export(['K-FilterExpr-89'/1]).
-export(['K-FilterExpr-90'/1]).
-export(['K-FilterExpr-91'/1]).
-export(['K-FilterExpr-92'/1]).
-export(['K-FilterExpr-93'/1]).
-export(['K-FilterExpr-94'/1]).
-export(['K2-FilterExpr-1'/1]).
-export(['K2-FilterExpr-2'/1]).
-export(['K2-FilterExpr-3'/1]).
-export(['K2-FilterExpr-4'/1]).
-export(['K2-FilterExpr-5'/1]).
-export(['K2-FilterExpr-6'/1]).
-export(['K2-FilterExpr-7'/1]).
-export(['K2-FilterExpr-8'/1]).
-export(['predicates-1'/1]).
-export(['predicates-2'/1]).
-export(['predicates-3'/1]).
-export(['predicates-4'/1]).
-export(['predicates-5'/1]).
-export(['predicates-6'/1]).
-export(['predicates-7'/1]).
-export(['predicates-8'/1]).
-export(['predicates-9'/1]).
-export(['predicates-10'/1]).
-export(['predicates-11'/1]).
-export(['predicates-12'/1]).
-export(['predicates-13'/1]).
-export(['predicates-14'/1]).
-export(['predicates-17'/1]).
-export(['predicates-18'/1]).
-export(['predicates-19'/1]).
-export(['predicates-20'/1]).
-export(['predicates-21'/1]).
-export(['predicates-22'/1]).
-export(['predicates-23'/1]).
-export(['predicates-24'/1]).
-export(['predicates-25'/1]).
-export(['predicates-26'/1]).
-export(['predicates-27'/1]).
-export(['predicates-28'/1]).
-export(['predicates-29'/1]).
-export(['predicates-30'/1]).
-export(['predicates-31'/1]).
-export(['predicatesns-1'/1]).
-export(['predicatesns-2'/1]).
-export(['predicatesns-3'/1]).
-export(['predicatesns-4'/1]).
-export(['predicatesns-5'/1]).
-export(['predicatesns-6'/1]).
-export(['predicatesns-7'/1]).
-export(['predicatesns-8'/1]).
-export(['predicatesns-9'/1]).
-export(['predicatesns-10'/1]).
-export(['predicatesns-11'/1]).
-export(['predicatesns-12'/1]).
-export(['predicatesns-13'/1]).
-export(['predicatesns-14'/1]).
-export(['K2-Predicates-1'/1]).
-export(['K2-Predicates-2'/1]).
-export(['K2-Predicates-3'/1]).
-export(['K2-Predicates-4'/1]).
-export(['K2-Predicates-5'/1]).
-export(['K2-Predicates-6'/1]).
-export(['K2-Predicates-7'/1]).
-export(['K2-Predicates-8'/1]).
-export(['K2-Predicates-9'/1]).
-export(['cbcl-filterexpr-001'/1]).
-export(['cbcl-first-in-sequence-001'/1]).
-export(['cbcl-first-in-sequence-002'/1]).
-export(['cbcl-first-in-sequence-003'/1]).
-export(['cbcl-first-in-sequence-004'/1]).
-export(['cbcl-first-in-sequence-005'/1]).
-export(['cbcl-first-in-sequence-006'/1]).
-export(['cbcl-first-in-sequence-007'/1]).
-export(['cbcl-first-in-sequence-008'/1]).
-export(['cbcl-first-in-sequence-009'/1]).
-export(['cbcl-first-in-sequence-010'/1]).
-export(['cbcl-first-in-sequence-011'/1]).
-export(['cbcl-first-in-sequence-012'/1]).
-export(['cbcl-filter-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'filterexpressionhc1',
   'filterexpressionhc2',
   'filterexpressionhc3',
   'filterexpressionhc4',
   'filterexpressionhc5',
   'filterexpressionhc6',
   'filterexpressionhc7',
   'filterexpressionhc8',
   'filterexpressionhc9',
   'filterexpressionhc10',
   'filterexpressionhc11',
   'filterexpressionhc12',
   'filterexpressionhc13',
   'filterexpressionhc14',
   'filterexpressionhc15',
   'filterexpressionhc16',
   'filterexpressionhc17',
   'filterexpressionhc18',
   'filterexpressionhc19',
   'filterexpressionhc20',
   'filterexpressionhc21',
   'filterexpressionhc22',
   'K-FilterExpr-1',
   'K-FilterExpr-2',
   'K-FilterExpr-3',
   'K-FilterExpr-4',
   'K-FilterExpr-5',
   'K-FilterExpr-6',
   'K-FilterExpr-7',
   'K-FilterExpr-8',
   'K-FilterExpr-9',
   'K-FilterExpr-10',
   'K-FilterExpr-11',
   'K-FilterExpr-12',
   'K-FilterExpr-13',
   'K-FilterExpr-14',
   'K-FilterExpr-15',
   'K-FilterExpr-16',
   'K-FilterExpr-17',
   'K-FilterExpr-18',
   'K-FilterExpr-19',
   'K-FilterExpr-20',
   'K-FilterExpr-21',
   'K-FilterExpr-22',
   'K-FilterExpr-23',
   'K-FilterExpr-24',
   'K-FilterExpr-25',
   'K-FilterExpr-26',
   'K-FilterExpr-27',
   'K-FilterExpr-28',
   'K-FilterExpr-29',
   'K-FilterExpr-30',
   'K-FilterExpr-31',
   'K-FilterExpr-32',
   'K-FilterExpr-33',
   'K-FilterExpr-34',
   'K-FilterExpr-35',
   'K-FilterExpr-36',
   'K-FilterExpr-37',
   'K-FilterExpr-38',
   'K-FilterExpr-39',
   'K-FilterExpr-40',
   'K-FilterExpr-41',
   'K-FilterExpr-42',
   'K-FilterExpr-43',
   'K-FilterExpr-44',
   'K-FilterExpr-45',
   'K-FilterExpr-46',
   'K-FilterExpr-47',
   'K-FilterExpr-48',
   'K-FilterExpr-49',
   'K-FilterExpr-50',
   'K-FilterExpr-51',
   'K-FilterExpr-52',
   'K-FilterExpr-53',
   'K-FilterExpr-54',
   'K-FilterExpr-55',
   'K-FilterExpr-56',
   'K-FilterExpr-57',
   'K-FilterExpr-58',
   'K-FilterExpr-59',
   'K-FilterExpr-60',
   'K-FilterExpr-61',
   'K-FilterExpr-62',
   'K-FilterExpr-63',
   'K-FilterExpr-64',
   'K-FilterExpr-65',
   'K-FilterExpr-66',
   'K-FilterExpr-67',
   'K-FilterExpr-68',
   'K-FilterExpr-69',
   'K-FilterExpr-70',
   'K-FilterExpr-71',
   'K-FilterExpr-72',
   'K-FilterExpr-73',
   'K-FilterExpr-74',
   'K-FilterExpr-75',
   'K-FilterExpr-76',
   'K-FilterExpr-77',
   'K-FilterExpr-78',
   'K-FilterExpr-79',
   'K-FilterExpr-80',
   'K-FilterExpr-81',
   'K-FilterExpr-82',
   'K-FilterExpr-83',
   'K-FilterExpr-84',
   'K-FilterExpr-85',
   'K-FilterExpr-86',
   'K-FilterExpr-87',
   'K-FilterExpr-88',
   'K-FilterExpr-89',
   'K-FilterExpr-90',
   'K-FilterExpr-91',
   'K-FilterExpr-92',
   'K-FilterExpr-93',
   'K-FilterExpr-94',
   'K2-FilterExpr-1',
   'K2-FilterExpr-2',
   'K2-FilterExpr-3',
   'K2-FilterExpr-4',
   'K2-FilterExpr-5',
   'K2-FilterExpr-6',
   'K2-FilterExpr-7',
   'K2-FilterExpr-8',
   'predicates-1',
   'predicates-2',
   'predicates-3',
   'predicates-4',
   'predicates-5',
   'predicates-6',
   'predicates-7',
   'predicates-8',
   'predicates-9',
   'predicates-10',
   'predicates-11',
   'predicates-12',
   'predicates-13',
   'predicates-14',
   'predicates-17',
   'predicates-18',
   'predicates-19',
   'predicates-20',
   'predicates-21',
   'predicates-22',
   'predicates-23',
   'predicates-24',
   'predicates-25',
   'predicates-26',
   'predicates-27',
   'predicates-28',
   'predicates-29',
   'predicates-30',
   'predicates-31',
   'predicatesns-1',
   'predicatesns-2',
   'predicatesns-3',
   'predicatesns-4',
   'predicatesns-5',
   'predicatesns-6',
   'predicatesns-7',
   'predicatesns-8',
   'predicatesns-9',
   'predicatesns-10',
   'predicatesns-11',
   'predicatesns-12',
   'predicatesns-13',
   'predicatesns-14',
   'K2-Predicates-1',
   'K2-Predicates-2',
   'K2-Predicates-3',
   'K2-Predicates-4',
   'K2-Predicates-5',
   'K2-Predicates-6',
   'K2-Predicates-7',
   'K2-Predicates-8',
   'K2-Predicates-9',
   'cbcl-filterexpr-001',
   'cbcl-first-in-sequence-001',
   'cbcl-first-in-sequence-002',
   'cbcl-first-in-sequence-003',
   'cbcl-first-in-sequence-004',
   'cbcl-first-in-sequence-005',
   'cbcl-first-in-sequence-006',
   'cbcl-first-in-sequence-007',
   'cbcl-first-in-sequence-008',
   'cbcl-first-in-sequence-009',
   'cbcl-first-in-sequence-010',
   'cbcl-first-in-sequence-011',
   'cbcl-first-in-sequence-012',
   'cbcl-filter-001'].
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
environment('atomicns') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomicns.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'filterexpressionhc1'(_Config) ->
   Qry = "(/works/employee[xs:integer(hours[1]) gt 20])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'filterexpressionhc2'(_Config) ->
   Qry = "((1 to 25)[. mod 2 eq 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 4 6 8 10 12 14 16 18 20 22 24
      ",
   case xqerl_types:string_value(Res) of
             "2 4 6 8 10 12 14 16 18 20 22 24" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc3'(_Config) ->
   Qry = "((1 to 25)[25])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         25
      ",
 Tst = xqerl:run("25"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'filterexpressionhc4'(_Config) ->
   Qry = "(//empnum | (/))//employee[xs:integer(hours[1]) gt 20]",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee>
   <empnum>E1</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E1</empnum>
   <pnum>P3</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P4</pnum>
   <hours>40</hours>
  </employee><employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'filterexpressionhc5'(_Config) ->
   Qry = "(//employee[fn:last()])",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee>
   <empnum>E4</empnum>
   <pnum>P5</pnum>
   <hours>80</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'filterexpressionhc6'(_Config) ->
   Qry = "((1 to 25)[. ge 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
      ",
   case xqerl_types:string_value(Res) of
             "10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc7'(_Config) ->
   Qry = "((1 to 25)[. lt 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5 6 7 8 9
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5 6 7 8 9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc8'(_Config) ->
   Qry = "((1 to 25)[. le 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5 6 7 8 9 10
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc9'(_Config) ->
   Qry = "((1 to 25)[. eq 10])",
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
'filterexpressionhc10'(_Config) ->
   Qry = "((1 to 11)[. ne 10])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5 6 7 8 9 11
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc11'(_Config) ->
   Qry = "((1 to 11)[(. eq 10) and (. mod 5 eq 0)])",
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
'filterexpressionhc12'(_Config) ->
   Qry = "((1 to 11)[(. eq 10) or (. eq 5)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5 10
      ",
   case xqerl_types:string_value(Res) of
             "5 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc13'(_Config) ->
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. div 2 eq 5)])",
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
'filterexpressionhc14'(_Config) ->
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. * 2 eq 10)])",
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
'filterexpressionhc15'(_Config) ->
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. + 2 eq 10)])",
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
'filterexpressionhc16'(_Config) ->
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. - 2 eq 6)])",
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
'filterexpressionhc17'(_Config) ->
   Qry = "((1,2,4,5,6,7,8,9,10,11)[(. idiv 2 eq 3)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6 7
      ",
   case xqerl_types:string_value(Res) of
             "6 7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc18'(_Config) ->
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[(xs:string(.) eq \"3\")])",
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
'filterexpressionhc19'(_Config) ->
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[. gt 1][. gt 5])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6 7 8 9 10 11
      ",
   case xqerl_types:string_value(Res) of
             "6 7 8 9 10 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc20'(_Config) ->
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[(. gt 1) and (. gt 2)][(. gt 5) and (. gt 6)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         7 8 9 10 11
      ",
   case xqerl_types:string_value(Res) of
             "7 8 9 10 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc21'(_Config) ->
   Qry = "((1,2,3,4,5,6,7,8,9,10,11)[fn:true()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5 6 7 8 9 10 11
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 10 11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'filterexpressionhc22'(_Config) ->
   Qry = "fn:count(((1,2,3,4,5,6,7,8,9,10,11)[fn:false()]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-1'(_Config) ->
   Qry = "(1, 2, 3)[",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FilterExpr-2'(_Config) ->
   Qry = "(1, 2, 3)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FilterExpr-3'(_Config) ->
   Qry = "(1, 2, 3)[]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FilterExpr-4'(_Config) ->
   Qry = "[true()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FilterExpr-5'(_Config) ->
   Qry = "[]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-FilterExpr-6'(_Config) ->
   Qry = "empty((1, 2, 3)[0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-7'(_Config) ->
   Qry = "empty((1, 2, 3)[4])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-8'(_Config) ->
   Qry = "empty((1, 2, 3)[0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-9'(_Config) ->
   Qry = "empty((1, 2, 3)[4])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-10'(_Config) ->
   Qry = "empty((1, 2, 3)[0.1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-11'(_Config) ->
   Qry = "empty((1, 2, 3)[1.1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-12'(_Config) ->
   Qry = "empty((1, 2, 3)[1.01])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-13'(_Config) ->
   Qry = "empty((1, 2, 3)[4])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-14'(_Config) ->
   Qry = "empty((1, 2, 3)[4.1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-15'(_Config) ->
   Qry = "empty((1, 2, 3)[4.01])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-16'(_Config) ->
   Qry = "not(empty((1, 2, 3)[1]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-17'(_Config) ->
   Qry = "not(empty((1, 2, 3)[3]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-18'(_Config) ->
   Qry = "(1, 2, 3)[1] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-19'(_Config) ->
   Qry = "(1, 2, 3)[1.0] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-20'(_Config) ->
   Qry = "(1, 2, 3)[1.0e0] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-21'(_Config) ->
   Qry = "(1, 2, 3)[3] eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-22'(_Config) ->
   Qry = "(1, 2, 3)[3.0] eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-23'(_Config) ->
   Qry = "(1, 2, 3)[3.0e0] eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-24'(_Config) ->
   Qry = "(0, 1, 2)[1] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-25'(_Config) ->
   Qry = "(0, 1, 2)[2] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-26'(_Config) ->
   Qry = "(0, 1, 2)[3] eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-27'(_Config) ->
   Qry = "(0)[1] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-28'(_Config) ->
   Qry = "0[1] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-29'(_Config) ->
   Qry = "(0, 1)[1] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-30'(_Config) ->
   Qry = "empty((1, 2, 3)[false()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-31'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[true()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-32'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[. instance of xs:integer])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-33'(_Config) ->
   Qry = "deep-equal((true(), true(), true()), (false(), true(), true(), false(), true(), false())[.])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-34'(_Config) ->
   Qry = "deep-equal((2, 3, 4, 5, 7, 8, 9), (0, 2, 3, 4, 5, 5, 7, 8, 10 - 1)[.])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-35'(_Config) ->
   Qry = "1[true()] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-36'(_Config) ->
   Qry = "(1, current-time())[1]",
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
'K-FilterExpr-37'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[xs:anyURI(\"example.com/\")])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-38'(_Config) ->
   Qry = "(1, 2, 3)[(xs:anyURI(\"example.com/\"), xs:anyURI(\"example.com/\"))]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-FilterExpr-39'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[xs:untypedAtomic(\"content\")])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-40'(_Config) ->
   Qry = "(1, 2, 3)[(xs:untypedAtomic(\"content\"), xs:untypedAtomic(\"content\"))]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-FilterExpr-41'(_Config) ->
   Qry = "(0, 1, 2)[true()][1] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-42'(_Config) ->
   Qry = "(1, 2, 3)[position() eq 2 or position() eq 3][2] eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-43'(_Config) ->
   Qry = "empty((1, 2, 3)[position() eq 2 or position() eq 3][3])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-44'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[2 or 3])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-45'(_Config) ->
   Qry = "empty((1, 2, 3)[3][2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-46'(_Config) ->
   Qry = "empty((1, 2, 3)[3][0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-47'(_Config) ->
   Qry = "(0, 2, 4, 5)[1][1][1][true()][1][true()][1] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-48'(_Config) ->
   Qry = "empty((1, 2, 3)[3e8])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-49'(_Config) ->
   Qry = "empty((0, 1, 2)[false()][1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-50'(_Config) ->
   Qry = "deep-equal((\"a\", \"b\", \"c\"), (0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:string])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-51'(_Config) ->
   Qry = "((0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:string][. treat as xs:string eq \"c\"] treat as xs:string) eq \"c\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-52'(_Config) ->
   Qry = "((0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:integer][. treat as xs:integer eq 0] treat as xs:integer) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-53'(_Config) ->
   Qry = "(0, 1, 2, \"a\", \"b\", \"c\")[. instance of xs:integer][. eq \"c\"] eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FilterExpr-54'(_Config) ->
   Qry = "empty(()[()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-55'(_Config) ->
   Qry = "empty((1, 2, 3)[()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-56'(_Config) ->
   Qry = "empty(()[last()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-57'(_Config) ->
   Qry = "empty(()[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-58'(_Config) ->
   Qry = "empty(()[position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-59'(_Config) ->
   Qry = "empty(()[count(remove((current-time(), 1), 1)) eq 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-60'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[position() >= 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-61'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[3 >= position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-62'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[position() ge 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-63'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[3 ge position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-64'(_Config) ->
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[position() eq position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-65'(_Config) ->
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[position() = position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-66'(_Config) ->
   Qry = "(0, 1, 2)[1 eq position()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-FilterExpr-67'(_Config) ->
   Qry = "(0, 1, 2)[3 eq position()]",
   Qry1 = Qry,
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
'K-FilterExpr-68'(_Config) ->
   Qry = "(0, 1, 2)[position() eq 3]",
   Qry1 = Qry,
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
'K-FilterExpr-69'(_Config) ->
   Qry = "deep-equal((1, 2, 3), (1, 2, 3)[number(.)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-70'(_Config) ->
   Qry = "deep-equal((1, 2), (0, 1, 2)[if(. eq 1) then 2 else 3])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-71'(_Config) ->
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[if(. eq 8) then \"str\" else position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-72'(_Config) ->
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[if(. eq 8) then 0 else position()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-73'(_Config) ->
   Qry = "(0, 1, 2)[last()]",
   Qry1 = Qry,
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
'K-FilterExpr-74'(_Config) ->
   Qry = "(0, 1, \"2\")[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-FilterExpr-75'(_Config) ->
   Qry = "2 eq (0, 1, \"2\")[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-FilterExpr-76'(_Config) ->
   Qry = "empty((())[last()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-77'(_Config) ->
   Qry = "empty(()[last()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-78'(_Config) ->
   Qry = "(0, 1, 2)[. eq 0]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-FilterExpr-79'(_Config) ->
   Qry = "(0, 1, 2)[. eq 1]",
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
'K-FilterExpr-80'(_Config) ->
   Qry = "(0, 1, 2)[. eq 2]",
   Qry1 = Qry,
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
'K-FilterExpr-81'(_Config) ->
   Qry = "deep-equal((0, 1, 2), (0, 1, 2)[. eq 0 or . eq 1 or . eq 2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-82'(_Config) ->
   Qry = "(0, 1, 2)[remove((1, \"a string\"), 2)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-83'(_Config) ->
   Qry = "deep-equal((1, 2), (1, 2)[remove((true(), \"a string\"), 2)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-84'(_Config) ->
   Qry = "empty((1, 2, 3)[remove((false(), \"a string\"), 2)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-85'(_Config) ->
   Qry = "empty((1, 2, 3)[remove((false(), \"a string\"), 2)])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-86'(_Config) ->
   Qry = "empty(current-time()[2])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-87'(_Config) ->
   Qry = "empty((1, 2, 3, current-time())[0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-88'(_Config) ->
   Qry = "empty(remove((1, 2, 3, current-time()), 4)[false()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-FilterExpr-89'(_Config) ->
   Qry = "deep-equal(remove((1, 2, 3, current-time()), 4)[true()], (1, 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-FilterExpr-90'(_Config) ->
   Qry = "(1, 2, 3)[(last(), last())[2]]",
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
'K-FilterExpr-91'(_Config) ->
   Qry = "(1, 2, 3)[xs:hexBinary(\"FF\")]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-FilterExpr-92'(_Config) ->
   Qry = "(1, 2, 3)[1, 2]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-FilterExpr-93'(_Config) ->
   Qry = "(1, 2, 3)[1, \"a string\"]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-FilterExpr-94'(_Config) ->
   Qry = "(1, 2, 3)[\"a string\", 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K2-FilterExpr-1'(_Config) ->
   Qry = "declare variable $var := (for $i in 1 to 100 return <e>{$i}</e>); $var[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e>100</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>100</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e>100</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-FilterExpr-2'(_Config) ->
   Qry = "declare variable $var := (for $i in 1 to 100 return <e>{$i}</e>); $var[5]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e>5</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e>5</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e>5</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-FilterExpr-3'(_Config) ->
   Qry = "empty((1,2,3,4,5)[3.4])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-FilterExpr-4'(_Config) ->
   Qry = "empty(<e><a/></e>//a[3.4])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-FilterExpr-5'(_Config) ->
   Qry = "let $d := document {<root><child type=\"\"/></root>} return $d//*[let $i := @type return $d//*[$i]], (1, 2, 3)[true()], (4, 5, 6)[false()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            <child type=\"\"/>1 2 3
            
         
      ",
 case (xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P1 -> "deep-equal(<x>"++P1++"</x>" end ++ " , " ++ "<x>" ++ "<child type=\"\"/>1 2 3"++ "</x>)" )) == "true" orelse ResXml == Exp) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-FilterExpr-6'(_Config) ->
   Qry = "let $d := document { <root><child type=\"\"/></root> } return $d//*[let $i := @type return $d//*[$i]]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <child type=\"\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<child type=\"\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<child type=\"\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-FilterExpr-7'(_Config) ->
   Qry = "(<x/>, <?y?>)[self::processing-instruction()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <?y?>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<?y?>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<?y?>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-FilterExpr-8'(_Config) ->
   Qry = "(<?z?>, <?y?>)[self::processing-instruction(y)] treat as empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0050" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0050'}) end.
'predicates-1'(_Config) ->
   Qry = "(//integer[fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-2'(_Config) ->
   Qry = "fn:count((//integer[fn:false()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'predicates-3'(_Config) ->
   Qry = "(//integer[fn:not(fn:false())])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-4'(_Config) ->
   Qry = "(//integer[fn:true() and fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-5'(_Config) ->
   Qry = "(//integer[fn:true() or fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-6'(_Config) ->
   Qry = "fn:count((//integer[fn:false() and fn:false()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'predicates-7'(_Config) ->
   Qry = "fn:count((//integer[fn:false() or fn:false()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'predicates-8'(_Config) ->
   Qry = "(/root/string[xs:string(.) = \"A String Function\"])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <string>A String Function</string>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<string>A String Function</string>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<string>A String Function</string>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-9'(_Config) ->
   Qry = "(/root/integer[xs:integer(.) = 12678967543233])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-10'(_Config) ->
   Qry = "(/root/decimal[xs:decimal(.) = 12678967.543233])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <decimal attr=\"12678967.543233\">12678967.543233</decimal>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<decimal attr=\"12678967.543233\">12678967.543233</decimal>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<decimal attr=\"12678967.543233\">12678967.543233</decimal>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-11'(_Config) ->
   Qry = "(/root/float[xs:float(.) = xs:float(1267.43233E12)])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <float>1267.43233E12</float>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<float>1267.43233E12</float>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<float>1267.43233E12</float>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-12'(_Config) ->
   Qry = "(/root/double[xs:double(.) = 1267.43233E12])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <double>1267.43233E12</double>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<double>1267.43233E12</double>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<double>1267.43233E12</double>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-13'(_Config) ->
   Qry = "(/root/boolean[xs:boolean(.) = fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <boolean>true</boolean>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<boolean>true</boolean>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<boolean>true</boolean>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-14'(_Config) ->
   Qry = "(/root/date[xs:date(.) = xs:date(\"2000-01-01+05:00\")])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <date>2000-01-01+05:00</date>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<date>2000-01-01+05:00</date>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<date>2000-01-01+05:00</date>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-17'(_Config) ->
   Qry = "(/works/employee[@name=\"Jane Doe 11\"])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 11\" gender=\"female\">
   <empnum>E4</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-18'(_Config) ->
   Qry = "(/works//day[xs:string(.) ne \"Monday\"])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <day>Tuesday</day>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<day>Tuesday</day>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<day>Tuesday</day>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-19'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) lt 13])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-20'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) le 12])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-21'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) gt 79])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-22'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) ge 80])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-23'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) = 12])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-24'(_Config) ->
   Qry = "(/works[1]//employee[empnum != \"E1\" and empnum != \"E4\"])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <employee name=\"Jane Doe 7\" gender=\"female\">
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee name=\"John Doe 8\" gender=\"male\">
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<employee name=\"Jane Doe 7\" gender=\"female\">
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee name=\"John Doe 8\" gender=\"male\">
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<employee name=\"Jane Doe 7\" gender=\"female\">
   <empnum>E2</empnum>
   <pnum>P1</pnum>
   <hours>40</hours>
  </employee><employee name=\"John Doe 8\" gender=\"male\">
   <empnum>E2</empnum>
   <pnum>P2</pnum>
   <hours>80</hours>
  </employee><employee name=\"Jane Doe 9\" gender=\"female\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee><employee name=\"John Doe 10\" gender=\"male\">
   <empnum>E3</empnum>
   <pnum>P2</pnum>
   <hours>20</hours>
  </employee>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-25'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) < 13])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-26'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) <= 12])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>12</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>12</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>12</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-27'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) > 79])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-28'(_Config) ->
   Qry = "(/works//hours[xs:integer(.) >= 80])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <hours>80</hours><hours>80</hours><hours>80</hours>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<hours>80</hours><hours>80</hours><hours>80</hours>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<hours>80</hours><hours>80</hours><hours>80</hours>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicates-29'(_Config) ->
   Qry = "let $foo := <element1><element2>some content</element2></element1> return $foo[(2 to 5)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'predicates-30'(_Config) ->
   Qry = "for $x in /works/employee[fn:position() lt 5][fn:position() mod 2 eq 1] return (fn:data($x/empnum), fn:data($x/pnum))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         E1 P1 E1 P3
      ",
   case xqerl_types:string_value(Res) of
             "E1 P1 E1 P3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'predicates-31'(_Config) ->
   Qry = "for $x in /works/employee[fn:position() mod 2 eq 1][fn:position() lt 5] return (fn:data($x/empnum), fn:data($x/pnum))",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         E1 P1 E1 P3 E1 P5 E2 P1
      ",
   case xqerl_types:string_value(Res) of
             "E1 P1 E1 P3 E1 P5 E2 P1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'predicatesns-1'(_Config) ->
   Qry = "fn:count((//integer[fn:true()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'predicatesns-2'(_Config) ->
   Qry = "fn:count((//integer[fn:false()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'predicatesns-3'(_Config) ->
   Qry = "(//integer[fn:not(fn:false())])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-4'(_Config) ->
   Qry = "(//integer[fn:true() and fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-5'(_Config) ->
   Qry = "(//integer[fn:true() or fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-6'(_Config) ->
   Qry = "fn:count((//integer[fn:false() and fn:false()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'predicatesns-7'(_Config) ->
   Qry = "fn:count((//integer[fn:false() or fn:false()]))",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0
            
         
      ",
 case ( begin Tst1 = xqerl:run("0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'predicatesns-8'(_Config) ->
   Qry = "(/root/string[xs:string(.) = \"A String Function\"])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <string>A String Function</string>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<string>A String Function</string>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<string>A String Function</string>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-9'(_Config) ->
   Qry = "(/root/integer[xs:integer(.) = 12678967543233])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <integer>12678967543233</integer>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<integer>12678967543233</integer>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<integer>12678967543233</integer>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-10'(_Config) ->
   Qry = "(/root/decimal[(xs:decimal(.) = 12678967.543233)])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <decimal attr=\"12678967.543233\">12678967.543233</decimal>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<decimal attr=\"12678967.543233\">12678967.543233</decimal>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<decimal attr=\"12678967.543233\">12678967.543233</decimal>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-11'(_Config) ->
   Qry = "(/root/float[xs:float(.) = xs:float(1267.43233E12)])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <float>1267.43233E12</float>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<float>1267.43233E12</float>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<float>1267.43233E12</float>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-12'(_Config) ->
   Qry = "(/root/double[xs:double(.) = 1267.43233E12])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <double>1267.43233E12</double>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<double>1267.43233E12</double>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<double>1267.43233E12</double>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-13'(_Config) ->
   Qry = "(/root/boolean[xs:boolean(.) = fn:true()])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <boolean>true</boolean>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<boolean>true</boolean>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<boolean>true</boolean>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'predicatesns-14'(_Config) ->
   Qry = "(/root/date[xs:date(.) = xs:date(\"2000-01-01+05:00\")])",
   Env = xqerl_test:handle_environment(environment('atomicns')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <date>2000-01-01+05:00</date>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<date>2000-01-01+05:00</date>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<date>2000-01-01+05:00</date>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-1'(_Config) ->
   Qry = "\"c\"[. treat as xs:string]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         c
      ",
   case xqerl_types:string_value(Res) of
             "c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-Predicates-2'(_Config) ->
   Qry = "declare variable $myvar := <elem> <a/> <b/> <c/></elem>; $myvar/*[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <c/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<c/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<c/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-3'(_Config) ->
   Qry = "declare variable $myvar := <elem> <a/> <b/> <c/></elem>; $myvar/*[last() - 1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-4'(_Config) ->
   Qry = "declare variable $myvar := <elem> <a/> <b/> <c/></elem>; $myvar/*[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-5'(_Config) ->
   Qry = "(<a/>, <b/>, <c/>)[1][1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-6'(_Config) ->
   Qry = "<b attr=\"f\"/>[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b attr=\"f\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b attr=\"f\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b attr=\"f\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-7'(_Config) ->
   Qry = "<r>{<e xml:lang=\"ene\"/>/(ancestor-or-self::*/@xml:lang)[last()]}</r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <r xml:lang=\"ene\"/>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r xml:lang=\"ene\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r xml:lang=\"ene\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-8'(_Config) ->
   Qry = "declare function local:foo($arg as item()) { $arg[@arg] }; local:foo(<e arg=\"\">result</e>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e arg=\"\">result</e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e arg=\"\">result</e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e arg=\"\">result</e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-Predicates-9'(_Config) ->
   Qry = "declare function local:foo($arg as item()) { string($arg/@arg) }; local:foo(<e arg=\"result\"/>)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         result
      ",
   case xqerl_types:string_value(Res) of
             "result" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-filterexpr-001'(_Config) ->
   Qry = "
      	declare function local:nan() { xs:float(\"NaN\") }; 
      	(1 to 10)[not(position() < xs:float(\"NaN\"))]
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3 4 5 6 7 8 9 10
      ",
   case xqerl_types:string_value(Res) of
             "1 2 3 4 5 6 7 8 9 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-001'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else () }; ( local:generate(0), 1, local:generate(0) )[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-002'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then (1, 2, 3) else $arg }; ( local:generate(()), for $x in local:generate(0) return $x + 2 )[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-003'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 0 else () }; ( local:generate(()), for $x in local:generate(0) return $x + 2 )[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-004'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then ( 1, 2, 3 ) else ( $arg ) }; ( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-005'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 1 else $arg }; ( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_types:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-006'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else ('d' ) }; ( if (local:generate(1) = 'd') then () else 1, for $x in local:generate(0) return fn:lower-case($x))[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a
      ",
   case xqerl_types:string_value(Res) of
             "a" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-007'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:integer? { $arg }; ( if (local:generate(0) = 0) then () else 1, for $x in local:generate(0) return -$x)[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-008'(_Config) ->
   Qry = "( (<a><b>cheese</b></a>)/b )[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <b>cheese</b>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<b>cheese</b>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<b>cheese</b>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'cbcl-first-in-sequence-009'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; ( local:generate(()), for $x in local:generate(0) return 3)[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-first-in-sequence-010'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; boolean(local:generate(0)[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-first-in-sequence-011'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; boolean(local:generate(1)[1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-first-in-sequence-012'(_Config) ->
   Qry = "declare function local:generate($arg as xs:boolean) as xs:string+ { if ($arg) then ('a', 'b', 'c') else ('A', 'B', 'C') }; ( for $x in local:generate(true()) return 3)[1]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3
      ",
   case xqerl_types:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-filter-001'(_Config) ->
   Qry = "let $x := exists((1 to 10)[. mod 2 = 0]) return (1 to 100)[position() mod 2 = 0 and position() mod 3 = 0 and $x]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6 12 18 24 30 36 42 48 54 60 66 72 78 84 90 96
      ",
   case xqerl_types:string_value(Res) of
             "6 12 18 24 30 36 42 48 54 60 66 72 78 84 90 96" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
