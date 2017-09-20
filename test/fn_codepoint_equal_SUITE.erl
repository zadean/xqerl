-module('fn_codepoint_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-codepoint-equal-1'/1]).
-export(['fn-codepoint-equal-2'/1]).
-export(['fn-codepoint-equal-2a'/1]).
-export(['fn-codepoint-equal-2b'/1]).
-export(['fn-codepoint-equal-3'/1]).
-export(['fn-codepoint-equal-4'/1]).
-export(['fn-codepoint-equal-5'/1]).
-export(['fn-codepoint-equal-6'/1]).
-export(['fn-codepoint-equal-7'/1]).
-export(['fn-codepoint-equal-8'/1]).
-export(['fn-codepoint-equal-9'/1]).
-export(['fn-codepoint-equal-10'/1]).
-export(['fn-codepoint-equal-11'/1]).
-export(['fn-codepoint-equal-12'/1]).
-export(['fn-codepoint-equal-13'/1]).
-export(['fn-codepoint-equal-14'/1]).
-export(['fn-codepoint-equal-15'/1]).
-export(['fn-codepoint-equal-16'/1]).
-export(['fn-codepoint-equal-17'/1]).
-export(['fn-codepoint-equal-18'/1]).
-export(['fn-codepoint-equal-19'/1]).
-export(['fn-codepoint-equal-20'/1]).
-export(['fn-codepoint-equal-21'/1]).
-export(['fn-codepoint-equal-22'/1]).
-export(['K2-CodepointEqual-1'/1]).
-export(['K2-CodepointEqual-2'/1]).
-export(['K2-CodepointEqual-3'/1]).
-export(['K2-CodepointEqual-4'/1]).
-export(['K2-CodepointEqual-5'/1]).
-export(['K2-CodepointEqual-6'/1]).
-export(['cbcl-codepoint-equal-001'/1]).
-export(['cbcl-codepoint-equal-002'/1]).
-export(['cbcl-codepoint-equal-003'/1]).
-export(['cbcl-codepoint-equal-004'/1]).
-export(['cbcl-codepoint-equal-005'/1]).
-export(['cbcl-codepoint-equal-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-codepoint-equal-1',
   'fn-codepoint-equal-2',
   'fn-codepoint-equal-2a',
   'fn-codepoint-equal-2b',
   'fn-codepoint-equal-3',
   'fn-codepoint-equal-4',
   'fn-codepoint-equal-5',
   'fn-codepoint-equal-6',
   'fn-codepoint-equal-7',
   'fn-codepoint-equal-8',
   'fn-codepoint-equal-9',
   'fn-codepoint-equal-10',
   'fn-codepoint-equal-11',
   'fn-codepoint-equal-12',
   'fn-codepoint-equal-13',
   'fn-codepoint-equal-14',
   'fn-codepoint-equal-15',
   'fn-codepoint-equal-16',
   'fn-codepoint-equal-17',
   'fn-codepoint-equal-18',
   'fn-codepoint-equal-19',
   'fn-codepoint-equal-20',
   'fn-codepoint-equal-21',
   'fn-codepoint-equal-22',
   'K2-CodepointEqual-1',
   'K2-CodepointEqual-2',
   'K2-CodepointEqual-3',
   'K2-CodepointEqual-4',
   'K2-CodepointEqual-5',
   'K2-CodepointEqual-6',
   'cbcl-codepoint-equal-001',
   'cbcl-codepoint-equal-002',
   'cbcl-codepoint-equal-003',
   'cbcl-codepoint-equal-004',
   'cbcl-codepoint-equal-005',
   'cbcl-codepoint-equal-006'].
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
].
'fn-codepoint-equal-1'(_Config) ->
   Qry = "fn:codepoint-equal(\"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-codepoint-equal-2'(_Config) ->
   Qry = "fn:codepoint-equal((),())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-codepoint-equal-2a'(_Config) ->
   Qry = "fn:codepoint-equal(\"abc\",())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-codepoint-equal-2b'(_Config) ->
   Qry = "fn:codepoint-equal((), \"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-codepoint-equal-3'(_Config) ->
   Qry = "fn:codepoint-equal(\"\",\"\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-4'(_Config) ->
   Qry = "fn:codepoint-equal(\"a\",\"a\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-5'(_Config) ->
   Qry = "fn:codepoint-equal(\"a\",\"b\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-6'(_Config) ->
   Qry = "fn:not(fn:codepoint-equal(\"a\",\"b\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-7'(_Config) ->
   Qry = "fn:not(fn:codepoint-equal(\"a\",\"a\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-8'(_Config) ->
   Qry = "fn:codepoint-equal(fn:string(1),fn:string(1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-9'(_Config) ->
   Qry = "fn:codepoint-equal(fn:string(\"aa\"),fn:string(\"aa\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-10'(_Config) ->
   Qry = "fn:codepoint-equal(xs:integer(1),xs:integer(1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-codepoint-equal-11'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",xs:integer(1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-codepoint-equal-12'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"AA\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-13'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",fn:lower-case(\"AA\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-14'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",fn:upper-case(\"aa\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-15'(_Config) ->
   Qry = "xs:boolean(fn:codepoint-equal(\"aa\",\"aa\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-16'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-17'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-18'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") or fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-19'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-20'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") and fn:codepoint-equal(\"aa\",\"aa\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-21'(_Config) ->
   Qry = "fn:codepoint-equal(\"aa\",\"aa\") or fn:codepoint-equal(\"aa\",\"aa\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-codepoint-equal-22'(_Config) ->
   Qry = "fn:codepoint-equal(normalize-unicode(\"garçon\", \"NFC\"), normalize-unicode(\"garçon\", \"NFD\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CodepointEqual-1'(_Config) ->
   Qry = "codepoint-equal(lower-case(concat(\"B STRING\", current-time())), 
                            lower-case(concat(\"b string\", current-time())))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CodepointEqual-2'(_Config) ->
   Qry = "codepoint-equal(upper-case(concat(\"B STRING\", current-time())), 
                            upper-case(concat(\"b string\", current-time())))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CodepointEqual-3'(_Config) ->
   Qry = "codepoint-equal(lower-case(concat(\"B STRING\", current-time())), 
                            lower-case(concat(\"no match\", current-time())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CodepointEqual-4'(_Config) ->
   Qry = "codepoint-equal(upper-case(concat(\"B STRING\", current-time())), 
                            upper-case(concat(\"no match\", current-time())))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CodepointEqual-5'(_Config) ->
   Qry = "codepoint-equal(upper-case(concat(\"B STRING\", current-time())), 
                            lower-case(concat(\"no match\", current-time())))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CodepointEqual-6'(_Config) ->
   Qry = "codepoint-equal(lower-case(concat(\"B STRING\", current-time())), 
                            upper-case(concat(\"no match\", current-time())))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoint-equal-001'(_Config) ->
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      empty(fn:codepoint-equal( local:yes-empty(fn:false()), local:yes-empty(fn:true()) ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoint-equal-002'(_Config) ->
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      empty(fn:codepoint-equal( local:yes-empty(fn:true()), local:yes-empty(fn:false()) ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoint-equal-003'(_Config) ->
   Qry = "declare function local:yes-no($arg as xs:boolean) as xs:string { if ($arg) then 'yes' else 'no' }; 
      fn:codepoint-equal( local:yes-no(fn:true()), local:yes-no(fn:false()) ) = false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoint-equal-004'(_Config) ->
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      boolean(fn:codepoint-equal( local:yes-empty(fn:true()), local:yes-empty(fn:false()) ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoint-equal-005'(_Config) ->
   Qry = "declare function local:yes-empty($arg as xs:boolean) as xs:string? { if ($arg) then 'yes' else () }; 
      boolean(fn:codepoint-equal( local:yes-empty(fn:false()), local:yes-empty(fn:true()) ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-codepoint-equal-006'(_Config) ->
   Qry = "declare function local:yes-no($arg as xs:boolean) as xs:string { if ($arg) then 'yes' else 'no' }; 
      fn:index-of( (fn:true(), fn:false()), fn:codepoint-equal( local:yes-no(fn:false()), local:yes-no(fn:true()) ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
