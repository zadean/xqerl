-module('fn_id_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-id-1'/1]).
-export(['fn-id-2'/1]).
-export(['fn-id-3'/1]).
-export(['fn-id-4'/1]).
-export(['fn-id-dtd-5'/1]).
-export(['fn-id-dtd-6'/1]).
-export(['fn-id-dtd-7'/1]).
-export(['fn-id-dtd-8'/1]).
-export(['fn-id-dtd-9'/1]).
-export(['fn-id-dtd-10'/1]).
-export(['fn-id-dtd-11'/1]).
-export(['fn-id-dtd-12'/1]).
-export(['fn-id-dtd-13'/1]).
-export(['fn-id-dtd-14'/1]).
-export(['fn-id-dtd-15'/1]).
-export(['fn-id-dtd-16'/1]).
-export(['fn-id-dtd-17'/1]).
-export(['fn-id-dtd-18'/1]).
-export(['fn-id-dtd-19'/1]).
-export(['fn-id-dtd-20'/1]).
-export(['fn-id-dtd-21'/1]).
-export(['fn-id-22'/1]).
-export(['fn-id-dtd-23'/1]).
-export(['K2-SeqIDFunc-1'/1]).
-export(['K2-SeqIDFunc-2'/1]).
-export(['K2-SeqIDFunc-3'/1]).
-export(['K2-SeqIDFunc-4'/1]).
-export(['K2-SeqIDFunc-5'/1]).
-export(['K2-SeqIDFunc-6'/1]).
-export(['K2-SeqIDFunc-7'/1]).
-export(['K2-SeqIDFunc-8'/1]).
-export(['K2-SeqIDFunc-9'/1]).
-export(['K2-SeqIDFunc-10'/1]).
-export(['K2-SeqIDFunc-11'/1]).
-export(['K2-SeqIDFunc-12'/1]).
-export(['K2-SeqIDFunc-13'/1]).
-export(['K2-SeqIDFunc-14'/1]).
-export(['K2-SeqIDFunc-15'/1]).
-export(['cbcl-id-001'/1]).
-export(['cbcl-id-002'/1]).
-export(['cbcl-id-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/fn/id/copy.xq") catch _:_ -> ok end,Config.
all() -> [
   'fn-id-1',
   'fn-id-2',
   'fn-id-3',
   'fn-id-4',
   'fn-id-dtd-5',
   'fn-id-dtd-6',
   'fn-id-dtd-7',
   'fn-id-dtd-8',
   'fn-id-dtd-9',
   'fn-id-dtd-10',
   'fn-id-dtd-11',
   'fn-id-dtd-12',
   'fn-id-dtd-13',
   'fn-id-dtd-14',
   'fn-id-dtd-15',
   'fn-id-dtd-16',
   'fn-id-dtd-17',
   'fn-id-dtd-18',
   'fn-id-dtd-19',
   'fn-id-dtd-20',
   'fn-id-dtd-21',
   'fn-id-22',
   'fn-id-dtd-23',
   'K2-SeqIDFunc-1',
   'K2-SeqIDFunc-2',
   'K2-SeqIDFunc-3',
   'K2-SeqIDFunc-4',
   'K2-SeqIDFunc-5',
   'K2-SeqIDFunc-6',
   'K2-SeqIDFunc-7',
   'K2-SeqIDFunc-8',
   'K2-SeqIDFunc-9',
   'K2-SeqIDFunc-10',
   'K2-SeqIDFunc-11',
   'K2-SeqIDFunc-12',
   'K2-SeqIDFunc-13',
   'K2-SeqIDFunc-14',
   'K2-SeqIDFunc-15',
   'cbcl-id-001',
   'cbcl-id-002',
   'cbcl-id-003'].
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
environment('id-idref-dtd') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/iddtd.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('UsingXMLId') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/UsingXMLId.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('XMLIdMany') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/XMLIDMany.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-id-1'(_Config) ->
   Qry = "fn:id(\"argument 1\", / ,\"Argument 3\")",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-id-2'(_Config) ->
   Qry = "(1 to 5)[fn:id(\"argument1\")]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
            
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-id-3'(_Config) ->
   Qry = "fn:id(\"argument1\", \"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-id-4'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        let $var := copy:copy(/*) return fn:id(\"argument1\", $var)
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'fn-id-dtd-5'(_Config) ->
   Qry = "fn:id(\"id1\", /IDS[1])/string(@anId)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         id1
      ",
   case xqerl_types:string_value(Res) of
             "id1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-6'(_Config) ->
   Qry = "fn:count(fn:id(\"nomatchingid\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-id-dtd-7'(_Config) ->
   Qry = "fn:id(\"id2 id2\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-2
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-8'(_Config) ->
   Qry = "fn:id(\"id1 id2\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1 elementwithid-2
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1 elementwithid-2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-9'(_Config) ->
   Qry = "fn:id(\"id1 nomatching\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-10'(_Config) ->
   Qry = "fn:count(fn:id(\"nomatching1 nomatching2\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-id-dtd-11'(_Config) ->
   Qry = "fn:id(\"\", /IDS[1])",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-id-dtd-12'(_Config) ->
   Qry = "fn:id(fn:substring(\"1id3\",2), /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-3
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-13'(_Config) ->
   Qry = "fn:id(\"id4\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-4
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-14'(_Config) ->
   Qry = "fn:id(\"p1:id5\", /IDS[1])",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-id-dtd-15'(_Config) ->
   Qry = "fn:id(\"id1 id1\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-16'(_Config) ->
   Qry = "fn:id(\"id1 ID1\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-17'(_Config) ->
   Qry = "fn:id(fn:lower-case(\"ID1\"), /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-18'(_Config) ->
   Qry = "fn:id(fn:upper-case(\"id5\"), /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-6
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-19'(_Config) ->
   Qry = "fn:id(fn:concat(\"i\",\"d1\"), /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-20'(_Config) ->
   Qry = "fn:id(xs:string(\"id1\"), /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-dtd-21'(_Config) ->
   Qry = "fn:id(fn:string-join((\"id\",\"1\"),\"\"), /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-id-22'(_Config) ->
   Qry = "(1 to 5)[ fn:id(\"argument1\",.)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-id-dtd-23'(_Config) ->
   Qry = "declare ordering ordered; fn:id(\"id1 id2\", /IDS[1])/name()",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         elementwithid-1 elementwithid-2
      ",
   case xqerl_types:string_value(Res) of
             "elementwithid-1 elementwithid-2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-1'(_Config) ->
   Qry = "id((), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqIDFunc-2'(_Config) ->
   Qry = "(1, 2, 3)[id(\"ncname\", .)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqIDFunc-3'(_Config) ->
   Qry = "(1, 2, 3)[id(\"ncname\")]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqIDFunc-4'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", copy:copy((//comment())[1]))
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'K2-SeqIDFunc-5'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", copy:copy((//processing-instruction())[1]))
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'K2-SeqIDFunc-6'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", copy:copy(/*))
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'K2-SeqIDFunc-7'(_Config) ->
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        id(\"id\", (copy:copy(/*)//*:NegativeComments)[last()])
      ",
   Env = xqerl_test:handle_environment(environment('auction-xq')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'K2-SeqIDFunc-8'(_Config) ->
   Qry = "let $i := <e><e/><e/><e/><e/><e/><e/><e/><b xml:id=\"foo\"/><e/></e>return id(\"foo\", $i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'K2-SeqIDFunc-9'(_Config) ->
   Qry = "let $i := document {<e> <e/> <e/> <e/> <e/> <e/> <e/> <e/> <b xml:id=\"foo\"/> <e/> </e>} return id(\"foo\", $i)/name()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         b
      ",
   case xqerl_types:string_value(Res) of
             "b" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-10'(_Config) ->
   Qry = "for $i in id((\"short\", \"positiveInteger\")) return $i/@name/string()",
   Env = xqerl_test:handle_environment(environment('UsingXMLId')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         positiveInteger short
      ",
   case xqerl_types:string_value(Res) of
             "positiveInteger short" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-11'(_Config) ->
   Qry = "id((\"short\"), //xs:element/@name[. = \"positiveInteger\"])/@name",
   Env = xqerl_test:handle_environment(environment('UsingXMLId')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         short
      ",
   case xqerl_types:string_value(Res) of
             "short" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-12'(_Config) ->
   Qry = "id((\".\", \"short\", \"123\"), //xs:element/@name[. = \"positiveInteger\"])/@name",
   Env = xqerl_test:handle_environment(environment('UsingXMLId')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         short
      ",
   case xqerl_types:string_value(Res) of
             "short" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-13'(_Config) ->
   Qry = "fn:id(//b/@ref)/data(exactly-one(@*))",
   Env = xqerl_test:handle_environment(environment('XMLIdMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c d e f i
      ",
   case xqerl_types:string_value(Res) of
             "a b c d e f i" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-14'(_Config) ->
   Qry = "for $i in id((\"short positiveInteger\")) return $i/@name/string()",
   Env = xqerl_test:handle_environment(environment('UsingXMLId')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         positiveInteger short
      ",
   case xqerl_types:string_value(Res) of
             "positiveInteger short" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-SeqIDFunc-15'(_Config) ->
   Qry = "fn:id(string-join(reverse(//b/@ref), '	'))/data(exactly-one(@*))",
   Env = xqerl_test:handle_environment(environment('XMLIdMany')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         a b c d e f i
      ",
   case xqerl_types:string_value(Res) of
             "a b c d e f i" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-id-001'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( fn:id( local:generate(0), $doc) )
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-id-002'(_Config) ->
   Qry = "
      	let $doc := document { <root /> } return fn:empty( fn:id( (), $doc) )
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-id-003'(_Config) ->
   Qry = "
      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; 
      	let $doc := document { <root /> } return fn:empty( $doc/fn:id( local:generate(0)) )
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
