-module('op_multiply_yearMonthDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-multiply-yearMonthDuration2args-1'/1]).
-export(['op-multiply-yearMonthDuration2args-2'/1]).
-export(['op-multiply-yearMonthDuration2args-3'/1]).
-export(['op-multiply-yearMonthDuration2args-4'/1]).
-export(['op-multiply-yearMonthDuration2args-5'/1]).
-export(['op-multiply-yearMonthDuration-1'/1]).
-export(['op-multiply-yearMonthDuration-2'/1]).
-export(['op-multiply-yearMonthDuration-3'/1]).
-export(['op-multiply-yearMonthDuration-4'/1]).
-export(['op-multiply-yearMonthDuration-5'/1]).
-export(['op-multiply-yearMonthDuration-6'/1]).
-export(['op-multiply-yearMonthDuration-7'/1]).
-export(['op-multiply-yearMonthDuration-8'/1]).
-export(['op-multiply-yearMonthDuration-9'/1]).
-export(['op-multiply-yearMonthDuration-10'/1]).
-export(['op-multiply-yearMonthDuration-11'/1]).
-export(['op-multiply-yearMonthDuration-12'/1]).
-export(['op-multiply-yearMonthDuration-13'/1]).
-export(['op-multiply-yearMonthDuration-14'/1]).
-export(['op-multiply-yearMonthDuration-15'/1]).
-export(['op-multiply-yearMonthDuration-16'/1]).
-export(['op-multiply-yearMonthDuration-17'/1]).
-export(['op-multiply-yearMonthDuration-18'/1]).
-export(['op-multiply-yearMonthDuration-19'/1]).
-export(['op-multiply-yearMonthDuration-20'/1]).
-export(['K-YearMonthDurationMultiply-1'/1]).
-export(['K-YearMonthDurationMultiply-2'/1]).
-export(['K-YearMonthDurationMultiply-3'/1]).
-export(['K-YearMonthDurationMultiply-4'/1]).
-export(['K-YearMonthDurationMultiply-5'/1]).
-export(['K-YearMonthDurationMultiply-6'/1]).
-export(['K-YearMonthDurationMultiply-7'/1]).
-export(['K-YearMonthDurationMultiply-8'/1]).
-export(['K-YearMonthDurationMultiply-9'/1]).
-export(['K-YearMonthDurationMultiply-10'/1]).
-export(['K-YearMonthDurationMultiply-11'/1]).
-export(['K-YearMonthDurationMultiply-12'/1]).
-export(['K-YearMonthDurationMultiply-13'/1]).
-export(['cbcl-multiply-yearMonthDuration-001'/1]).
-export(['cbcl-multiply-yearMonthDuration-002'/1]).
-export(['cbcl-multiply-yearMonthDuration-003'/1]).
-export(['cbcl-multiply-yearMonthDuration-004'/1]).
-export(['cbcl-multiply-yearMonthDuration-005'/1]).
-export(['cbcl-multiply-yearMonthDuration-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-multiply-yearMonthDuration2args-1',
   'op-multiply-yearMonthDuration2args-2',
   'op-multiply-yearMonthDuration2args-3',
   'op-multiply-yearMonthDuration2args-4',
   'op-multiply-yearMonthDuration2args-5',
   'op-multiply-yearMonthDuration-1',
   'op-multiply-yearMonthDuration-2',
   'op-multiply-yearMonthDuration-3',
   'op-multiply-yearMonthDuration-4',
   'op-multiply-yearMonthDuration-5',
   'op-multiply-yearMonthDuration-6',
   'op-multiply-yearMonthDuration-7',
   'op-multiply-yearMonthDuration-8',
   'op-multiply-yearMonthDuration-9',
   'op-multiply-yearMonthDuration-10',
   'op-multiply-yearMonthDuration-11',
   'op-multiply-yearMonthDuration-12',
   'op-multiply-yearMonthDuration-13',
   'op-multiply-yearMonthDuration-14',
   'op-multiply-yearMonthDuration-15',
   'op-multiply-yearMonthDuration-16',
   'op-multiply-yearMonthDuration-17',
   'op-multiply-yearMonthDuration-18',
   'op-multiply-yearMonthDuration-19',
   'op-multiply-yearMonthDuration-20',
   'K-YearMonthDurationMultiply-1',
   'K-YearMonthDurationMultiply-2',
   'K-YearMonthDurationMultiply-3',
   'K-YearMonthDurationMultiply-4',
   'K-YearMonthDurationMultiply-5',
   'K-YearMonthDurationMultiply-6',
   'K-YearMonthDurationMultiply-7',
   'K-YearMonthDurationMultiply-8',
   'K-YearMonthDurationMultiply-9',
   'K-YearMonthDurationMultiply-10',
   'K-YearMonthDurationMultiply-11',
   'K-YearMonthDurationMultiply-12',
   'K-YearMonthDurationMultiply-13',
   'cbcl-multiply-yearMonthDuration-001',
   'cbcl-multiply-yearMonthDuration-002',
   'cbcl-multiply-yearMonthDuration-003',
   'cbcl-multiply-yearMonthDuration-004',
   'cbcl-multiply-yearMonthDuration-005',
   'cbcl-multiply-yearMonthDuration-006'].
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
'op-multiply-yearMonthDuration2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") * xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") * xs:double(\"-0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") * xs:double(\"-0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") * xs:double(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") * xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2Y11M\") * 2.3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P6Y9M
      ",
   case xqerl_test:string_value(Res) of
             "P6Y9M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-2'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\")) * 2.0) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-3'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P20Y10M\") * 2.0)) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") * 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") * 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-6'(_Config) ->
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") * 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-7'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") * 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P7Y4M
      ",
   case xqerl_test:string_value(Res) of
             "P7Y4M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") * -2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P20Y2M
      ",
   case xqerl_test:string_value(Res) of
             "-P20Y2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-9'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P01Y01M\") * 2.0)) and fn:string((xs:yearMonthDuration(\"P02Y03M\") * 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-10'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P05Y02M\") * 2.0)) or fn:string((xs:yearMonthDuration(\"P05Y03M\") * 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P20Y11M\") * 2.0) div (xs:yearMonthDuration(\"P20Y11M\") * 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-12'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") * 2.0)) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") * 2.0) eq xs:yearMonthDuration(\"P23Y11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") * 2.0) ne xs:yearMonthDuration(\"P08Y05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-15'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") * 2.0) le xs:yearMonthDuration(\"P17Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-16'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") - xs:yearMonthDuration(\"P18Y02M\")) ge xs:yearMonthDuration(\"P18Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-yearMonthDuration-17'(_Config) ->
   Qry = "fn:count((xs:yearMonthDuration(\"P13Y09M\") *+0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-18'(_Config) ->
   Qry = "fn:count((xs:yearMonthDuration(\"P13Y09M\") *-0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-yearMonthDuration-19'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P13Y09M\") * fn:number(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'op-multiply-yearMonthDuration-20'(_Config) ->
   Qry = "for $i in (-3.9, -3.5, -3.1, -0.9, -0.5, -0.1, +0.1, +0.5, +0.9, +3.1, +3.5, +3.9) return xs:yearMonthDuration(\"P1M\") * $i",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P4M -P3M -P3M -P1M P0M P0M P0M P1M P1M P3M P4M P4M
      ",
   case xqerl_test:string_value(Res) of
             "-P4M -P3M -P3M -P1M P0M P0M P0M P1M P1M P3M P4M P4M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-YearMonthDurationMultiply-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") * 3 eq xs:yearMonthDuration(\"P18Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationMultiply-2'(_Config) ->
   Qry = "3 * xs:yearMonthDuration(\"P3Y36M\") eq xs:yearMonthDuration(\"P18Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationMultiply-3'(_Config) ->
   Qry = "0 * xs:yearMonthDuration(\"P3Y36M\") eq xs:yearMonthDuration(\"P0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationMultiply-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") * 0 eq xs:yearMonthDuration(\"P0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationMultiply-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:double(\"INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'K-YearMonthDurationMultiply-6'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:double(\"-INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'K-YearMonthDurationMultiply-7'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:double(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'K-YearMonthDurationMultiply-8'(_Config) ->
   Qry = "xs:duration(\"P1Y3M\") * 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationMultiply-9'(_Config) ->
   Qry = "3 * xs:duration(\"P1Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationMultiply-10'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") * xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationMultiply-11'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:dayTimeDuration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationMultiply-12'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") * xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-YearMonthDurationMultiply-13'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3D\") * xs:dayTimeDuration(\"P3D\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-multiply-yearMonthDuration-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(2) * 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-yearMonthDuration-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(2) * 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P2Y
      ",
   case xqerl_test:string_value(Res) of
             "P2Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-yearMonthDuration-003'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2Y\") * xs:double('NaN')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'cbcl-multiply-yearMonthDuration-004'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        0 * local:yearMonthDuration(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-yearMonthDuration-005'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        1 * local:yearMonthDuration(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P2Y
      ",
   case xqerl_test:string_value(Res) of
             "P2Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-yearMonthDuration-006'(_Config) ->
   Qry = "xs:double('NaN') * xs:yearMonthDuration(\"P2Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
