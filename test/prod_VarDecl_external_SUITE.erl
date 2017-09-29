-module('prod_VarDecl_external_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['extvardeclwithouttype-1'/1]).
-export(['extvardeclwithouttype-2'/1]).
-export(['extvardeclwithouttype-3'/1]).
-export(['extvardeclwithouttype-4'/1]).
-export(['extvardeclwithouttype-5'/1]).
-export(['extvardeclwithouttype-6'/1]).
-export(['extvardeclwithouttype-7'/1]).
-export(['extvardeclwithouttype-8'/1]).
-export(['extvardeclwithouttype-9'/1]).
-export(['extvardeclwithouttype-10'/1]).
-export(['extvardeclwithouttype-11'/1]).
-export(['extvardeclwithouttype-12'/1]).
-export(['extvardeclwithouttype-13'/1]).
-export(['extvardeclwithouttype-14'/1]).
-export(['extvardeclwithouttype-15'/1]).
-export(['extvardeclwithouttype-16'/1]).
-export(['extvardeclwithouttype-17'/1]).
-export(['extvardeclwithouttype-18'/1]).
-export(['extvardeclwithouttype-19'/1]).
-export(['extvardeclwithouttype-20'/1]).
-export(['extvardeclwithouttype-21'/1]).
-export(['extvardeclwithouttype-22'/1]).
-export(['extvardeclwithouttype-23'/1]).
-export(['K2-ExternalVariablesWithout-1'/1]).
-export(['K2-ExternalVariablesWithout-2'/1]).
-export(['K2-ExternalVariablesWithout-3'/1]).
-export(['K2-ExternalVariablesWithout-4'/1]).
-export(['K2-ExternalVariablesWithout-5'/1]).
-export(['K2-ExternalVariablesWithout-6'/1]).
-export(['K2-ExternalVariablesWithout-7'/1]).
-export(['K2-ExternalVariablesWithout-8'/1]).
-export(['K2-ExternalVariablesWithout-9'/1]).
-export(['K2-ExternalVariablesWithout-10'/1]).
-export(['K2-ExternalVariablesWithout-11'/1]).
-export(['K2-ExternalVariablesWithout-12'/1]).
-export(['K2-ExternalVariablesWithout-13'/1]).
-export(['K2-ExternalVariablesWithout-14'/1]).
-export(['K2-ExternalVariablesWithout-15'/1]).
-export(['K2-ExternalVariablesWithout-16'/1]).
-export(['K2-ExternalVariablesWithout-17'/1]).
-export(['K2-ExternalVariablesWithout-18'/1]).
-export(['K2-ExternalVariablesWithout-18b'/1]).
-export(['K2-ExternalVariablesWithout-19'/1]).
-export(['K2-ExternalVariablesWithout-20'/1]).
-export(['K2-ExternalVariablesWithout-21'/1]).
-export(['K2-ExternalVariablesWithout-22'/1]).
-export(['extvardeclwithtype-1'/1]).
-export(['extvardeclwithtype-2'/1]).
-export(['extvardeclwithtype-3'/1]).
-export(['extvardeclwithtype-4'/1]).
-export(['extvardeclwithtype-5'/1]).
-export(['extvardeclwithtype-6'/1]).
-export(['extvardeclwithtype-7'/1]).
-export(['extvardeclwithtype-8'/1]).
-export(['extvardeclwithtype-9'/1]).
-export(['extvardeclwithtype-10'/1]).
-export(['extvardeclwithtype-11'/1]).
-export(['extvardeclwithtype-12'/1]).
-export(['extvardeclwithtype-13'/1]).
-export(['extvardeclwithtype-14'/1]).
-export(['extvardeclwithtype-15'/1]).
-export(['extvardeclwithtype-16'/1]).
-export(['extvardeclwithtype-17'/1]).
-export(['extvardeclwithtype-18'/1]).
-export(['extvardeclwithtype-19'/1]).
-export(['extvardeclwithtype-20'/1]).
-export(['extvardeclwithtype-21'/1]).
-export(['extvardeclwithtype-22'/1]).
-export(['extvardeclwithtype-23'/1]).
-export(['K2-ExternalVariablesWith-1'/1]).
-export(['K2-ExternalVariablesWith-2'/1]).
-export(['K2-ExternalVariablesWith-3'/1]).
-export(['K2-ExternalVariablesWith-4'/1]).
-export(['K2-ExternalVariablesWith-5'/1]).
-export(['K2-ExternalVariablesWith-6'/1]).
-export(['K2-ExternalVariablesWith-7'/1]).
-export(['K2-ExternalVariablesWith-8'/1]).
-export(['K2-ExternalVariablesWith-9'/1]).
-export(['K2-ExternalVariablesWith-10'/1]).
-export(['K2-ExternalVariablesWith-11'/1]).
-export(['K2-ExternalVariablesWith-12'/1]).
-export(['K2-ExternalVariablesWith-13'/1]).
-export(['K2-ExternalVariablesWith-14'/1]).
-export(['K2-ExternalVariablesWith-15'/1]).
-export(['K2-ExternalVariablesWith-16'/1]).
-export(['K2-ExternalVariablesWith-17'/1]).
-export(['K2-ExternalVariablesWith-18'/1]).
-export(['K2-ExternalVariablesWith-19'/1]).
-export(['K2-ExternalVariablesWith-20'/1]).
-export(['K2-ExternalVariablesWith-21'/1]).
-export(['K2-ExternalVariablesWith-22'/1]).
-export(['K2-ExternalVariablesWith-22a'/1]).
-export(['K2-ExternalVariablesWith-23'/1]).
-export(['K2-ExternalVariablesWith-24'/1]).
-export(['K2-ExternalVariablesWith-25'/1]).
-export(['K2-ExternalVariablesWith-26'/1]).
-export(['K2-ExternalVariablesWith-27'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'extvardeclwithouttype-1',
   'extvardeclwithouttype-2',
   'extvardeclwithouttype-3',
   'extvardeclwithouttype-4',
   'extvardeclwithouttype-5',
   'extvardeclwithouttype-6',
   'extvardeclwithouttype-7',
   'extvardeclwithouttype-8',
   'extvardeclwithouttype-9',
   'extvardeclwithouttype-10',
   'extvardeclwithouttype-11',
   'extvardeclwithouttype-12',
   'extvardeclwithouttype-13',
   'extvardeclwithouttype-14',
   'extvardeclwithouttype-15',
   'extvardeclwithouttype-16',
   'extvardeclwithouttype-17',
   'extvardeclwithouttype-18',
   'extvardeclwithouttype-19',
   'extvardeclwithouttype-20',
   'extvardeclwithouttype-21',
   'extvardeclwithouttype-22',
   'extvardeclwithouttype-23',
   'K2-ExternalVariablesWithout-1',
   'K2-ExternalVariablesWithout-2',
   'K2-ExternalVariablesWithout-3',
   'K2-ExternalVariablesWithout-4',
   'K2-ExternalVariablesWithout-5',
   'K2-ExternalVariablesWithout-6',
   'K2-ExternalVariablesWithout-7',
   'K2-ExternalVariablesWithout-8',
   'K2-ExternalVariablesWithout-9',
   'K2-ExternalVariablesWithout-10',
   'K2-ExternalVariablesWithout-11',
   'K2-ExternalVariablesWithout-12',
   'K2-ExternalVariablesWithout-13',
   'K2-ExternalVariablesWithout-14',
   'K2-ExternalVariablesWithout-15',
   'K2-ExternalVariablesWithout-16',
   'K2-ExternalVariablesWithout-17',
   'K2-ExternalVariablesWithout-18',
   'K2-ExternalVariablesWithout-18b',
   'K2-ExternalVariablesWithout-19',
   'K2-ExternalVariablesWithout-20',
   'K2-ExternalVariablesWithout-21',
   'K2-ExternalVariablesWithout-22',
   'extvardeclwithtype-1',
   'extvardeclwithtype-2',
   'extvardeclwithtype-3',
   'extvardeclwithtype-4',
   'extvardeclwithtype-5',
   'extvardeclwithtype-6',
   'extvardeclwithtype-7',
   'extvardeclwithtype-8',
   'extvardeclwithtype-9',
   'extvardeclwithtype-10',
   'extvardeclwithtype-11',
   'extvardeclwithtype-12',
   'extvardeclwithtype-13',
   'extvardeclwithtype-14',
   'extvardeclwithtype-15',
   'extvardeclwithtype-16',
   'extvardeclwithtype-17',
   'extvardeclwithtype-18',
   'extvardeclwithtype-19',
   'extvardeclwithtype-20',
   'extvardeclwithtype-21',
   'extvardeclwithtype-22',
   'extvardeclwithtype-23',
   'K2-ExternalVariablesWith-1',
   'K2-ExternalVariablesWith-2',
   'K2-ExternalVariablesWith-3',
   'K2-ExternalVariablesWith-4',
   'K2-ExternalVariablesWith-5',
   'K2-ExternalVariablesWith-6',
   'K2-ExternalVariablesWith-7',
   'K2-ExternalVariablesWith-8',
   'K2-ExternalVariablesWith-9',
   'K2-ExternalVariablesWith-10',
   'K2-ExternalVariablesWith-11',
   'K2-ExternalVariablesWith-12',
   'K2-ExternalVariablesWith-13',
   'K2-ExternalVariablesWith-14',
   'K2-ExternalVariablesWith-15',
   'K2-ExternalVariablesWith-16',
   'K2-ExternalVariablesWith-17',
   'K2-ExternalVariablesWith-18',
   'K2-ExternalVariablesWith-19',
   'K2-ExternalVariablesWith-20',
   'K2-ExternalVariablesWith-21',
   'K2-ExternalVariablesWith-22',
   'K2-ExternalVariablesWith-22a',
   'K2-ExternalVariablesWith-23',
   'K2-ExternalVariablesWith-24',
   'K2-ExternalVariablesWith-25',
   'K2-ExternalVariablesWith-26',
   'K2-ExternalVariablesWith-27'].
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
environment('TopMany') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/AxisStep/TopMany.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('CPPGlobals') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/AxisStep/CPPGlobals.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'extvardeclwithouttype-1'(_Config) ->
   Qry = "declare variable $x external; fn:string($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","'abc'"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            abc
            
         
      ",
 case (xqerl_test:string_value(Res) == "abc") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-2'(_Config) ->
   Qry = "declare variable $x external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","'2006-02-07+05:00'"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2006-02-07+05:00
            
         
      ",
 case (xqerl_test:string_value(Res) == "2006-02-07+05:00") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-3'(_Config) ->
   Qry = "declare variable $x external; xs:integer($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","2"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2
            
         
      ",
 case ( begin Tst1 = xqerl:run("2"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-4'(_Config) ->
   Qry = "declare variable $x external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","1.2E2"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            120
            
         
      ",
 case ( begin Tst1 = xqerl:run("120"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-5'(_Config) ->
   Qry = "declare variable $x external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 1 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-6'(_Config) ->
   Qry = "declare variable $x external; xs:float($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","12.5E10"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1.25E11
            
         
      ",
 case (xqerl_test:string_value(Res) == "1.25E11") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-7'(_Config) ->
   Qry = "declare variable $x external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","12678967.543233"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            12678967.543233
            
         
      ",
 case (xqerl_test:string_value(Res) == "12678967.543233") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-8'(_Config) ->
   Qry = "declare variable $x external; $x + $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","1 + 1"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            4
            
         
      ",
 case ( begin Tst1 = xqerl:run("4"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-9'(_Config) ->
   Qry = "declare variable $x external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","1 + 1"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2
            
         
      ",
 case ( begin Tst1 = xqerl:run("2"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-10'(_Config) ->
   Qry = "declare variable $x external; $x + $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","1"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2
            
         
      ",
 case ( begin Tst1 = xqerl:run("2"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-11'(_Config) ->
   Qry = "declare variable $x external; $x * $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","2 * 2"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            16
            
         
      ",
 case ( begin Tst1 = xqerl:run("16"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-12'(_Config) ->
   Qry = "declare variable $x external; $x - 1",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","4 - 1"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2
            
         
      ",
 case ( begin Tst1 = xqerl:run("2"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-13'(_Config) ->
   Qry = "declare variable $x external; $x idiv 2",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","20 idiv 2"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            5
            
         
      ",
 case ( begin Tst1 = xqerl:run("5"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-14'(_Config) ->
   Qry = "declare variable $x external; $x div 10",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","40 div 2"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2
            
         
      ",
 case ( begin Tst1 = xqerl:run("2"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-15'(_Config) ->
   Qry = "declare variable $x external; $x mod 2",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","55 mod 3"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-16'(_Config) ->
   Qry = "declare variable $x external; $x and fn:false()",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","true() and true()"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-17'(_Config) ->
   Qry = "declare variable $x external; $x or fn:false()",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","true() or true()"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-18'(_Config) ->
   Qry = "declare variable $x external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","avg((1,2,4))"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2.333333333333333333
            2.333333333333
            
         
      ",
 case (xqerl_test:string_value(Res) == "2.333333333333333333") orelse (xqerl_test:string_value(Res) == "2.333333333333") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-19'(_Config) ->
   Qry = "declare variable $x external; xs:dateTime($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","avg((1,2,4))"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'extvardeclwithouttype-20'(_Config) ->
   Qry = "declare variable $x external; fn:upper-case($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","lower-case('This String should be all in upper case')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            THIS STRING SHOULD BE ALL IN UPPER CASE
            
         
      ",
 case (xqerl_test:string_value(Res) == "THIS STRING SHOULD BE ALL IN UPPER CASE") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-21'(_Config) ->
   Qry = "declare variable $x external; fn:lower-case($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","upper-case('THIS STRING SHOULD ALL BE IN LOWER CASE')"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            this string should all be in lower case
            
         
      ",
 case (xqerl_test:string_value(Res) == "this string should all be in lower case") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-22'(_Config) ->
   Qry = "declare variable $x external; fn:not($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","0 + 1"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithouttype-23'(_Config) ->
   Qry = "declare variable $x external; $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-1'(_Config) ->
   Qry = "declare variable $input-context external; declare variable $input-context external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWithout-2'(_Config) ->
   Qry = "declare variable $input-context external; declare variable $input-context external; $input-context",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWithout-3'(_Config) ->
   Qry = "
        declare default element namespace \"\"; 
        declare namespace prefix = \"\"; 
        declare variable $prefix:input-context external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K2-ExternalVariablesWithout-4'(_Config) ->
   Qry = "
        
        declare variable $exampleComThisVarIsNotRecognized external; $exampleComThisVarIsNotRecognized",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-5'(_Config) ->
   Qry = "
        declare namespace e = \"http://example.com/ANamespace\"; 
        declare variable $e:exampleComThisVarIsNotRecognized external; 
        $e:exampleComThisVarIsNotRecognized",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-6'(_Config) ->
   Qry = "declare variable $exampleComThisVarIsNotRecognized external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ExternalVariablesWithout-7'(_Config) ->
   Qry = "declare namespace e = \"http://example.com/ANamespace\"; declare variable $e:exampleComThisVarIsNotRecognized external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ExternalVariablesWithout-8'(_Config) ->
   Qry = "declare variable $ name := 3; $ name",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-ExternalVariablesWithout-9'(_Config) ->
   Qry = "declare variable $e := current-time(); let $i := ($e, 1 to 50000, $e) return $i[1] = $i[last()]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ExternalVariablesWithout-10'(_Config) ->
   Qry = "declare variable $e := <e> <a/> </e>; declare variable $f := $e; <r> { $e is $e, $f is $e, $e, $f } </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <r>true true<e><a/></e><e><a/></e></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r>true true<e><a/></e><e><a/></e></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r>true true<e><a/></e><e><a/></e></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ExternalVariablesWithout-11'(_Config) ->
   Qry = "declare variable $a as attribute()* := (attribute name1 {()}, attribute name2 {()}, attribute name3 {()}); declare variable $b as attribute()* := (attribute name1 {()}, attribute name2 {()}, attribute name3 {()}); $a/(let $p := position() return . is $b[$p])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         false false false
      ",
   case xqerl_test:string_value(Res) of
             "false false false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ExternalVariablesWithout-12'(_Config) ->
   Qry = "declare variable $a as attribute()* := (attribute name1 {()}, attribute name2 {()}, attribute name3 {()}); <r> <e> { $a } </e> <e> { $a } </e> </r>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         <r><e name1=\"\" name2=\"\" name3=\"\"/><e name1=\"\" name2=\"\" name3=\"\"/></r>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<r><e name1=\"\" name2=\"\" name3=\"\"/><e name1=\"\" name2=\"\" name3=\"\"/></r>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<r><e name1=\"\" name2=\"\" name3=\"\"/><e name1=\"\" name2=\"\" name3=\"\"/></r>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ExternalVariablesWithout-13'(_Config) ->
   Qry = "declare variable $e := <e>{current-time()}</e>/(string-length(.) > 0); $e, if($e) then \"SUCCESS\" else \"FAILURE\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         true SUCCESS
      ",
   case xqerl_test:string_value(Res) of
             "true SUCCESS" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ExternalVariablesWithout-14'(_Config) ->
   Qry = "declare variable $v ::= 1; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ExternalVariablesWithout-15'(_Config) ->
   Qry = "declare variable $v : = 1; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ExternalVariablesWithout-16'(_Config) ->
   Qry = "declare ne gt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-17'(_Config) ->
   Qry = "variable lt variable",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-18'(_Config) ->
   {skip,"XQ10"}.
'K2-ExternalVariablesWithout-18b'(_Config) ->
   Qry = "declare variable $var external := 1; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-ExternalVariablesWithout-19'(_Config) ->
   Qry = "declare variable $global := count(*); <e/>/$global",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-20'(_Config) ->
   Qry = "
        declare variable $global := count(*); 
        <e/>/($global, $global)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWithout-21'(_Config) ->
   Qry = "declare variable $global := count(*); $global, <wrongFocus> <e1/> <e2/> </wrongFocus>/$global, $global",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1 1 1
      ",
   case xqerl_test:string_value(Res) of
             "1 1 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ExternalVariablesWithout-22'(_Config) ->
   Qry = "declare variable $global := count(*); <wrongFocus> <e1/> <e2/> </wrongFocus>/$global",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-1'(_Config) ->
   Qry = "declare variable $x as xs:string external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","(: Name: extvardeclwithtypetobind-1 :) (: Description: Binding a string value for extvardeclwithtype-1.:) "abc""}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'extvardeclwithtype-2'(_Config) ->
   Qry = "declare variable $x as xs:date external; fn:string($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","(: Name: extvardeclwithtypetobind-2 :) (: Description: Binding a date value for extvardeclwithtype-2.:) xs:date("2000-01-01+05:00")"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2000-01-01+05:00
      ",
   case xqerl_test:string_value(Res) of
             "2000-01-01+05:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'extvardeclwithtype-3'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","(: Name: extvardeclwithtypetobind-3 :) (: Description: Binding an integer value for extvardeclwithtype-3.:) xs:integer(2)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-4'(_Config) ->
   Qry = "declare variable $x as xs:double external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","xs:double(1.2E2)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         120
      ",
 Tst = xqerl:run("120"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-5'(_Config) ->
   Qry = "declare variable $x as xs:boolean external; fn:string($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","true()"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         true
      ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'extvardeclwithtype-6'(_Config) ->
   Qry = "declare variable $x as xs:float external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","xs:float(1267.43233E12)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1.2674323E15
            1.2674324E15
         
      ",
 case (xqerl_test:string_value(Res) == "1.2674323E15") orelse (xqerl_test:string_value(Res) == "1.2674324E15") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithtype-7'(_Config) ->
   Qry = "declare variable $x as xs:decimal external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","xs:decimal(12678967.543233)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         12678967.543233
      ",
   case xqerl_test:string_value(Res) of
             "12678967.543233" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'extvardeclwithtype-8'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x + $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 1 + 1 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         4
      ",
 Tst = xqerl:run("4"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-9'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 1 + 1 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-10'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x + $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 1 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-11'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x * $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 2 * 2 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         16
      ",
 Tst = xqerl:run("16"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-12'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x - xs:integer(1)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 5 - 2 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-13'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x idiv xs:integer(2)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 20 idiv 2 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-14'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x div xs:integer(10)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 40 div 2 return xs:integer($var)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-15'(_Config) ->
   Qry = "declare variable $x as xs:integer external; $x mod xs:integer(2)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := 55 mod 3 return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-16'(_Config) ->
   Qry = "declare variable $x as xs:boolean external; $x and fn:false()",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := true() and true() return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-17'(_Config) ->
   Qry = "declare variable $x as xs:boolean external; $x or fn:false()",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := true() or true() return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-18'(_Config) ->
   Qry = "declare variable $x as xs:float external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := avg((1,2,4)) return xs:float($var)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            2.3333333
            2.33333
         
      ",
 case (xqerl_test:string_value(Res) == "2.3333333") orelse (xqerl_test:string_value(Res) == "2.33333") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'extvardeclwithtype-19'(_Config) ->
   Qry = "declare variable $x as xs:dateTime external; $x",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := avg((1,2,4)) return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'extvardeclwithtype-20'(_Config) ->
   Qry = "declare variable $x as xs:string external; fn:upper-case($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := lower-case("This String should be all in upper case") return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         THIS STRING SHOULD BE ALL IN UPPER CASE
      ",
   case xqerl_test:string_value(Res) of
             "THIS STRING SHOULD BE ALL IN UPPER CASE" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'extvardeclwithtype-21'(_Config) ->
   Qry = "declare variable $x as xs:string external; fn:lower-case($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := upper-case("THIS STRING SHOULD ALL BE IN LOWER CASE") return $var"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         this string should all be in lower case
      ",
   case xqerl_test:string_value(Res) of
             "this string should all be in lower case" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'extvardeclwithtype-22'(_Config) ->
   Qry = "declare variable $x as xs:boolean external; fn:not($x)",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, [{"x","","let $var := xs:integer(0) + xs:integer(1) return xs:boolean($var)"}]},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'extvardeclwithtype-23'(_Config) ->
   Qry = "(: 
    This query opens a C++ GCC-XML output file, and outputs a report describing the use
    of globals variables.
:)
declare variable $inputDocument := (/);

(: Determines whether the type by ID @p typeId is a complex type such as QString. :)
declare function local:isComplexType($typeID as xs:string) as xs:boolean
{
    (: We're being a bit crude here and only checks whether it's a class. We
       actually should check whether it has non-synthesized,
        constructors, I believe. :)
    
    exists($inputDocument/xml/Class[@id = $typeID])
    or
    (: We also want const-qualified variables. :)
    exists($inputDocument/xml/Class[@id = $inputDocument/xml/CvQualifiedType[@id = $typeID]/@type])
};

declare function local:isPrimitive($typeId as xs:string) as xs:boolean
{
    exists($inputDocument/xml/FundamentalType[@id = $typeId])
};

(: Returns a string for human consumption that describes
   the location of @p block. :)
declare function local:location($block as element()) as xs:string
{
    concat($inputDocument/xml/File[@id = $block/@file]/@name, \" at line \", $block/@line)
};

declare function local:report() as element()+
{
            let $complexVariables as element(Variable)* := $inputDocument/xml/Variable[local:isComplexType(@type)]
            return if(exists($complexVariables)) (: Is the length larger than zero? :)

                   then (<p xmlns=\"http://www.w3.org/1999/xhtml/\">The following global, complex variables were found:</p>,
                         <ol xmlns=\"http://www.w3.org/1999/xhtml/\">
                            {
                                (: For each Variable in $complexVariables... :)
                                $complexVariables/<li><span class=\"variableName\">{string(@name)}</span> in {local:location(.)}</li>
                            }
                         </ol>)

                   else <p xmlns=\"http://www.w3.org/1999/xhtml/\">No global variables that are of complex types were found.</p>

            ,

            (: List primitive, mutable types. :)
            let $primitiveVariables as element(Variable)+ := $inputDocument/xml/Variable[local:isPrimitive(@type)]
            return if(exists($primitiveVariables))

                   then (<p xmlns=\"http://www.w3.org/1999/xhtml/\">The following mutable primitives were found:</p>,
                         <ol xmlns=\"http://www.w3.org/1999/xhtml/\">
                            {
                                (: For each Variable in $complexVariables... :)
                                $primitiveVariables/<li><span class=\"variableName\">{string(@name)}</span> in {local:location(.)}</li>
                            }
                         </ol>)

                   else <p xmlns=\"http://www.w3.org/1999/xhtml/\">No global variables that are of complex types were found.</p>
};

<html xmlns=\"http://www.w3.org/1999/xhtml/\" xml:lang=\"en\" lang=\"en\">
    <head>
        <title>Global variables report for {\"Globals.cpp\"}</title>
    </head>
    <style type=\"text/css\">
        .details
        {{
            text-align: center;
            font-size: 80%;
            color: gray
        }}
        .variableName
        {{
            font-family: courier
        }}
    </style>

    <body>
        {
            (: We don't want simple types that are const, but all other types.
               One could frown upon const integers and say enums should be used instead, but
               let's be gentle. :)

            local:report()
        }

        <p class=\"details\">This report was generated on</p>
    </body>

</html>
",
   Env = xqerl_test:handle_environment(environment('CPPGlobals')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<html xmlns=\"http://www.w3.org/1999/xhtml/\" xml:lang=\"en\" lang=\"en\"><head><title>Global variables report for Globals.cpp</title></head><style type=\"text/css\">\n        .details\n        {\n            text-align: center;\n            font-size: 80%;\n            color: gray\n        }\n        .variableName\n        {\n            font-family: courier\n        }\n    </style><body><p>The following global, complex variables were found:</p><ol><li><span class=\"variableName\">constComplex2</span> in globals.cpp at line 17</li><li><span class=\"variableName\">constComplex1</span> in globals.cpp at line 16</li><li><span class=\"variableName\">mutableComplex2</span> in globals.cpp at line 15</li><li><span class=\"variableName\">mutableComplex1</span> in globals.cpp at line 14</li></ol><p>The following mutable primitives were found:</p><ol><li><span class=\"variableName\">mutablePrimitive2</span> in globals.cpp at line 2</li><li><span class=\"variableName\">mutablePrimitive1</span> in globals.cpp at line 1</li></ol><p class=\"details\">This report was generated on</p></body></html>"++"</x>)")) of "true" -> {comment, "assert-xml"};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-ExternalVariablesWith-1'(_Config) ->
   Qry = "declare variable $input-context as item()* external; declare variable $input-context external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-2'(_Config) ->
   Qry = "declare variable $input-context external; declare variable $input-context as item()* external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-3'(_Config) ->
   Qry = "declare variable $input-context as item()* external ; declare variable $input-context as item()*external ; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-4'(_Config) ->
   Qry = "declare variable $input-context as item()* external ; declare variable $input-context as item()*external ; $input-context",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-5'(_Config) ->
   Qry = "declare variable $input-context as item()* external; declare variable $input-context as item()*external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-6'(_Config) ->
   Qry = "declare variable $input-context as xs:string* external; declare variable $input-context as item()*external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-7'(_Config) ->
   Qry = "declare variable $exampleComThisVarIsNotRecognized as xs:string *external; $exampleComThisVarIsNotRecognized",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWith-8'(_Config) ->
   Qry = "declare namespace e = \"http://example.com/ANamespace\"; declare variable $e:exampleComThisVarIsNotRecognized as comment() *external; $e:exampleComThisVarIsNotRecognized",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-ExternalVariablesWith-9'(_Config) ->
   Qry = "declare variable $exampleComThisVarIsNotRecognized as processing-instruction()? external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ExternalVariablesWith-10'(_Config) ->
   Qry = "declare namespace e = \"http://example.com/ANamespace\"; declare variable $e:exampleComThisVarIsNotRecognized as element(*) external; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            1
            
         
      ",
 case ( begin Tst1 = xqerl:run("1"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ExternalVariablesWith-11'(_Config) ->
   Qry = "declare variable $i := 1, 1; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ExternalVariablesWith-12'(_Config) ->
   Qry = "declare variable $i as xs:integer := xs:untypedAtomic(\"1\"); $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-13'(_Config) ->
   Qry = "declare variable $i as xs:float := 1.1 ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-14'(_Config) ->
   Qry = "declare variable $i as xs:double := 1.1 ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-15'(_Config) ->
   Qry = "declare variable $i as xs:float := 1 ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-16'(_Config) ->
   Qry = "declare variable $i as xs:double := 1 ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-17'(_Config) ->
   Qry = "declare variable $i as xs:double := xs:float(3) ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-18'(_Config) ->
   Qry = "declare variable $i as xs:string := xs:untypedAtomic(\"a string\") ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-19'(_Config) ->
   Qry = "declare variable $i as xs:string := xs:anyURI(\"http://www.example.com/\") ; $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-ExternalVariablesWith-20'(_Config) ->
   Qry = "declare variable $input-context1 external; declare variable $input-context1 := 1; 1",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-21'(_Config) ->
   Qry = "declare variable $input-context1 external; declare variable $input-context1 := 1; 1",
   Env = xqerl_test:handle_environment(environment('TopMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0049" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0049'}) end.
'K2-ExternalVariablesWith-22'(_Config) ->
   {skip,"typedData"}.
'K2-ExternalVariablesWith-22a'(_Config) ->
   {skip,"typedData"}.
'K2-ExternalVariablesWith-23'(_Config) ->
   Qry = "declare variable $v as element(elementName, xs:anyType?)+ := <elementName/>; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K2-ExternalVariablesWith-24'(_Config) ->
   Qry = "declare variable $v as element(*, xs:untyped+)+ := <e/>; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ExternalVariablesWith-25'(_Config) ->
   Qry = "declare variable $v as element(*, xs:untyped*)+ := <e/>; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ExternalVariablesWith-26'(_Config) ->
   Qry = "declare variable $v as element(notWildcard, xs:untyped+)+ := <e/>; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-ExternalVariablesWith-27'(_Config) ->
   Qry = "declare variable $v as element(notWildcard, xs:untyped*)+ := <e/>; 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
