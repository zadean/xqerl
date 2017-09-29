-module('op_QName_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-qname-equal-1'/1]).
-export(['op-qname-equal-2'/1]).
-export(['op-qname-equal-3'/1]).
-export(['op-qname-equal-4'/1]).
-export(['op-qname-equal-5'/1]).
-export(['op-qname-equal-6'/1]).
-export(['op-qname-equal-7'/1]).
-export(['op-qname-equal-8'/1]).
-export(['op-qname-equal-9'/1]).
-export(['op-qname-equal-10'/1]).
-export(['op-qname-equal-11'/1]).
-export(['op-qname-equal-12'/1]).
-export(['op-qname-equal-13'/1]).
-export(['op-qname-equal-14'/1]).
-export(['op-qname-equal-15'/1]).
-export(['op-qname-equal-16'/1]).
-export(['op-qname-equal-17'/1]).
-export(['op-qname-equal-18'/1]).
-export(['op-qname-equal-19'/1]).
-export(['op-qname-equal-20'/1]).
-export(['op-qname-equal-21'/1]).
-export(['op-qname-equal-22'/1]).
-export(['op-qname-equal-23'/1]).
-export(['op-qname-equal-24'/1]).
-export(['value-comparison-1'/1]).
-export(['value-comparison-2'/1]).
-export(['K-QNameEQ-1'/1]).
-export(['K-QNameEQ-2'/1]).
-export(['K-QNameEQ-3'/1]).
-export(['K-QNameEQ-4'/1]).
-export(['K-QNameEQ-5'/1]).
-export(['K-QNameEQ-6'/1]).
-export(['K-QNameEQ-7'/1]).
-export(['K-QNameEQ-8'/1]).
-export(['K-QNameEQ-9'/1]).
-export(['K-QNameEQ-10'/1]).
-export(['cbcl-QName-equal-001'/1]).
-export(['cbcl-QName-equal-002'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-qname-equal-1',
   'op-qname-equal-2',
   'op-qname-equal-3',
   'op-qname-equal-4',
   'op-qname-equal-5',
   'op-qname-equal-6',
   'op-qname-equal-7',
   'op-qname-equal-8',
   'op-qname-equal-9',
   'op-qname-equal-10',
   'op-qname-equal-11',
   'op-qname-equal-12',
   'op-qname-equal-13',
   'op-qname-equal-14',
   'op-qname-equal-15',
   'op-qname-equal-16',
   'op-qname-equal-17',
   'op-qname-equal-18',
   'op-qname-equal-19',
   'op-qname-equal-20',
   'op-qname-equal-21',
   'op-qname-equal-22',
   'op-qname-equal-23',
   'op-qname-equal-24',
   'value-comparison-1',
   'value-comparison-2',
   'K-QNameEQ-1',
   'K-QNameEQ-2',
   'K-QNameEQ-3',
   'K-QNameEQ-4',
   'K-QNameEQ-5',
   'K-QNameEQ-6',
   'K-QNameEQ-7',
   'K-QNameEQ-8',
   'K-QNameEQ-9',
   'K-QNameEQ-10',
   'cbcl-QName-equal-001',
   'cbcl-QName-equal-002'].
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
'op-qname-equal-1'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") eq fn:QName(\"http://www.example.com/example\", \"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-2'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") ne fn:QName(\"http://www.example.com/example\", \"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-3'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example1\", \"person\") eq fn:QName(\"http://www.example.com/example2\", \"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-4'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example1\", \"person\") ne fn:QName(\"http://www.example.com/example2\", \"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-5'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person1\") eq fn:QName(\"http://www.example.com/example\",\"person2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-6'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person1\") ne fn:QName(\"http://www.example.com/example\",\"person2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-7'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") eq fn:QName(\"http://www.example.com/example\",\"px1:person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-8'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") ne fn:QName(\"http://www.example.com/example\",\"px1:person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-9'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") eq fn:QName(\"http://www.example.com/example\",\"px2:person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-10'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person\") ne fn:QName(\"http://www.example.com/example\",\"px2:person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-11'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person1\") eq fn:QName(\"http://www.example.com/example\",\"px2:person2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-12'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"px1:person1\") ne fn:QName(\"http://www.example.com/example\",\"px2:person2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-13'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example1\", \"px1:person1\") eq fn:QName(\"http://www.example.com/example2\",\"px2:person2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-14'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example1\", \"px1:person1\") ne fn:QName(\"http://www.example.com/example2\",\"px2:person2\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-15'(_Config) ->
   Qry = "fn:QName(\"\", \"person\") eq fn:QName(\"http://www.example.com/example\",\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-16'(_Config) ->
   Qry = "fn:QName(\"\", \"person\") ne fn:QName(\"http://www.example.com/example\",\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-17'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") eq fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-18'(_Config) ->
   Qry = "fn:QName(\"http://www.example.com/example\", \"person\") ne fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-19'(_Config) ->
   Qry = "fn:QName(\"\", \"person\") eq fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-20'(_Config) ->
   Qry = "fn:QName(\"\", \"person\") ne fn:QName(\"\",\"person\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-21'(_Config) ->
   Qry = "fn:not(fn:QName(\"http://www.example.com/example\", \"px1:person1\") eq fn:QName(\"http://www.example.com/example\",\"px2:person2\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-22'(_Config) ->
   Qry = "fn:not(fn:QName(\"http://www.example.com/example\", \"px1:person1\") ne fn:QName(\"http://www.example.com/example\",\"px2:person2\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-23'(_Config) ->
   Qry = "(fn:QName(\"http://www.example.com/example\", \"px:person\") eq fn:QName(\"http://www.example.com/example\",\"px:person\")) and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-qname-equal-24'(_Config) ->
   Qry = "(fn:QName(\"http://www.example.com/example\", \"px:person\") ne fn:QName(\"http://www.example.com/example\",\"px:person\")) and fn:true()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'value-comparison-1'(_Config) ->
   Qry = "xs:string(\"example.org/\") eq xs:anyURI(\"example.org/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'value-comparison-2'(_Config) ->
   Qry = "xs:string(\"example.org/\") ne xs:anyURI(\"example.org/\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-QNameEQ-1'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") eq QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-QNameEQ-2'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") eq QName(\"example.com/\", \"pdifferent:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-QNameEQ-3'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") ne QName(\"example.com/Nope\", \"p:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-QNameEQ-4'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") ne QName(\"example.com/\", \"p:ncnameNope\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-QNameEQ-5'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") lt 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-QNameEQ-6'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") eq xs:anyURI(\"org\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-QNameEQ-7'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") lt QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-QNameEQ-8'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") le QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-QNameEQ-9'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") gt QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-QNameEQ-10'(_Config) ->
   Qry = "QName(\"example.com/\", \"p:ncname\") ge QName(\"example.com/\", \"p:ncname\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-QName-equal-001'(_Config) ->
   Qry = "
        declare function local:QName-value($arg as xs:boolean) as xs:QName { if ($arg) then QName(\"example.com/\", \"p:ncname\") else QName(\"example.com/\", \"q:ncname\") };
        not(local:QName-value(true()) eq local:QName-value(false()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-QName-equal-002'(_Config) ->
   Qry = "
        declare function local:QName-value($arg as xs:boolean) as xs:QName { if ($arg) then QName(\"example.com/\", \"p:ncname\") else QName(\"example.com/\", \"q:ncname\") };
        not(local:QName-value(true()) ne local:QName-value(false()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
