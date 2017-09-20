-module('prod_PositionalVar_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K-ForExprPositionalVar-1'/1]).
-export(['K-ForExprPositionalVar-2'/1]).
-export(['K-ForExprPositionalVar-3'/1]).
-export(['K-ForExprPositionalVar-4'/1]).
-export(['K-ForExprPositionalVar-5'/1]).
-export(['K-ForExprPositionalVar-6'/1]).
-export(['K-ForExprPositionalVar-7'/1]).
-export(['K-ForExprPositionalVar-8'/1]).
-export(['K-ForExprPositionalVar-9'/1]).
-export(['K-ForExprPositionalVar-10'/1]).
-export(['K-ForExprPositionalVar-11'/1]).
-export(['K-ForExprPositionalVar-12'/1]).
-export(['K-ForExprPositionalVar-13'/1]).
-export(['K-ForExprPositionalVar-14'/1]).
-export(['K-ForExprPositionalVar-15'/1]).
-export(['K-ForExprPositionalVar-16'/1]).
-export(['K-ForExprPositionalVar-17'/1]).
-export(['K-ForExprPositionalVar-18'/1]).
-export(['K-ForExprPositionalVar-19'/1]).
-export(['K-ForExprPositionalVar-20'/1]).
-export(['K-ForExprPositionalVar-21'/1]).
-export(['K-ForExprPositionalVar-22'/1]).
-export(['K-ForExprPositionalVar-23'/1]).
-export(['K-ForExprPositionalVar-24'/1]).
-export(['K-ForExprPositionalVar-25'/1]).
-export(['K-ForExprPositionalVar-26'/1]).
-export(['K-ForExprPositionalVar-27'/1]).
-export(['K-ForExprPositionalVar-28'/1]).
-export(['K-ForExprPositionalVar-29'/1]).
-export(['K-ForExprPositionalVar-30'/1]).
-export(['K2-ForExprPositionalVar-1'/1]).
-export(['K2-ForExprPositionalVar-2'/1]).
-export(['K2-ForExprPositionalVar-3'/1]).
-export(['K2-ForExprPositionalVar-4'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'K-ForExprPositionalVar-1',
   'K-ForExprPositionalVar-2',
   'K-ForExprPositionalVar-3',
   'K-ForExprPositionalVar-4',
   'K-ForExprPositionalVar-5',
   'K-ForExprPositionalVar-6',
   'K-ForExprPositionalVar-7',
   'K-ForExprPositionalVar-8',
   'K-ForExprPositionalVar-9',
   'K-ForExprPositionalVar-10',
   'K-ForExprPositionalVar-11',
   'K-ForExprPositionalVar-12',
   'K-ForExprPositionalVar-13',
   'K-ForExprPositionalVar-14',
   'K-ForExprPositionalVar-15',
   'K-ForExprPositionalVar-16',
   'K-ForExprPositionalVar-17',
   'K-ForExprPositionalVar-18',
   'K-ForExprPositionalVar-19',
   'K-ForExprPositionalVar-20',
   'K-ForExprPositionalVar-21',
   'K-ForExprPositionalVar-22',
   'K-ForExprPositionalVar-23',
   'K-ForExprPositionalVar-24',
   'K-ForExprPositionalVar-25',
   'K-ForExprPositionalVar-26',
   'K-ForExprPositionalVar-27',
   'K-ForExprPositionalVar-28',
   'K-ForExprPositionalVar-29',
   'K-ForExprPositionalVar-30',
   'K2-ForExprPositionalVar-1',
   'K2-ForExprPositionalVar-2',
   'K2-ForExprPositionalVar-3',
   'K2-ForExprPositionalVar-4'].
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
'K-ForExprPositionalVar-1'(_Config) ->
   Qry = "for $a at $p in (1, 2) return 1, $p",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-ForExprPositionalVar-2'(_Config) ->
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-ForExprPositionalVar-3'(_Config) ->
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-ForExprPositionalVar-4'(_Config) ->
   Qry = "for $a at $p1 in (1, 2), $b at $p2 in (1, 2), $c at $p3 in (1, 2) return 1, $p3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0008" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0008'}) end.
'K-ForExprPositionalVar-5'(_Config) ->
   Qry = "for $a at p1 in 1 return 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-ForExprPositionalVar-6'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in (1, 2, 3) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-7'(_Config) ->
   Qry = "deep-equal((true(), true()), for $i at $p in (1, 2) return boolean($p))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-8'(_Config) ->
   Qry = "for $i at $p in (1, 2, 3) return $p + \"1\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K-ForExprPositionalVar-9'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in string-to-codepoints(\"abc\") return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-10'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in distinct-values((1, 2, 3, 1, 2)) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-11'(_Config) ->
   Qry = "empty(for $i at $p in () return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ForExprPositionalVar-12'(_Config) ->
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 13, (current-date(), 3)) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-13'(_Config) ->
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 1, (current-date(), 3)) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-14'(_Config) ->
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in insert-before((1, current-time()), 2, (current-date(), 3)) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-15'(_Config) ->
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in 1 to 4 return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-16'(_Config) ->
   Qry = "deep-equal((1, 2, 3, 4), for $i at $p in -10 to -7 return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-17'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 2) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-18'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 4) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-19'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, current-time()), 10) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-20'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, current-time()), 0) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-21'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 1) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-22'(_Config) ->
   Qry = "deep-equal((1, 2, 3), for $i at $p in remove((1, 2, 3, current-time()), 3) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-23'(_Config) ->
   Qry = "1 eq (for $i at $p in subsequence((1, 2, 3, current-time()), 1, 1) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-24'(_Config) ->
   Qry = "empty(for $i at $p in subsequence((1, 2, 3, current-time()), 5) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ForExprPositionalVar-25'(_Config) ->
   Qry = "empty(for $i at $p in subsequence((1, 2, 3, current-time()), 5, 8) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-ForExprPositionalVar-26'(_Config) ->
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 3, 2) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-27'(_Config) ->
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 1, 2) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-28'(_Config) ->
   Qry = "deep-equal((1, 2), for $i at $p in subsequence((1, 2, 3, current-time()), 2, 2) return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-29'(_Config) ->
   Qry = "1 eq (for $i at $p in 0 return $p)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-ForExprPositionalVar-30'(_Config) ->
   Qry = "deep-equal(for $i at $p in (1, 2, 3, 4) return ($i, $p), (1, 1, 2, 2, 3, 3, 4, 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-ForExprPositionalVar-1'(_Config) ->
   Qry = "for $i at $p in remove((1, 2, 3), 10) return $p",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         1 2 3
      ",
   case xqerl_test:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ForExprPositionalVar-2'(_Config) ->
   Qry = "let $tree := <e> <a id=\"1\"/> <a id=\"2\"/> <a id=\"3\"/> </e> for $i at $pos in (\"a\", \"b\", \"c\") return ($tree/@id eq $pos, $pos)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            1 2 3
            
         
      ",
 case (xqerl_test:string_value(Res) == "1 2 3") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-ForExprPositionalVar-3'(_Config) ->
   Qry = "let $tree := <e> <a id=\"1\"/> <a id=\"2\"/> <a id=\"3\"/> </e> for $i at $pos in (\"a\", \"b\", \"c\") return ($tree/a/@id = $pos, $pos)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         true 1 true 2 true 3
      ",
   case xqerl_test:string_value(Res) of
             "true 1 true 2 true 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-ForExprPositionalVar-4'(_Config) ->
   Qry = "for $i at $pos in (3 to 6) let $let := $pos + 1 return ($let, $let - 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         2 1 3 2 4 3 5 4
      ",
   case xqerl_test:string_value(Res) of
             "2 1 3 2 4 3 5 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
