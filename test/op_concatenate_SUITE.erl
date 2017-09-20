-module('op_concatenate_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['sequenceexpressionhc1'/1]).
-export(['sequenceexpressionhc2'/1]).
-export(['sequenceexpressionhc3'/1]).
-export(['sequenceexpressionhc4'/1]).
-export(['sequenceexpressionhc5'/1]).
-export(['sequenceexpressionhc6'/1]).
-export(['sequenceexpressionhc7'/1]).
-export(['sequenceexpressionhc8'/1]).
-export(['sequenceexpressionhc9'/1]).
-export(['constSeq-1'/1]).
-export(['constSeq-2'/1]).
-export(['constSeq-3'/1]).
-export(['constSeq-4'/1]).
-export(['constSeq-5'/1]).
-export(['constSeq-6'/1]).
-export(['constSeq-7'/1]).
-export(['constSeq-8'/1]).
-export(['constSeq-9'/1]).
-export(['constSeq-10'/1]).
-export(['constSeq-11'/1]).
-export(['constSeq-12'/1]).
-export(['constSeq-13'/1]).
-export(['constSeq-14'/1]).
-export(['constSeq-15'/1]).
-export(['constSeq-16'/1]).
-export(['constSeq-17'/1]).
-export(['constSeq-18'/1]).
-export(['constSeq-19'/1]).
-export(['constSeq-20'/1]).
-export(['constSeq-21'/1]).
-export(['constSeq-22'/1]).
-export(['op-concatenate-mix-args-001'/1]).
-export(['op-concatenate-mix-args-002'/1]).
-export(['op-concatenate-mix-args-003'/1]).
-export(['op-concatenate-mix-args-004'/1]).
-export(['op-concatenate-mix-args-005'/1]).
-export(['op-concatenate-mix-args-006'/1]).
-export(['op-concatenate-mix-args-007'/1]).
-export(['op-concatenate-mix-args-008'/1]).
-export(['op-concatenate-mix-args-009'/1]).
-export(['op-concatenate-mix-args-010'/1]).
-export(['op-concatenate-mix-args-011'/1]).
-export(['op-concatenate-mix-args-012'/1]).
-export(['op-concatenate-mix-args-013'/1]).
-export(['op-concatenate-mix-args-014'/1]).
-export(['op-concatenate-mix-args-015'/1]).
-export(['op-concatenate-mix-args-016'/1]).
-export(['op-concatenate-mix-args-017'/1]).
-export(['op-concatenate-mix-args-018'/1]).
-export(['op-concatenate-mix-args-019'/1]).
-export(['op-concatenate-mix-args-020'/1]).
-export(['K-commaOp-1'/1]).
-export(['K-commaOp-2'/1]).
-export(['K-commaOp-3'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'sequenceexpressionhc1',
   'sequenceexpressionhc2',
   'sequenceexpressionhc3',
   'sequenceexpressionhc4',
   'sequenceexpressionhc5',
   'sequenceexpressionhc6',
   'sequenceexpressionhc7',
   'sequenceexpressionhc8',
   'sequenceexpressionhc9',
   'constSeq-1',
   'constSeq-2',
   'constSeq-3',
   'constSeq-4',
   'constSeq-5',
   'constSeq-6',
   'constSeq-7',
   'constSeq-8',
   'constSeq-9',
   'constSeq-10',
   'constSeq-11',
   'constSeq-12',
   'constSeq-13',
   'constSeq-14',
   'constSeq-15',
   'constSeq-16',
   'constSeq-17',
   'constSeq-18',
   'constSeq-19',
   'constSeq-20',
   'constSeq-21',
   'constSeq-22',
   'op-concatenate-mix-args-001',
   'op-concatenate-mix-args-002',
   'op-concatenate-mix-args-003',
   'op-concatenate-mix-args-004',
   'op-concatenate-mix-args-005',
   'op-concatenate-mix-args-006',
   'op-concatenate-mix-args-007',
   'op-concatenate-mix-args-008',
   'op-concatenate-mix-args-009',
   'op-concatenate-mix-args-010',
   'op-concatenate-mix-args-011',
   'op-concatenate-mix-args-012',
   'op-concatenate-mix-args-013',
   'op-concatenate-mix-args-014',
   'op-concatenate-mix-args-015',
   'op-concatenate-mix-args-016',
   'op-concatenate-mix-args-017',
   'op-concatenate-mix-args-018',
   'op-concatenate-mix-args-019',
   'op-concatenate-mix-args-020',
   'K-commaOp-1',
   'K-commaOp-2',
   'K-commaOp-3'].
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
].
'sequenceexpressionhc1'(_Config) ->
   Qry = "(1,2,3,4,5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'sequenceexpressionhc2'(_Config) ->
   Qry = "(1,(2,3),4,5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'sequenceexpressionhc3'(_Config) ->
   Qry = "(1, 2, (), 3, 4)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4
      ",
 Tst = xqerl:run("1, 2, 3, 4"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'sequenceexpressionhc4'(_Config) ->
   Qry = "(1, 2 to 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'sequenceexpressionhc5'(_Config) ->
   Qry = "(1, 2, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 2
      ",
 Tst = xqerl:run("1, 2, 2"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'sequenceexpressionhc6'(_Config) ->
   Qry = "count((15 to 10))",
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
'sequenceexpressionhc7'(_Config) ->
   Qry = "fn:reverse(10 to 15)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         15, 14, 13, 12, 11, 10
      ",
 Tst = xqerl:run("15, 14, 13, 12, 11, 10"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'sequenceexpressionhc8'(_Config) ->
   Qry = "//empnum",
   Env = xqerl_test:handle_environment(environment('works')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'sequenceexpressionhc9'(_Config) ->
   Qry = " ($works//empnum,$staff//empname)",
   Env = xqerl_test:handle_environment(environment('works-and-staff')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum><empname>Alice</empname><empname>Betty</empname><empname>Carmen</empname><empname>Don</empname><empname>Ed</empname>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum><empname>Alice</empname><empname>Betty</empname><empname>Carmen</empname><empname>Don</empname><empname>Ed</empname>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E1</empnum><empnum>E2</empnum><empnum>E2</empnum><empnum>E3</empnum><empnum>E3</empnum><empnum>E4</empnum><empnum>E4</empnum><empnum>E4</empnum><empname>Alice</empname><empname>Betty</empname><empname>Carmen</empname><empname>Don</empname><empname>Ed</empname>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'constSeq-1'(_Config) ->
   Qry = "(1, 1 + 1, 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-2'(_Config) ->
   Qry = "(1, 3 - 1, 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2 ,3, 4, 5
      ",
 Tst = xqerl:run("1, 2 ,3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-3'(_Config) ->
   Qry = " (1, 2 * 1, 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-4'(_Config) ->
   Qry = " (1, 4 div 2, 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-5'(_Config) ->
   Qry = " (1, 4 idiv 2, 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-6'(_Config) ->
   Qry = " (1, fn:count((1, 2)), 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-7'(_Config) ->
   Qry = " (1, fn:string-length(\"AB\"), 3, 4, 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3, 4, 5
      ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-8'(_Config) ->
   Qry = " (fn:true(),fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), true()
      ",
 Tst = xqerl:run("true(), true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-9'(_Config) ->
   Qry = " (fn:false(),fn:false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false(), false()
      ",
 Tst = xqerl:run("false(), false()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-10'(_Config) ->
   Qry = " (fn:not(\"true\"),fn:not(\"false\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false(), false()
      ",
 Tst = xqerl:run("false(), false()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-11'(_Config) ->
   Qry = " (fn:true() and fn:true(), fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), true()
      ",
 Tst = xqerl:run("true(), true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-12'(_Config) ->
   Qry = " (fn:true() or fn:true(), fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), true()
      ",
 Tst = xqerl:run("true(), true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-13'(_Config) ->
   Qry = " (xs:string(\"ABC\"), \"D\", \"E\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"ABC\", \"D\", \"E\"
      ",
 Tst = xqerl:run("\"ABC\", \"D\", \"E\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-14'(_Config) ->
   Qry = " (xs:integer(1), 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3
      ",
 Tst = xqerl:run("1, 2, 3"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-15'(_Config) ->
   Qry = " (xs:decimal(1), 2, 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 3
      ",
 Tst = xqerl:run("1, 2, 3"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-16'(_Config) ->
   Qry = " (xs:anyURI(\"http://www.example.com\"),xs:anyURI(\"http://www.example1.com\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"http://www.example.com\", \"http://www.example1.com\"
      ",
 Tst = xqerl:run("\"http://www.example.com\", \"http://www.example1.com\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-17'(_Config) ->
   Qry = " (xs:float(1.1), 2.2, 3.3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:float('1.1e0'), 2.2, 3.3
      ",
 Tst = xqerl:run("xs:float('1.1e0'), 2.2, 3.3"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-18'(_Config) ->
   Qry = " (xs:double(1.2E2), 2.2E2, 3.3E2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         120, 220, 330
      ",
 Tst = xqerl:run("120, 220, 330"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-19'(_Config) ->
   Qry = " (xs:boolean(fn:true()), fn:false(), fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), false(), true()
      ",
 Tst = xqerl:run("true(), false(), true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'constSeq-20'(_Config) ->
   Qry = " (xs:date(\"2004-12-25Z\"),xs:date(\"2004-12-26Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2004-12-25Z 2004-12-26Z
      ",
   case xqerl_test:string_value(Res) of
             "2004-12-25Z 2004-12-26Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'constSeq-21'(_Config) ->
   Qry = " (xs:dateTime(\"1999-11-28T09:00:00Z\"),xs:dateTime(\"1998-11-28T09:00:00Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1999-11-28T09:00:00Z 1998-11-28T09:00:00Z
      ",
   case xqerl_test:string_value(Res) of
             "1999-11-28T09:00:00Z 1998-11-28T09:00:00Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'constSeq-22'(_Config) ->
   Qry = " (xs:time(\"08:00:00+09:00\"),xs:time(\"08:00:00+10:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         08:00:00+09:00 08:00:00+10:00
      ",
   case xqerl_test:string_value(Res) of
             "08:00:00+09:00 08:00:00+10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-001'(_Config) ->
   Qry = "(1) , (2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2
      ",
 Tst = xqerl:run("1, 2"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-002'(_Config) ->
   Qry = "xs:string(\"a\") , xs:string(\"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"b\"
      ",
 Tst = xqerl:run("\"a\", \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-003'(_Config) ->
   Qry = "xs:string(\"a\") , (), \"xyz\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"xyz\"
      ",
 Tst = xqerl:run("\"a\", \"xyz\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-004'(_Config) ->
   Qry = "\"xyz\" , xs:string(\" \"), \"b\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"xyz\", \" \", \"b\"
      ",
 Tst = xqerl:run("\"xyz\", \" \", \"b\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-005'(_Config) ->
   Qry = "xs:string(\"a\") , xs:anyURI(\"www.example.com\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"a\", \"www.example.com\"
      ",
 Tst = xqerl:run("\"a\", \"www.example.com\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-006'(_Config) ->
   Qry = "xs:string(\"hello\") , xs:integer(\"100\"), xs:anyURI(\"www.example.com\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"hello\", 100, \"www.example.com\"
      ",
 Tst = xqerl:run("\"hello\", 100, \"www.example.com\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-007'(_Config) ->
   Qry = "xs:anyURI(\"www.example.com\") , xs:decimal(\"1.01\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"www.example.com\", 1.01
      ",
 Tst = xqerl:run("\"www.example.com\", 1.01"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-008'(_Config) ->
   Qry = "xs:float(\"1.01\"), xs:float(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.01 NaN
      ",
   case xqerl_test:string_value(Res) of
             "1.01 NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-009'(_Config) ->
   Qry = "xs:float(\"INF\") , xs:double(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF NaN
      ",
   case xqerl_test:string_value(Res) of
             "INF NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-010'(_Config) ->
   Qry = "xs:double(\"INF\"), xs:double(\"-INF\"), xs:float(\"-INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         INF -INF -INF
      ",
   case xqerl_test:string_value(Res) of
             "INF -INF -INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-011'(_Config) ->
   Qry = "xs:boolean(\"true\") , xs:boolean(\"0\"), xs:integer(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true(), false(), 0
      ",
 Tst = xqerl:run("true(), false(), 0"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-012'(_Config) ->
   Qry = "xs:boolean(\"false\"), xs:boolean(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         false(), true()
      ",
 Tst = xqerl:run("false(), true()"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-013'(_Config) ->
   Qry = "xs:date(\"1993-03-31\") , xs:boolean(\"true\"), xs:string(\"abc\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1993-03-31 true abc
      ",
   case xqerl_test:string_value(Res) of
             "1993-03-31 true abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-014'(_Config) ->
   Qry = "xs:dateTime(\"1972-12-31T00:00:00Z\") , (())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1972-12-31T00:00:00Z
      ",
   case xqerl_test:string_value(Res) of
             "1972-12-31T00:00:00Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-015'(_Config) ->
   Qry = "xs:time(\"12:30:00Z\") , xs:string(\" \") , xs:decimal(\"2.000000000000002\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12:30:00Z   2.000000000000002
      ",
   case xqerl_test:string_value(Res) of
             "12:30:00Z   2.000000000000002" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-016'(_Config) ->
   Qry = "() , xs:string(\" \") , xs:decimal(\"2.000000000000002\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
           2.000000000000002
      ",
   case xqerl_test:string_value(Res) of
             "  2.000000000000002" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-concatenate-mix-args-017'(_Config) ->
   Qry = "(1+1), (2-2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2, 0
      ",
 Tst = xqerl:run("2, 0"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-018'(_Config) ->
   Qry = "(1,2,2),(1,2,3),(123,\"\"),(),(\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1, 2, 2, 1, 2, 3, 123, \"\", \"\"
      ",
 Tst = xqerl:run("1, 2, 2, 1, 2, 3, 123, \"\", \"\""),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-concatenate-mix-args-019'(_Config) ->
   Qry = "//book/price, (), (1)",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>1
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>1"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>1" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'op-concatenate-mix-args-020'(_Config) ->
   Qry = "//book/price, //book/title",
   Env = xqerl_test:handle_environment(environment('bib')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K-commaOp-1'(_Config) ->
   Qry = "deep-equal(((1, (2, (3, 4, (5, 6)), 7), 8, (9, 10), 11)), (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-commaOp-2'(_Config) ->
   Qry = "empty(((), (), ((), (), ((), (), (())), ()), (), (())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-commaOp-3'(_Config) ->
   Qry = "((), (), ((), (), ((), (), (\"str\")), ()), (), (())) eq \"str\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
