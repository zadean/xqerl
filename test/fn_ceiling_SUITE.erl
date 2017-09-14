-module('fn_ceiling_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-ceilingint1args-1'/1]).
-export(['fn-ceilingint1args-2'/1]).
-export(['fn-ceilingint1args-3'/1]).
-export(['fn-ceilingintg1args-1'/1]).
-export(['fn-ceilingintg1args-2'/1]).
-export(['fn-ceilingintg1args-3'/1]).
-export(['fn-ceilingdec1args-1'/1]).
-export(['fn-ceilingdec1args-2'/1]).
-export(['fn-ceilingdec1args-3'/1]).
-export(['fn-ceilingdbl1args-1'/1]).
-export(['fn-ceilingdbl1args-2'/1]).
-export(['fn-ceilingdbl1args-3'/1]).
-export(['fn-ceilingflt1args-1'/1]).
-export(['fn-ceilingflt1args-2'/1]).
-export(['fn-ceilingflt1args-3'/1]).
-export(['fn-ceilinglng1args-1'/1]).
-export(['fn-ceilinglng1args-2'/1]).
-export(['fn-ceilinglng1args-3'/1]).
-export(['fn-ceilingusht1args-1'/1]).
-export(['fn-ceilingusht1args-2'/1]).
-export(['fn-ceilingusht1args-3'/1]).
-export(['fn-ceilingnint1args-1'/1]).
-export(['fn-ceilingnint1args-2'/1]).
-export(['fn-ceilingnint1args-3'/1]).
-export(['fn-ceilingpint1args-1'/1]).
-export(['fn-ceilingpint1args-2'/1]).
-export(['fn-ceilingpint1args-3'/1]).
-export(['fn-ceilingulng1args-1'/1]).
-export(['fn-ceilingulng1args-2'/1]).
-export(['fn-ceilingulng1args-3'/1]).
-export(['fn-ceilingnpi1args-1'/1]).
-export(['fn-ceilingnpi1args-2'/1]).
-export(['fn-ceilingnpi1args-3'/1]).
-export(['fn-ceilingnni1args-1'/1]).
-export(['fn-ceilingnni1args-2'/1]).
-export(['fn-ceilingnni1args-3'/1]).
-export(['fn-ceilingsht1args-1'/1]).
-export(['fn-ceilingsht1args-2'/1]).
-export(['fn-ceilingsht1args-3'/1]).
-export(['K-CeilingFunc-1'/1]).
-export(['K-CeilingFunc-2'/1]).
-export(['K-CeilingFunc-3'/1]).
-export(['K-CeilingFunc-4'/1]).
-export(['K-CeilingFunc-5'/1]).
-export(['K-CeilingFunc-6'/1]).
-export(['K2-CeilingFunc-1'/1]).
-export(['K2-CeilingFunc-2'/1]).
-export(['K2-CeilingFunc-3'/1]).
-export(['K2-CeilingFunc-4'/1]).
-export(['K2-CeilingFunc-5'/1]).
-export(['K2-CeilingFunc-6'/1]).
-export(['K2-CeilingFunc-7'/1]).
-export(['K2-CeilingFunc-8'/1]).
-export(['K2-CeilingFunc-9'/1]).
-export(['K2-CeilingFunc-10'/1]).
-export(['K2-CeilingFunc-11'/1]).
-export(['K2-CeilingFunc-12'/1]).
-export(['fn-ceiling-1'/1]).
-export(['fn-ceiling-decimal-1'/1]).
-export(['fn-ceiling-decimal-2'/1]).
-export(['fn-ceiling-decimal-3'/1]).
-export(['fn-ceiling-decimal-4'/1]).
-export(['fn-ceiling-decimal-5'/1]).
-export(['fn-ceiling-decimal-6'/1]).
-export(['fn-ceiling-decimal-7'/1]).
-export(['fn-ceiling-double-1'/1]).
-export(['fn-ceiling-double-2'/1]).
-export(['fn-ceiling-double-3'/1]).
-export(['fn-ceiling-double-4'/1]).
-export(['fn-ceiling-double-5'/1]).
-export(['fn-ceiling-double-6'/1]).
-export(['fn-ceiling-double-7'/1]).
-export(['fn-ceiling-double-8'/1]).
-export(['fn-ceiling-double-9'/1]).
-export(['fn-ceiling-double-10'/1]).
-export(['fn-ceiling-double-11'/1]).
-export(['fn-ceiling-float-1'/1]).
-export(['fn-ceiling-float-2'/1]).
-export(['fn-ceiling-float-3'/1]).
-export(['fn-ceiling-float-4'/1]).
-export(['fn-ceiling-float-5'/1]).
-export(['fn-ceiling-float-6'/1]).
-export(['fn-ceiling-float-7'/1]).
-export(['fn-ceiling-float-8'/1]).
-export(['fn-ceiling-float-9'/1]).
-export(['fn-ceiling-float-10'/1]).
-export(['fn-ceiling-float-11'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-ceilingint1args-1',
   'fn-ceilingint1args-2',
   'fn-ceilingint1args-3',
   'fn-ceilingintg1args-1',
   'fn-ceilingintg1args-2',
   'fn-ceilingintg1args-3',
   'fn-ceilingdec1args-1',
   'fn-ceilingdec1args-2',
   'fn-ceilingdec1args-3',
   'fn-ceilingdbl1args-1',
   'fn-ceilingdbl1args-2',
   'fn-ceilingdbl1args-3',
   'fn-ceilingflt1args-1',
   'fn-ceilingflt1args-2',
   'fn-ceilingflt1args-3',
   'fn-ceilinglng1args-1',
   'fn-ceilinglng1args-2',
   'fn-ceilinglng1args-3',
   'fn-ceilingusht1args-1',
   'fn-ceilingusht1args-2',
   'fn-ceilingusht1args-3',
   'fn-ceilingnint1args-1',
   'fn-ceilingnint1args-2',
   'fn-ceilingnint1args-3',
   'fn-ceilingpint1args-1',
   'fn-ceilingpint1args-2',
   'fn-ceilingpint1args-3',
   'fn-ceilingulng1args-1',
   'fn-ceilingulng1args-2',
   'fn-ceilingulng1args-3',
   'fn-ceilingnpi1args-1',
   'fn-ceilingnpi1args-2',
   'fn-ceilingnpi1args-3',
   'fn-ceilingnni1args-1',
   'fn-ceilingnni1args-2',
   'fn-ceilingnni1args-3',
   'fn-ceilingsht1args-1',
   'fn-ceilingsht1args-2',
   'fn-ceilingsht1args-3',
   'K-CeilingFunc-1',
   'K-CeilingFunc-2',
   'K-CeilingFunc-3',
   'K-CeilingFunc-4',
   'K-CeilingFunc-5',
   'K-CeilingFunc-6',
   'K2-CeilingFunc-1',
   'K2-CeilingFunc-2',
   'K2-CeilingFunc-3',
   'K2-CeilingFunc-4',
   'K2-CeilingFunc-5',
   'K2-CeilingFunc-6',
   'K2-CeilingFunc-7',
   'K2-CeilingFunc-8',
   'K2-CeilingFunc-9',
   'K2-CeilingFunc-10',
   'K2-CeilingFunc-11',
   'K2-CeilingFunc-12',
   'fn-ceiling-1',
   'fn-ceiling-decimal-1',
   'fn-ceiling-decimal-2',
   'fn-ceiling-decimal-3',
   'fn-ceiling-decimal-4',
   'fn-ceiling-decimal-5',
   'fn-ceiling-decimal-6',
   'fn-ceiling-decimal-7',
   'fn-ceiling-double-1',
   'fn-ceiling-double-2',
   'fn-ceiling-double-3',
   'fn-ceiling-double-4',
   'fn-ceiling-double-5',
   'fn-ceiling-double-6',
   'fn-ceiling-double-7',
   'fn-ceiling-double-8',
   'fn-ceiling-double-9',
   'fn-ceiling-double-10',
   'fn-ceiling-double-11',
   'fn-ceiling-float-1',
   'fn-ceiling-float-2',
   'fn-ceiling-float-3',
   'fn-ceiling-float-4',
   'fn-ceiling-float-5',
   'fn-ceiling-float-6',
   'fn-ceiling-float-7',
   'fn-ceiling-float-8',
   'fn-ceiling-float-9',
   'fn-ceiling-float-10',
   'fn-ceiling-float-11'].
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
];
environment('emptydoc') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e0') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/abs/e0.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e1') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/abs/e1.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('e-1') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/abs/e-1.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-ceilingint1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:int(\"-2147483648\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -2147483648
      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingint1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:int(\"-1873914410\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1873914410
      ",
 Tst = xqerl:run("-1873914410"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingint1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:int(\"2147483647\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2147483647
      ",
 Tst = xqerl:run("2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingintg1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:integer(\"-999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingintg1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:integer(\"830993497117024304\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         830993497117024304
      ",
 Tst = xqerl:run("830993497117024304"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingintg1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:integer(\"999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingdec1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:decimal(\"-999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingdec1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:decimal(\"617375191608514839\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         617375191608514839
      ",
 Tst = xqerl:run("617375191608514839"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingdec1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:decimal(\"999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingdbl1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:double(\"-1.7976931348623157E308\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "-1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-ceilingdbl1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:double(\"0\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingdbl1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:double(\"1.7976931348623157E308\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1.7976931348623157E308
      ",
   case xqerl_types:string_value(Res) of
             "1.7976931348623157E308" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-ceilingflt1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:float(\"-3.4028235E38\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "-3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-ceilingflt1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:float(\"0\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingflt1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:float(\"3.4028235E38\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         3.4028235E38
      ",
   case xqerl_types:string_value(Res) of
             "3.4028235E38" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'fn-ceilinglng1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:long(\"-92233720368547758\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -92233720368547758
      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilinglng1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:long(\"-47175562203048468\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -47175562203048468
      ",
 Tst = xqerl:run("-47175562203048468"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilinglng1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:long(\"92233720368547758\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         92233720368547758
      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingusht1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:unsignedShort(\"0\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingusht1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:unsignedShort(\"44633\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         44633
      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingusht1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:unsignedShort(\"65535\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         65535
      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnint1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:negativeInteger(\"-999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnint1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:negativeInteger(\"-297014075999096793\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -297014075999096793
      ",
 Tst = xqerl:run("-297014075999096793"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnint1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:negativeInteger(\"-1\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingpint1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:positiveInteger(\"1\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingpint1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:positiveInteger(\"52704602390610033\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         52704602390610033
      ",
 Tst = xqerl:run("52704602390610033"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingpint1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:positiveInteger(\"999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingulng1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:unsignedLong(\"0\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingulng1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:unsignedLong(\"130747108607674654\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         130747108607674654
      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingulng1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:unsignedLong(\"184467440737095516\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         184467440737095516
      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnpi1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:nonPositiveInteger(\"-999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnpi1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:nonPositiveInteger(\"-475688437271870490\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -475688437271870490
      ",
 Tst = xqerl:run("-475688437271870490"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnpi1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:nonPositiveInteger(\"0\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingnni1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:nonNegativeInteger(\"0\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'fn-ceilingnni1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:nonNegativeInteger(\"303884545991464527\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         303884545991464527
      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingnni1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:nonNegativeInteger(\"999999999999999999\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingsht1args-1'(_Config) ->
   Qry = "fn:ceiling(xs:short(\"-32768\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -32768
      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingsht1args-2'(_Config) ->
   Qry = "fn:ceiling(xs:short(\"-5324\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         -5324
      ",
 Tst = xqerl:run("-5324"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceilingsht1args-3'(_Config) ->
   Qry = "fn:ceiling(xs:short(\"32767\"))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         32767
      ",
 Tst = xqerl:run("32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-CeilingFunc-1'(_Config) ->
   Qry = "ceiling()",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-CeilingFunc-2'(_Config) ->
   Qry = "ceiling(1, 2)",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-CeilingFunc-3'(_Config) ->
   Qry = "empty(ceiling(()))",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CeilingFunc-4'(_Config) ->
   Qry = "ceiling(10.5) eq 11",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CeilingFunc-5'(_Config) ->
   Qry = "ceiling(-10.5) eq -10",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CeilingFunc-6'(_Config) ->
   Qry = "ceiling(\"a string\")",
   Env = xqerl_test:handle_environment(environment('emptydoc')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-CeilingFunc-1'(_Config) ->
   Qry = "ceiling(xs:unsignedShort(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-2'(_Config) ->
   Qry = "ceiling(xs:unsignedLong(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-3'(_Config) ->
   Qry = "ceiling(xs:unsignedInt(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-4'(_Config) ->
   Qry = "ceiling(xs:unsignedByte(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-5'(_Config) ->
   Qry = "ceiling(xs:positiveInteger(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-6'(_Config) ->
   Qry = "ceiling(xs:nonPositiveInteger(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-7'(_Config) ->
   Qry = "ceiling(xs:nonNegativeInteger(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-8'(_Config) ->
   Qry = "ceiling(xs:negativeInteger(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e-1')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-9'(_Config) ->
   Qry = "ceiling(xs:long(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-10'(_Config) ->
   Qry = "ceiling(xs:int(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-11'(_Config) ->
   Qry = "ceiling(xs:short(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-CeilingFunc-12'(_Config) ->
   Qry = "ceiling(xs:byte(.)) instance of xs:integer",
   Env = xqerl_test:handle_environment(environment('e0')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-ceiling-1'(_Config) ->
   Qry = "for $x in (1, xs:decimal(2), xs:float(3), xs:double(4)) return 
           if ((ceiling($x)) instance of xs:integer) then \"integer\" 
           else if ((ceiling($x)) instance of xs:decimal) then \"decimal\" 
           else if ((ceiling($x)) instance of xs:float) then \"float\"
           else if ((ceiling($x)) instance of xs:double) then \"double\" 
           else error()
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"integer\", \"decimal\", \"float\", \"double\"
      ",
 Tst = xqerl:run("\"integer\", \"decimal\", \"float\", \"double\""),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-ceiling-decimal-1'(_Config) ->
   Qry = "ceiling(12.5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            13.0
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("13.0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-decimal-2'(_Config) ->
   Qry = "ceiling(12.9)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            13.0
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("13.0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-decimal-3'(_Config) ->
   Qry = "ceiling(0.000000001)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1.0
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("1.0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-decimal-4'(_Config) ->
   Qry = "ceiling(0.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.0
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("0.0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-decimal-5'(_Config) ->
   Qry = "ceiling(-0.1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.0
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("0.0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-decimal-6'(_Config) ->
   Qry = "ceiling(-12345678.567890)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -12345678
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("-12345678"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-decimal-7'(_Config) ->
   Qry = "ceiling(-1234567891234567.2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -1234567891234567.0
            xs:decimal
         
      ",
 case  begin Tst1 = xqerl:run("-1234567891234567.0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:decimal' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-1'(_Config) ->
   Qry = "ceiling(12.5e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            13.0e0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("13.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-2'(_Config) ->
   Qry = "ceiling(12.9e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            13.0e0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("13.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-3'(_Config) ->
   Qry = "ceiling(0.000000001e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1.0e0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("1.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-4'(_Config) ->
   Qry = "ceiling(0.0e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.0e0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("0.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-5'(_Config) ->
   Qry = "ceiling(-0.1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0.0e0
            -0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("-0.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso  begin Tst2 = xqerl:run("-0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-6'(_Config) ->
   Qry = "ceiling(-12345678.567890e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -12345678e0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("-12345678e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-7'(_Config) ->
   Qry = "ceiling(-1234567891234567.2e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -1234567891234567.0e0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("-1234567891234567.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-8'(_Config) ->
   Qry = "ceiling(xs:double('NaN'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            NaN
            xs:double
         
      ",
 case xqerl_types:string_value(Res) == "NaN" andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-9'(_Config) ->
   Qry = "ceiling(xs:double('INF'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            INF
            xs:double
         
      ",
 case xqerl_types:string_value(Res) == "INF" andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-10'(_Config) ->
   Qry = "ceiling(xs:double('-INF'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -INF
            xs:double
         
      ",
 case xqerl_types:string_value(Res) == "-INF" andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-double-11'(_Config) ->
   Qry = "ceiling(xs:double('-0'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0
            xs:double
         
      ",
 case  begin Tst1 = xqerl:run("-0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:double' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-1'(_Config) ->
   Qry = "ceiling(xs:float(12.5e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            13.0e0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("13.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-2'(_Config) ->
   Qry = "ceiling(xs:float(12.9e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            13.0e0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("13.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-3'(_Config) ->
   Qry = "ceiling(xs:float(0.000000001e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1.0e0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("1.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-4'(_Config) ->
   Qry = "ceiling(xs:float(0.0e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.0e0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("0.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-5'(_Config) ->
   Qry = "ceiling(xs:float(-0.1e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            0.0e0
            -0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("0.0e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso  begin Tst2 = xqerl:run("-0"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-6'(_Config) ->
   Qry = "ceiling(xs:float(-12345678.1e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -12345678e0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("-12345678e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-7'(_Config) ->
   Qry = "ceiling(xs:float(-1234567.2e0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -1234567e0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("-1234567e0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-8'(_Config) ->
   Qry = "ceiling(xs:float(xs:float('NaN')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            NaN
            xs:float
         
      ",
 case xqerl_types:string_value(Res) == "NaN" andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-9'(_Config) ->
   Qry = "ceiling(xs:float(xs:float('INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            INF
            xs:float
         
      ",
 case xqerl_types:string_value(Res) == "INF" andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-10'(_Config) ->
   Qry = "ceiling(xs:float(xs:float('-INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -INF
            xs:float
         
      ",
 case xqerl_types:string_value(Res) == "-INF" andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-ceiling-float-11'(_Config) ->
   Qry = "ceiling(xs:float(xs:float('-0')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            -0
            xs:float
         
      ",
 case  begin Tst1 = xqerl:run("-0"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end andalso xqerl_types:type(Res) == 'xs:float' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
