-module('op_subtract_dates_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-dates-yielding-DTD-1'/1]).
-export(['op-subtract-dates-yielding-DTD-2'/1]).
-export(['op-subtract-dates-yielding-DTD-3'/1]).
-export(['op-subtract-dates-yielding-DTD-4'/1]).
-export(['op-subtract-dates-yielding-DTD-5'/1]).
-export(['op-subtract-dates-yielding-DTD-6'/1]).
-export(['op-subtract-dates-yielding-DTD-7'/1]).
-export(['op-subtract-dates-yielding-DTD-8'/1]).
-export(['op-subtract-dates-yielding-DTD-9'/1]).
-export(['op-subtract-dates-yielding-DTD-10'/1]).
-export(['op-subtract-dates-yielding-DTD-11'/1]).
-export(['op-subtract-dates-yielding-DTD-12'/1]).
-export(['op-subtract-dates-yielding-DTD-13'/1]).
-export(['op-subtract-dates-yielding-DTD-14'/1]).
-export(['op-subtract-dates-yielding-DTD-15'/1]).
-export(['op-subtract-dates-yielding-DTD-16'/1]).
-export(['op-subtract-dates-yielding-DTD-17'/1]).
-export(['op-subtract-dates-yielding-DTD-18'/1]).
-export(['op-subtract-dates-yielding-DTD-19'/1]).
-export(['op-subtract-dates-yielding-DTD-20'/1]).
-export(['K-DatesSubtract-1'/1]).
-export(['K-DatesSubtract-2'/1]).
-export(['K-DatesSubtract-3'/1]).
-export(['K-DatesSubtract-4'/1]).
-export(['K-DatesSubtract-5'/1]).
-export(['K-DatesSubtract-6'/1]).
-export(['cbcl-subtract-dates-001'/1]).
-export(['cbcl-subtract-dates-002'/1]).
-export(['cbcl-subtract-dates-003'/1]).
-export(['cbcl-subtract-dates-004'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-subtract-dates-yielding-DTD-1',
   'op-subtract-dates-yielding-DTD-2',
   'op-subtract-dates-yielding-DTD-3',
   'op-subtract-dates-yielding-DTD-4',
   'op-subtract-dates-yielding-DTD-5',
   'op-subtract-dates-yielding-DTD-6',
   'op-subtract-dates-yielding-DTD-7',
   'op-subtract-dates-yielding-DTD-8',
   'op-subtract-dates-yielding-DTD-9',
   'op-subtract-dates-yielding-DTD-10',
   'op-subtract-dates-yielding-DTD-11',
   'op-subtract-dates-yielding-DTD-12',
   'op-subtract-dates-yielding-DTD-13',
   'op-subtract-dates-yielding-DTD-14',
   'op-subtract-dates-yielding-DTD-15',
   'op-subtract-dates-yielding-DTD-16',
   'op-subtract-dates-yielding-DTD-17',
   'op-subtract-dates-yielding-DTD-18',
   'op-subtract-dates-yielding-DTD-19',
   'op-subtract-dates-yielding-DTD-20',
   'K-DatesSubtract-1',
   'K-DatesSubtract-2',
   'K-DatesSubtract-3',
   'K-DatesSubtract-4',
   'K-DatesSubtract-5',
   'K-DatesSubtract-6',
   'cbcl-subtract-dates-001',
   'cbcl-subtract-dates-002',
   'cbcl-subtract-dates-003',
   'cbcl-subtract-dates-004'].
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
'op-subtract-dates-yielding-DTD-1'(_Config) ->
   Qry = "xs:date(\"2000-10-30\") - xs:date(\"1999-11-28\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P337D\n      ",
   case xqerl_test:string_value(Res) of
             "P337D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-2'(_Config) ->
   Qry = "xs:date(\"2000-10-30+05:00\") - xs:date(\"1999-11-28Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P336DT19H\n      ",
   case xqerl_test:string_value(Res) of
             "P336DT19H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-3'(_Config) ->
   Qry = "xs:date(\"2000-10-15-05:00\") - xs:date(\"2000-10-10+02:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P5DT7H\n      ",
   case xqerl_test:string_value(Res) of
             "P5DT7H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") - xs:date(\"1998-09-21Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") - xs:date(\"1962-03-12Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-6'(_Config) ->
   Qry = "fn:number(xs:date(\"1988-01-28Z\") - xs:date(\"2001-03-02\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         NaN\n      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-7'(_Config) ->
   Qry = "fn:string(xs:date(\"1989-07-05Z\") - xs:date(\"1962-09-04Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P9801D\n      ",
   case xqerl_test:string_value(Res) of
             "P9801D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-8'(_Config) ->
   Qry = "xs:date(\"0001-01-01Z\") - xs:date(\"2005-07-06Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -P732132D\n      ",
   case xqerl_test:string_value(Res) of
             "-P732132D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-9'(_Config) ->
   Qry = "fn:string((xs:date(\"1993-12-09Z\") - xs:date(\"1992-10-02Z\"))) and fn:string((xs:date(\"1993-12-09Z\") - xs:date(\"1980-10-20Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-10'(_Config) ->
   Qry = "fn:string((xs:date(\"1985-07-05Z\") - xs:date(\"1977-12-02Z\"))) or fn:string((xs:date(\"1985-07-05Z\") - xs:date(\"1960-11-07Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-11'(_Config) ->
   Qry = "(xs:date(\"1978-12-12Z\") - xs:date(\"1978-12-12Z\")) div xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-12'(_Config) ->
   Qry = "fn:string((xs:date(\"1980-03-02Z\") - xs:date(\"2001-09-11Z\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-13'(_Config) ->
   Qry = "fn:string((xs:date(\"1980-05-05Z\") - xs:date(\"1981-12-03Z\"))) eq xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-14'(_Config) ->
   Qry = "fn:string((xs:date(\"1979-12-12Z\") - xs:date(\"1979-11-11Z\"))) ne xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-15'(_Config) ->
   Qry = "fn:string((xs:date(\"1978-12-12Z\") - xs:date(\"1977-03-12Z\"))) le xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-16'(_Config) ->
   Qry = "fn:string((xs:date(\"1977-12-12Z\") - xs:date(\"1976-12-12Z\"))) ge xs:string(xs:dayTimeDuration(\"P17DT10H02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-17'(_Config) ->
   Qry = "fn:string(xs:date(\"2000-12-12Z\") - xs:date(\"2000-11-11Z\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-18'(_Config) ->
   Qry = "fn:string((xs:date(\"1999-10-23Z\") - xs:date(\"1998-09-09Z\"))) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-dates-yielding-DTD-19'(_Config) ->
   Qry = "(xs:date(\"1999-10-23Z\") - xs:date(\"1998-09-09Z\")) * xs:decimal(2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P818D\n      ",
   case xqerl_test:string_value(Res) of
             "P818D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-dates-yielding-DTD-20'(_Config) ->
   Qry = "(xs:date(\"1999-10-23Z\") - xs:date(\"1998-09-09Z\")) + xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P426DT10H2M\n      ",
   case xqerl_test:string_value(Res) of
             "P426DT10H2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-DatesSubtract-1'(_Config) ->
   Qry = "xs:date(\"1999-07-19\") - xs:date(\"1969-11-30\") eq xs:dayTimeDuration(\"P10823D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DatesSubtract-2'(_Config) ->
   Qry = "xs:date(\"1999-07-19\") - xs:date(\"1999-07-19\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DatesSubtract-3'(_Config) ->
   Qry = "xs:date(\"1999-10-12\") + xs:date(\"1999-10-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DatesSubtract-4'(_Config) ->
   Qry = "xs:date(\"1999-10-12\") div xs:date(\"1999-10-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DatesSubtract-5'(_Config) ->
   Qry = "xs:date(\"1999-10-12\") * xs:date(\"1999-10-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DatesSubtract-6'(_Config) ->
   Qry = "xs:date(\"1999-10-12\") mod xs:date(\"1999-10-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-subtract-dates-001'(_Config) ->
   Qry = "xs:date(\"-25252734927766554-12-31\") - xs:date(\"25252734927766554-12-31\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-subtract-dates-002'(_Config) ->
   Qry = "xs:date(\"-25252734927766554-12-31\") - xs:date(\"25252734927766554-12-31+01:00\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
'cbcl-subtract-dates-003'(_Config) ->
   Qry = "xs:date(\"2008-12-31\") - xs:date(\"2002-12-31+01:00\") + implicit-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2192DT1H\n      ",
   case xqerl_test:string_value(Res) of
             "P2192DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subtract-dates-004'(_Config) ->
   Qry = "xs:date(\"2002-12-31+01:00\") - xs:date(\"2008-12-31\") - implicit-timezone()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -P2192DT1H\n      ",
   case xqerl_test:string_value(Res) of
             "-P2192DT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
