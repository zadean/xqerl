-module('fn_sum_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-sumint1args-1'/1]).
-export(['fn-sumint1args-2'/1]).
-export(['fn-sumint1args-3'/1]).
-export(['fn-sumintg1args-1'/1]).
-export(['fn-sumintg1args-2'/1]).
-export(['fn-sumintg1args-3'/1]).
-export(['fn-sumdec1args-1'/1]).
-export(['fn-sumdec1args-2'/1]).
-export(['fn-sumdec1args-3'/1]).
-export(['fn-sumdbl1args-1'/1]).
-export(['fn-sumdbl1args-2'/1]).
-export(['fn-sumdbl1args-3'/1]).
-export(['fn-sumflt1args-1'/1]).
-export(['fn-sumflt1args-2'/1]).
-export(['fn-sumflt1args-3'/1]).
-export(['fn-sumlng1args-1'/1]).
-export(['fn-sumlng1args-2'/1]).
-export(['fn-sumlng1args-3'/1]).
-export(['fn-sumusht1args-1'/1]).
-export(['fn-sumusht1args-2'/1]).
-export(['fn-sumusht1args-3'/1]).
-export(['fn-sumnint1args-1'/1]).
-export(['fn-sumnint1args-2'/1]).
-export(['fn-sumnint1args-3'/1]).
-export(['fn-sumpint1args-1'/1]).
-export(['fn-sumpint1args-2'/1]).
-export(['fn-sumpint1args-3'/1]).
-export(['fn-sumulng1args-1'/1]).
-export(['fn-sumulng1args-2'/1]).
-export(['fn-sumulng1args-3'/1]).
-export(['fn-sumnpi1args-1'/1]).
-export(['fn-sumnpi1args-2'/1]).
-export(['fn-sumnpi1args-3'/1]).
-export(['fn-sumnni1args-1'/1]).
-export(['fn-sumnni1args-2'/1]).
-export(['fn-sumnni1args-3'/1]).
-export(['fn-sumsht1args-1'/1]).
-export(['fn-sumsht1args-2'/1]).
-export(['fn-sumsht1args-3'/1]).
-export(['fn-sumint2args-1'/1]).
-export(['fn-sumint2args-2'/1]).
-export(['fn-sumint2args-3'/1]).
-export(['fn-sumint2args-4'/1]).
-export(['fn-sumintg2args-1'/1]).
-export(['fn-sumintg2args-2'/1]).
-export(['fn-sumintg2args-3'/1]).
-export(['fn-sumintg2args-4'/1]).
-export(['fn-sumdec2args-1'/1]).
-export(['fn-sumdec2args-2'/1]).
-export(['fn-sumdec2args-3'/1]).
-export(['fn-sumdec2args-4'/1]).
-export(['fn-sumdbl2args-1'/1]).
-export(['fn-sumdbl2args-2'/1]).
-export(['fn-sumdbl2args-3'/1]).
-export(['fn-sumdbl2args-4'/1]).
-export(['fn-sumflt2args-1'/1]).
-export(['fn-sumflt2args-2'/1]).
-export(['fn-sumflt2args-3'/1]).
-export(['fn-sumflt2args-4'/1]).
-export(['fn-sumlng2args-1'/1]).
-export(['fn-sumlng2args-2'/1]).
-export(['fn-sumlng2args-3'/1]).
-export(['fn-sumlng2args-4'/1]).
-export(['fn-sumusht2args-1'/1]).
-export(['fn-sumusht2args-2'/1]).
-export(['fn-sumusht2args-3'/1]).
-export(['fn-sumusht2args-4'/1]).
-export(['fn-sumusht2args-5'/1]).
-export(['fn-sumnint2args-1'/1]).
-export(['fn-sumnint2args-2'/1]).
-export(['fn-sumnint2args-3'/1]).
-export(['fn-sumnint2args-4'/1]).
-export(['fn-sumpint2args-1'/1]).
-export(['fn-sumpint2args-2'/1]).
-export(['fn-sumpint2args-3'/1]).
-export(['fn-sumpint2args-4'/1]).
-export(['fn-sumpint2args-5'/1]).
-export(['fn-sumulng2args-1'/1]).
-export(['fn-sumulng2args-2'/1]).
-export(['fn-sumulng2args-3'/1]).
-export(['fn-sumulng2args-4'/1]).
-export(['fn-sumulng2args-5'/1]).
-export(['fn-sumnpi2args-1'/1]).
-export(['fn-sumnpi2args-2'/1]).
-export(['fn-sumnpi2args-3'/1]).
-export(['fn-sumnpi2args-4'/1]).
-export(['fn-sumnni2args-1'/1]).
-export(['fn-sumnni2args-2'/1]).
-export(['fn-sumnni2args-3'/1]).
-export(['fn-sumnni2args-4'/1]).
-export(['fn-sumnni2args-5'/1]).
-export(['fn-sumsht2args-1'/1]).
-export(['fn-sumsht2args-2'/1]).
-export(['fn-sumsht2args-3'/1]).
-export(['fn-sumsht2args-4'/1]).
-export(['fn-sumint3args-1'/1]).
-export(['fn-sumint3args-2'/1]).
-export(['fn-sumint3args-3'/1]).
-export(['fn-sumint3args-4'/1]).
-export(['fn-sumintg3args-1'/1]).
-export(['fn-sumintg3args-2'/1]).
-export(['fn-sumintg3args-3'/1]).
-export(['fn-sumintg3args-4'/1]).
-export(['fn-sumdec3args-1'/1]).
-export(['fn-sumdec3args-2'/1]).
-export(['fn-sumdec3args-3'/1]).
-export(['fn-sumdec3args-4'/1]).
-export(['fn-sumdbl3args-1'/1]).
-export(['fn-sumdbl3args-2'/1]).
-export(['fn-sumdbl3args-3'/1]).
-export(['fn-sumdbl3args-4'/1]).
-export(['fn-sumdbl3args-5'/1]).
-export(['fn-sumdbl3args-6'/1]).
-export(['fn-sumflt3args-1'/1]).
-export(['fn-sumflt3args-2'/1]).
-export(['fn-sumflt3args-3'/1]).
-export(['fn-sumflt3args-4'/1]).
-export(['fn-sumflt3args-5'/1]).
-export(['fn-sumflt3args-6'/1]).
-export(['fn-sumlng3args-1'/1]).
-export(['fn-sumlng3args-2'/1]).
-export(['fn-sumlng3args-3'/1]).
-export(['fn-sumlng3args-4'/1]).
-export(['fn-sumlng3args-5'/1]).
-export(['fn-sumlng3args-6'/1]).
-export(['fn-sumusht3args-1'/1]).
-export(['fn-sumusht3args-2'/1]).
-export(['fn-sumusht3args-3'/1]).
-export(['fn-sumusht3args-4'/1]).
-export(['fn-sumusht3args-5'/1]).
-export(['fn-sumusht3args-6'/1]).
-export(['fn-sumusht3args-7'/1]).
-export(['fn-sumnint3args-1'/1]).
-export(['fn-sumnint3args-2'/1]).
-export(['fn-sumpint3args-1'/1]).
-export(['fn-sumpint3args-2'/1]).
-export(['fn-sumpint3args-3'/1]).
-export(['fn-sumpint3args-4'/1]).
-export(['fn-sumpint3args-5'/1]).
-export(['fn-sumpint3args-6'/1]).
-export(['fn-sumpint3args-7'/1]).
-export(['fn-sumulng3args-1'/1]).
-export(['fn-sumulng3args-2'/1]).
-export(['fn-sumulng3args-3'/1]).
-export(['fn-sumulng3args-4'/1]).
-export(['fn-sumulng3args-5'/1]).
-export(['fn-sumulng3args-6'/1]).
-export(['fn-sumulng3args-7'/1]).
-export(['fn-sumnpi3args-1'/1]).
-export(['fn-sumnpi3args-2'/1]).
-export(['fn-sumnpi3args-3'/1]).
-export(['fn-sumnpi3args-4'/1]).
-export(['fn-sumnpi3args-5'/1]).
-export(['fn-sumnpi3args-6'/1]).
-export(['fn-sumnni3args-1'/1]).
-export(['fn-sumnni3args-2'/1]).
-export(['fn-sumnni3args-3'/1]).
-export(['fn-sumnni3args-4'/1]).
-export(['fn-sumnni3args-5'/1]).
-export(['fn-sumnni3args-6'/1]).
-export(['fn-sumnni3args-7'/1]).
-export(['fn-sumsht3args-1'/1]).
-export(['fn-sumsht3args-2'/1]).
-export(['fn-sumsht3args-3'/1]).
-export(['fn-sumsht3args-4'/1]).
-export(['K-SeqSUMFunc-1'/1]).
-export(['K-SeqSUMFunc-2'/1]).
-export(['K-SeqSUMFunc-3'/1]).
-export(['K-SeqSUMFunc-4'/1]).
-export(['K-SeqSUMFunc-5'/1]).
-export(['K-SeqSUMFunc-6'/1]).
-export(['K-SeqSUMFunc-7'/1]).
-export(['K-SeqSUMFunc-8'/1]).
-export(['K-SeqSUMFunc-9'/1]).
-export(['K-SeqSUMFunc-10'/1]).
-export(['K-SeqSUMFunc-11'/1]).
-export(['K-SeqSUMFunc-12'/1]).
-export(['K-SeqSUMFunc-13'/1]).
-export(['K-SeqSUMFunc-14'/1]).
-export(['K-SeqSUMFunc-15'/1]).
-export(['K-SeqSUMFunc-16'/1]).
-export(['K-SeqSUMFunc-17'/1]).
-export(['K-SeqSUMFunc-18'/1]).
-export(['K-SeqSUMFunc-19'/1]).
-export(['K-SeqSUMFunc-20'/1]).
-export(['K-SeqSUMFunc-21'/1]).
-export(['K-SeqSUMFunc-22'/1]).
-export(['K-SeqSUMFunc-23'/1]).
-export(['K-SeqSUMFunc-24'/1]).
-export(['K-SeqSUMFunc-25'/1]).
-export(['K-SeqSUMFunc-26'/1]).
-export(['K-SeqSUMFunc-27'/1]).
-export(['K-SeqSUMFunc-28'/1]).
-export(['K-SeqSUMFunc-29'/1]).
-export(['K-SeqSUMFunc-30'/1]).
-export(['K-SeqSUMFunc-31'/1]).
-export(['K-SeqSUMFunc-32'/1]).
-export(['K-SeqSUMFunc-33'/1]).
-export(['K2-SeqSUMFunc-1'/1]).
-export(['K2-SeqSUMFunc-2'/1]).
-export(['K2-SeqSUMFunc-3'/1]).
-export(['K2-SeqSUMFunc-4'/1]).
-export(['fn-sum-1'/1]).
-export(['fn-sum-2'/1]).
-export(['fn-sum-3'/1]).
-export(['fn-sum-4'/1]).
-export(['fn-sum-5'/1]).
-export(['fn-sum-6'/1]).
-export(['fn-sum-7'/1]).
-export(['fn-sum-8'/1]).
-export(['fn-sum-9'/1]).
-export(['fn-sum-10'/1]).
-export(['cbcl-sum-func-001'/1]).
-export(['cbcl-sum-func-002'/1]).
-export(['cbcl-sum-func-003'/1]).
-export(['cbcl-sum-func-004'/1]).
-export(['cbcl-sum-func-005'/1]).
-export(['cbcl-sum-func-006'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-sumint1args-1',
   'fn-sumint1args-2',
   'fn-sumint1args-3',
   'fn-sumintg1args-1',
   'fn-sumintg1args-2',
   'fn-sumintg1args-3',
   'fn-sumdec1args-1',
   'fn-sumdec1args-2',
   'fn-sumdec1args-3',
   'fn-sumdbl1args-1',
   'fn-sumdbl1args-2',
   'fn-sumdbl1args-3',
   'fn-sumflt1args-1',
   'fn-sumflt1args-2',
   'fn-sumflt1args-3',
   'fn-sumlng1args-1',
   'fn-sumlng1args-2',
   'fn-sumlng1args-3',
   'fn-sumusht1args-1',
   'fn-sumusht1args-2',
   'fn-sumusht1args-3',
   'fn-sumnint1args-1',
   'fn-sumnint1args-2',
   'fn-sumnint1args-3',
   'fn-sumpint1args-1',
   'fn-sumpint1args-2',
   'fn-sumpint1args-3',
   'fn-sumulng1args-1',
   'fn-sumulng1args-2',
   'fn-sumulng1args-3',
   'fn-sumnpi1args-1',
   'fn-sumnpi1args-2',
   'fn-sumnpi1args-3',
   'fn-sumnni1args-1',
   'fn-sumnni1args-2',
   'fn-sumnni1args-3',
   'fn-sumsht1args-1',
   'fn-sumsht1args-2',
   'fn-sumsht1args-3',
   'fn-sumint2args-1',
   'fn-sumint2args-2',
   'fn-sumint2args-3',
   'fn-sumint2args-4',
   'fn-sumintg2args-1',
   'fn-sumintg2args-2',
   'fn-sumintg2args-3',
   'fn-sumintg2args-4',
   'fn-sumdec2args-1',
   'fn-sumdec2args-2',
   'fn-sumdec2args-3',
   'fn-sumdec2args-4',
   'fn-sumdbl2args-1',
   'fn-sumdbl2args-2',
   'fn-sumdbl2args-3',
   'fn-sumdbl2args-4',
   'fn-sumflt2args-1',
   'fn-sumflt2args-2',
   'fn-sumflt2args-3',
   'fn-sumflt2args-4',
   'fn-sumlng2args-1',
   'fn-sumlng2args-2',
   'fn-sumlng2args-3',
   'fn-sumlng2args-4',
   'fn-sumusht2args-1',
   'fn-sumusht2args-2',
   'fn-sumusht2args-3',
   'fn-sumusht2args-4',
   'fn-sumusht2args-5',
   'fn-sumnint2args-1',
   'fn-sumnint2args-2',
   'fn-sumnint2args-3',
   'fn-sumnint2args-4',
   'fn-sumpint2args-1',
   'fn-sumpint2args-2',
   'fn-sumpint2args-3',
   'fn-sumpint2args-4',
   'fn-sumpint2args-5',
   'fn-sumulng2args-1',
   'fn-sumulng2args-2',
   'fn-sumulng2args-3',
   'fn-sumulng2args-4',
   'fn-sumulng2args-5',
   'fn-sumnpi2args-1',
   'fn-sumnpi2args-2',
   'fn-sumnpi2args-3',
   'fn-sumnpi2args-4',
   'fn-sumnni2args-1',
   'fn-sumnni2args-2',
   'fn-sumnni2args-3',
   'fn-sumnni2args-4',
   'fn-sumnni2args-5',
   'fn-sumsht2args-1',
   'fn-sumsht2args-2',
   'fn-sumsht2args-3',
   'fn-sumsht2args-4',
   'fn-sumint3args-1',
   'fn-sumint3args-2',
   'fn-sumint3args-3',
   'fn-sumint3args-4',
   'fn-sumintg3args-1',
   'fn-sumintg3args-2',
   'fn-sumintg3args-3',
   'fn-sumintg3args-4',
   'fn-sumdec3args-1',
   'fn-sumdec3args-2',
   'fn-sumdec3args-3',
   'fn-sumdec3args-4',
   'fn-sumdbl3args-1',
   'fn-sumdbl3args-2',
   'fn-sumdbl3args-3',
   'fn-sumdbl3args-4',
   'fn-sumdbl3args-5',
   'fn-sumdbl3args-6',
   'fn-sumflt3args-1',
   'fn-sumflt3args-2',
   'fn-sumflt3args-3',
   'fn-sumflt3args-4',
   'fn-sumflt3args-5',
   'fn-sumflt3args-6',
   'fn-sumlng3args-1',
   'fn-sumlng3args-2',
   'fn-sumlng3args-3',
   'fn-sumlng3args-4',
   'fn-sumlng3args-5',
   'fn-sumlng3args-6',
   'fn-sumusht3args-1',
   'fn-sumusht3args-2',
   'fn-sumusht3args-3',
   'fn-sumusht3args-4',
   'fn-sumusht3args-5',
   'fn-sumusht3args-6',
   'fn-sumusht3args-7',
   'fn-sumnint3args-1',
   'fn-sumnint3args-2',
   'fn-sumpint3args-1',
   'fn-sumpint3args-2',
   'fn-sumpint3args-3',
   'fn-sumpint3args-4',
   'fn-sumpint3args-5',
   'fn-sumpint3args-6',
   'fn-sumpint3args-7',
   'fn-sumulng3args-1',
   'fn-sumulng3args-2',
   'fn-sumulng3args-3',
   'fn-sumulng3args-4',
   'fn-sumulng3args-5',
   'fn-sumulng3args-6',
   'fn-sumulng3args-7',
   'fn-sumnpi3args-1',
   'fn-sumnpi3args-2',
   'fn-sumnpi3args-3',
   'fn-sumnpi3args-4',
   'fn-sumnpi3args-5',
   'fn-sumnpi3args-6',
   'fn-sumnni3args-1',
   'fn-sumnni3args-2',
   'fn-sumnni3args-3',
   'fn-sumnni3args-4',
   'fn-sumnni3args-5',
   'fn-sumnni3args-6',
   'fn-sumnni3args-7',
   'fn-sumsht3args-1',
   'fn-sumsht3args-2',
   'fn-sumsht3args-3',
   'fn-sumsht3args-4',
   'K-SeqSUMFunc-1',
   'K-SeqSUMFunc-2',
   'K-SeqSUMFunc-3',
   'K-SeqSUMFunc-4',
   'K-SeqSUMFunc-5',
   'K-SeqSUMFunc-6',
   'K-SeqSUMFunc-7',
   'K-SeqSUMFunc-8',
   'K-SeqSUMFunc-9',
   'K-SeqSUMFunc-10',
   'K-SeqSUMFunc-11',
   'K-SeqSUMFunc-12',
   'K-SeqSUMFunc-13',
   'K-SeqSUMFunc-14',
   'K-SeqSUMFunc-15',
   'K-SeqSUMFunc-16',
   'K-SeqSUMFunc-17',
   'K-SeqSUMFunc-18',
   'K-SeqSUMFunc-19',
   'K-SeqSUMFunc-20',
   'K-SeqSUMFunc-21',
   'K-SeqSUMFunc-22',
   'K-SeqSUMFunc-23',
   'K-SeqSUMFunc-24',
   'K-SeqSUMFunc-25',
   'K-SeqSUMFunc-26',
   'K-SeqSUMFunc-27',
   'K-SeqSUMFunc-28',
   'K-SeqSUMFunc-29',
   'K-SeqSUMFunc-30',
   'K-SeqSUMFunc-31',
   'K-SeqSUMFunc-32',
   'K-SeqSUMFunc-33',
   'K2-SeqSUMFunc-1',
   'K2-SeqSUMFunc-2',
   'K2-SeqSUMFunc-3',
   'K2-SeqSUMFunc-4',
   'fn-sum-1',
   'fn-sum-2',
   'fn-sum-3',
   'fn-sum-4',
   'fn-sum-5',
   'fn-sum-6',
   'fn-sum-7',
   'fn-sum-8',
   'fn-sum-9',
   'fn-sum-10',
   'cbcl-sum-func-001',
   'cbcl-sum-func-002',
   'cbcl-sum-func-003',
   'cbcl-sum-func-004',
   'cbcl-sum-func-005',
   'cbcl-sum-func-006'].
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
'fn-sumint1args-1'(_Config) ->
   Qry = "fn:sum((xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2147483648\n      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint1args-2'(_Config) ->
   Qry = "fn:sum((xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1873914410\n      ",
 Tst = xqerl:run("-1873914410"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint1args-3'(_Config) ->
   Qry = "fn:sum((xs:int(\"2147483647\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2147483647\n      ",
 Tst = xqerl:run("2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg1args-1'(_Config) ->
   Qry = "fn:sum((xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg1args-2'(_Config) ->
   Qry = "fn:sum((xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         830993497117024304\n      ",
 Tst = xqerl:run("830993497117024304"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg1args-3'(_Config) ->
   Qry = "fn:sum((xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec1args-1'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec1args-2'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         617375191608514839\n      ",
 Tst = xqerl:run("617375191608514839"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec1args-3'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl1args-1'(_Config) ->
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl1args-2'(_Config) ->
   Qry = "fn:sum((xs:double(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl1args-3'(_Config) ->
   Qry = "fn:sum((xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1.7976931348623157E308\n      ",
 Tst = xqerl:run("1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt1args-1'(_Config) ->
   Qry = "fn:sum((xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"-3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt1args-2'(_Config) ->
   Qry = "fn:sum((xs:float(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt1args-3'(_Config) ->
   Qry = "fn:sum((xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng1args-1'(_Config) ->
   Qry = "fn:sum((xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng1args-2'(_Config) ->
   Qry = "fn:sum((xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -47175562203048468\n      ",
 Tst = xqerl:run("-47175562203048468"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng1args-3'(_Config) ->
   Qry = "fn:sum((xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         92233720368547758\n      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht1args-1'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht1args-2'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht1args-3'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint1args-1'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint1args-2'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -297014075999096793\n      ",
 Tst = xqerl:run("-297014075999096793"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint1args-3'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint1args-1'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint1args-2'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610033\n      ",
 Tst = xqerl:run("52704602390610033"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint1args-3'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng1args-1'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng1args-2'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng1args-3'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi1args-1'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi1args-2'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -475688437271870490\n      ",
 Tst = xqerl:run("-475688437271870490"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi1args-3'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni1args-1'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni1args-2'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni1args-3'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht1args-1'(_Config) ->
   Qry = "fn:sum((xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -32768\n      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht1args-2'(_Config) ->
   Qry = "fn:sum((xs:short(\"-5324\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -5324\n      ",
 Tst = xqerl:run("-5324"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht1args-3'(_Config) ->
   Qry = "fn:sum((xs:short(\"32767\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         32767\n      ",
 Tst = xqerl:run("32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint2args-1'(_Config) ->
   Qry = "fn:sum((xs:int(\"-1873914410\"),xs:int(\"-273569238\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2147483648\n      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint2args-2'(_Config) ->
   Qry = "fn:sum((xs:int(\"2147483647\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint2args-3'(_Config) ->
   Qry = "fn:sum((xs:int(\"-273569238\"),xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2147483648\n      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint2args-4'(_Config) ->
   Qry = "fn:sum((xs:int(\"-2147483648\"),xs:int(\"2147483647\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg2args-1'(_Config) ->
   Qry = "fn:sum((xs:integer(\"830993497117024304\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -169006502882975695\n      ",
 Tst = xqerl:run("-169006502882975695"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg2args-2'(_Config) ->
   Qry = "fn:sum((xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg2args-3'(_Config) ->
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -169006502882975695\n      ",
 Tst = xqerl:run("-169006502882975695"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg2args-4'(_Config) ->
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec2args-1'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"617375191608514839\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -382624808391485160\n      ",
 Tst = xqerl:run("-382624808391485160"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec2args-2'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec2args-3'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -382624808391485160\n      ",
 Tst = xqerl:run("-382624808391485160"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec2args-4'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl2args-1'(_Config) ->
   Qry = "fn:sum((xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl2args-2'(_Config) ->
   Qry = "fn:sum((xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl2args-3'(_Config) ->
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl2args-4'(_Config) ->
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt2args-1'(_Config) ->
   Qry = "fn:sum((xs:float(\"0\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"-3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt2args-2'(_Config) ->
   Qry = "fn:sum((xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt2args-3'(_Config) ->
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"-3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt2args-4'(_Config) ->
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng2args-1'(_Config) ->
   Qry = "fn:sum((xs:long(\"-47175562203048468\"),xs:long(\"-45058158165499290\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng2args-2'(_Config) ->
   Qry = "fn:sum((xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng2args-3'(_Config) ->
   Qry = "fn:sum((xs:long(\"-45058158165499290\"),xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng2args-4'(_Config) ->
   Qry = "fn:sum((xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht2args-1'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht2args-2'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht2args-3'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht2args-4'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht2args-5'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint2args-1'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-702985924000903206\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint2args-2'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1000000000000000000\n      ",
 Tst = xqerl:run("-1000000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint2args-3'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-702985924000903206\"),xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint2args-4'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1000000000000000000\n      ",
 Tst = xqerl:run("-1000000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint2args-1'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
 Tst = xqerl:run("2"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint2args-2'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610034\n      ",
 Tst = xqerl:run("52704602390610034"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint2args-3'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"999999999999999998\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint2args-4'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610034\n      ",
 Tst = xqerl:run("52704602390610034"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint2args-5'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999998\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng2args-1'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng2args-2'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng2args-3'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng2args-4'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng2args-5'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi2args-1'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-524311562728129509\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi2args-2'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi2args-3'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-524311562728129509\"),xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi2args-4'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni2args-1'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni2args-2'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni2args-3'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni2args-4'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni2args-5'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht2args-1'(_Config) ->
   Qry = "fn:sum((xs:short(\"-5324\"),xs:short(\"-27444\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -32768\n      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht2args-2'(_Config) ->
   Qry = "fn:sum((xs:short(\"32767\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht2args-3'(_Config) ->
   Qry = "fn:sum((xs:short(\"-27444\"),xs:short(\"-5324\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -32768\n      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht2args-4'(_Config) ->
   Qry = "fn:sum((xs:short(\"-32768\"),xs:short(\"32767\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1\n      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint3args-1'(_Config) ->
   Qry = "fn:sum((xs:int(\"-1873914410\"),xs:int(\"-273569238\"),xs:int(\"-273569238\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2421052886\n      ",
 Tst = xqerl:run("-2421052886"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint3args-2'(_Config) ->
   Qry = "fn:sum((xs:int(\"-273569238\"),xs:int(\"-1873914410\"),xs:int(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -2147483648\n      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint3args-3'(_Config) ->
   Qry = "fn:sum((xs:int(\"0\"),xs:int(\"0\"),xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1873914410\n      ",
 Tst = xqerl:run("-1873914410"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumint3args-4'(_Config) ->
   Qry = "fn:sum((xs:int(\"0\"),xs:int(\"0\"),xs:int(\"2147483647\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2147483647\n      ",
 Tst = xqerl:run("2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg3args-1'(_Config) ->
   Qry = "fn:sum((xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg3args-2'(_Config) ->
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg3args-3'(_Config) ->
   Qry = "fn:sum((xs:integer(\"0\"),xs:integer(\"0\"),xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         830993497117024304\n      ",
 Tst = xqerl:run("830993497117024304"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumintg3args-4'(_Config) ->
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec3args-1'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec3args-2'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec3args-3'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"0\"),xs:decimal(\"0\"),xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         617375191608514839\n      ",
 Tst = xqerl:run("617375191608514839"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdec3args-4'(_Config) ->
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl3args-1'(_Config) ->
   Qry = "fn:sum((xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            -INF\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "-INF") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-sumdbl3args-2'(_Config) ->
   Qry = "fn:sum((xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl3args-3'(_Config) ->
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\"),xs:double(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl3args-4'(_Config) ->
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1.7976931348623157E308\n      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl3args-5'(_Config) ->
   Qry = "fn:sum((xs:double(\"0\"),xs:double(\"0\"),xs:double(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumdbl3args-6'(_Config) ->
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            -INF\n            -1.7976931348623157E308\n            \n         \n      ",
 case ( begin Tst2 = xqerl:run("-1.7976931348623157E308"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) orelse (xqerl_test:string_value(Res) == "-INF") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-sumflt3args-1'(_Config) ->
   Qry = "fn:sum((xs:float(\"0\"),xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            -INF\n            \n         \n      ",
 case (xqerl_test:string_value(Res) == "-INF") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-sumflt3args-2'(_Config) ->
   Qry = "fn:sum((xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"-3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt3args-3'(_Config) ->
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"0\"),xs:float(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"-3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt3args-4'(_Config) ->
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         xs:float(\"-3.4028235E38\")\n      ",
 Tst = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt3args-5'(_Config) ->
   Qry = "fn:sum((xs:float(\"0\"),xs:float(\"0\"),xs:float(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumflt3args-6'(_Config) ->
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            -INF\n            xs:float(\"-3.4028235E38\")\n            \n         \n      ",
 case ( begin Tst2 = xqerl:run("xs:float(\"-3.4028235E38\")"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) orelse (xqerl_test:string_value(Res) == "-INF") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-sumlng3args-1'(_Config) ->
   Qry = "fn:sum((xs:long(\"-47175562203048468\"),xs:long(\"-45058158165499290\"),xs:long(\"-45058158165499290\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -137291878534047048\n      ",
 Tst = xqerl:run("-137291878534047048"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng3args-2'(_Config) ->
   Qry = "fn:sum((xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng3args-3'(_Config) ->
   Qry = "fn:sum((xs:long(\"-45058158165499290\"),xs:long(\"-47175562203048468\"),xs:long(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng3args-4'(_Config) ->
   Qry = "fn:sum((xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng3args-5'(_Config) ->
   Qry = "fn:sum((xs:long(\"0\"),xs:long(\"0\"),xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -47175562203048468\n      ",
 Tst = xqerl:run("-47175562203048468"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumlng3args-6'(_Config) ->
   Qry = "fn:sum((xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -92233720368547758\n      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-1'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-2'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-3'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-4'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-5'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-6'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         44633\n      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumusht3args-7'(_Config) ->
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         65535\n      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint3args-1'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-702985924000903206\"),xs:negativeInteger(\"-702985924000903206\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1702985924000903205\n      ",
 Tst = xqerl:run("-1702985924000903205"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnint3args-2'(_Config) ->
   Qry = "fn:sum((xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1999999999999999999\n      ",
 Tst = xqerl:run("-1999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-1'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         3\n      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-2'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610035\n      ",
 Tst = xqerl:run("52704602390610035"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-3'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"999999999999999998\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1000000000000000000\n      ",
 Tst = xqerl:run("1000000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-4'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610035\n      ",
 Tst = xqerl:run("52704602390610035"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-5'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999998\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1000000000000000000\n      ",
 Tst = xqerl:run("1000000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-6'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         52704602390610035\n      ",
 Tst = xqerl:run("52704602390610035"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumpint3args-7'(_Config) ->
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999998\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1000000000000000000\n      ",
 Tst = xqerl:run("1000000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-1'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-2'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-3'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-4'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-5'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-6'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         130747108607674654\n      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumulng3args-7'(_Config) ->
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         184467440737095516\n      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi3args-1'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-524311562728129509\"),xs:nonPositiveInteger(\"-524311562728129509\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1524311562728129508\n      ",
 Tst = xqerl:run("-1524311562728129508"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi3args-2'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -1999999999999999998\n      ",
 Tst = xqerl:run("-1999999999999999998"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi3args-3'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-524311562728129509\"),xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi3args-4'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -999999999999999999\n      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi3args-5'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -475688437271870490\n      ",
 Tst = xqerl:run("-475688437271870490"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnpi3args-6'(_Config) ->
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-1'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-2'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-3'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-4'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-5'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-6'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         303884545991464527\n      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumnni3args-7'(_Config) ->
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         999999999999999999\n      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht3args-1'(_Config) ->
   Qry = "fn:sum((xs:short(\"-5324\"),xs:short(\"-27444\"),xs:short(\"-27444\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -60212\n      ",
 Tst = xqerl:run("-60212"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht3args-2'(_Config) ->
   Qry = "fn:sum((xs:short(\"-27444\"),xs:short(\"-5324\"),xs:short(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -32768\n      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht3args-3'(_Config) ->
   Qry = "fn:sum((xs:short(\"0\"),xs:short(\"0\"),xs:short(\"-5324\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -5324\n      ",
 Tst = xqerl:run("-5324"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-sumsht3args-4'(_Config) ->
   Qry = "fn:sum((xs:short(\"0\"),xs:short(\"0\"),xs:short(\"32767\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         32767\n      ",
 Tst = xqerl:run("32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-1'(_Config) ->
   Qry = "sum()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqSUMFunc-2'(_Config) ->
   Qry = "sum(1, 1, \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqSUMFunc-3'(_Config) ->
   Qry = "sum((), 3) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-4'(_Config) ->
   Qry = "sum((), 3) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-5'(_Config) ->
   Qry = "empty(sum((), ()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-6'(_Config) ->
   Qry = "sum((), 0.0) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-7'(_Config) ->
   Qry = "sum((), 0.0) eq 0.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-8'(_Config) ->
   Qry = "sum(()) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-9'(_Config) ->
   Qry = "sum(()) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-10'(_Config) ->
   Qry = "sum((-5, -0, -3, -6)) eq -14",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-11'(_Config) ->
   Qry = "string(sum((1, 2, 3, xs:float(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-12'(_Config) ->
   Qry = "string(sum((1, 2, 3, xs:double(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-13'(_Config) ->
   Qry = "string(sum((xs:double(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-14'(_Config) ->
   Qry = "string(sum((xs:float(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-15'(_Config) ->
   Qry = "string(sum((1, 2, xs:double(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-16'(_Config) ->
   Qry = "string(sum((1, 2, xs:float(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-17'(_Config) ->
   Qry = "sum(xs:untypedAtomic(\"3\")) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-18'(_Config) ->
   Qry = "sum((1, 2, xs:untypedAtomic(\"3\"))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-19'(_Config) ->
   Qry = "sum((1, 2, xs:untypedAtomic(\"3\"))) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-20'(_Config) ->
   Qry = "sum((xs:float(1), 2, xs:untypedAtomic(\"3\"))) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-21'(_Config) ->
   Qry = "sum((xs:float(1), 2, xs:untypedAtomic(\"3\"))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-22'(_Config) ->
   Qry = "sum(remove((1.0, xs:float(1), 2, xs:untypedAtomic(\"3\")), 1)) eq 6",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-23'(_Config) ->
   Qry = "sum(\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqSUMFunc-24'(_Config) ->
   Qry = "sum(xs:anyURI(\"a string\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqSUMFunc-25'(_Config) ->
   Qry = "sum((1, 2, 3, xs:anyURI(\"a string\"), xs:double(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqSUMFunc-26'(_Config) ->
   Qry = "sum((1, 2, 3, xs:anyURI(\"a string\"), xs:double(\"NaN\")), 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqSUMFunc-27'(_Config) ->
   Qry = "sum(((),())) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-28'(_Config) ->
   Qry = "sum(()) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-29'(_Config) ->
   Qry = "sum((3, 4, 5)) eq 12",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-30'(_Config) ->
   Qry = "sum((xs:yearMonthDuration(\"P20Y\"), xs:yearMonthDuration(\"P10M\"))) eq xs:yearMonthDuration(\"P250M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-31'(_Config) ->
   Qry = "sum((xs:yearMonthDuration(\"P20Y\"), xs:yearMonthDuration(\"P10M\")) [. < xs:yearMonthDuration(\"P3M\")], xs:yearMonthDuration(\"P0M\")) eq xs:yearMonthDuration(\"P0M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-32'(_Config) ->
   Qry = "sum((1 to 100)[. < 0], 0) eq 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqSUMFunc-33'(_Config) ->
   Qry = "sum((xs:yearMonthDuration(\"P20Y\"), (3, 4, 5)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K2-SeqSUMFunc-1'(_Config) ->
   Qry = "sum((), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'K2-SeqSUMFunc-2'(_Config) ->
   Qry = "sum((xs:float('NaN'), 2, 3, 4, xs:double('NaN'))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqSUMFunc-3'(_Config) ->
   Qry = "sum((xs:float('NaN'), 2, 3.3, 4, xs:double('NaN'))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqSUMFunc-4'(_Config) ->
   Qry = "sum(xs:unsignedShort(\"1\")) instance of xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-sum-1'(_Config) ->
   Qry = "sum((xs:dayTimeDuration(\"P1D\"), xs:dayTimeDuration(\"PT1H\"))) instance of xs:dayTimeDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-sum-2'(_Config) ->
   Qry = "sum((), xs:dayTimeDuration(\"PT0S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-sum-3'(_Config) ->
   Qry = "sum(for $x in 1 to 10 return xs:dayTimeDuration(concat(\"PT\",$x,\"H\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2DT7H\n      ",
   case xqerl_test:string_value(Res) of
             "P2DT7H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-sum-4'(_Config) ->
   Qry = "sum((xs:yearMonthDuration(\"P1Y\"), xs:yearMonthDuration(\"P1M\"))) instance of xs:yearMonthDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-sum-5'(_Config) ->
   Qry = "sum((), xs:yearMonthDuration(\"P0M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P0M\n      ",
   case xqerl_test:string_value(Res) of
             "P0M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-sum-6'(_Config) ->
   Qry = "sum(for $x in 1 to 10 return xs:yearMonthDuration(concat(\"P\",$x,\"M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P4Y7M\n      ",
   case xqerl_test:string_value(Res) of
             "P4Y7M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-sum-7'(_Config) ->
   Qry = "sum((xs:yearMonthDuration(\"P1Y\"), xs:dayTimeDuration(\"P1D\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-sum-8'(_Config) ->
   Qry = "sum((), xs:duration(\"P0M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-sum-9'(_Config) ->
   Qry = "sum(xs:duration(\"P1Y1M1D\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-sum-10'(_Config) ->
   Qry = "sum(xs:duration(\"P1Y1M1D\"), xs:duration(\"PT0S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-sum-func-001'(_Config) ->
   Qry = "sum(1 to 10)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         55\n      ",
   case xqerl_test:string_value(Res) of
             "55" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-sum-func-002'(_Config) ->
   Qry = "sum(for $x in 1 to 10 return 5)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         50\n      ",
   case xqerl_test:string_value(Res) of
             "50" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-sum-func-003'(_Config) ->
   Qry = "\n        for $x in 1 to 10, $y in 1 to 10 return concat('sum(',$x,' to ',$y,') = ',sum($x to $y))\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         sum(1 to 1) = 1 sum(1 to 2) = 3 sum(1 to 3) = 6 sum(1 to 4) = 10 sum(1 to 5) = 15 sum(1 to 6) = 21 sum(1 to 7) = 28 sum(1 to 8) = 36 sum(1 to 9) = 45 sum(1 to 10) = 55 sum(2 to 1) = 0 sum(2 to 2) = 2 sum(2 to 3) = 5 sum(2 to 4) = 9 sum(2 to 5) = 14 sum(2 to 6) = 20 sum(2 to 7) = 27 sum(2 to 8) = 35 sum(2 to 9) = 44 sum(2 to 10) = 54 sum(3 to 1) = 0 sum(3 to 2) = 0 sum(3 to 3) = 3 sum(3 to 4) = 7 sum(3 to 5) = 12 sum(3 to 6) = 18 sum(3 to 7) = 25 sum(3 to 8) = 33 sum(3 to 9) = 42 sum(3 to 10) = 52 sum(4 to 1) = 0 sum(4 to 2) = 0 sum(4 to 3) = 0 sum(4 to 4) = 4 sum(4 to 5) = 9 sum(4 to 6) = 15 sum(4 to 7) = 22 sum(4 to 8) = 30 sum(4 to 9) = 39 sum(4 to 10) = 49 sum(5 to 1) = 0 sum(5 to 2) = 0 sum(5 to 3) = 0 sum(5 to 4) = 0 sum(5 to 5) = 5 sum(5 to 6) = 11 sum(5 to 7) = 18 sum(5 to 8) = 26 sum(5 to 9) = 35 sum(5 to 10) = 45 sum(6 to 1) = 0 sum(6 to 2) = 0 sum(6 to 3) = 0 sum(6 to 4) = 0 sum(6 to 5) = 0 sum(6 to 6) = 6 sum(6 to 7) = 13 sum(6 to 8) = 21 sum(6 to 9) = 30 sum(6 to 10) = 40 sum(7 to 1) = 0 sum(7 to 2) = 0 sum(7 to 3) = 0 sum(7 to 4) = 0 sum(7 to 5) = 0 sum(7 to 6) = 0 sum(7 to 7) = 7 sum(7 to 8) = 15 sum(7 to 9) = 24 sum(7 to 10) = 34 sum(8 to 1) = 0 sum(8 to 2) = 0 sum(8 to 3) = 0 sum(8 to 4) = 0 sum(8 to 5) = 0 sum(8 to 6) = 0 sum(8 to 7) = 0 sum(8 to 8) = 8 sum(8 to 9) = 17 sum(8 to 10) = 27 sum(9 to 1) = 0 sum(9 to 2) = 0 sum(9 to 3) = 0 sum(9 to 4) = 0 sum(9 to 5) = 0 sum(9 to 6) = 0 sum(9 to 7) = 0 sum(9 to 8) = 0 sum(9 to 9) = 9 sum(9 to 10) = 19 sum(10 to 1) = 0 sum(10 to 2) = 0 sum(10 to 3) = 0 sum(10 to 4) = 0 sum(10 to 5) = 0 sum(10 to 6) = 0 sum(10 to 7) = 0 sum(10 to 8) = 0 sum(10 to 9) = 0 sum(10 to 10) = 10\n      ",
   case xqerl_test:string_value(Res) of
             "sum(1 to 1) = 1 sum(1 to 2) = 3 sum(1 to 3) = 6 sum(1 to 4) = 10 sum(1 to 5) = 15 sum(1 to 6) = 21 sum(1 to 7) = 28 sum(1 to 8) = 36 sum(1 to 9) = 45 sum(1 to 10) = 55 sum(2 to 1) = 0 sum(2 to 2) = 2 sum(2 to 3) = 5 sum(2 to 4) = 9 sum(2 to 5) = 14 sum(2 to 6) = 20 sum(2 to 7) = 27 sum(2 to 8) = 35 sum(2 to 9) = 44 sum(2 to 10) = 54 sum(3 to 1) = 0 sum(3 to 2) = 0 sum(3 to 3) = 3 sum(3 to 4) = 7 sum(3 to 5) = 12 sum(3 to 6) = 18 sum(3 to 7) = 25 sum(3 to 8) = 33 sum(3 to 9) = 42 sum(3 to 10) = 52 sum(4 to 1) = 0 sum(4 to 2) = 0 sum(4 to 3) = 0 sum(4 to 4) = 4 sum(4 to 5) = 9 sum(4 to 6) = 15 sum(4 to 7) = 22 sum(4 to 8) = 30 sum(4 to 9) = 39 sum(4 to 10) = 49 sum(5 to 1) = 0 sum(5 to 2) = 0 sum(5 to 3) = 0 sum(5 to 4) = 0 sum(5 to 5) = 5 sum(5 to 6) = 11 sum(5 to 7) = 18 sum(5 to 8) = 26 sum(5 to 9) = 35 sum(5 to 10) = 45 sum(6 to 1) = 0 sum(6 to 2) = 0 sum(6 to 3) = 0 sum(6 to 4) = 0 sum(6 to 5) = 0 sum(6 to 6) = 6 sum(6 to 7) = 13 sum(6 to 8) = 21 sum(6 to 9) = 30 sum(6 to 10) = 40 sum(7 to 1) = 0 sum(7 to 2) = 0 sum(7 to 3) = 0 sum(7 to 4) = 0 sum(7 to 5) = 0 sum(7 to 6) = 0 sum(7 to 7) = 7 sum(7 to 8) = 15 sum(7 to 9) = 24 sum(7 to 10) = 34 sum(8 to 1) = 0 sum(8 to 2) = 0 sum(8 to 3) = 0 sum(8 to 4) = 0 sum(8 to 5) = 0 sum(8 to 6) = 0 sum(8 to 7) = 0 sum(8 to 8) = 8 sum(8 to 9) = 17 sum(8 to 10) = 27 sum(9 to 1) = 0 sum(9 to 2) = 0 sum(9 to 3) = 0 sum(9 to 4) = 0 sum(9 to 5) = 0 sum(9 to 6) = 0 sum(9 to 7) = 0 sum(9 to 8) = 0 sum(9 to 9) = 9 sum(9 to 10) = 19 sum(10 to 1) = 0 sum(10 to 2) = 0 sum(10 to 3) = 0 sum(10 to 4) = 0 sum(10 to 5) = 0 sum(10 to 6) = 0 sum(10 to 7) = 0 sum(10 to 8) = 0 sum(10 to 9) = 0 sum(10 to 10) = 10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-sum-func-004'(_Config) ->
   Qry = "boolean(sum((1 to 10)[. mod 2 = 0]))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-sum-func-005'(_Config) ->
   Qry = "sum(sum((1 to 10)[. mod 2 = 0],()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         30\n      ",
   case xqerl_test:string_value(Res) of
             "30" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-sum-func-006'(_Config) ->
   Qry = "sum((1,exactly-one((1 to 10)[. div 2 = 2])))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         5\n      ",
   case xqerl_test:string_value(Res) of
             "5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
