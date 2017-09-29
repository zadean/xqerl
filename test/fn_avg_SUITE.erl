-module('fn_avg_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-avgint1args-1'/1]).
-export(['fn-avgint1args-2'/1]).
-export(['fn-avgint1args-3'/1]).
-export(['fn-avgintg1args-1'/1]).
-export(['fn-avgintg1args-2'/1]).
-export(['fn-avgintg1args-3'/1]).
-export(['fn-avgdec1args-1'/1]).
-export(['fn-avgdec1args-2'/1]).
-export(['fn-avgdec1args-3'/1]).
-export(['fn-avgdbl1args-1'/1]).
-export(['fn-avgdbl1args-2'/1]).
-export(['fn-avgdbl1args-3'/1]).
-export(['fn-avgflt1args-1'/1]).
-export(['fn-avgflt1args-2'/1]).
-export(['fn-avgflt1args-3'/1]).
-export(['fn-avglng1args-1'/1]).
-export(['fn-avglng1args-2'/1]).
-export(['fn-avglng1args-3'/1]).
-export(['fn-avgusht1args-1'/1]).
-export(['fn-avgusht1args-2'/1]).
-export(['fn-avgusht1args-3'/1]).
-export(['fn-avgnint1args-1'/1]).
-export(['fn-avgnint1args-2'/1]).
-export(['fn-avgnint1args-3'/1]).
-export(['fn-avgpint1args-1'/1]).
-export(['fn-avgpint1args-2'/1]).
-export(['fn-avgpint1args-3'/1]).
-export(['fn-avgulng1args-1'/1]).
-export(['fn-avgulng1args-2'/1]).
-export(['fn-avgulng1args-3'/1]).
-export(['fn-avgnpi1args-1'/1]).
-export(['fn-avgnpi1args-2'/1]).
-export(['fn-avgnpi1args-3'/1]).
-export(['fn-avgnni1args-1'/1]).
-export(['fn-avgnni1args-2'/1]).
-export(['fn-avgnni1args-3'/1]).
-export(['fn-avgsht1args-1'/1]).
-export(['fn-avgsht1args-2'/1]).
-export(['fn-avgsht1args-3'/1]).
-export(['fn-avgint2args-1'/1]).
-export(['fn-avgint2args-2'/1]).
-export(['fn-avgint2args-3'/1]).
-export(['fn-avgint2args-4'/1]).
-export(['fn-avgint2args-5'/1]).
-export(['fn-avgintg2args-1'/1]).
-export(['fn-avgintg2args-2'/1]).
-export(['fn-avgintg2args-3'/1]).
-export(['fn-avgintg2args-4'/1]).
-export(['fn-avgintg2args-5'/1]).
-export(['fn-avgdec2args-1'/1]).
-export(['fn-avgdec2args-2'/1]).
-export(['fn-avgdec2args-3'/1]).
-export(['fn-avgdec2args-4'/1]).
-export(['fn-avgdec2args-5'/1]).
-export(['fn-avgdbl2args-1'/1]).
-export(['fn-avgdbl2args-2'/1]).
-export(['fn-avgdbl2args-3'/1]).
-export(['fn-avgdbl2args-4'/1]).
-export(['fn-avgdbl2args-5'/1]).
-export(['fn-avgflt2args-1'/1]).
-export(['fn-avgflt2args-2'/1]).
-export(['fn-avgflt2args-3'/1]).
-export(['fn-avgflt2args-4'/1]).
-export(['fn-avgflt2args-5'/1]).
-export(['fn-avglng2args-1'/1]).
-export(['fn-avglng2args-2'/1]).
-export(['fn-avglng2args-3'/1]).
-export(['fn-avglng2args-4'/1]).
-export(['fn-avglng2args-5'/1]).
-export(['fn-avgusht2args-1'/1]).
-export(['fn-avgusht2args-2'/1]).
-export(['fn-avgusht2args-3'/1]).
-export(['fn-avgusht2args-4'/1]).
-export(['fn-avgusht2args-5'/1]).
-export(['fn-avgnint2args-1'/1]).
-export(['fn-avgnint2args-2'/1]).
-export(['fn-avgnint2args-3'/1]).
-export(['fn-avgnint2args-4'/1]).
-export(['fn-avgnint2args-5'/1]).
-export(['fn-avgpint2args-1'/1]).
-export(['fn-avgpint2args-2'/1]).
-export(['fn-avgpint2args-3'/1]).
-export(['fn-avgpint2args-4'/1]).
-export(['fn-avgpint2args-5'/1]).
-export(['fn-avgulng2args-1'/1]).
-export(['fn-avgulng2args-2'/1]).
-export(['fn-avgulng2args-3'/1]).
-export(['fn-avgulng2args-4'/1]).
-export(['fn-avgulng2args-5'/1]).
-export(['fn-avgnpi2args-1'/1]).
-export(['fn-avgnpi2args-2'/1]).
-export(['fn-avgnpi2args-3'/1]).
-export(['fn-avgnpi2args-4'/1]).
-export(['fn-avgnpi2args-5'/1]).
-export(['fn-avgnni2args-1'/1]).
-export(['fn-avgnni2args-2'/1]).
-export(['fn-avgnni2args-3'/1]).
-export(['fn-avgnni2args-4'/1]).
-export(['fn-avgnni2args-5'/1]).
-export(['fn-avgsht2args-1'/1]).
-export(['fn-avgsht2args-2'/1]).
-export(['fn-avgsht2args-3'/1]).
-export(['fn-avgsht2args-4'/1]).
-export(['fn-avgsht2args-5'/1]).
-export(['fn-avg-mix-args-001'/1]).
-export(['fn-avg-mix-args-002'/1]).
-export(['fn-avg-mix-args-003'/1]).
-export(['fn-avg-mix-args-004'/1]).
-export(['fn-avg-mix-args-005'/1]).
-export(['fn-avg-mix-args-006'/1]).
-export(['fn-avg-mix-args-007'/1]).
-export(['fn-avg-mix-args-008'/1]).
-export(['fn-avg-mix-args-009'/1]).
-export(['fn-avg-mix-args-010'/1]).
-export(['fn-avg-mix-args-011'/1]).
-export(['fn-avg-mix-args-012'/1]).
-export(['fn-avg-mix-args-013'/1]).
-export(['fn-avg-mix-args-014'/1]).
-export(['fn-avg-mix-args-015'/1]).
-export(['fn-avg-mix-args-016'/1]).
-export(['fn-avg-mix-args-017'/1]).
-export(['fn-avg-mix-args-018'/1]).
-export(['fn-avg-mix-args-019'/1]).
-export(['fn-avg-mix-args-020'/1]).
-export(['fn-avg-mix-args-021'/1]).
-export(['fn-avg-mix-args-022'/1]).
-export(['fn-avg-mix-args-023'/1]).
-export(['fn-avg-mix-args-024'/1]).
-export(['fn-avg-mix-args-025'/1]).
-export(['fn-avg-mix-args-026'/1]).
-export(['fn-avg-mix-args-027'/1]).
-export(['fn-avg-mix-args-028'/1]).
-export(['fn-avg-mix-args-029'/1]).
-export(['fn-avg-mix-args-030'/1]).
-export(['fn-avg-mix-args-031'/1]).
-export(['fn-avg-mix-args-032'/1]).
-export(['fn-avg-mix-args-033'/1]).
-export(['fn-avg-mix-args-034'/1]).
-export(['fn-avg-mix-args-035'/1]).
-export(['fn-avg-mix-args-036'/1]).
-export(['fn-avg-mix-args-037'/1]).
-export(['fn-avg-mix-args-038'/1]).
-export(['fn-avg-mix-args-039'/1]).
-export(['fn-avg-mix-args-040'/1]).
-export(['fn-avg-mix-args-041'/1]).
-export(['fn-avg-mix-args-042'/1]).
-export(['fn-avg-mix-args-043'/1]).
-export(['fn-avg-mix-args-044'/1]).
-export(['fn-avg-mix-args-045'/1]).
-export(['fn-avg-mix-args-046'/1]).
-export(['fn-avg-mix-args-047'/1]).
-export(['fn-avg-mix-args-048'/1]).
-export(['fn-avg-mix-args-049'/1]).
-export(['fn-avg-mix-args-050'/1]).
-export(['fn-avg-mix-args-051'/1]).
-export(['fn-avg-mix-args-052'/1]).
-export(['fn-avg-mix-args-053'/1]).
-export(['fn-avg-mix-args-054'/1]).
-export(['fn-avg-mix-args-055'/1]).
-export(['fn-avg-mix-args-056'/1]).
-export(['fn-avg-mix-args-057'/1]).
-export(['fn-avg-mix-args-058'/1]).
-export(['fn-avg-mix-args-059'/1]).
-export(['fn-avg-mix-args-060'/1]).
-export(['fn-avg-mix-args-061'/1]).
-export(['fn-avg-mix-args-062'/1]).
-export(['fn-avg-mix-args-063'/1]).
-export(['fn-avg-mix-args-064'/1]).
-export(['fn-avg-mix-args-065'/1]).
-export(['fn-avg-mix-args-066'/1]).
-export(['K-SeqAVGFunc-1'/1]).
-export(['K-SeqAVGFunc-2'/1]).
-export(['K-SeqAVGFunc-3'/1]).
-export(['K-SeqAVGFunc-4'/1]).
-export(['K-SeqAVGFunc-5'/1]).
-export(['K-SeqAVGFunc-6'/1]).
-export(['K-SeqAVGFunc-7'/1]).
-export(['K-SeqAVGFunc-8'/1]).
-export(['K-SeqAVGFunc-9'/1]).
-export(['K-SeqAVGFunc-10'/1]).
-export(['K-SeqAVGFunc-11'/1]).
-export(['K-SeqAVGFunc-12'/1]).
-export(['K-SeqAVGFunc-13'/1]).
-export(['K-SeqAVGFunc-14'/1]).
-export(['K-SeqAVGFunc-15'/1]).
-export(['K-SeqAVGFunc-16'/1]).
-export(['K-SeqAVGFunc-17'/1]).
-export(['K-SeqAVGFunc-18'/1]).
-export(['K-SeqAVGFunc-19'/1]).
-export(['K-SeqAVGFunc-20'/1]).
-export(['K-SeqAVGFunc-21'/1]).
-export(['K-SeqAVGFunc-22'/1]).
-export(['K-SeqAVGFunc-23'/1]).
-export(['K-SeqAVGFunc-24'/1]).
-export(['K-SeqAVGFunc-25'/1]).
-export(['K-SeqAVGFunc-26'/1]).
-export(['K-SeqAVGFunc-27'/1]).
-export(['K-SeqAVGFunc-28'/1]).
-export(['K-SeqAVGFunc-29'/1]).
-export(['K-SeqAVGFunc-30'/1]).
-export(['K-SeqAVGFunc-31'/1]).
-export(['K-SeqAVGFunc-32'/1]).
-export(['K-SeqAVGFunc-33'/1]).
-export(['K-SeqAVGFunc-34'/1]).
-export(['K-SeqAVGFunc-35'/1]).
-export(['K-SeqAVGFunc-36'/1]).
-export(['K-SeqAVGFunc-37'/1]).
-export(['K-SeqAVGFunc-38'/1]).
-export(['K-SeqAVGFunc-39'/1]).
-export(['K-SeqAVGFunc-40'/1]).
-export(['K-SeqAVGFunc-41'/1]).
-export(['K-SeqAVGFunc-42'/1]).
-export(['K-SeqAVGFunc-43'/1]).
-export(['K2-SeqAVGFunc-1'/1]).
-export(['K2-SeqAVGFunc-2'/1]).
-export(['K2-SeqAVGFunc-3'/1]).
-export(['fn-avg-1'/1]).
-export(['fn-avg-2'/1]).
-export(['fn-avg-3'/1]).
-export(['fn-avg-4'/1]).
-export(['fn-avg-5'/1]).
-export(['fn-avg-6'/1]).
-export(['fn-avg-7'/1]).
-export(['fn-avg-8'/1]).
-export(['cbcl-avg-001'/1]).
-export(['cbcl-avg-002'/1]).
-export(['cbcl-avg-003'/1]).
-export(['cbcl-avg-004'/1]).
-export(['cbcl-avg-005'/1]).
-export(['cbcl-avg-006'/1]).
-export(['cbcl-avg-007'/1]).
-export(['cbcl-avg-008'/1]).
-export(['cbcl-avg-009'/1]).
-export(['cbcl-avg-010'/1]).
-export(['cbcl-avg-011'/1]).
-export(['cbcl-avg-012'/1]).
-export(['cbcl-avg-013'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-avgint1args-1',
   'fn-avgint1args-2',
   'fn-avgint1args-3',
   'fn-avgintg1args-1',
   'fn-avgintg1args-2',
   'fn-avgintg1args-3',
   'fn-avgdec1args-1',
   'fn-avgdec1args-2',
   'fn-avgdec1args-3',
   'fn-avgdbl1args-1',
   'fn-avgdbl1args-2',
   'fn-avgdbl1args-3',
   'fn-avgflt1args-1',
   'fn-avgflt1args-2',
   'fn-avgflt1args-3',
   'fn-avglng1args-1',
   'fn-avglng1args-2',
   'fn-avglng1args-3',
   'fn-avgusht1args-1',
   'fn-avgusht1args-2',
   'fn-avgusht1args-3',
   'fn-avgnint1args-1',
   'fn-avgnint1args-2',
   'fn-avgnint1args-3',
   'fn-avgpint1args-1',
   'fn-avgpint1args-2',
   'fn-avgpint1args-3',
   'fn-avgulng1args-1',
   'fn-avgulng1args-2',
   'fn-avgulng1args-3',
   'fn-avgnpi1args-1',
   'fn-avgnpi1args-2',
   'fn-avgnpi1args-3',
   'fn-avgnni1args-1',
   'fn-avgnni1args-2',
   'fn-avgnni1args-3',
   'fn-avgsht1args-1',
   'fn-avgsht1args-2',
   'fn-avgsht1args-3',
   'fn-avgint2args-1',
   'fn-avgint2args-2',
   'fn-avgint2args-3',
   'fn-avgint2args-4',
   'fn-avgint2args-5',
   'fn-avgintg2args-1',
   'fn-avgintg2args-2',
   'fn-avgintg2args-3',
   'fn-avgintg2args-4',
   'fn-avgintg2args-5',
   'fn-avgdec2args-1',
   'fn-avgdec2args-2',
   'fn-avgdec2args-3',
   'fn-avgdec2args-4',
   'fn-avgdec2args-5',
   'fn-avgdbl2args-1',
   'fn-avgdbl2args-2',
   'fn-avgdbl2args-3',
   'fn-avgdbl2args-4',
   'fn-avgdbl2args-5',
   'fn-avgflt2args-1',
   'fn-avgflt2args-2',
   'fn-avgflt2args-3',
   'fn-avgflt2args-4',
   'fn-avgflt2args-5',
   'fn-avglng2args-1',
   'fn-avglng2args-2',
   'fn-avglng2args-3',
   'fn-avglng2args-4',
   'fn-avglng2args-5',
   'fn-avgusht2args-1',
   'fn-avgusht2args-2',
   'fn-avgusht2args-3',
   'fn-avgusht2args-4',
   'fn-avgusht2args-5',
   'fn-avgnint2args-1',
   'fn-avgnint2args-2',
   'fn-avgnint2args-3',
   'fn-avgnint2args-4',
   'fn-avgnint2args-5',
   'fn-avgpint2args-1',
   'fn-avgpint2args-2',
   'fn-avgpint2args-3',
   'fn-avgpint2args-4',
   'fn-avgpint2args-5',
   'fn-avgulng2args-1',
   'fn-avgulng2args-2',
   'fn-avgulng2args-3',
   'fn-avgulng2args-4',
   'fn-avgulng2args-5',
   'fn-avgnpi2args-1',
   'fn-avgnpi2args-2',
   'fn-avgnpi2args-3',
   'fn-avgnpi2args-4',
   'fn-avgnpi2args-5',
   'fn-avgnni2args-1',
   'fn-avgnni2args-2',
   'fn-avgnni2args-3',
   'fn-avgnni2args-4',
   'fn-avgnni2args-5',
   'fn-avgsht2args-1',
   'fn-avgsht2args-2',
   'fn-avgsht2args-3',
   'fn-avgsht2args-4',
   'fn-avgsht2args-5',
   'fn-avg-mix-args-001',
   'fn-avg-mix-args-002',
   'fn-avg-mix-args-003',
   'fn-avg-mix-args-004',
   'fn-avg-mix-args-005',
   'fn-avg-mix-args-006',
   'fn-avg-mix-args-007',
   'fn-avg-mix-args-008',
   'fn-avg-mix-args-009',
   'fn-avg-mix-args-010',
   'fn-avg-mix-args-011',
   'fn-avg-mix-args-012',
   'fn-avg-mix-args-013',
   'fn-avg-mix-args-014',
   'fn-avg-mix-args-015',
   'fn-avg-mix-args-016',
   'fn-avg-mix-args-017',
   'fn-avg-mix-args-018',
   'fn-avg-mix-args-019',
   'fn-avg-mix-args-020',
   'fn-avg-mix-args-021',
   'fn-avg-mix-args-022',
   'fn-avg-mix-args-023',
   'fn-avg-mix-args-024',
   'fn-avg-mix-args-025',
   'fn-avg-mix-args-026',
   'fn-avg-mix-args-027',
   'fn-avg-mix-args-028',
   'fn-avg-mix-args-029',
   'fn-avg-mix-args-030',
   'fn-avg-mix-args-031',
   'fn-avg-mix-args-032',
   'fn-avg-mix-args-033',
   'fn-avg-mix-args-034',
   'fn-avg-mix-args-035',
   'fn-avg-mix-args-036',
   'fn-avg-mix-args-037',
   'fn-avg-mix-args-038',
   'fn-avg-mix-args-039',
   'fn-avg-mix-args-040',
   'fn-avg-mix-args-041',
   'fn-avg-mix-args-042',
   'fn-avg-mix-args-043',
   'fn-avg-mix-args-044',
   'fn-avg-mix-args-045',
   'fn-avg-mix-args-046',
   'fn-avg-mix-args-047',
   'fn-avg-mix-args-048',
   'fn-avg-mix-args-049',
   'fn-avg-mix-args-050',
   'fn-avg-mix-args-051',
   'fn-avg-mix-args-052',
   'fn-avg-mix-args-053',
   'fn-avg-mix-args-054',
   'fn-avg-mix-args-055',
   'fn-avg-mix-args-056',
   'fn-avg-mix-args-057',
   'fn-avg-mix-args-058',
   'fn-avg-mix-args-059',
   'fn-avg-mix-args-060',
   'fn-avg-mix-args-061',
   'fn-avg-mix-args-062',
   'fn-avg-mix-args-063',
   'fn-avg-mix-args-064',
   'fn-avg-mix-args-065',
   'fn-avg-mix-args-066',
   'K-SeqAVGFunc-1',
   'K-SeqAVGFunc-2',
   'K-SeqAVGFunc-3',
   'K-SeqAVGFunc-4',
   'K-SeqAVGFunc-5',
   'K-SeqAVGFunc-6',
   'K-SeqAVGFunc-7',
   'K-SeqAVGFunc-8',
   'K-SeqAVGFunc-9',
   'K-SeqAVGFunc-10',
   'K-SeqAVGFunc-11',
   'K-SeqAVGFunc-12',
   'K-SeqAVGFunc-13',
   'K-SeqAVGFunc-14',
   'K-SeqAVGFunc-15',
   'K-SeqAVGFunc-16',
   'K-SeqAVGFunc-17',
   'K-SeqAVGFunc-18',
   'K-SeqAVGFunc-19',
   'K-SeqAVGFunc-20',
   'K-SeqAVGFunc-21',
   'K-SeqAVGFunc-22',
   'K-SeqAVGFunc-23',
   'K-SeqAVGFunc-24',
   'K-SeqAVGFunc-25',
   'K-SeqAVGFunc-26',
   'K-SeqAVGFunc-27',
   'K-SeqAVGFunc-28',
   'K-SeqAVGFunc-29',
   'K-SeqAVGFunc-30',
   'K-SeqAVGFunc-31',
   'K-SeqAVGFunc-32',
   'K-SeqAVGFunc-33',
   'K-SeqAVGFunc-34',
   'K-SeqAVGFunc-35',
   'K-SeqAVGFunc-36',
   'K-SeqAVGFunc-37',
   'K-SeqAVGFunc-38',
   'K-SeqAVGFunc-39',
   'K-SeqAVGFunc-40',
   'K-SeqAVGFunc-41',
   'K-SeqAVGFunc-42',
   'K-SeqAVGFunc-43',
   'K2-SeqAVGFunc-1',
   'K2-SeqAVGFunc-2',
   'K2-SeqAVGFunc-3',
   'fn-avg-1',
   'fn-avg-2',
   'fn-avg-3',
   'fn-avg-4',
   'fn-avg-5',
   'fn-avg-6',
   'fn-avg-7',
   'fn-avg-8',
   'cbcl-avg-001',
   'cbcl-avg-002',
   'cbcl-avg-003',
   'cbcl-avg-004',
   'cbcl-avg-005',
   'cbcl-avg-006',
   'cbcl-avg-007',
   'cbcl-avg-008',
   'cbcl-avg-009',
   'cbcl-avg-010',
   'cbcl-avg-011',
   'cbcl-avg-012',
   'cbcl-avg-013'].
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
'fn-avgint1args-1'(_Config) ->
   Qry = "fn:avg((xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -2147483648
      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint1args-2'(_Config) ->
   Qry = "fn:avg((xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -1873914410
      ",
 Tst = xqerl:run("-1873914410"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint1args-3'(_Config) ->
   Qry = "fn:avg((xs:int(\"2147483647\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2147483647
      ",
 Tst = xqerl:run("2147483647"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg1args-1'(_Config) ->
   Qry = "fn:avg((xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg1args-2'(_Config) ->
   Qry = "fn:avg((xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         830993497117024304
      ",
 Tst = xqerl:run("830993497117024304"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg1args-3'(_Config) ->
   Qry = "fn:avg((xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec1args-1'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec1args-2'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         617375191608514839
      ",
 Tst = xqerl:run("617375191608514839"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec1args-3'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdbl1args-1'(_Config) ->
   Qry = "fn:avg((xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -1.7976931348623157E308
      ",
 Tst = xqerl:run("-1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdbl1args-2'(_Config) ->
   Qry = "fn:avg((xs:double(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdbl1args-3'(_Config) ->
   Qry = "fn:avg((xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1.7976931348623157E308
      ",
 Tst = xqerl:run("1.7976931348623157E308"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt1args-1'(_Config) ->
   Qry = "fn:avg((xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:float('-3.4028235E38')
      ",
 Tst = xqerl:run("xs:float('-3.4028235E38')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt1args-2'(_Config) ->
   Qry = "fn:avg((xs:float(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt1args-3'(_Config) ->
   Qry = "fn:avg((xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:float(\"3.4028235E38\")
      ",
 Tst = xqerl:run("xs:float(\"3.4028235E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng1args-1'(_Config) ->
   Qry = "fn:avg((xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -92233720368547758
      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng1args-2'(_Config) ->
   Qry = "fn:avg((xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -47175562203048468
      ",
 Tst = xqerl:run("-47175562203048468"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng1args-3'(_Config) ->
   Qry = "fn:avg((xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         92233720368547758
      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht1args-1'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht1args-2'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         44633
      ",
 Tst = xqerl:run("44633"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht1args-3'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         65535
      ",
 Tst = xqerl:run("65535"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint1args-1'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint1args-2'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -297014075999096793
      ",
 Tst = xqerl:run("-297014075999096793"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint1args-3'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -1
      ",
 Tst = xqerl:run("-1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint1args-1'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint1args-2'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         52704602390610033
      ",
 Tst = xqerl:run("52704602390610033"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint1args-3'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng1args-1'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng1args-2'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         130747108607674654
      ",
 Tst = xqerl:run("130747108607674654"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng1args-3'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         184467440737095516
      ",
 Tst = xqerl:run("184467440737095516"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi1args-1'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi1args-2'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -475688437271870490
      ",
 Tst = xqerl:run("-475688437271870490"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi1args-3'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni1args-1'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni1args-2'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         303884545991464527
      ",
 Tst = xqerl:run("303884545991464527"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni1args-3'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         999999999999999999
      ",
 Tst = xqerl:run("999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht1args-1'(_Config) ->
   Qry = "fn:avg((xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -32768
      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht1args-2'(_Config) ->
   Qry = "fn:avg((xs:short(\"-5324\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -5324
      ",
 Tst = xqerl:run("-5324"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht1args-3'(_Config) ->
   Qry = "fn:avg((xs:short(\"32767\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         32767
      ",
 Tst = xqerl:run("32767"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint2args-1'(_Config) ->
   Qry = "fn:avg((xs:int(\"-2147483648\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -2147483648
      ",
 Tst = xqerl:run("-2147483648"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint2args-2'(_Config) ->
   Qry = "fn:avg((xs:int(\"-1873914410\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -2010699029
      ",
 Tst = xqerl:run("-2010699029"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint2args-3'(_Config) ->
   Qry = "fn:avg((xs:int(\"2147483647\"),xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -0.5
      ",
 Tst = xqerl:run("-0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint2args-4'(_Config) ->
   Qry = "fn:avg((xs:int(\"-2147483648\"),xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -2010699029
      ",
 Tst = xqerl:run("-2010699029"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgint2args-5'(_Config) ->
   Qry = "fn:avg((xs:int(\"-2147483648\"),xs:int(\"2147483647\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -0.5
      ",
 Tst = xqerl:run("-0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg2args-1'(_Config) ->
   Qry = "fn:avg((xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg2args-2'(_Config) ->
   Qry = "fn:avg((xs:integer(\"830993497117024304\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -84503251441487847.5
      ",
 Tst = xqerl:run("-84503251441487847.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg2args-3'(_Config) ->
   Qry = "fn:avg((xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg2args-4'(_Config) ->
   Qry = "fn:avg((xs:integer(\"-999999999999999999\"),xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -84503251441487847.5
      ",
 Tst = xqerl:run("-84503251441487847.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgintg2args-5'(_Config) ->
   Qry = "fn:avg((xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec2args-1'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec2args-2'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"617375191608514839\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -191312404195742580
      ",
 Tst = xqerl:run("-191312404195742580"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec2args-3'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec2args-4'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"-999999999999999999\"),xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -191312404195742580
      ",
 Tst = xqerl:run("-191312404195742580"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdec2args-5'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdbl2args-1'(_Config) ->
   Qry = "fn:avg((xs:double(\"-1.7976931348623157E150\"),xs:double(\"-1.7976931348623157E150\"))) eq -1.7976931348623157E150",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avgdbl2args-2'(_Config) ->
   Qry = "fn:avg((xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\"))) eq -8.9884656743115785E307",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avgdbl2args-3'(_Config) ->
   Qry = "fn:avg((xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgdbl2args-4'(_Config) ->
   Qry = "fn:avg((xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\"))) eq -8.9884656743115785E307",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avgdbl2args-5'(_Config) ->
   Qry = "fn:avg((xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt2args-1'(_Config) ->
   Qry = "fn:avg((xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            -INF
            -3.4028235E38
            
         
      ",
 case ( begin Tst2 = xqerl:run("-3.4028235E38"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) orelse (xqerl_test:string_value(Res) == "-INF") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-avgflt2args-2'(_Config) ->
   Qry = "fn:avg((xs:float(\"0\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:float('-1.7014117E38')
      ",
 Tst = xqerl:run("xs:float('-1.7014117E38')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt2args-3'(_Config) ->
   Qry = "fn:avg((xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt2args-4'(_Config) ->
   Qry = "fn:avg((xs:float(\"-3.4028235E38\"),xs:float(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:float('-1.7014117E38')
      ",
 Tst = xqerl:run("xs:float('-1.7014117E38')"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgflt2args-5'(_Config) ->
   Qry = "fn:avg((xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng2args-1'(_Config) ->
   Qry = "fn:avg((xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -92233720368547758
      ",
 Tst = xqerl:run("-92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng2args-2'(_Config) ->
   Qry = "fn:avg((xs:long(\"-47175562203048468\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -69704641285798113
      ",
 Tst = xqerl:run("-69704641285798113"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng2args-3'(_Config) ->
   Qry = "fn:avg((xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng2args-4'(_Config) ->
   Qry = "fn:avg((xs:long(\"-92233720368547758\"),xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -69704641285798113
      ",
 Tst = xqerl:run("-69704641285798113"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avglng2args-5'(_Config) ->
   Qry = "fn:avg((xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht2args-1'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht2args-2'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         22316.5
      ",
 Tst = xqerl:run("22316.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht2args-3'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         32767.5
      ",
 Tst = xqerl:run("32767.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht2args-4'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         22316.5
      ",
 Tst = xqerl:run("22316.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgusht2args-5'(_Config) ->
   Qry = "fn:avg((xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         32767.5
      ",
 Tst = xqerl:run("32767.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint2args-1'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint2args-2'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -648507037999548396
      ",
 Tst = xqerl:run("-648507037999548396"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint2args-3'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -500000000000000000
      ",
 Tst = xqerl:run("-500000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint2args-4'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -648507037999548396
      ",
 Tst = xqerl:run("-648507037999548396"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnint2args-5'(_Config) ->
   Qry = "fn:avg((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -500000000000000000
      ",
 Tst = xqerl:run("-500000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint2args-1'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint2args-2'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         26352301195305017
      ",
 Tst = xqerl:run("26352301195305017"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint2args-3'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"999999999999999999\"),xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         500000000000000000
      ",
 Tst = xqerl:run("500000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint2args-4'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         26352301195305017
      ",
 Tst = xqerl:run("26352301195305017"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgpint2args-5'(_Config) ->
   Qry = "fn:avg((xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         500000000000000000
      ",
 Tst = xqerl:run("500000000000000000"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng2args-1'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng2args-2'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         65373554303837327
      ",
 Tst = xqerl:run("65373554303837327"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng2args-3'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         92233720368547758
      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng2args-4'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         65373554303837327
      ",
 Tst = xqerl:run("65373554303837327"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgulng2args-5'(_Config) ->
   Qry = "fn:avg((xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         92233720368547758
      ",
 Tst = xqerl:run("92233720368547758"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi2args-1'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -999999999999999999
      ",
 Tst = xqerl:run("-999999999999999999"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi2args-2'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -737844218635935244.5
      ",
 Tst = xqerl:run("-737844218635935244.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi2args-3'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -499999999999999999.5
      ",
 Tst = xqerl:run("-499999999999999999.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi2args-4'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -737844218635935244.5
      ",
 Tst = xqerl:run("-737844218635935244.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnpi2args-5'(_Config) ->
   Qry = "fn:avg((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -499999999999999999.5
      ",
 Tst = xqerl:run("-499999999999999999.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni2args-1'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni2args-2'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         151942272995732263.5
      ",
 Tst = xqerl:run("151942272995732263.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni2args-3'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         499999999999999999.5
      ",
 Tst = xqerl:run("499999999999999999.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni2args-4'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         151942272995732263.5
      ",
 Tst = xqerl:run("151942272995732263.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgnni2args-5'(_Config) ->
   Qry = "fn:avg((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         499999999999999999.5
      ",
 Tst = xqerl:run("499999999999999999.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht2args-1'(_Config) ->
   Qry = "fn:avg((xs:short(\"-32768\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -32768
      ",
 Tst = xqerl:run("-32768"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht2args-2'(_Config) ->
   Qry = "fn:avg((xs:short(\"-5324\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -19046
      ",
 Tst = xqerl:run("-19046"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht2args-3'(_Config) ->
   Qry = "fn:avg((xs:short(\"32767\"),xs:short(\"-32768\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -0.5
      ",
 Tst = xqerl:run("-0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht2args-4'(_Config) ->
   Qry = "fn:avg((xs:short(\"-32768\"),xs:short(\"-5324\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -19046
      ",
 Tst = xqerl:run("-19046"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avgsht2args-5'(_Config) ->
   Qry = "fn:avg((xs:short(\"-32768\"),xs:short(\"32767\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -0.5
      ",
 Tst = xqerl:run("-0.5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-001'(_Config) ->
   Qry = "fn:avg( (3, 4, 5) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         4
      ",
 Tst = xqerl:run("4"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-002'(_Config) ->
   Qry = "fn:avg(( xs:yearMonthDuration(\"P20Y\") , xs:yearMonthDuration(\"P10M\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P10Y5M
      ",
   case xqerl_test:string_value(Res) of
             "P10Y5M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-003'(_Config) ->
   Qry = "fn:avg(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-avg-mix-args-004'(_Config) ->
   Qry = "fn:avg(( xs:float('INF'), xs:float('-INF')))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-005'(_Config) ->
   Qry = "fn:avg(( (3, 4, 5), xs:float('NaN') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-006'(_Config) ->
   Qry = "fn:avg(( fn:string-length(\"Hello\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         5
      ",
 Tst = xqerl:run("5"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-007'(_Config) ->
   Qry = "fn:avg(( fn:count(\"Hello\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-008'(_Config) ->
   Qry = "fn:avg( ( ( xs:integer(\"100\"), xs:integer(\"-100\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         0
      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-009'(_Config) ->
   Qry = "fn:avg( ( ( xs:decimal(\"-1.000000000001\"), xs:integer(\"-100\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            -50.5000000000005
            -50.5
         
      ",
 case ( begin Tst1 = xqerl:run("-50.5000000000005"),
  ResVal1 = xqerl_types:value(Res),
  TstVal1 = xqerl_types:value(Tst1),
  ResVal1 == TstVal1 end) orelse ( begin Tst2 = xqerl:run("-50.5"),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-avg-mix-args-010'(_Config) ->
   Qry = "fn:avg(( (xs:decimal(\"1.01\"), xs:integer(\"12\") )))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         6.505
      ",
 Tst = xqerl:run("6.505"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-011'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"NaN\"), 100, (), 2)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-012'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"-3.4028235E38\"), xs:decimal(\"-999999999999999999\") )))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:float(\"-1.7014117E38\")
      ",
 Tst = xqerl:run("xs:float(\"-1.7014117E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-013'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"0\"), xs:decimal(\"-999999999999999999\") ))) eq xs:float(\"-4.9999999999999999E17\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-014'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"3.4028235E38\"), xs:decimal(\"-999999999999999999\") )))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:float(\"1.7014117E38\")
      ",
 Tst = xqerl:run("xs:float(\"1.7014117E38\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-015'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"-0\"), xs:decimal(\"-999999999999999999\") ))) eq xs:float(\"-4.9999999999999999E17\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-016'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"NaN\"), xs:decimal(\"-999999999999999999\") )))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-017'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"INF\"), xs:decimal(\"-999999999999999999\") )))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         INF
      ",
   case xqerl_test:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-018'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"1.01\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1.01
      ",
 Tst = xqerl:run("1.01"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-019'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"-INF\"), xs:decimal(\"2.34\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -INF
      ",
   case xqerl_test:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-020'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"-1.7976931348623157E308\"), xs:integer(\"-999999999999999999\") ) )) eq xs:double(\"-8.988465674311579E307\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-021'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"0\"), xs:integer(\"-999999999999999999\") ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -5.0E17
      ",
 Tst = xqerl:run("-5.0E17"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-022'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"1.7976931348623157E308\"), xs:integer(\"-999999999999999999\") ) )) eq xs:double(\"8.988465674311579E307\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-023'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"-0\"), xs:integer(\"-999999999999999999\") ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -5.0E17
      ",
 Tst = xqerl:run("-5.0E17"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-mix-args-024'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"-INF\"), xs:integer(\"-999999999999999999\") ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         -INF
      ",
   case xqerl_test:string_value(Res) of
             "-INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-025'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"NaN\"), xs:integer(\"-999999999999999999\") ) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-026'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"1.34\"), xs:float(\"INF\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         INF
      ",
   case xqerl_test:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-027'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"INF\"), 2, 3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         INF
      ",
   case xqerl_test:string_value(Res) of
             "INF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-mix-args-028'(_Config) ->
   Qry = "fn:avg((xs:yearMonthDuration(\"P20Y\") , (3, 4, 5)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-029'(_Config) ->
   Qry = "fn:avg(( fn:empty(\"Hello\")) or fn:boolean(fn:count(\"Hello\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-030'(_Config) ->
   Qry = "fn:avg(( concat('hi',' all') ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-031'(_Config) ->
   Qry = "fn:avg(( fn:empty(\"Hello\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-032'(_Config) ->
   Qry = "fn:avg(( (\"a\", \"b\", \"c\", true()) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-033'(_Config) ->
   Qry = "fn:avg(( (xs:string(\"xyz\"), (), (), \"a\" , \"b\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-034'(_Config) ->
   Qry = "fn:avg(( (xs:anyURI(\"www.example.com\"), \"a\", (\"\"), \"b\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-035'(_Config) ->
   Qry = "fn:avg(( (xs:integer(\"100\"), xs:string(\"abc\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-036'(_Config) ->
   Qry = "fn:avg(( (xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-037'(_Config) ->
   Qry = "fn:avg(( (xs:integer(\"830993497117024304\"), \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-038'(_Config) ->
   Qry = "fn:avg(( (xs:integer(\"999999999999999999\"), \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-039'(_Config) ->
   Qry = "fn:avg(( (xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-040'(_Config) ->
   Qry = "fn:avg(( (xs:decimal(\"617375191608514839\"), \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-041'(_Config) ->
   Qry = "fn:avg(( (xs:decimal(\"999999999999999999\"), \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-042'(_Config) ->
   Qry = "fn:avg(( (xs:decimal(\"1.01\"), xs:integer(\"12\"), xs:anyURI(\"www.example.com\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-043'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"-3.4028235E38\"), xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-044'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"0\"), xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-045'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"3.4028235E38\"), xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-046'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"-0\"), xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-047'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"NaN\"), xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            NaN
            
         
      ",
 case (xqerl_test:string_value(Res) == "NaN") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-avg-mix-args-048'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"INF\"), xs:decimal(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-049'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"1.01\"), xs:string(\"a\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-050'(_Config) ->
   Qry = "fn:avg(( (xs:float(\"-INF\"), xs:decimal(\"2.34\"), \"abc\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-051'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"-1.7976931348623157E308\"), xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-052'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"0\"), xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-053'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"1.7976931348623157E308\"), xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-054'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"-0\"), xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-055'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"-INF\"), xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-056'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"NaN\"), xs:integer(\"-999999999999999999\") , \"a\", (), \"3\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            NaN
            
         
      ",
 case (xqerl_test:string_value(Res) == "NaN") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-avg-mix-args-057'(_Config) ->
   Qry = "fn:avg(( (xs:double(\"1.34\"), xs:float(\"INF\"), true())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-058'(_Config) ->
   Qry = "fn:avg(( (xs:boolean(\"false\"), xs:string(\"xyz\"), (), (), \"a\" , \"b\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-059'(_Config) ->
   Qry = "fn:avg(( (true(), xs:string(\"xyz\"), (), (), \"a\" , \"b\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-060'(_Config) ->
   Qry = "fn:avg(( (false(), xs:string(\"xyz\"), (), (), \"a\" , \"b\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-061'(_Config) ->
   Qry = "fn:avg(( (xs:boolean(\"1\"), xs:double(\"-INF\"), \"s\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-062'(_Config) ->
   Qry = "fn:avg(( (xs:boolean(\"true\"), xs:date(\"1993-03-31\"), 4, \"a\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-063'(_Config) ->
   Qry = "fn:avg(( (xs:date(\"1993-03-31\"), xs:string(\"xyz\"), (), (), \"a\" , \"b\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-064'(_Config) ->
   Qry = "fn:avg(( (xs:dateTime(\"1972-12-31T00:00:00\"), xs:boolean(\"false\"), (), (\" \")) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-065'(_Config) ->
   Qry = "fn:avg(( (xs:time(\"12:30:00\"), xs:decimal(\"2.000003\"), 2)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-mix-args-066'(_Config) ->
   Qry = "fn:avg(/works/employee[1])",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0001'}) end.
'K-SeqAVGFunc-1'(_Config) ->
   Qry = "avg()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqAVGFunc-2'(_Config) ->
   Qry = "avg(1, \"wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-SeqAVGFunc-3'(_Config) ->
   Qry = "empty(avg(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-4'(_Config) ->
   Qry = "avg((3, 3, 3)) eq 3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-5'(_Config) ->
   Qry = "avg((-3, -3, -3)) eq -3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-6'(_Config) ->
   Qry = "avg((xs:float(1), xs:integer(3), xs:float(3))) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-7'(_Config) ->
   Qry = "avg((xs:float(1), xs:integer(3), xs:decimal(3))) instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-8'(_Config) ->
   Qry = "avg((xs:float(1), xs:integer(3), xs:double(3))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-9'(_Config) ->
   Qry = "avg((xs:integer(1), xs:integer(3), xs:decimal(3))) instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-10'(_Config) ->
   Qry = "avg((xs:float(1), xs:integer(0), xs:float(5))) eq 2.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-11'(_Config) ->
   Qry = "avg((xs:float(1), xs:integer(0), xs:untypedAtomic(-4))) eq -1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-12'(_Config) ->
   Qry = "avg((xs:float(1), xs:integer(0), xs:untypedAtomic(3))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-13'(_Config) ->
   Qry = "avg((xs:untypedAtomic(3), xs:integer(0), xs:decimal(1))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-14'(_Config) ->
   Qry = "string(avg((3, 3, xs:double(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-15'(_Config) ->
   Qry = "string(avg((3, xs:double(\"NaN\"), 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-16'(_Config) ->
   Qry = "string(avg((xs:double(\"NaN\"), 3, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-17'(_Config) ->
   Qry = "empty(avg(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-18'(_Config) ->
   Qry = "empty(avg(((), ())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-19'(_Config) ->
   Qry = "avg((-5, -0, -3, -6)) eq -3.5",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-20'(_Config) ->
   Qry = "string(avg((1, 2, 3, xs:float(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-21'(_Config) ->
   Qry = "string(avg((1, 2, 3, xs:double(\"NaN\")))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-22'(_Config) ->
   Qry = "string(avg((xs:double(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-23'(_Config) ->
   Qry = "string(avg((xs:float(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-24'(_Config) ->
   Qry = "string(avg((1, 2, xs:double(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-25'(_Config) ->
   Qry = "string(avg((1, 2, xs:float(\"NaN\"), 1, 2, 3))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-26'(_Config) ->
   Qry = "avg(xs:untypedAtomic(\"3\")) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-27'(_Config) ->
   Qry = "avg((1, 2, xs:untypedAtomic(\"3\"))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-28'(_Config) ->
   Qry = "avg((1, 2, xs:untypedAtomic(\"3\"))) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-29'(_Config) ->
   Qry = "avg((xs:float(1), 2, xs:untypedAtomic(\"3\"))) eq 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-30'(_Config) ->
   Qry = "avg((xs:float(1), 2, xs:untypedAtomic(\"3\"))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-31'(_Config) ->
   Qry = "avg(\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-32'(_Config) ->
   Qry = "avg(xs:anyURI(\"a string\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-33'(_Config) ->
   Qry = "avg((1, 2, 3, xs:anyURI(\"a string\"), xs:double(\"NaN\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-34'(_Config) ->
   Qry = "avg(\"a string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-35'(_Config) ->
   Qry = "avg((xs:untypedAtomic(3), xs:integer(3), xs:string(1)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-36'(_Config) ->
   Qry = "avg((xs:string(1), xs:integer(3), xs:untypedAtomic(3)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-37'(_Config) ->
   Qry = "avg((xs:float(2), xs:integer(3), \"a string\", xs:double(2)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-38'(_Config) ->
   Qry = "avg((xs:yearMonthDuration(\"P20Y\"), (3, 4, 5)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'K-SeqAVGFunc-39'(_Config) ->
   Qry = "avg((xs:yearMonthDuration(\"P20Y\"), xs:yearMonthDuration(\"P10M\"))) eq xs:yearMonthDuration(\"P125M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-40'(_Config) ->
   Qry = "empty(avg( () ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-41'(_Config) ->
   Qry = "string(avg((xs:float('INF'), xs:float('-INF')))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-42'(_Config) ->
   Qry = "string(avg(((3, 4, 5), xs:float('NaN')))) eq \"NaN\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqAVGFunc-43'(_Config) ->
   Qry = "avg((3, 4, 5)) eq 4.0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqAVGFunc-1'(_Config) ->
   Qry = "avg((xs:float('NaN'), 2, 3, 4, xs:double('NaN'))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqAVGFunc-2'(_Config) ->
   Qry = "avg((xs:float('NaN'), 2, 3.3, 4, xs:double('NaN'))) instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqAVGFunc-3'(_Config) ->
   Qry = "avg((1, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1
      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-avg-1'(_Config) ->
   Qry = "fn:avg((\"a\",\"b\",\"c\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'fn-avg-2'(_Config) ->
   Qry = "fn:avg(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-avg-3'(_Config) ->
   Qry = "avg((xs:dayTimeDuration(\"P1D\"), xs:dayTimeDuration(\"PT2H\"))) instance of xs:dayTimeDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avg-4'(_Config) ->
   Qry = "avg(for $x in 1 to 10 return xs:dayTimeDuration(concat(\"PT\",$x,\"H\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         PT5H30M
      ",
   case xqerl_test:string_value(Res) of
             "PT5H30M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-5'(_Config) ->
   Qry = "avg((xs:yearMonthDuration(\"P1Y\"), xs:yearMonthDuration(\"P1M\"))) instance of xs:yearMonthDuration",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-avg-6'(_Config) ->
   Qry = "avg(for $x in 1 to 9 return xs:yearMonthDuration(concat(\"P\",$x,\"M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P5M
      ",
   case xqerl_test:string_value(Res) of
             "P5M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-avg-7'(_Config) ->
   Qry = "avg((xs:yearMonthDuration(\"P1Y\"), xs:dayTimeDuration(\"P1D\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-avg-8'(_Config) ->
   Qry = "avg(xs:duration(\"P1Y1M1D\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-avg-001'(_Config) ->
   Qry = "fn:avg((xs:decimal(\"79000000000000000000000000000\"),
                    xs:decimal(\"79000000000000000000000000000\")))
            eq 79000000000000000000000000000
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
	
	  
	  
	
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOAR0002") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-avg-002'(_Config) ->
   Qry = "fn:avg((xs:dayTimeDuration(\"P9223372036854775807D\"), xs:dayTimeDuration(\"P1D\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-avg-003'(_Config) ->
   Qry = "fn:avg((xs:yearMonthDuration(\"P768614336404564650Y\"), xs:yearMonthDuration(\"P1Y\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'cbcl-avg-004'(_Config) ->
   Qry = "fn:avg((xs:dayTimeDuration(\"P1DT2H\"), xs:dayTimeDuration(\"PT22H\"), xs:dayTimeDuration(\"P1D\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P1D
      ",
   case xqerl_test:string_value(Res) of
             "P1D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-avg-005'(_Config) ->
   Qry = "fn:avg((xs:dayTimeDuration(\"P1DT2H\"), xs:dayTimeDuration(\"PT22H\"), xs:yearMonthDuration(\"P1M\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'cbcl-avg-006'(_Config) ->
   Qry = "fn:avg((xs:yearMonthDuration(\"P1Y1M\"), xs:yearMonthDuration(\"P11M\"), xs:yearMonthDuration(\"P1Y\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         P1Y
      ",
   case xqerl_test:string_value(Res) of
             "P1Y" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-avg-007'(_Config) ->
   Qry = "fn:avg((xs:yearMonthDuration(\"P1Y1M\"), xs:yearMonthDuration(\"P11M\"), xs:dayTimeDuration(\"P1D\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'cbcl-avg-008'(_Config) ->
   Qry = "typeswitch (fn:avg((xs:float(1), xs:double(2), xs:float(3)))) case $x as xs:double return $x default return \"FAIL\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         2
      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-avg-009'(_Config) ->
   Qry = "boolean(avg(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-avg-010'(_Config) ->
   Qry = "avg((xs:double(\"NaN\"), current-date() - xs:date(\"1997-01-01\") ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FORG0006" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FORG0006'}) end.
'cbcl-avg-011'(_Config) ->
   Qry = "avg((xs:double(\"NaN\"), day-from-date(current-date())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-avg-012'(_Config) ->
   Qry = "avg((xs:float(\"NaN\"), day-from-date(current-date())))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         NaN
      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-avg-013'(_Config) ->
   Qry = "empty(avg(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
            
            
         
      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
