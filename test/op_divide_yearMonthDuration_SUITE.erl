-module('op_divide_yearMonthDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-divide-yearMonthDuration2args-1'/1]).
-export(['op-divide-yearMonthDuration2args-2'/1]).
-export(['op-divide-yearMonthDuration2args-3'/1]).
-export(['op-divide-yearMonthDuration2args-4'/1]).
-export(['op-divide-yearMonthDuration2args-5'/1]).
-export(['op-divide-yearMonthDuration-1'/1]).
-export(['op-divide-yearMonthDuration-2'/1]).
-export(['op-divide-yearMonthDuration-3'/1]).
-export(['op-divide-yearMonthDuration-4'/1]).
-export(['op-divide-yearMonthDuration-5'/1]).
-export(['op-divide-yearMonthDuration-6'/1]).
-export(['op-divide-yearMonthDuration-7'/1]).
-export(['op-divide-yearMonthDuration-8'/1]).
-export(['op-divide-yearMonthDuration-9'/1]).
-export(['op-divide-yearMonthDuration-10'/1]).
-export(['op-divide-yearMonthDuration-11'/1]).
-export(['op-divide-yearMonthDuration-12'/1]).
-export(['op-divide-yearMonthDuration-13'/1]).
-export(['op-divide-yearMonthDuration-14'/1]).
-export(['op-divide-yearMonthDuration-15'/1]).
-export(['op-divide-yearMonthDuration-16'/1]).
-export(['op-divide-yearMonthDuration-17'/1]).
-export(['K-YearMonthDurationDivide-1'/1]).
-export(['K-YearMonthDurationDivide-2'/1]).
-export(['K-YearMonthDurationDivide-3'/1]).
-export(['K-YearMonthDurationDivide-4'/1]).
-export(['K-YearMonthDurationDivide-5'/1]).
-export(['K-YearMonthDurationDivide-6'/1]).
-export(['cbcl-divide-yearMonthDuration-001'/1]).
-export(['cbcl-divide-yearMonthDuration-002'/1]).
-export(['cbcl-divide-yearMonthDuration-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-divide-yearMonthDuration2args-1',
   'op-divide-yearMonthDuration2args-2',
   'op-divide-yearMonthDuration2args-3',
   'op-divide-yearMonthDuration2args-4',
   'op-divide-yearMonthDuration2args-5',
   'op-divide-yearMonthDuration-1',
   'op-divide-yearMonthDuration-2',
   'op-divide-yearMonthDuration-3',
   'op-divide-yearMonthDuration-4',
   'op-divide-yearMonthDuration-5',
   'op-divide-yearMonthDuration-6',
   'op-divide-yearMonthDuration-7',
   'op-divide-yearMonthDuration-8',
   'op-divide-yearMonthDuration-9',
   'op-divide-yearMonthDuration-10',
   'op-divide-yearMonthDuration-11',
   'op-divide-yearMonthDuration-12',
   'op-divide-yearMonthDuration-13',
   'op-divide-yearMonthDuration-14',
   'op-divide-yearMonthDuration-15',
   'op-divide-yearMonthDuration-16',
   'op-divide-yearMonthDuration-17',
   'K-YearMonthDurationDivide-1',
   'K-YearMonthDurationDivide-2',
   'K-YearMonthDurationDivide-3',
   'K-YearMonthDurationDivide-4',
   'K-YearMonthDurationDivide-5',
   'K-YearMonthDurationDivide-6',
   'cbcl-divide-yearMonthDuration-001',
   'cbcl-divide-yearMonthDuration-002',
   'cbcl-divide-yearMonthDuration-003'].
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
'op-divide-yearMonthDuration2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_types:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") div xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_types:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") div xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_types:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:double(\"0.1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_types:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P0M
      ",
   case xqerl_types:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration-1'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P2Y11M\") div 1.5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1Y11M
      ",
   case xqerl_types:string_value(Res) of
             "P1Y11M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration-2'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") div 2.0)) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-3'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P20Y10M\") div 2.0)) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") div 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") div 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-6'(_Config) ->
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") div 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         NaN
      ",
   case xqerl_types:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration-7'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") div 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1Y10M
      ",
   case xqerl_types:string_value(Res) of
             "P1Y10M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") div -2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P5Y
      ",
   case xqerl_types:string_value(Res) of
             "-P5Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration-9'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P01Y01M\") div 2.0)) and fn:string((xs:yearMonthDuration(\"P02Y03M\") div 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-10'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P05Y02M\") div 2.0)) or fn:string((xs:yearMonthDuration(\"P05Y03M\") div 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P20Y11M\") div 2.0) div (xs:yearMonthDuration(\"P20Y11M\") div 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1
      ",
   case xqerl_types:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-divide-yearMonthDuration-12'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") div 2.0)) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") div 2.0) eq xs:yearMonthDuration(\"P23Y11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") div 2.0) ne xs:yearMonthDuration(\"P08Y05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-15'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") div 2.0) le xs:yearMonthDuration(\"P17Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-16'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") div 2.0) ge xs:yearMonthDuration(\"P18Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-17'(_Config) ->
   Qry = "for $i in (-2, -4, -10, -50, +50, +10, +4, +2) return (xs:yearMonthDuration(\"P5M\") div $i)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P2M -P1M P0M P0M P0M P1M P1M P3M
      ",
   case xqerl_types:string_value(Res) of
             "-P2M -P1M P0M P0M P0M P1M P1M P3M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-YearMonthDurationDivide-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div 3 eq xs:yearMonthDuration(\"P2Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationDivide-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"-INF\") eq xs:yearMonthDuration(\"P0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationDivide-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"INF\") eq xs:yearMonthDuration(\"P0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationDivide-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'K-YearMonthDurationDivide-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'K-YearMonthDurationDivide-6'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"-0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-divide-yearMonthDuration-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(2) div 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-divide-yearMonthDuration-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(2) div 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P2Y
      ",
   case xqerl_types:string_value(Res) of
             "P2Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-divide-yearMonthDuration-003'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };
        local:yearMonthDuration(768614336404564650) div 0.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
