-module('op_numeric_less_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-less-thanint2args-1'/1]).
-export(['op-numeric-less-thanint2args-2'/1]).
-export(['op-numeric-less-thanint2args-3'/1]).
-export(['op-numeric-less-thanint2args-4'/1]).
-export(['op-numeric-less-thanint2args-5'/1]).
-export(['op-numeric-less-thanint2args-6'/1]).
-export(['op-numeric-less-thanint2args-7'/1]).
-export(['op-numeric-less-thanint2args-8'/1]).
-export(['op-numeric-less-thanint2args-9'/1]).
-export(['op-numeric-less-thanint2args-10'/1]).
-export(['op-numeric-less-thanintg2args-1'/1]).
-export(['op-numeric-less-thanintg2args-2'/1]).
-export(['op-numeric-less-thanintg2args-3'/1]).
-export(['op-numeric-less-thanintg2args-4'/1]).
-export(['op-numeric-less-thanintg2args-5'/1]).
-export(['op-numeric-less-thanintg2args-6'/1]).
-export(['op-numeric-less-thanintg2args-7'/1]).
-export(['op-numeric-less-thanintg2args-8'/1]).
-export(['op-numeric-less-thanintg2args-9'/1]).
-export(['op-numeric-less-thanintg2args-10'/1]).
-export(['op-numeric-less-thandec2args-1'/1]).
-export(['op-numeric-less-thandec2args-2'/1]).
-export(['op-numeric-less-thandec2args-3'/1]).
-export(['op-numeric-less-thandec2args-4'/1]).
-export(['op-numeric-less-thandec2args-5'/1]).
-export(['op-numeric-less-thandec2args-6'/1]).
-export(['op-numeric-less-thandec2args-7'/1]).
-export(['op-numeric-less-thandec2args-8'/1]).
-export(['op-numeric-less-thandec2args-9'/1]).
-export(['op-numeric-less-thandec2args-10'/1]).
-export(['op-numeric-less-thandbl2args-1'/1]).
-export(['op-numeric-less-thandbl2args-2'/1]).
-export(['op-numeric-less-thandbl2args-3'/1]).
-export(['op-numeric-less-thandbl2args-4'/1]).
-export(['op-numeric-less-thandbl2args-5'/1]).
-export(['op-numeric-less-thandbl2args-6'/1]).
-export(['op-numeric-less-thandbl2args-7'/1]).
-export(['op-numeric-less-thandbl2args-8'/1]).
-export(['op-numeric-less-thandbl2args-9'/1]).
-export(['op-numeric-less-thandbl2args-10'/1]).
-export(['op-numeric-less-thanflt2args-1'/1]).
-export(['op-numeric-less-thanflt2args-2'/1]).
-export(['op-numeric-less-thanflt2args-3'/1]).
-export(['op-numeric-less-thanflt2args-4'/1]).
-export(['op-numeric-less-thanflt2args-5'/1]).
-export(['op-numeric-less-thanflt2args-6'/1]).
-export(['op-numeric-less-thanflt2args-7'/1]).
-export(['op-numeric-less-thanflt2args-8'/1]).
-export(['op-numeric-less-thanflt2args-9'/1]).
-export(['op-numeric-less-thanflt2args-10'/1]).
-export(['op-numeric-less-thanlng2args-1'/1]).
-export(['op-numeric-less-thanlng2args-2'/1]).
-export(['op-numeric-less-thanlng2args-3'/1]).
-export(['op-numeric-less-thanlng2args-4'/1]).
-export(['op-numeric-less-thanlng2args-5'/1]).
-export(['op-numeric-less-thanlng2args-6'/1]).
-export(['op-numeric-less-thanlng2args-7'/1]).
-export(['op-numeric-less-thanlng2args-8'/1]).
-export(['op-numeric-less-thanlng2args-9'/1]).
-export(['op-numeric-less-thanlng2args-10'/1]).
-export(['op-numeric-less-thanusht2args-1'/1]).
-export(['op-numeric-less-thanusht2args-2'/1]).
-export(['op-numeric-less-thanusht2args-3'/1]).
-export(['op-numeric-less-thanusht2args-4'/1]).
-export(['op-numeric-less-thanusht2args-5'/1]).
-export(['op-numeric-less-thanusht2args-6'/1]).
-export(['op-numeric-less-thanusht2args-7'/1]).
-export(['op-numeric-less-thanusht2args-8'/1]).
-export(['op-numeric-less-thanusht2args-9'/1]).
-export(['op-numeric-less-thanusht2args-10'/1]).
-export(['op-numeric-less-thannint2args-1'/1]).
-export(['op-numeric-less-thannint2args-2'/1]).
-export(['op-numeric-less-thannint2args-3'/1]).
-export(['op-numeric-less-thannint2args-4'/1]).
-export(['op-numeric-less-thannint2args-5'/1]).
-export(['op-numeric-less-thannint2args-6'/1]).
-export(['op-numeric-less-thannint2args-7'/1]).
-export(['op-numeric-less-thannint2args-8'/1]).
-export(['op-numeric-less-thannint2args-9'/1]).
-export(['op-numeric-less-thannint2args-10'/1]).
-export(['op-numeric-less-thanpint2args-1'/1]).
-export(['op-numeric-less-thanpint2args-2'/1]).
-export(['op-numeric-less-thanpint2args-3'/1]).
-export(['op-numeric-less-thanpint2args-4'/1]).
-export(['op-numeric-less-thanpint2args-5'/1]).
-export(['op-numeric-less-thanpint2args-6'/1]).
-export(['op-numeric-less-thanpint2args-7'/1]).
-export(['op-numeric-less-thanpint2args-8'/1]).
-export(['op-numeric-less-thanpint2args-9'/1]).
-export(['op-numeric-less-thanpint2args-10'/1]).
-export(['op-numeric-less-thanulng2args-1'/1]).
-export(['op-numeric-less-thanulng2args-2'/1]).
-export(['op-numeric-less-thanulng2args-3'/1]).
-export(['op-numeric-less-thanulng2args-4'/1]).
-export(['op-numeric-less-thanulng2args-5'/1]).
-export(['op-numeric-less-thanulng2args-6'/1]).
-export(['op-numeric-less-thanulng2args-7'/1]).
-export(['op-numeric-less-thanulng2args-8'/1]).
-export(['op-numeric-less-thanulng2args-9'/1]).
-export(['op-numeric-less-thanulng2args-10'/1]).
-export(['op-numeric-less-thannpi2args-1'/1]).
-export(['op-numeric-less-thannpi2args-2'/1]).
-export(['op-numeric-less-thannpi2args-3'/1]).
-export(['op-numeric-less-thannpi2args-4'/1]).
-export(['op-numeric-less-thannpi2args-5'/1]).
-export(['op-numeric-less-thannpi2args-6'/1]).
-export(['op-numeric-less-thannpi2args-7'/1]).
-export(['op-numeric-less-thannpi2args-8'/1]).
-export(['op-numeric-less-thannpi2args-9'/1]).
-export(['op-numeric-less-thannpi2args-10'/1]).
-export(['op-numeric-less-thannni2args-1'/1]).
-export(['op-numeric-less-thannni2args-2'/1]).
-export(['op-numeric-less-thannni2args-3'/1]).
-export(['op-numeric-less-thannni2args-4'/1]).
-export(['op-numeric-less-thannni2args-5'/1]).
-export(['op-numeric-less-thannni2args-6'/1]).
-export(['op-numeric-less-thannni2args-7'/1]).
-export(['op-numeric-less-thannni2args-8'/1]).
-export(['op-numeric-less-thannni2args-9'/1]).
-export(['op-numeric-less-thannni2args-10'/1]).
-export(['op-numeric-less-thansht2args-1'/1]).
-export(['op-numeric-less-thansht2args-2'/1]).
-export(['op-numeric-less-thansht2args-3'/1]).
-export(['op-numeric-less-thansht2args-4'/1]).
-export(['op-numeric-less-thansht2args-5'/1]).
-export(['op-numeric-less-thansht2args-6'/1]).
-export(['op-numeric-less-thansht2args-7'/1]).
-export(['op-numeric-less-thansht2args-8'/1]).
-export(['op-numeric-less-thansht2args-9'/1]).
-export(['op-numeric-less-thansht2args-10'/1]).
-export(['K-NumericLT-1'/1]).
-export(['K-NumericLT-2'/1]).
-export(['K-NumericLT-3'/1]).
-export(['K-NumericLT-4'/1]).
-export(['K-NumericLT-5'/1]).
-export(['K-NumericLT-6'/1]).
-export(['K-NumericLT-7'/1]).
-export(['K-NumericLT-8'/1]).
-export(['K-NumericLT-9'/1]).
-export(['K-NumericLT-10'/1]).
-export(['K-NumericLT-11'/1]).
-export(['K-NumericLT-12'/1]).
-export(['K-NumericLT-13'/1]).
-export(['K-NumericLT-14'/1]).
-export(['K-NumericLT-15'/1]).
-export(['K-NumericLT-16'/1]).
-export(['K-NumericLT-17'/1]).
-export(['K-NumericLT-18'/1]).
-export(['K-NumericLT-19'/1]).
-export(['K-NumericLT-20'/1]).
-export(['K-NumericLT-21'/1]).
-export(['K-NumericLT-22'/1]).
-export(['K2-NumericLT-1'/1]).
-export(['K2-NumericLT-2'/1]).
-export(['cbcl-numeric-less-than-001'/1]).
-export(['cbcl-numeric-less-than-002'/1]).
-export(['cbcl-numeric-less-than-003'/1]).
-export(['cbcl-numeric-less-than-004'/1]).
-export(['cbcl-numeric-less-than-005'/1]).
-export(['cbcl-numeric-less-than-006'/1]).
-export(['cbcl-numeric-less-than-007'/1]).
-export(['cbcl-numeric-less-than-008'/1]).
-export(['cbcl-numeric-less-than-009'/1]).
-export(['cbcl-numeric-less-than-010'/1]).
-export(['cbcl-numeric-less-than-011'/1]).
-export(['cbcl-numeric-less-than-012'/1]).
-export(['cbcl-numeric-less-than-013'/1]).
-export(['cbcl-numeric-less-than-014'/1]).
-export(['cbcl-numeric-less-than-015'/1]).
-export(['cbcl-numeric-less-than-016'/1]).
-export(['cbcl-numeric-less-than-017'/1]).
-export(['cbcl-numeric-less-than-018'/1]).
-export(['cbcl-numeric-less-than-019'/1]).
-export(['cbcl-numeric-less-than-020'/1]).
-export(['cbcl-numeric-less-than-021'/1]).
-export(['cbcl-numeric-less-than-022'/1]).
-export(['cbcl-numeric-less-than-023'/1]).
-export(['cbcl-numeric-less-than-024'/1]).
-export(['cbcl-numeric-less-than-025'/1]).
-export(['cbcl-numeric-less-than-026'/1]).
-export(['cbcl-numeric-less-than-027'/1]).
-export(['cbcl-numeric-less-than-028'/1]).
-export(['cbcl-numeric-less-than-029'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-less-thanint2args-1',
   'op-numeric-less-thanint2args-2',
   'op-numeric-less-thanint2args-3',
   'op-numeric-less-thanint2args-4',
   'op-numeric-less-thanint2args-5',
   'op-numeric-less-thanint2args-6',
   'op-numeric-less-thanint2args-7',
   'op-numeric-less-thanint2args-8',
   'op-numeric-less-thanint2args-9',
   'op-numeric-less-thanint2args-10',
   'op-numeric-less-thanintg2args-1',
   'op-numeric-less-thanintg2args-2',
   'op-numeric-less-thanintg2args-3',
   'op-numeric-less-thanintg2args-4',
   'op-numeric-less-thanintg2args-5',
   'op-numeric-less-thanintg2args-6',
   'op-numeric-less-thanintg2args-7',
   'op-numeric-less-thanintg2args-8',
   'op-numeric-less-thanintg2args-9',
   'op-numeric-less-thanintg2args-10',
   'op-numeric-less-thandec2args-1',
   'op-numeric-less-thandec2args-2',
   'op-numeric-less-thandec2args-3',
   'op-numeric-less-thandec2args-4',
   'op-numeric-less-thandec2args-5',
   'op-numeric-less-thandec2args-6',
   'op-numeric-less-thandec2args-7',
   'op-numeric-less-thandec2args-8',
   'op-numeric-less-thandec2args-9',
   'op-numeric-less-thandec2args-10',
   'op-numeric-less-thandbl2args-1',
   'op-numeric-less-thandbl2args-2',
   'op-numeric-less-thandbl2args-3',
   'op-numeric-less-thandbl2args-4',
   'op-numeric-less-thandbl2args-5',
   'op-numeric-less-thandbl2args-6',
   'op-numeric-less-thandbl2args-7',
   'op-numeric-less-thandbl2args-8',
   'op-numeric-less-thandbl2args-9',
   'op-numeric-less-thandbl2args-10',
   'op-numeric-less-thanflt2args-1',
   'op-numeric-less-thanflt2args-2',
   'op-numeric-less-thanflt2args-3',
   'op-numeric-less-thanflt2args-4',
   'op-numeric-less-thanflt2args-5',
   'op-numeric-less-thanflt2args-6',
   'op-numeric-less-thanflt2args-7',
   'op-numeric-less-thanflt2args-8',
   'op-numeric-less-thanflt2args-9',
   'op-numeric-less-thanflt2args-10',
   'op-numeric-less-thanlng2args-1',
   'op-numeric-less-thanlng2args-2',
   'op-numeric-less-thanlng2args-3',
   'op-numeric-less-thanlng2args-4',
   'op-numeric-less-thanlng2args-5',
   'op-numeric-less-thanlng2args-6',
   'op-numeric-less-thanlng2args-7',
   'op-numeric-less-thanlng2args-8',
   'op-numeric-less-thanlng2args-9',
   'op-numeric-less-thanlng2args-10',
   'op-numeric-less-thanusht2args-1',
   'op-numeric-less-thanusht2args-2',
   'op-numeric-less-thanusht2args-3',
   'op-numeric-less-thanusht2args-4',
   'op-numeric-less-thanusht2args-5',
   'op-numeric-less-thanusht2args-6',
   'op-numeric-less-thanusht2args-7',
   'op-numeric-less-thanusht2args-8',
   'op-numeric-less-thanusht2args-9',
   'op-numeric-less-thanusht2args-10',
   'op-numeric-less-thannint2args-1',
   'op-numeric-less-thannint2args-2',
   'op-numeric-less-thannint2args-3',
   'op-numeric-less-thannint2args-4',
   'op-numeric-less-thannint2args-5',
   'op-numeric-less-thannint2args-6',
   'op-numeric-less-thannint2args-7',
   'op-numeric-less-thannint2args-8',
   'op-numeric-less-thannint2args-9',
   'op-numeric-less-thannint2args-10',
   'op-numeric-less-thanpint2args-1',
   'op-numeric-less-thanpint2args-2',
   'op-numeric-less-thanpint2args-3',
   'op-numeric-less-thanpint2args-4',
   'op-numeric-less-thanpint2args-5',
   'op-numeric-less-thanpint2args-6',
   'op-numeric-less-thanpint2args-7',
   'op-numeric-less-thanpint2args-8',
   'op-numeric-less-thanpint2args-9',
   'op-numeric-less-thanpint2args-10',
   'op-numeric-less-thanulng2args-1',
   'op-numeric-less-thanulng2args-2',
   'op-numeric-less-thanulng2args-3',
   'op-numeric-less-thanulng2args-4',
   'op-numeric-less-thanulng2args-5',
   'op-numeric-less-thanulng2args-6',
   'op-numeric-less-thanulng2args-7',
   'op-numeric-less-thanulng2args-8',
   'op-numeric-less-thanulng2args-9',
   'op-numeric-less-thanulng2args-10',
   'op-numeric-less-thannpi2args-1',
   'op-numeric-less-thannpi2args-2',
   'op-numeric-less-thannpi2args-3',
   'op-numeric-less-thannpi2args-4',
   'op-numeric-less-thannpi2args-5',
   'op-numeric-less-thannpi2args-6',
   'op-numeric-less-thannpi2args-7',
   'op-numeric-less-thannpi2args-8',
   'op-numeric-less-thannpi2args-9',
   'op-numeric-less-thannpi2args-10',
   'op-numeric-less-thannni2args-1',
   'op-numeric-less-thannni2args-2',
   'op-numeric-less-thannni2args-3',
   'op-numeric-less-thannni2args-4',
   'op-numeric-less-thannni2args-5',
   'op-numeric-less-thannni2args-6',
   'op-numeric-less-thannni2args-7',
   'op-numeric-less-thannni2args-8',
   'op-numeric-less-thannni2args-9',
   'op-numeric-less-thannni2args-10',
   'op-numeric-less-thansht2args-1',
   'op-numeric-less-thansht2args-2',
   'op-numeric-less-thansht2args-3',
   'op-numeric-less-thansht2args-4',
   'op-numeric-less-thansht2args-5',
   'op-numeric-less-thansht2args-6',
   'op-numeric-less-thansht2args-7',
   'op-numeric-less-thansht2args-8',
   'op-numeric-less-thansht2args-9',
   'op-numeric-less-thansht2args-10',
   'K-NumericLT-1',
   'K-NumericLT-2',
   'K-NumericLT-3',
   'K-NumericLT-4',
   'K-NumericLT-5',
   'K-NumericLT-6',
   'K-NumericLT-7',
   'K-NumericLT-8',
   'K-NumericLT-9',
   'K-NumericLT-10',
   'K-NumericLT-11',
   'K-NumericLT-12',
   'K-NumericLT-13',
   'K-NumericLT-14',
   'K-NumericLT-15',
   'K-NumericLT-16',
   'K-NumericLT-17',
   'K-NumericLT-18',
   'K-NumericLT-19',
   'K-NumericLT-20',
   'K-NumericLT-21',
   'K-NumericLT-22',
   'K2-NumericLT-1',
   'K2-NumericLT-2',
   'cbcl-numeric-less-than-001',
   'cbcl-numeric-less-than-002',
   'cbcl-numeric-less-than-003',
   'cbcl-numeric-less-than-004',
   'cbcl-numeric-less-than-005',
   'cbcl-numeric-less-than-006',
   'cbcl-numeric-less-than-007',
   'cbcl-numeric-less-than-008',
   'cbcl-numeric-less-than-009',
   'cbcl-numeric-less-than-010',
   'cbcl-numeric-less-than-011',
   'cbcl-numeric-less-than-012',
   'cbcl-numeric-less-than-013',
   'cbcl-numeric-less-than-014',
   'cbcl-numeric-less-than-015',
   'cbcl-numeric-less-than-016',
   'cbcl-numeric-less-than-017',
   'cbcl-numeric-less-than-018',
   'cbcl-numeric-less-than-019',
   'cbcl-numeric-less-than-020',
   'cbcl-numeric-less-than-021',
   'cbcl-numeric-less-than-022',
   'cbcl-numeric-less-than-023',
   'cbcl-numeric-less-than-024',
   'cbcl-numeric-less-than-025',
   'cbcl-numeric-less-than-026',
   'cbcl-numeric-less-than-027',
   'cbcl-numeric-less-than-028',
   'cbcl-numeric-less-than-029'].
environment('empty') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{'decimal-formats', []},
{sources, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map') ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"file:///C:/git/zadean/xquery-3.1/QT3-test-suite/catalog.xml"}]},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
].
'op-numeric-less-thanint2args-1'(_Config) ->
   Qry = "xs:int(\"-2147483648\") lt xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-2'(_Config) ->
   Qry = "xs:int(\"-1873914410\") lt xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-3'(_Config) ->
   Qry = "xs:int(\"2147483647\") lt xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-4'(_Config) ->
   Qry = "xs:int(\"-2147483648\") lt xs:int(\"-1873914410\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-5'(_Config) ->
   Qry = "xs:int(\"-2147483648\") lt xs:int(\"2147483647\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-6'(_Config) ->
   Qry = "xs:int(\"-2147483648\") ge xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-7'(_Config) ->
   Qry = "xs:int(\"-1873914410\") ge xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-8'(_Config) ->
   Qry = "xs:int(\"2147483647\") ge xs:int(\"-2147483648\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-9'(_Config) ->
   Qry = "xs:int(\"-2147483648\") ge xs:int(\"-1873914410\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanint2args-10'(_Config) ->
   Qry = "xs:int(\"-2147483648\") ge xs:int(\"2147483647\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-1'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") lt xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-2'(_Config) ->
   Qry = "xs:integer(\"830993497117024304\") lt xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-3'(_Config) ->
   Qry = "xs:integer(\"999999999999999999\") lt xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-4'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") lt xs:integer(\"830993497117024304\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-5'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") lt xs:integer(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-6'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") ge xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-7'(_Config) ->
   Qry = "xs:integer(\"830993497117024304\") ge xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-8'(_Config) ->
   Qry = "xs:integer(\"999999999999999999\") ge xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-9'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") ge xs:integer(\"830993497117024304\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanintg2args-10'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") ge xs:integer(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-1'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") lt xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-2'(_Config) ->
   Qry = "xs:decimal(\"617375191608514839\") lt xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-3'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") lt xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-4'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") lt xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-5'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") lt xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-6'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") ge xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-7'(_Config) ->
   Qry = "xs:decimal(\"617375191608514839\") ge xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-8'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") ge xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-9'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") ge xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandec2args-10'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") ge xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-1'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") lt xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-2'(_Config) ->
   Qry = "xs:double(\"0\") lt xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-3'(_Config) ->
   Qry = "xs:double(\"1.7976931348623157E308\") lt xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-4'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") lt xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-5'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") lt xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-6'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") ge xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-7'(_Config) ->
   Qry = "xs:double(\"0\") ge xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-8'(_Config) ->
   Qry = "xs:double(\"1.7976931348623157E308\") ge xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-9'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") ge xs:double(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thandbl2args-10'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") ge xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-1'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") lt xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-2'(_Config) ->
   Qry = "xs:float(\"0\") lt xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-3'(_Config) ->
   Qry = "xs:float(\"3.4028235E38\") lt xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-4'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") lt xs:float(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-5'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") lt xs:float(\"3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-6'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") ge xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-7'(_Config) ->
   Qry = "xs:float(\"0\") ge xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-8'(_Config) ->
   Qry = "xs:float(\"3.4028235E38\") ge xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-9'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") ge xs:float(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanflt2args-10'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") ge xs:float(\"3.4028235E38\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-1'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") lt xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-2'(_Config) ->
   Qry = "xs:long(\"-47175562203048468\") lt xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-3'(_Config) ->
   Qry = "xs:long(\"92233720368547758\") lt xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-4'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") lt xs:long(\"-47175562203048468\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-5'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") lt xs:long(\"92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-6'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") ge xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-7'(_Config) ->
   Qry = "xs:long(\"-47175562203048468\") ge xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-8'(_Config) ->
   Qry = "xs:long(\"92233720368547758\") ge xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-9'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") ge xs:long(\"-47175562203048468\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanlng2args-10'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") ge xs:long(\"92233720368547758\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") lt xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") lt xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-3'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") lt xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-4'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") lt xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-5'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") lt xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-6'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") ge xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-7'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") ge xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-8'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") ge xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-9'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") ge xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanusht2args-10'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") ge xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-1'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") lt xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-2'(_Config) ->
   Qry = "xs:negativeInteger(\"-297014075999096793\") lt xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-3'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") lt xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-4'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") lt xs:negativeInteger(\"-297014075999096793\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-5'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") lt xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-6'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") ge xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-7'(_Config) ->
   Qry = "xs:negativeInteger(\"-297014075999096793\") ge xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-8'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") ge xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-9'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") ge xs:negativeInteger(\"-297014075999096793\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannint2args-10'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") ge xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") lt xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") lt xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") lt xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-4'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") lt xs:positiveInteger(\"52704602390610033\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-5'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") lt xs:positiveInteger(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-6'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") ge xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-7'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") ge xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-8'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") ge xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-9'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") ge xs:positiveInteger(\"52704602390610033\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanpint2args-10'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") ge xs:positiveInteger(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") lt xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") lt xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-3'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") lt xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-4'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") lt xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-5'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") lt xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-6'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") ge xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-7'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") ge xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-8'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") ge xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-9'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") ge xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thanulng2args-10'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") ge xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") lt xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-2'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") lt xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-3'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") lt xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-4'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") lt xs:nonPositiveInteger(\"-475688437271870490\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-5'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") lt xs:nonPositiveInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-6'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") ge xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-7'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") ge xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-8'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") ge xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-9'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") ge xs:nonPositiveInteger(\"-475688437271870490\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannpi2args-10'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") ge xs:nonPositiveInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") lt xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") lt xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-3'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") lt xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-4'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") lt xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-5'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") lt xs:nonNegativeInteger(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-6'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") ge xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-7'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") ge xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-8'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") ge xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-9'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") ge xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thannni2args-10'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") ge xs:nonNegativeInteger(\"999999999999999999\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-1'(_Config) ->
   Qry = "xs:short(\"-32768\") lt xs:short(\"-32768\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-2'(_Config) ->
   Qry = "xs:short(\"-5324\") lt xs:short(\"-32768\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-3'(_Config) ->
   Qry = "xs:short(\"32767\") lt xs:short(\"-32768\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-4'(_Config) ->
   Qry = "xs:short(\"-32768\") lt xs:short(\"-5324\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-5'(_Config) ->
   Qry = "xs:short(\"-32768\") lt xs:short(\"32767\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-6'(_Config) ->
   Qry = "xs:short(\"-32768\") ge xs:short(\"-32768\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-7'(_Config) ->
   Qry = "xs:short(\"-5324\") ge xs:short(\"-32768\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-8'(_Config) ->
   Qry = "xs:short(\"32767\") ge xs:short(\"-32768\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-9'(_Config) ->
   Qry = "xs:short(\"-32768\") ge xs:short(\"-5324\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'op-numeric-less-thansht2args-10'(_Config) ->
   Qry = "xs:short(\"-32768\") ge xs:short(\"32767\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-1'(_Config) ->
   Qry = "xs:integer(-1) lt xs:integer(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-2'(_Config) ->
   Qry = "xs:integer(-1) le xs:integer(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-3'(_Config) ->
   Qry = "xs:decimal(-1) lt xs:decimal(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-4'(_Config) ->
   Qry = "xs:decimal(-1) le xs:decimal(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-5'(_Config) ->
   Qry = "0 lt xs:double(\"INF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-6'(_Config) ->
   Qry = "xs:double(\"-INF\") lt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-7'(_Config) ->
   Qry = "xs:double(-1) lt xs:double(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-8'(_Config) ->
   Qry = "xs:double(-1) le xs:double(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-9'(_Config) ->
   Qry = "0 lt xs:float(\"INF\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-10'(_Config) ->
   Qry = "xs:float(\"-INF\") lt 0",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-11'(_Config) ->
   Qry = "xs:float(-1) lt xs:float(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-12'(_Config) ->
   Qry = "xs:float(-1) le xs:float(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-13'(_Config) ->
   Qry = "not(xs:double(\"NaN\") lt 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-14'(_Config) ->
   Qry = "not(xs:float(\"NaN\") lt 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-15'(_Config) ->
   Qry = "not(xs:double(\"NaN\") le 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-16'(_Config) ->
   Qry = "not(xs:float(\"NaN\") le 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-17'(_Config) ->
   Qry = "not(1 lt xs:double(\"NaN\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-18'(_Config) ->
   Qry = "not(1 lt xs:float(\"NaN\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-19'(_Config) ->
   Qry = "not(1 le xs:double(\"NaN\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-20'(_Config) ->
   Qry = "not(1 le xs:float(\"NaN\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-21'(_Config) ->
   Qry = "1 le count((1, 2, 3, timezone-from-time(current-time()), 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-NumericLT-22'(_Config) ->
   Qry = "0 lt count((1, 2, 3, timezone-from-time(current-time()), 4))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericLT-1'(_Config) ->
   Qry = "xs:unsignedLong(\"100\") lt xs:unsignedLong(\"18446744073709551615\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-NumericLT-2'(_Config) ->
   Qry = "xs:unsignedLong(\"18446744073709551615\") lt xs:unsignedLong(\"100\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-001'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not( local:square(1e0) lt local:square(2e0) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-002'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not( local:square(xs:float(1e0)) lt local:square(xs:float(2e0)) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-003'(_Config) ->
   Qry = "declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; not( local:square(1.0) lt local:square(2.0) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-004'(_Config) ->
   Qry = "declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; not( local:square(1) lt local:square(2) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-005'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not( local:square(1e0) ge local:square(2e0) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-006'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not( local:square(xs:float(1e0)) ge local:square(xs:float(2e0)) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-007'(_Config) ->
   Qry = "declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; not( local:square(1.0) ge local:square(2.0) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-008'(_Config) ->
   Qry = "declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; not( local:square(1) ge local:square(2) )",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-009'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not(not( local:square(1e0) lt local:square(2e0) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-010'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not(not( local:square(xs:float(1e0)) lt local:square(xs:float(2e0)) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-011'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not(not( local:square(1e0) ge local:square(2e0) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-012'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not(not( local:square(xs:float(1e0)) ge local:square(xs:float(2e0)) ))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-013'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 1 lt 121",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-014'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 1 lt 121",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-015'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 lt $x + 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-016'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 lt 1 + $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-017'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 1 ge 121",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-018'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 1 ge 121",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-019'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 ge $x + 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-020'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 ge 1 + $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-021'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 2 lt 121",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-022'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 2 lt 12",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-023'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 lt $x + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-024'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 lt 2 + $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-025'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 2 ge 121",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-026'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 2 ge 12",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-027'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 ge $x + 2",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-028'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 ge $x + 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-numeric-less-than-029'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 ge 2 + $x",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
