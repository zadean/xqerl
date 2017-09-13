-module('fn_last_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['last-1'/1]).
-export(['last-2'/1]).
-export(['last-3'/1]).
-export(['last-4'/1]).
-export(['last-5'/1]).
-export(['last-6'/1]).
-export(['last-7'/1]).
-export(['last-8'/1]).
-export(['last-9'/1]).
-export(['last-10'/1]).
-export(['last-11'/1]).
-export(['last-12'/1]).
-export(['last-13'/1]).
-export(['last-14'/1]).
-export(['last-15'/1]).
-export(['last-16'/1]).
-export(['last-17'/1]).
-export(['last-18'/1]).
-export(['last-19'/1]).
-export(['last-20'/1]).
-export(['last-21'/1]).
-export(['last-22'/1]).
-export(['last-23'/1]).
-export(['last-24'/1]).
-export(['K-ContextLastFunc-1'/1]).
-export(['K-ContextLastFunc-2'/1]).
-export(['K-ContextLastFunc-3'/1]).
-export(['K-ContextLastFunc-4'/1]).
-export(['K-ContextLastFunc-5'/1]).
-export(['K-ContextLastFunc-6'/1]).
-export(['K-ContextLastFunc-7'/1]).
-export(['K-ContextLastFunc-8'/1]).
-export(['K-ContextLastFunc-9'/1]).
-export(['K-ContextLastFunc-10'/1]).
-export(['K-ContextLastFunc-11'/1]).
-export(['K-ContextLastFunc-12'/1]).
-export(['K-ContextLastFunc-13'/1]).
-export(['K-ContextLastFunc-14'/1]).
-export(['K-ContextLastFunc-15'/1]).
-export(['K-ContextLastFunc-16'/1]).
-export(['K-ContextLastFunc-17'/1]).
-export(['K-ContextLastFunc-18'/1]).
-export(['K-ContextLastFunc-19'/1]).
-export(['K-ContextLastFunc-20'/1]).
-export(['K-ContextLastFunc-21'/1]).
-export(['K-ContextLastFunc-22'/1]).
-export(['K-ContextLastFunc-23'/1]).
-export(['K-ContextLastFunc-24'/1]).
-export(['K-ContextLastFunc-25'/1]).
-export(['K-ContextLastFunc-26'/1]).
-export(['K-ContextLastFunc-27'/1]).
-export(['K-ContextLastFunc-28'/1]).
-export(['K-ContextLastFunc-29'/1]).
-export(['cbcl-last-in-sequence-001'/1]).
-export(['cbcl-last-in-sequence-002'/1]).
-export(['cbcl-last-in-sequence-003'/1]).
-export(['cbcl-last-in-sequence-004'/1]).
-export(['cbcl-last-in-sequence-005'/1]).
-export(['cbcl-last-in-sequence-006'/1]).
-export(['cbcl-last-in-sequence-007'/1]).
-export(['cbcl-last-in-sequence-008'/1]).
-export(['cbcl-last-in-sequence-009'/1]).
-export(['cbcl-last-in-sequence-010'/1]).
-export(['cbcl-last-in-sequence-011'/1]).
-export(['cbcl-last-in-sequence-012'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'last-1',
   'last-2',
   'last-3',
   'last-4',
   'last-5',
   'last-6',
   'last-7',
   'last-8',
   'last-9',
   'last-10',
   'last-11',
   'last-12',
   'last-13',
   'last-14',
   'last-15',
   'last-16',
   'last-17',
   'last-18',
   'last-19',
   'last-20',
   'last-21',
   'last-22',
   'last-23',
   'last-24',
   'K-ContextLastFunc-1',
   'K-ContextLastFunc-2',
   'K-ContextLastFunc-3',
   'K-ContextLastFunc-4',
   'K-ContextLastFunc-5',
   'K-ContextLastFunc-6',
   'K-ContextLastFunc-7',
   'K-ContextLastFunc-8',
   'K-ContextLastFunc-9',
   'K-ContextLastFunc-10',
   'K-ContextLastFunc-11',
   'K-ContextLastFunc-12',
   'K-ContextLastFunc-13',
   'K-ContextLastFunc-14',
   'K-ContextLastFunc-15',
   'K-ContextLastFunc-16',
   'K-ContextLastFunc-17',
   'K-ContextLastFunc-18',
   'K-ContextLastFunc-19',
   'K-ContextLastFunc-20',
   'K-ContextLastFunc-21',
   'K-ContextLastFunc-22',
   'K-ContextLastFunc-23',
   'K-ContextLastFunc-24',
   'K-ContextLastFunc-25',
   'K-ContextLastFunc-26',
   'K-ContextLastFunc-27',
   'K-ContextLastFunc-28',
   'K-ContextLastFunc-29',
   'cbcl-last-in-sequence-001',
   'cbcl-last-in-sequence-002',
   'cbcl-last-in-sequence-003',
   'cbcl-last-in-sequence-004',
   'cbcl-last-in-sequence-005',
   'cbcl-last-in-sequence-006',
   'cbcl-last-in-sequence-007',
   'cbcl-last-in-sequence-008',
   'cbcl-last-in-sequence-009',
   'cbcl-last-in-sequence-010',
   'cbcl-last-in-sequence-011',
   'cbcl-last-in-sequence-012'].
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
'last-1'(_Config) ->
   Qry = "for $h in (/works) return $h//employee[last()]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-2'(_Config) ->
   Qry = "last()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'last-3'(_Config) ->
   Qry = "for $h in (/works/employee[12]) return $h/overtime[last() = 1]/*/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-4'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = last()]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-5'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[last() = position()]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-6'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[last()] << $h/employee[last()]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'last-7'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[last()] is $h/employee[last()]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'last-8'(_Config) ->
   Qry = "for $h in (/works/employee[12]) return $h/overtime[last() = last()]/*/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-9'(_Config) ->
   Qry = "for $h in (/works) return $h//employee[@name=\"Jane Doe 13\"][last() = 1]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-10'(_Config) ->
   Qry = "for $h in (/works) return $h//employee[last() = 13][@name = \"Jane Doe 13\"]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 13
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 13" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-11'(_Config) ->
   Qry = "for $h in (/works/employee[12]/overtime) return $h/day[not(position() = 1)]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Tuesday
      ",
   case xqerl_types:string_value(Res) of
             "Tuesday" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-12'(_Config) ->
   Qry = "for $h in (/works/employee[12]/overtime) return $h/*[position() = position()]/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-13'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = (2 + 2)]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         John Doe 4
      ",
   case xqerl_types:string_value(Res) of
             "John Doe 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-14'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = (5 - 2)]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 3
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-15'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = (3 * 2)]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         John Doe 6
      ",
   case xqerl_types:string_value(Res) of
             "John Doe 6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-16'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = (6 div 2)]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 3
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-17'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = (6 idiv 2)]/string(@name)",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         Jane Doe 3
      ",
   case xqerl_types:string_value(Res) of
             "Jane Doe 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'last-18'(_Config) ->
   Qry = "for $h in (/works/employee[12]) return ($h/overtime[position() and fn:true()]/*/string())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-19'(_Config) ->
   Qry = "for $h in (/works/employee[12]) return $h/overtime[position() and fn:false()]",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'last-20'(_Config) ->
   Qry = "for $h in (/works/employee[12]) return $h/overtime[position() or fn:true()]/*/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-21'(_Config) ->
   Qry = "for $h in (/works/employee[12]) return $h/overtime[position() or fn:false()]/*/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-22'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = 12]/overtime/*/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Monday\", \"Tuesday\"
      ",
 Tst = xqerl:run("\"Monday\", \"Tuesday\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-23'(_Config) ->
   Qry = "for $h in (/works) return $h/employee[position() = 5 to last()]/@name/string()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"Jane Doe 5\", \"John Doe 6\", \"Jane Doe 7\", \"John Doe 8\", 
            \"Jane Doe 9\", \"John Doe 10\", \"Jane Doe 11\", \"John Doe 12\", \"Jane Doe 13\"
      ",
 Tst = xqerl:run("\"Jane Doe 5\", \"John Doe 6\", \"Jane Doe 7\", \"John Doe 8\", 
            \"Jane Doe 9\", \"John Doe 10\", \"Jane Doe 11\", \"John Doe 12\", \"Jane Doe 13\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'last-24'(_Config) ->
   Qry = "last()",
   Env = xqerl_test:handle_environment(environment('works-mod')),
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
'K-ContextLastFunc-1'(_Config) ->
   Qry = "last(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ContextLastFunc-2'(_Config) ->
   Qry = "(1, 2, 3)[if(1) then 1 else last()]",
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
'K-ContextLastFunc-3'(_Config) ->
   Qry = "deep-equal((1, 2, 3)[count((last(), last())) eq 2], (1, 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-4'(_Config) ->
   Qry = "deep-equal((1, 2, 3)[last() eq last()], (1, 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-5'(_Config) ->
   Qry = "(1, 2, 3, current-time())[last() - 1] treat as xs:integer eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-6'(_Config) ->
   Qry = "empty((1, 2, 3, current-time())[last() + 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-7'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() = 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-8'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [0 = last()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-9'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() eq 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-10'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [0 eq last()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-11'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() != 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-12'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() ne 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-13'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [0 != last()], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-14'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [0 ne last()], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-15'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() lt 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-16'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() < 1])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-17'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() le 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-18'(_Config) ->
   Qry = "empty((1, 2, 3, current-time(), current-date(), 6, 7, 8) [last() <= 0])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ContextLastFunc-19'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() > 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-20'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() > 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-21'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() gt 0], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-22'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() >= 1], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-23'(_Config) ->
   Qry = "deep-equal( (1, 2, 3, remove((current-time(), 4), 1)) [last() ge 1], (1, 2, 3, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-24'(_Config) ->
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last() - 2] treat as xs:integer eq 4",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-25'(_Config) ->
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last() - 1] treat as xs:integer eq 5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-26'(_Config) ->
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last()] treat as xs:integer eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-27'(_Config) ->
   Qry = "(1, 2, 3, 4, current-time(), 4, 5, 6)[last() - 0] treat as xs:integer eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-28'(_Config) ->
   Qry = "(1 to 6)[last()] eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextLastFunc-29'(_Config) ->
   Qry = "(-20 to -5)[last() - 3]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -8
      ",
 Tst = xqerl:run("-8"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'cbcl-last-in-sequence-001'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else () }; 
      	( local:generate(0), 1, local:generate(0) )[last()]
      ",
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
'cbcl-last-in-sequence-002'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then (1, 2, 3) else $arg }; 
      	( local:generate(()), for $x in local:generate(0) return $x + 2 )[last()]
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         5
      ",
   case xqerl_types:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-last-in-sequence-003'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 0 else () }; 
      	( local:generate(()), for $x in local:generate(0) return $x + 2 )[last()]
      ",
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
'cbcl-last-in-sequence-004'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer* { if ($arg = 0) then ( 1, 2, 3 ) else ( $arg ) }; 
      	( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[last()]
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         6
      ",
   case xqerl_types:string_value(Res) of
             "6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-last-in-sequence-005'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer? { if ($arg = 0) then 1 else $arg }; 
      	( local:generate(()), for $x at $p in local:generate(0) return $p + $x)[last()]
      ",
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
'cbcl-last-in-sequence-006'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else ('d' ) }; 
      	( if (local:generate(1) = 'd') then () else 1, for $x in local:generate(0) return fn:lower-case($x))[last()]
      ",
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
'cbcl-last-in-sequence-007'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:integer? { $arg }; 
      	( if (local:generate(0) = 0) then () else 1, for $x in local:generate(0) return -$x)[last()]
      ",
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
'cbcl-last-in-sequence-008'(_Config) ->
   Qry = "( (<a><b>cheese</b></a>)/b )[last()]",
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
'cbcl-last-in-sequence-009'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; 
      	( local:generate(()), for $x in local:generate(0) return 3)[last()]
      ",
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
'cbcl-last-in-sequence-010'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; 
      	boolean(local:generate(0)[last()])
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-last-in-sequence-011'(_Config) ->
   Qry = "declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then ('a', 'b', 'c') else () }; boolean(local:generate(1)[last()])",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-last-in-sequence-012'(_Config) ->
   Qry = "declare function local:generate($arg as xs:boolean) as xs:string+ { if ($arg) then ('a', 'b', 'c') else ('A', 'B', 'C') }; ( for $x in local:generate(true()) return 3)[last()]",
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
