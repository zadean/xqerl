-module('op_add_yearMonthDuration_to_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-add-yearMonthDuration-to-date2args-1'/1]).
-export(['op-add-yearMonthDuration-to-date2args-2'/1]).
-export(['op-add-yearMonthDuration-to-date2args-3'/1]).
-export(['op-add-yearMonthDuration-to-date2args-4'/1]).
-export(['op-add-yearMonthDuration-to-date2args-5'/1]).
-export(['op-add-yearMonthDuration-to-date-1'/1]).
-export(['op-add-yearMonthDuration-to-date-2'/1]).
-export(['op-add-yearMonthDuration-to-date-3'/1]).
-export(['op-add-yearMonthDuration-to-date-4'/1]).
-export(['op-add-yearMonthDuration-to-date-5'/1]).
-export(['op-add-yearMonthDuration-to-date-6'/1]).
-export(['op-add-yearMonthDuration-to-date-7'/1]).
-export(['op-add-yearMonthDuration-to-date-8'/1]).
-export(['op-add-yearMonthDuration-to-date-9'/1]).
-export(['op-add-yearMonthDuration-to-date-10'/1]).
-export(['op-add-yearMonthDuration-to-date-12'/1]).
-export(['op-add-yearMonthDuration-to-date-13'/1]).
-export(['op-add-yearMonthDuration-to-date-14'/1]).
-export(['op-add-yearMonthDuration-to-date-15'/1]).
-export(['op-add-yearMonthDuration-to-date-16'/1]).
-export(['K-DateAddYMD-1'/1]).
-export(['K-DateAddYMD-2'/1]).
-export(['K-DateAddYMD-3'/1]).
-export(['K-DateAddYMD-4'/1]).
-export(['cbcl-add-yearMonthDuration-to-date-001'/1]).
-export(['cbcl-add-yearMonthDuration-to-date-002'/1]).
-export(['cbcl-add-yearMonthDuration-to-date-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-add-yearMonthDuration-to-date2args-1',
   'op-add-yearMonthDuration-to-date2args-2',
   'op-add-yearMonthDuration-to-date2args-3',
   'op-add-yearMonthDuration-to-date2args-4',
   'op-add-yearMonthDuration-to-date2args-5',
   'op-add-yearMonthDuration-to-date-1',
   'op-add-yearMonthDuration-to-date-2',
   'op-add-yearMonthDuration-to-date-3',
   'op-add-yearMonthDuration-to-date-4',
   'op-add-yearMonthDuration-to-date-5',
   'op-add-yearMonthDuration-to-date-6',
   'op-add-yearMonthDuration-to-date-7',
   'op-add-yearMonthDuration-to-date-8',
   'op-add-yearMonthDuration-to-date-9',
   'op-add-yearMonthDuration-to-date-10',
   'op-add-yearMonthDuration-to-date-12',
   'op-add-yearMonthDuration-to-date-13',
   'op-add-yearMonthDuration-to-date-14',
   'op-add-yearMonthDuration-to-date-15',
   'op-add-yearMonthDuration-to-date-16',
   'K-DateAddYMD-1',
   'K-DateAddYMD-2',
   'K-DateAddYMD-3',
   'K-DateAddYMD-4',
   'cbcl-add-yearMonthDuration-to-date-001',
   'cbcl-add-yearMonthDuration-to-date-002',
   'cbcl-add-yearMonthDuration-to-date-003'].
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
'op-add-yearMonthDuration-to-date2args-1'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1970-01-01Z
      ",
   case xqerl_types:string_value(Res) of
             "1970-01-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date2args-2'(_Config) ->
   Qry = "xs:date(\"1983-11-17Z\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1983-11-17Z
      ",
   case xqerl_types:string_value(Res) of
             "1983-11-17Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date2args-3'(_Config) ->
   Qry = "xs:date(\"2030-12-31Z\") + xs:yearMonthDuration(\"P0Y0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2030-12-31Z
      ",
   case xqerl_types:string_value(Res) of
             "2030-12-31Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date2args-4'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:yearMonthDuration(\"P1000Y6M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2970-07-01Z
      ",
   case xqerl_types:string_value(Res) of
             "2970-07-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date2args-5'(_Config) ->
   Qry = "xs:date(\"1970-01-01Z\") + xs:yearMonthDuration(\"P2030Y12M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         4001-01-01Z
      ",
   case xqerl_types:string_value(Res) of
             "4001-01-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date-1'(_Config) ->
   Qry = "xs:date(\"2000-10-30\") + xs:yearMonthDuration(\"P1Y2M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2001-12-30
      ",
   case xqerl_types:string_value(Res) of
             "2001-12-30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date-2'(_Config) ->
   Qry = "fn:string(xs:date(\"2000-12-12Z\") + xs:dayTimeDuration(\"P12DT10H07M\")) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-3'(_Config) ->
   Qry = "fn:string((xs:date(\"1999-10-23Z\") + xs:yearMonthDuration(\"P19Y12M\"))) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") + xs:yearMonthDuration(\"P20Y03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") + xs:yearMonthDuration(\"P10Y01M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-6'(_Config) ->
   Qry = "fn:number(xs:date(\"1988-01-28Z\") + xs:yearMonthDuration(\"P09Y02M\"))",
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
'op-add-yearMonthDuration-to-date-7'(_Config) ->
   Qry = "fn:string(xs:date(\"1989-07-05Z\") + xs:yearMonthDuration(\"P08Y04M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1997-11-05Z
      ",
   case xqerl_types:string_value(Res) of
             "1997-11-05Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'op-add-yearMonthDuration-to-date-8'(_Config) ->
   Qry = "(xs:date(\"0001-01-01Z\") + xs:yearMonthDuration(\"-P20Y07M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0021-06-01Z
            -0020-06-01Z
         
      ",
 case (xqerl_types:string_value(Res) == "-0021-06-01Z") orelse (xqerl_types:string_value(Res) == "-0020-06-01Z") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'op-add-yearMonthDuration-to-date-9'(_Config) ->
   Qry = "fn:string((xs:date(\"1993-12-09Z\") + xs:yearMonthDuration(\"P03Y03M\"))) and fn:string((xs:date(\"1993-12-09Z\") + xs:yearMonthDuration(\"P03Y03M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-10'(_Config) ->
   Qry = "fn:string((xs:date(\"1985-07-05Z\") + xs:yearMonthDuration(\"P02Y02M\"))) or fn:string((xs:date(\"1985-07-05Z\") + xs:yearMonthDuration(\"P02Y02M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-12'(_Config) ->
   Qry = "fn:string((xs:date(\"1980-03-02Z\") + xs:yearMonthDuration(\"P05Y05M\"))) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-13'(_Config) ->
   Qry = "(xs:date(\"1980-05-05Z\") + xs:yearMonthDuration(\"P23Y11M\")) eq xs:date(\"1980-05-05Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-14'(_Config) ->
   Qry = "(xs:date(\"1979-12-12Z\") + xs:yearMonthDuration(\"P08Y08M\")) ne xs:date(\"1979-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-15'(_Config) ->
   Qry = "(xs:date(\"1978-12-12Z\") + xs:yearMonthDuration(\"P17Y12M\")) le xs:date(\"1978-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-add-yearMonthDuration-to-date-16'(_Config) ->
   Qry = "(xs:date(\"1977-12-12Z\") + xs:yearMonthDuration(\"P18Y02M\")) ge xs:date(\"1977-12-12Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateAddYMD-1'(_Config) ->
   Qry = "xs:date(\"1999-08-12\") + xs:yearMonthDuration(\"P3Y7M\") eq xs:date(\"2003-03-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateAddYMD-2'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P3Y7M\") + xs:date(\"1999-08-12\") eq xs:date(\"2003-03-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DateAddYMD-3'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y\") - xs:date(\"1999-08-12\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-DateAddYMD-4'(_Config) ->
   Qry = "xs:yearMonthDuration(\"P1Y\") - xs:dateTime(\"1999-08-12T08:01:23\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-add-yearMonthDuration-to-date-001'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	local:date(2008, 05, 12) + xs:dayTimeDuration(\"P0D\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2008-05-12
      ",
   case xqerl_types:string_value(Res) of
             "2008-05-12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-yearMonthDuration-to-date-002'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	xs:dayTimeDuration(\"P0D\") + local:date(2008, 05, 12)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2008-05-12
      ",
   case xqerl_types:string_value(Res) of
             "2008-05-12" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'cbcl-add-yearMonthDuration-to-date-003'(_Config) ->
   Qry = "
      	declare function local:two-digit($number as xs:integer) { let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string }; 
      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) }; 
      	local:date(25252734927766555, 05, 12) + xs:yearMonthDuration(\"P4267296Y\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0001'}) end.
