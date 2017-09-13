-module('op_divide_yearMonthDuration_by_yearMonthDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-1'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-2'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-3'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-4'/1]).
-export(['op-divide-yearMonthDuration-by-yearMonthDuration2args-5'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-1'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-2'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-3'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-4'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-5'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-6'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-7'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-8'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-9'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-10'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-11'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-12'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-13'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-14'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-15'/1]).
-export(['op-divide-yearMonthDuration-by-yMD-16'/1]).
-export(['K-YearMonthDurationDivideYMD-1'/1]).
-export(['cbcl-divide-yearMonthDuration-by-yearMonthDuration-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-divide-yearMonthDuration-by-yearMonthDuration2args-1',
   'op-divide-yearMonthDuration-by-yearMonthDuration2args-2',
   'op-divide-yearMonthDuration-by-yearMonthDuration2args-3',
   'op-divide-yearMonthDuration-by-yearMonthDuration2args-4',
   'op-divide-yearMonthDuration-by-yearMonthDuration2args-5',
   'op-divide-yearMonthDuration-by-yMD-1',
   'op-divide-yearMonthDuration-by-yMD-2',
   'op-divide-yearMonthDuration-by-yMD-3',
   'op-divide-yearMonthDuration-by-yMD-4',
   'op-divide-yearMonthDuration-by-yMD-5',
   'op-divide-yearMonthDuration-by-yMD-6',
   'op-divide-yearMonthDuration-by-yMD-7',
   'op-divide-yearMonthDuration-by-yMD-8',
   'op-divide-yearMonthDuration-by-yMD-9',
   'op-divide-yearMonthDuration-by-yMD-10',
   'op-divide-yearMonthDuration-by-yMD-11',
   'op-divide-yearMonthDuration-by-yMD-12',
   'op-divide-yearMonthDuration-by-yMD-13',
   'op-divide-yearMonthDuration-by-yMD-14',
   'op-divide-yearMonthDuration-by-yMD-15',
   'op-divide-yearMonthDuration-by-yMD-16',
   'K-YearMonthDurationDivideYMD-1',
   'cbcl-divide-yearMonthDuration-by-yearMonthDuration-001'].
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
'op-divide-yearMonthDuration-by-yearMonthDuration2args-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:yearMonthDuration(\"P0Y1M\")",
   Qry1 = Qry,
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
'op-divide-yearMonthDuration-by-yearMonthDuration2args-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1000Y6M\") div xs:yearMonthDuration(\"P0Y1M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         12006
      ",
 Tst = xqerl:run("12006"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yearMonthDuration2args-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2030Y12M\") div xs:yearMonthDuration(\"P0Y1M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         24372
      ",
 Tst = xqerl:run("24372"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yearMonthDuration2args-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
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
'op-divide-yearMonthDuration-by-yearMonthDuration2args-5'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
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
'op-divide-yearMonthDuration-by-yMD-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y4M\") div xs:yearMonthDuration(\"-P1Y4M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2.5
      ",
 Tst = xqerl:run("-2.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P10Y11M\") div xs:yearMonthDuration(\"P12Y07M\") and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P20Y10M\") div xs:yearMonthDuration(\"P19Y10M\") or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-4'(_Config) ->
   Qry = "fn:not(xs:yearMonthDuration(\"P11Y04M\") div xs:yearMonthDuration(\"P02Y11M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-5'(_Config) ->
   Qry = "fn:boolean(xs:yearMonthDuration(\"P05Y08M\") div xs:yearMonthDuration(\"P03Y06M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-6'(_Config) ->
   Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") div xs:yearMonthDuration(\"P02Y09M\"))",
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
'op-divide-yearMonthDuration-by-yMD-7'(_Config) ->
   Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") div xs:yearMonthDuration(\"P03Y08M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"1\"
      ",
 Tst = xqerl:run("\"1\""),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-8'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") div xs:yearMonthDuration(\"-P10Y01M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-9'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P01Y01M\") div xs:yearMonthDuration(\"P02Y02M\")) and (xs:yearMonthDuration(\"P02Y03M\") div xs:yearMonthDuration(\"P04Y04M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-10'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P05Y02M\") div xs:yearMonthDuration(\"P03Y04M\")) or (xs:yearMonthDuration(\"P05Y03M\") div xs:yearMonthDuration(\"P01Y03M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-11'(_Config) ->
   Qry = "round-half-to-even( (xs:yearMonthDuration(\"P42Y10M\") div xs:yearMonthDuration(\"P20Y10M\")) div (xs:yearMonthDuration(\"P20Y11M\") div xs:yearMonthDuration(\"P18Y11M\")), 15)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.859410358565737
      ",
 Tst = xqerl:run("1.859410358565737"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-12'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y11M\") div xs:yearMonthDuration(\"P05Y07M\")) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-13'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P23Y11M\") div xs:yearMonthDuration(\"P23Y11M\")) eq xs:decimal(2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-14'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P21Y12M\") div xs:yearMonthDuration(\"P08Y05M\")) ne xs:decimal(2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-15'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P10Y01M\") div xs:yearMonthDuration(\"P17Y02M\")) le xs:decimal(2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-divide-yearMonthDuration-by-yMD-16'(_Config) ->
   Qry = "(xs:yearMonthDuration(\"P13Y09M\") div xs:yearMonthDuration(\"P18Y02M\")) ge xs:decimal(2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-YearMonthDurationDivideYMD-1'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:yearMonthDuration(\"P60Y\") eq 0.1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-divide-yearMonthDuration-by-yearMonthDuration-001'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P2Y\") div xs:yearMonthDuration(\"P0Y\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOAR0001'}) end.
