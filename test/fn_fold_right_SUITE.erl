-module('fn_fold_right_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fold-right-001'/1]).
-export(['fold-right-002'/1]).
-export(['fold-right-003'/1]).
-export(['fold-right-004'/1]).
-export(['fold-right-005'/1]).
-export(['fold-right-006'/1]).
-export(['fold-right-007'/1]).
-export(['fold-right-008'/1]).
-export(['fold-right-009'/1]).
-export(['fold-right-010'/1]).
-export(['fold-right-011'/1]).
-export(['fold-right-012'/1]).
-export(['fold-right-013'/1]).
-export(['fold-right-014'/1]).
-export(['fold-right-015'/1]).
-export(['fold-right-016'/1]).
-export(['fold-right-017'/1]).
-export(['fold-right-018'/1]).
-export(['fold-right-019'/1]).
-export(['fold-right-020'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fold-right-001',
   'fold-right-002',
   'fold-right-003',
   'fold-right-004',
   'fold-right-005',
   'fold-right-006',
   'fold-right-007',
   'fold-right-008',
   'fold-right-009',
   'fold-right-010',
   'fold-right-011',
   'fold-right-012',
   'fold-right-013',
   'fold-right-014',
   'fold-right-015',
   'fold-right-016',
   'fold-right-017',
   'fold-right-018',
   'fold-right-019',
   'fold-right-020'].
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
].
'fold-right-001'(_Config) ->
   Qry = "fold-right(1 to 5, 0,function($a, $b) { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                15
        ",
 Tst = xqerl:run("15"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-002'(_Config) ->
   Qry = "fold-right((2,3,5,7), 1,function($a, $b) { $a * $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                210
        ",
 Tst = xqerl:run("210"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-003'(_Config) ->
   Qry = "fold-right((true(), false(), false()), false(),function($a, $b) { $a or $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fold-right-004'(_Config) ->
   Qry = "fold-right((true(), false(), false()), false(),function($a, $b) { $a and $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                
        ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fold-right-005'(_Config) ->
   Qry = "let $f := function($a, $b){($b, $a)} return fold-right(1 to 5, (), $f)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                5,4,3,2,1
        ",
 Tst = xqerl:run("5,4,3,2,1"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-006'(_Config) ->
   Qry = "fold-right(1 to 5, \"\", fn:concat(?, \".\", ?))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                '1.2.3.4.5.'
        ",
 Tst = xqerl:run("'1.2.3.4.5.'"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-007'(_Config) ->
   Qry = "fold-right(1 to 5, \"$zero\", fn:concat(\"$f(\", ?, \", \", ?, \")\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
                $f(1, $f(2, $f(3, $f(4, $f(5, $zero)))))
        ",
   case xqerl_types:string_value(Res) of
             "$f(1, $f(2, $f(3, $f(4, $f(5, $zero)))))" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fold-right-008'(_Config) ->
   Qry = "fold-right(1 to 5, 0, function($a, $b, $c){ $a + $b + $c })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-right-009'(_Config) ->
   Qry = "fold-right(1 to 5, \"\", function($a, $b){ $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-right-010'(_Config) ->
   Qry = "fold-right(1 to 5, 0, function($a as xs:string, $b){ $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-right-011'(_Config) ->
   Qry = "fold-right(1 to 5, 0, function($a, $b as xs:string){ $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-right-012'(_Config) ->
   Qry = "fold-right(1 to 5, 0, function($a, $b) as xs:string { $a + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
        ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fold-right-013'(_Config) ->
   Qry = "fold-right(1 to 1000000, 0, function($a, $b){ $b + 1 })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1000000
        ",
   case xqerl_types:string_value(Res) of
             "1000000" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fold-right-014'(_Config) ->
   Qry = "fold-right((1 to 5), (), function($a , $b){ ($b, $a) })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            5, 4, 3, 2, 1
        ",
 Tst = xqerl:run("5, 4, 3, 2, 1"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-015'(_Config) ->
   Qry = "fold-right((1, 2, 2, 3, 3, 3, 4, 5, 5), (), function($a, $b){ if(exists($b[. eq $a])) then $b else ($a, $b) })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1, 2, 3, 4, 5
        ",
 Tst = xqerl:run("1, 2, 3, 4, 5"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-016'(_Config) ->
   Qry = "fold-right((1 to 5), (), function($a, $b){ ($a, $a, $b) })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1, 1, 2, 2, 3, 3, 4, 4, 5, 5
        ",
 Tst = xqerl:run("1, 1, 2, 2, 3, 3, 4, 4, 5, 5"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fold-right-017'(_Config) ->
   Qry = "fold-right((1 to 13), 0, concat(\"(\", ?, \"+\", ?, \")\"))",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            (1+(2+(3+(4+(5+(6+(7+(8+(9+(10+(11+(12+(13+0)))))))))))))
        ",
   case xqerl_types:string_value(Res) of
             "(1+(2+(3+(4+(5+(6+(7+(8+(9+(10+(11+(12+(13+0)))))))))))))" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fold-right-018'(_Config) ->
   Qry = "fold-right((\"Hello\", \"World\"), 0, function($a, $b){ string-length($a) + $b })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            10
        ",
   case xqerl_types:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fold-right-019'(_Config) ->
   Qry = "fold-right( 1 to 10, (), function($a, $b){ if(empty($b)) then $a else if($a lt $b) then $b else $a })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            10
        ",
   case xqerl_types:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fold-right-020'(_Config) ->
   Qry = "fold-right(1 to 10, (), function($a, $b){ if(empty($b)) then $a else if($a gt $b) then $b else $a })",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            1
        ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
