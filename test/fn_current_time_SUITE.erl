-module('fn_current_time_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-current-time-1'/1]).
-export(['fn-current-time-2'/1]).
-export(['fn-current-time-3'/1]).
-export(['fn-current-time-4'/1]).
-export(['fn-current-time-5'/1]).
-export(['fn-current-time-6'/1]).
-export(['fn-current-time-7'/1]).
-export(['fn-current-time-8'/1]).
-export(['fn-current-time-9'/1]).
-export(['fn-current-time-10'/1]).
-export(['fn-current-time-11'/1]).
-export(['fn-current-time-12'/1]).
-export(['fn-current-time-13'/1]).
-export(['fn-current-time-14'/1]).
-export(['fn-current-time-15'/1]).
-export(['fn-current-time-16'/1]).
-export(['fn-current-time-17'/1]).
-export(['fn-current-time-18'/1]).
-export(['fn-current-time-19'/1]).
-export(['fn-current-time-20'/1]).
-export(['fn-current-time-21'/1]).
-export(['fn-current-time-22'/1]).
-export(['K-ContextCurrentTimeFunc-1'/1]).
-export(['K-ContextCurrentTimeFunc-2'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-current-time-1',
   'fn-current-time-2',
   'fn-current-time-3',
   'fn-current-time-4',
   'fn-current-time-5',
   'fn-current-time-6',
   'fn-current-time-7',
   'fn-current-time-8',
   'fn-current-time-9',
   'fn-current-time-10',
   'fn-current-time-11',
   'fn-current-time-12',
   'fn-current-time-13',
   'fn-current-time-14',
   'fn-current-time-15',
   'fn-current-time-16',
   'fn-current-time-17',
   'fn-current-time-18',
   'fn-current-time-19',
   'fn-current-time-20',
   'fn-current-time-21',
   'fn-current-time-22',
   'K-ContextCurrentTimeFunc-1',
   'K-ContextCurrentTimeFunc-2'].
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
'fn-current-time-1'(_Config) ->
   Qry = "fn:current-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:time
      ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-2'(_Config) ->
   Qry = "fn:hours-from-time(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-3'(_Config) ->
   Qry = "fn:minutes-from-time(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:integer
      ",
   case xqerl_types:type(Res) of
           'xs:integer' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-4'(_Config) ->
   Qry = "fn:seconds-from-time(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:decimal
      ",
   case xqerl_types:type(Res) of
           'xs:decimal' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-5'(_Config) ->
   Qry = "fn:current-time() - fn:current-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT0S
      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-current-time-6'(_Config) ->
   Qry = "fn:current-time() + xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:time
      ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-7'(_Config) ->
   Qry = "fn:current-time() - xs:dayTimeDuration(\"P3DT1H15M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:time
      ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-8'(_Config) ->
   Qry = "fn:current-time(\"Argument 1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-current-time-9'(_Config) ->
   Qry = "fn:current-time() - fn:current-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         PT0S
      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-current-time-10'(_Config) ->
   Qry = "xs:string(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:string
      ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-11'(_Config) ->
   Qry = "fn:timezone-from-time(current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xs:dayTimeDuration
      ",
   case xqerl_types:type(Res) of
           'xs:dayTimeDuration' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-12'(_Config) ->
   Qry = "fn:string(fn:current-time()) eq fn:string(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-13'(_Config) ->
   Qry = "fn:string(fn:current-time()) ne fn:string(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-14'(_Config) ->
   Qry = "fn:string(fn:current-time()) le fn:string(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-15'(_Config) ->
   Qry = "fn:string(fn:current-time()) ge fn:string(fn:current-time())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-16'(_Config) ->
   Qry = "fn:string(fn:current-time()) and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-17'(_Config) ->
   Qry = "fn:string(fn:current-time()) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-18'(_Config) ->
   Qry = "fn:string(fn:current-time()) or fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-19'(_Config) ->
   Qry = "fn:string(fn:current-time()) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-20'(_Config) ->
   Qry = "fn:not(fn:string(fn:current-time()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-21'(_Config) ->
   Qry = "exists(timezone-from-time(current-time()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-current-time-22'(_Config) ->
   Qry = "current-time() = xs:time(current-dateTime())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ContextCurrentTimeFunc-1'(_Config) ->
   Qry = "current-time(\"WRONG PARAM\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-ContextCurrentTimeFunc-2'(_Config) ->
   Qry = "current-time() eq current-time()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
