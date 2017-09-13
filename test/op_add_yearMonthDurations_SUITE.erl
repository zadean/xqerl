-module('op_add_yearMonthDurations_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-yearMonthDurations2args-1'/1]).
-export(['op-add-yearMonthDurations2args-2'/1]).
-export(['op-add-yearMonthDurations2args-3'/1]).
-export(['op-add-yearMonthDurations2args-4'/1]).
-export(['op-add-yearMonthDurations2args-5'/1]).
-export(['op-add-yearMonthDurations-1'/1]).
-export(['op-add-yearMonthDurations-2'/1]).
-export(['op-add-yearMonthDurations-3'/1]).
-export(['op-add-yearMonthDurations-4'/1]).
-export(['op-add-yearMonthDurations-5'/1]).
-export(['op-add-yearMonthDurations-6'/1]).
-export(['op-add-yearMonthDurations-7'/1]).
-export(['op-add-yearMonthDurations-8'/1]).
-export(['op-add-yearMonthDurations-9'/1]).
-export(['op-add-yearMonthDurations-10'/1]).
-export(['op-add-yearMonthDurations-11'/1]).
-export(['op-add-yearMonthDurations-12'/1]).
-export(['op-add-yearMonthDurations-13'/1]).
-export(['op-add-yearMonthDurations-14'/1]).
-export(['op-add-yearMonthDurations-15'/1]).
-export(['op-add-yearMonthDurations-16'/1]).
-export(['K-YearMonthDurationAdd-1'/1]).
-export(['K-YearMonthDurationAdd-2'/1]).
-export(['K-YearMonthDurationAdd-3'/1]).
-export(['cbcl-add-yearMonthDurations-001'/1]).
-export(['cbcl-add-yearMonthDurations-002'/1]).
-export(['cbcl-add-yearMonthDurations-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-yearMonthDurations2args-1',
   'op-add-yearMonthDurations2args-2',
   'op-add-yearMonthDurations2args-3',
   'op-add-yearMonthDurations2args-4',
   'op-add-yearMonthDurations2args-5',
   'op-add-yearMonthDurations-1',
   'op-add-yearMonthDurations-2',
   'op-add-yearMonthDurations-3',
   'op-add-yearMonthDurations-4',
   'op-add-yearMonthDurations-5',
   'op-add-yearMonthDurations-6',
   'op-add-yearMonthDurations-7',
   'op-add-yearMonthDurations-8',
   'op-add-yearMonthDurations-9',
   'op-add-yearMonthDurations-10',
   'op-add-yearMonthDurations-11',
   'op-add-yearMonthDurations-12',
   'op-add-yearMonthDurations-13',
   'op-add-yearMonthDurations-14',
   'op-add-yearMonthDurations-15',
   'op-add-yearMonthDurations-16',
   'K-YearMonthDurationAdd-1',
   'K-YearMonthDurationAdd-2',
   'K-YearMonthDurationAdd-3',
   'cbcl-add-yearMonthDurations-001',
   'cbcl-add-yearMonthDurations-002',
   'cbcl-add-yearMonthDurations-003'].
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
'op-add-yearMonthDurations2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") + xs:yearMonthDuration(\"P0Y0M\")",
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
'op-add-yearMonthDurations2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1000Y6M
      ",
   case xqerl_types:string_value(Res) of
             "P1000Y6M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P2031Y
      ",
   case xqerl_types:string_value(Res) of
             "P2031Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") + xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1000Y6M
      ",
   case xqerl_types:string_value(Res) of
             "P1000Y6M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") + xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P2031Y
      ",
   case xqerl_types:string_value(Res) of
             "P2031Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2Y11M\") + xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P6Y2M
      ",
   case xqerl_types:string_value(Res) of
             "P6Y2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations-2'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P10Y11M\") + xs:yearMonthDuration(\"P12Y07M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-3'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P20Y10M\") + xs:yearMonthDuration(\"P19Y10M\")) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") + xs:yearMonthDuration(\"P02Y11M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") + xs:yearMonthDuration(\"P03Y06M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-6'(_Config) ->
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") + xs:yearMonthDuration(\"P10Y01M\"))",
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
'op-add-yearMonthDurations-7'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") + xs:yearMonthDuration(\"P01Y02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P4Y10M
      ",
   case xqerl_types:string_value(Res) of
             "P4Y10M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") + xs:yearMonthDuration(\"-P11Y02M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -P1Y1M
      ",
   case xqerl_types:string_value(Res) of
             "-P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDurations-9'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P01Y01M\") + xs:yearMonthDuration(\"P02Y02M\"))) and fn:string((xs:yearMonthDuration(\"P02Y03M\") + xs:yearMonthDuration(\"P04Y04M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-10'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P05Y02M\") + xs:yearMonthDuration(\"P03Y04M\"))) or fn:string((xs:yearMonthDuration(\"P05Y03M\") + xs:yearMonthDuration(\"P01Y03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-11'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P42Y10M\") + xs:yearMonthDuration(\"P28Y10M\")) div (xs:yearMonthDuration(\"P10Y10M\") + xs:yearMonthDuration(\"P60Y10M\"))",
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
'op-add-yearMonthDurations-12'(_Config) ->
   Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") + xs:yearMonthDuration(\"P05Y07M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") + xs:yearMonthDuration(\"P23Y11M\")) eq xs:yearMonthDuration(\"P23Y11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") + xs:yearMonthDuration(\"P08Y05M\")) ne xs:yearMonthDuration(\"P08Y05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-15'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") + xs:yearMonthDuration(\"P17Y02M\")) le xs:yearMonthDuration(\"P17Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDurations-16'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") + xs:yearMonthDuration(\"P18Y02M\")) ge xs:yearMonthDuration(\"P18Y02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationAdd-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y3M\") + xs:yearMonthDuration(\"P0M\") eq xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationAdd-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0M\") + xs:yearMonthDuration(\"P3Y3M\") eq xs:yearMonthDuration(\"P3Y3M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationAdd-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P32Y43M\") + xs:yearMonthDuration(\"P12Y13M\") eq xs:yearMonthDuration(\"P48Y8M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-add-yearMonthDurations-001'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        local:yearMonthDuration(1, 1) + xs:yearMonthDuration(\"P0Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1Y1M
      ",
   case xqerl_types:string_value(Res) of
             "P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-yearMonthDurations-002'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        xs:yearMonthDuration(\"P0Y\") + local:yearMonthDuration(1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P1Y1M
      ",
   case xqerl_types:string_value(Res) of
             "P1Y1M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-yearMonthDurations-003'(_Config) ->
   Qry = "
        declare function local:yearMonthDuration($years as xs:integer, $months as xs:integer ) { xs:yearMonthDuration(concat('P', $years, 'Y', $months, 'M')) };
        local:yearMonthDuration(1, 1) + local:yearMonthDuration(1, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         P2Y2M
      ",
   case xqerl_types:string_value(Res) of
             "P2Y2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
