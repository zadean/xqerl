-module('fn_number_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-numberint1args-1'/1]).
-export(['fn-numberint1args-2'/1]).
-export(['fn-numberint1args-3'/1]).
-export(['fn-numberintg1args-1'/1]).
-export(['fn-numberintg1args-2'/1]).
-export(['fn-numberintg1args-3'/1]).
-export(['fn-numberdec1args-1'/1]).
-export(['fn-numberdec1args-2'/1]).
-export(['fn-numberdec1args-3'/1]).
-export(['fn-numberdbl1args-1'/1]).
-export(['fn-numberdbl1args-2'/1]).
-export(['fn-numberdbl1args-3'/1]).
-export(['fn-numberflt1args-1'/1]).
-export(['fn-numberflt1args-2'/1]).
-export(['fn-numberflt1args-3'/1]).
-export(['fn-numberlng1args-1'/1]).
-export(['fn-numberlng1args-2'/1]).
-export(['fn-numberlng1args-3'/1]).
-export(['fn-numberusht1args-1'/1]).
-export(['fn-numberusht1args-2'/1]).
-export(['fn-numberusht1args-3'/1]).
-export(['fn-numbernint1args-1'/1]).
-export(['fn-numbernint1args-2'/1]).
-export(['fn-numbernint1args-3'/1]).
-export(['fn-numberpint1args-1'/1]).
-export(['fn-numberpint1args-2'/1]).
-export(['fn-numberpint1args-3'/1]).
-export(['fn-numberulng1args-1'/1]).
-export(['fn-numberulng1args-2'/1]).
-export(['fn-numberulng1args-3'/1]).
-export(['fn-numbernpi1args-1'/1]).
-export(['fn-numbernpi1args-2'/1]).
-export(['fn-numbernpi1args-3'/1]).
-export(['fn-numbernni1args-1'/1]).
-export(['fn-numbernni1args-2'/1]).
-export(['fn-numbernni1args-3'/1]).
-export(['fn-numbersht1args-1'/1]).
-export(['fn-numbersht1args-2'/1]).
-export(['fn-numbersht1args-3'/1]).
-export(['fn-number-1'/1]).
-export(['fn-number-2'/1]).
-export(['fn-number-3'/1]).
-export(['fn-number-4'/1]).
-export(['fn-number-5'/1]).
-export(['fn-number-6'/1]).
-export(['fn-number-7'/1]).
-export(['fn-number-8'/1]).
-export(['fn-number-9'/1]).
-export(['fn-number-10'/1]).
-export(['K-NodeNumberFunc-1'/1]).
-export(['K-NodeNumberFunc-2'/1]).
-export(['K-NodeNumberFunc-3'/1]).
-export(['K-NodeNumberFunc-4'/1]).
-export(['K-NodeNumberFunc-5'/1]).
-export(['K-NodeNumberFunc-6'/1]).
-export(['K-NodeNumberFunc-7'/1]).
-export(['K-NodeNumberFunc-8'/1]).
-export(['K-NodeNumberFunc-9'/1]).
-export(['K-NodeNumberFunc-10'/1]).
-export(['K-NodeNumberFunc-11'/1]).
-export(['K-NodeNumberFunc-12'/1]).
-export(['K-NodeNumberFunc-13'/1]).
-export(['K-NodeNumberFunc-14'/1]).
-export(['K-NodeNumberFunc-15'/1]).
-export(['K-NodeNumberFunc-16'/1]).
-export(['K-NodeNumberFunc-17'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-numberint1args-1',
   'fn-numberint1args-2',
   'fn-numberint1args-3',
   'fn-numberintg1args-1',
   'fn-numberintg1args-2',
   'fn-numberintg1args-3',
   'fn-numberdec1args-1',
   'fn-numberdec1args-2',
   'fn-numberdec1args-3',
   'fn-numberdbl1args-1',
   'fn-numberdbl1args-2',
   'fn-numberdbl1args-3',
   'fn-numberflt1args-1',
   'fn-numberflt1args-2',
   'fn-numberflt1args-3',
   'fn-numberlng1args-1',
   'fn-numberlng1args-2',
   'fn-numberlng1args-3',
   'fn-numberusht1args-1',
   'fn-numberusht1args-2',
   'fn-numberusht1args-3',
   'fn-numbernint1args-1',
   'fn-numbernint1args-2',
   'fn-numbernint1args-3',
   'fn-numberpint1args-1',
   'fn-numberpint1args-2',
   'fn-numberpint1args-3',
   'fn-numberulng1args-1',
   'fn-numberulng1args-2',
   'fn-numberulng1args-3',
   'fn-numbernpi1args-1',
   'fn-numbernpi1args-2',
   'fn-numbernpi1args-3',
   'fn-numbernni1args-1',
   'fn-numbernni1args-2',
   'fn-numbernni1args-3',
   'fn-numbersht1args-1',
   'fn-numbersht1args-2',
   'fn-numbersht1args-3',
   'fn-number-1',
   'fn-number-2',
   'fn-number-3',
   'fn-number-4',
   'fn-number-5',
   'fn-number-6',
   'fn-number-7',
   'fn-number-8',
   'fn-number-9',
   'fn-number-10',
   'K-NodeNumberFunc-1',
   'K-NodeNumberFunc-2',
   'K-NodeNumberFunc-3',
   'K-NodeNumberFunc-4',
   'K-NodeNumberFunc-5',
   'K-NodeNumberFunc-6',
   'K-NodeNumberFunc-7',
   'K-NodeNumberFunc-8',
   'K-NodeNumberFunc-9',
   'K-NodeNumberFunc-10',
   'K-NodeNumberFunc-11',
   'K-NodeNumberFunc-12',
   'K-NodeNumberFunc-13',
   'K-NodeNumberFunc-14',
   'K-NodeNumberFunc-15',
   'K-NodeNumberFunc-16',
   'K-NodeNumberFunc-17'].
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
'fn-numberint1args-1'(_Config) ->
   Qry = "fn:number(xs:int(\"-2147483648\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2.147483648E9
      ",
   case xqerl_types:string_value(Res) of
             "-2.147483648E9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberint1args-2'(_Config) ->
   Qry = "fn:number(xs:int(\"-1873914410\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.87391441E9
      ",
   case xqerl_types:string_value(Res) of
             "-1.87391441E9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberint1args-3'(_Config) ->
   Qry = "fn:number(xs:int(\"2147483647\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2.147483647E9
      ",
   case xqerl_types:string_value(Res) of
             "2.147483647E9" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberintg1args-1'(_Config) ->
   Qry = "fn:number(xs:integer(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "-1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberintg1args-2'(_Config) ->
   Qry = "fn:number(xs:integer(\"830993497117024304\")) eq 830993497117024304",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numberintg1args-3'(_Config) ->
   Qry = "fn:number(xs:integer(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberdec1args-1'(_Config) ->
   Qry = "fn:number(xs:decimal(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "-1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberdec1args-2'(_Config) ->
   Qry = "fn:number(xs:decimal(\"617375191608514839\")) eq 617375191608514839",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numberdec1args-3'(_Config) ->
   Qry = "fn:number(xs:decimal(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberdbl1args-1'(_Config) ->
   Qry = "fn:number(xs:double(\"-1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "-1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberdbl1args-2'(_Config) ->
   Qry = "fn:number(xs:double(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberdbl1args-3'(_Config) ->
   Qry = "fn:number(xs:double(\"1.7976931348623157E308\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberflt1args-1'(_Config) ->
   Qry = "fn:number(xs:float(\"-3.4028235E38\")) eq -3.4028234663852885E38",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numberflt1args-2'(_Config) ->
   Qry = "fn:number(xs:float(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberflt1args-3'(_Config) ->
   Qry = "fn:number(xs:float(\"3.4028235E38\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            3.4028234663852885E38
            3.402823466385289E38
            3.4028234663852886E38
         
      ",
 case (xqerl_types:string_value(Res) == "3.4028234663852885E38") orelse (xqerl_types:string_value(Res) == "3.402823466385289E38") orelse (xqerl_types:string_value(Res) == "3.4028234663852886E38") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-numberlng1args-1'(_Config) ->
   Qry = "fn:number(xs:long(\"-92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -9.223372036854776E16
      ",
   case xqerl_types:string_value(Res) of
             "-9.223372036854776E16" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberlng1args-2'(_Config) ->
   Qry = "fn:number(xs:long(\"-47175562203048468\")) eq -47175562203048468",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numberlng1args-3'(_Config) ->
   Qry = "fn:number(xs:long(\"92233720368547758\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         9.223372036854776E16
      ",
   case xqerl_types:string_value(Res) of
             "9.223372036854776E16" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberusht1args-1'(_Config) ->
   Qry = "fn:number(xs:unsignedShort(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberusht1args-2'(_Config) ->
   Qry = "fn:number(xs:unsignedShort(\"44633\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         44633
      ",
   case xqerl_types:string_value(Res) of
             "44633" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberusht1args-3'(_Config) ->
   Qry = "fn:number(xs:unsignedShort(\"65535\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         65535
      ",
   case xqerl_types:string_value(Res) of
             "65535" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbernint1args-1'(_Config) ->
   Qry = "fn:number(xs:negativeInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "-1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbernint1args-2'(_Config) ->
   Qry = "fn:number(xs:negativeInteger(\"-297014075999096793\")) eq -297014075999096793",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numbernint1args-3'(_Config) ->
   Qry = "fn:number(xs:negativeInteger(\"-1\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1
      ",
   case xqerl_types:string_value(Res) of
             "-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberpint1args-1'(_Config) ->
   Qry = "fn:number(xs:positiveInteger(\"1\"))",
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
'fn-numberpint1args-2'(_Config) ->
   Qry = "fn:number(xs:positiveInteger(\"52704602390610033\")) eq 52704602390610033",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numberpint1args-3'(_Config) ->
   Qry = "fn:number(xs:positiveInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberulng1args-1'(_Config) ->
   Qry = "fn:number(xs:unsignedLong(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numberulng1args-2'(_Config) ->
   Qry = "fn:number(xs:unsignedLong(\"130747108607674654\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1.3074710860767466E17
            1.30747108607674648E17
            1.30747108607674649E17
            1.3074710860767465E17
            1.30747108607674651E17
            1.30747108607674652E17
            1.30747108607674653E17
            1.30747108607674654E17
            1.30747108607674655E17
            1.30747108607674656E17
            1.30747108607674657E17
            1.30747108607674658E17
            1.30747108607674659E17
            1.30747108607674661E17
            1.30747108607674662E17
            1.30747108607674663E17
            1.30747108607674664E17
         
      ",
 case (xqerl_types:string_value(Res) == "1.3074710860767466E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674648E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674649E17") orelse (xqerl_types:string_value(Res) == "1.3074710860767465E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674651E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674652E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674653E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674654E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674655E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674656E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674657E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674658E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674659E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674661E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674662E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674663E17") orelse (xqerl_types:string_value(Res) == "1.30747108607674664E17") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-numberulng1args-3'(_Config) ->
   Qry = "fn:number(xs:unsignedLong(\"184467440737095516\")) eq 1.8446744073709551E17",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numbernpi1args-1'(_Config) ->
   Qry = "fn:number(xs:nonPositiveInteger(\"-999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "-1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbernpi1args-2'(_Config) ->
   Qry = "fn:number(xs:nonPositiveInteger(\"-475688437271870490\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -4.7568843727187049E17
            -4.756884372718705E17
            -4.7568843727187046E17
         
      ",
 case (xqerl_types:string_value(Res) == "-4.7568843727187049E17") orelse (xqerl_types:string_value(Res) == "-4.756884372718705E17") orelse (xqerl_types:string_value(Res) == "-4.7568843727187046E17") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-numbernpi1args-3'(_Config) ->
   Qry = "fn:number(xs:nonPositiveInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbernni1args-1'(_Config) ->
   Qry = "fn:number(xs:nonNegativeInteger(\"0\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         0
      ",
   case xqerl_types:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbernni1args-2'(_Config) ->
   Qry = "fn:number(xs:nonNegativeInteger(\"303884545991464527\")) eq 303884545991464527",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-numbernni1args-3'(_Config) ->
   Qry = "fn:number(xs:nonNegativeInteger(\"999999999999999999\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.0E18
      ",
   case xqerl_types:string_value(Res) of
             "1.0E18" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbersht1args-1'(_Config) ->
   Qry = "fn:number(xs:short(\"-32768\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -32768
      ",
   case xqerl_types:string_value(Res) of
             "-32768" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbersht1args-2'(_Config) ->
   Qry = "fn:number(xs:short(\"-5324\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5324
      ",
   case xqerl_types:string_value(Res) of
             "-5324" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-numbersht1args-3'(_Config) ->
   Qry = "fn:number(xs:short(\"32767\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         32767
      ",
   case xqerl_types:string_value(Res) of
             "32767" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-number-1'(_Config) ->
   Qry = "fn:number(())",
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
'fn-number-2'(_Config) ->
   Qry = "fn:number(\"A String\")",
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
'fn-number-3'(_Config) ->
   Qry = "fn:number()",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-number-4'(_Config) ->
   Qry = "fn:number(.)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-number-5'(_Config) ->
   Qry = "number(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            xs:double
            1.0e0
         
      ",
 case  begin Tst2 = xqerl:run("1.0e0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-number-6'(_Config) ->
   Qry = "number(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            xs:double
            0.0e0
         
      ",
 case  begin Tst2 = xqerl:run("0.0e0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-number-7'(_Config) ->
   Qry = "number(implicit-timezone())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            xs:double
            NaN
         
      ",
 case xqerl_types:string_value(Res) == "NaN" andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-number-8'(_Config) ->
   Qry = "number(\"  -22e0  \")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            xs:double
            -22e0
         
      ",
 case  begin Tst2 = xqerl:run("-22e0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-number-9'(_Config) ->
   Qry = "number(\"+22e0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            xs:double
            2.2e1
         
      ",
 case  begin Tst2 = xqerl:run("2.2e1"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-number-10'(_Config) ->
   Qry = "number(xs:untypedAtomic(\"1000\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            xs:double
            1e3
         
      ",
 case  begin Tst2 = xqerl:run("1e3"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'K-NodeNumberFunc-1'(_Config) ->
   Qry = "number(1, 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-NodeNumberFunc-2'(_Config) ->
   Qry = "fn:number(1) eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-3'(_Config) ->
   Qry = "not(fn:number(\"results in NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-4'(_Config) ->
   Qry = "fn:number(\"results in NaN\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-5'(_Config) ->
   Qry = "fn:number(1) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-6'(_Config) ->
   Qry = "fn:number(1.1) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-7'(_Config) ->
   Qry = "fn:number(xs:float(3)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-8'(_Config) ->
   Qry = "fn:number(xs:double(3)) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-9'(_Config) ->
   Qry = "fn:number(\"NaN\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-10'(_Config) ->
   Qry = "fn:number(()) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-11'(_Config) ->
   Qry = "not(fn:number(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-12'(_Config) ->
   Qry = "string(number(xs:anyURI(\"example.com/\"))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-13'(_Config) ->
   Qry = "string(number(xs:anyURI(\"1\"))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-14'(_Config) ->
   Qry = "string(number(\"1\")) eq \"1\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-15'(_Config) ->
   Qry = "string(number(xs:gYear(\"2005\"))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-16'(_Config) ->
   Qry = "deep-equal((1, 2, 3)[number()], (1, 2, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NodeNumberFunc-17'(_Config) ->
   Qry = "(1)[number()] eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
