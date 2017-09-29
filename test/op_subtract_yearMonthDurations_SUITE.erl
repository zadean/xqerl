-module('op_subtract_yearMonthDurations_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-subtract-yearMonthDurations2args-1'/1]).
-export(['op-subtract-yearMonthDurations2args-2'/1]).
-export(['op-subtract-yearMonthDurations2args-3'/1]).
-export(['op-subtract-yearMonthDurations2args-4'/1]).
-export(['op-subtract-yearMonthDurations2args-5'/1]).
-export(['op-subtract-yearMonthDurations-1'/1]).
-export(['op-subtract-yearMonthDurations-2'/1]).
-export(['op-subtract-yearMonthDurations-3'/1]).
-export(['op-subtract-yearMonthDurations-4'/1]).
-export(['op-subtract-yearMonthDurations-5'/1]).
-export(['op-subtract-yearMonthDurations-6'/1]).
-export(['op-subtract-yearMonthDurations-7'/1]).
-export(['op-subtract-yearMonthDurations-8'/1]).
-export(['op-subtract-yearMonthDurations-9'/1]).
-export(['op-subtract-yearMonthDurations-10'/1]).
-export(['op-subtract-yearMonthDurations-11'/1]).
-export(['op-subtract-yearMonthDurations-12'/1]).
-export(['op-subtract-yearMonthDurations-13'/1]).
-export(['op-subtract-yearMonthDurations-14'/1]).
-export(['op-subtract-yearMonthDurations-15'/1]).
-export(['op-subtract-yearMonthDurations-16'/1]).
-export(['K-YearMonthDurationSubtract-1'/1]).
-export(['K-YearMonthDurationSubtract-2'/1]).
-export(['K-YearMonthDurationSubtract-3'/1]).
-export(['K-YearMonthDurationSubtract-4'/1]).
-export(['K-YearMonthDurationSubtract-5'/1]).
-export(['K-YearMonthDurationSubtract-6'/1]).
-export(['K-YearMonthDurationSubtract-7'/1]).
-export(['K-YearMonthDurationSubtract-8'/1]).
-export(['K-YearMonthDurationSubtract-9'/1]).
-export(['cbcl-subtract-yearMonthDurations-001'/1]).
-export(['cbcl-subtract-yearMonthDurations-002'/1]).
-export(['cbcl-subtract-yearMonthDurations-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-subtract-yearMonthDurations2args-1',
   'op-subtract-yearMonthDurations2args-2',
   'op-subtract-yearMonthDurations2args-3',
   'op-subtract-yearMonthDurations2args-4',
   'op-subtract-yearMonthDurations2args-5',
   'op-subtract-yearMonthDurations-1',
   'op-subtract-yearMonthDurations-2',
   'op-subtract-yearMonthDurations-3',
   'op-subtract-yearMonthDurations-4',
   'op-subtract-yearMonthDurations-5',
   'op-subtract-yearMonthDurations-6',
   'op-subtract-yearMonthDurations-7',
   'op-subtract-yearMonthDurations-8',
   'op-subtract-yearMonthDurations-9',
   'op-subtract-yearMonthDurations-10',
   'op-subtract-yearMonthDurations-11',
   'op-subtract-yearMonthDurations-12',
   'op-subtract-yearMonthDurations-13',
   'op-subtract-yearMonthDurations-14',
   'op-subtract-yearMonthDurations-15',
   'op-subtract-yearMonthDurations-16',
   'K-YearMonthDurationSubtract-1',
   'K-YearMonthDurationSubtract-2',
   'K-YearMonthDurationSubtract-3',
   'K-YearMonthDurationSubtract-4',
   'K-YearMonthDurationSubtract-5',
   'K-YearMonthDurationSubtract-6',
   'K-YearMonthDurationSubtract-7',
   'K-YearMonthDurationSubtract-8',
   'K-YearMonthDurationSubtract-9',
   'cbcl-subtract-yearMonthDurations-001',
   'cbcl-subtract-yearMonthDurations-002',
   'cbcl-subtract-yearMonthDurations-003'].
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
'op-subtract-yearMonthDurations2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P1000Y6M
      ",
   case xqerl_test:string_value(Res) of
             "P1000Y6M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") - xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P2031Y
      ",
   case xqerl_test:string_value(Res) of
             "P2031Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") - xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -P1000Y6M
      ",
   case xqerl_test:string_value(Res) of
             "-P1000Y6M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") - xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -P2031Y
      ",
   case xqerl_test:string_value(Res) of
             "-P2031Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations-1'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P2Y11M\") - xs:yearMonthDuration(\"P3Y3M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -P4M
      ",
   case xqerl_test:string_value(Res) of
             "-P4M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations-2'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P10Y11M\") - xs:yearMonthDuration(\"P12Y07M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-3'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P20Y10M\") - xs:yearMonthDuration(\"P19Y10M\")) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") - xs:yearMonthDuration(\"P02Y11M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") - xs:yearMonthDuration(\"P03Y06M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-6'(_Config) ->
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") - xs:yearMonthDuration(\"P10Y01M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations-7'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") - xs:yearMonthDuration(\"P01Y02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P2Y6M
      ",
   case xqerl_test:string_value(Res) of
             "P2Y6M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") - xs:yearMonthDuration(\"P11Y02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -P1Y1M
      ",
   case xqerl_test:string_value(Res) of
             "-P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations-9'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P01Y01M\") - xs:yearMonthDuration(\"P02Y02M\"))) and fn:string((xs:yearMonthDuration(\"P02Y03M\") - xs:yearMonthDuration(\"P04Y04M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-10'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P05Y02M\") - xs:yearMonthDuration(\"P03Y04M\"))) or fn:string((xs:yearMonthDuration(\"P05Y03M\") - xs:yearMonthDuration(\"P01Y03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P42Y10M\") - xs:yearMonthDuration(\"P20Y10M\")) div (xs:yearMonthDuration(\"P20Y11M\") - xs:yearMonthDuration(\"P18Y11M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         11
      ",
   case xqerl_test:string_value(Res) of
             "11" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-subtract-yearMonthDurations-12'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") - xs:yearMonthDuration(\"P05Y07M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") - xs:yearMonthDuration(\"P23Y11M\")) eq xs:yearMonthDuration(\"P23Y11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") - xs:yearMonthDuration(\"P08Y05M\")) ne xs:yearMonthDuration(\"P08Y05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-15'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") - xs:yearMonthDuration(\"P17Y02M\")) le xs:yearMonthDuration(\"P17Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-subtract-yearMonthDurations-16'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") - xs:yearMonthDuration(\"P18Y02M\")) ge xs:yearMonthDuration(\"P18Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationSubtract-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") - xs:yearMonthDuration(\"P0M\") eq xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationSubtract-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0M\") - xs:yearMonthDuration(\"P3Y3M\") eq xs:yearMonthDuration(\"-P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationSubtract-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P32Y43M\") - xs:yearMonthDuration(\"P12Y13M\") eq xs:yearMonthDuration(\"P22Y6M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationSubtract-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") + xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationSubtract-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") + xs:dayTimeDuration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationSubtract-6'(_Config) ->
   Qry = "xs:duration(\"P3D\") + xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationSubtract-7'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") + xs:duration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationSubtract-8'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") + xs:duration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationSubtract-9'(_Config) ->
   Qry = "xs:duration(\"P3Y3M\") + xs:dayTimeDuration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-subtract-yearMonthDurations-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        local:yearMonthDuration(1, 1) - xs:yearMonthDuration(\"P0Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P1Y1M
      ",
   case xqerl_test:string_value(Res) of
             "P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subtract-yearMonthDurations-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        local:yearMonthDuration(1, 1) - local:yearMonthDuration(1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-subtract-yearMonthDurations-003'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        xs:yearMonthDuration(\"-P768614336404564650Y\") - local:yearMonthDuration(768614336404564650, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
