-module('prod_AxisStep_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['Axes001-1'/1]).
-export(['Axes001-2'/1]).
-export(['Axes001-3'/1]).
-export(['Axes002-1'/1]).
-export(['Axes002-2'/1]).
-export(['Axes002-3'/1]).
-export(['Axes002-4'/1]).
-export(['Axes003-1'/1]).
-export(['Axes003-2'/1]).
-export(['Axes003-3'/1]).
-export(['Axes003-4'/1]).
-export(['Axes004-1'/1]).
-export(['Axes004-2'/1]).
-export(['Axes004-3'/1]).
-export(['Axes005-1'/1]).
-export(['Axes005-2'/1]).
-export(['Axes005-3'/1]).
-export(['Axes005-4'/1]).
-export(['Axes006-1'/1]).
-export(['Axes006-2'/1]).
-export(['Axes006-3'/1]).
-export(['Axes006-4'/1]).
-export(['Axes007-1'/1]).
-export(['Axes007-2'/1]).
-export(['Axes007-3'/1]).
-export(['Axes008-1'/1]).
-export(['Axes008-2'/1]).
-export(['Axes008-3'/1]).
-export(['Axes009-1'/1]).
-export(['Axes009-2'/1]).
-export(['Axes009-3'/1]).
-export(['Axes010-1'/1]).
-export(['Axes010-2'/1]).
-export(['Axes010-3'/1]).
-export(['Axes011-1'/1]).
-export(['Axes011-2'/1]).
-export(['Axes011-3'/1]).
-export(['Axes012-1'/1]).
-export(['Axes013-1'/1]).
-export(['Axes014-1'/1]).
-export(['Axes015-1'/1]).
-export(['Axes016-1'/1]).
-export(['Axes017-1'/1]).
-export(['Axes018-1'/1]).
-export(['Axes019-1'/1]).
-export(['Axes020-1'/1]).
-export(['Axes021-1'/1]).
-export(['Axes023-1'/1]).
-export(['Axes027-1'/1]).
-export(['Axes030-1'/1]).
-export(['Axes030-2'/1]).
-export(['Axes031-1'/1]).
-export(['Axes031-2'/1]).
-export(['Axes031-3'/1]).
-export(['Axes031-4'/1]).
-export(['Axes032-1'/1]).
-export(['Axes032-2'/1]).
-export(['Axes032-3'/1]).
-export(['Axes032-4'/1]).
-export(['Axes033-1'/1]).
-export(['Axes033-2'/1]).
-export(['Axes033-3'/1]).
-export(['Axes033-4'/1]).
-export(['Axes034-1'/1]).
-export(['Axes034-2'/1]).
-export(['Axes035-1'/1]).
-export(['Axes035-2'/1]).
-export(['Axes035-3'/1]).
-export(['Axes035-4'/1]).
-export(['Axes036-1'/1]).
-export(['Axes036-2'/1]).
-export(['Axes037-1'/1]).
-export(['Axes037-2'/1]).
-export(['Axes041-1'/1]).
-export(['Axes043-1'/1]).
-export(['Axes043-2'/1]).
-export(['Axes044-1'/1]).
-export(['Axes044-2'/1]).
-export(['Axes045-1'/1]).
-export(['Axes045-2'/1]).
-export(['Axes046-1'/1]).
-export(['Axes046-2'/1]).
-export(['Axes047-1'/1]).
-export(['Axes047-2'/1]).
-export(['Axes048-1'/1]).
-export(['Axes048-2'/1]).
-export(['Axes049-1'/1]).
-export(['Axes049-2'/1]).
-export(['Axes055-1'/1]).
-export(['Axes056-1'/1]).
-export(['Axes056-2'/1]).
-export(['Axes056-3'/1]).
-export(['Axes057-1'/1]).
-export(['Axes057-2'/1]).
-export(['Axes057-3'/1]).
-export(['Axes057-4'/1]).
-export(['Axes058-1'/1]).
-export(['Axes058-2'/1]).
-export(['Axes058-3'/1]).
-export(['Axes059-1'/1]).
-export(['Axes059-2'/1]).
-export(['Axes060-1'/1]).
-export(['Axes060-2'/1]).
-export(['Axes060-3'/1]).
-export(['Axes060-4'/1]).
-export(['Axes061-1'/1]).
-export(['Axes061-2'/1]).
-export(['Axes062-1'/1]).
-export(['Axes062-2'/1]).
-export(['Axes063-1'/1]).
-export(['Axes063-2'/1]).
-export(['Axes063-3'/1]).
-export(['Axes063-4'/1]).
-export(['Axes064-1'/1]).
-export(['Axes064-2'/1]).
-export(['Axes064-3'/1]).
-export(['Axes065-1'/1]).
-export(['Axes065-2'/1]).
-export(['Axes066-1'/1]).
-export(['Axes066-2'/1]).
-export(['Axes066-3'/1]).
-export(['Axes066-4'/1]).
-export(['Axes067-1'/1]).
-export(['Axes067-2'/1]).
-export(['Axes067-3'/1]).
-export(['Axes068-1'/1]).
-export(['Axes068-2'/1]).
-export(['Axes068-3'/1]).
-export(['Axes069-1'/1]).
-export(['Axes069-2'/1]).
-export(['Axes069-3'/1]).
-export(['Axes070-1'/1]).
-export(['Axes070-2'/1]).
-export(['Axes070-3'/1]).
-export(['Axes071-1'/1]).
-export(['Axes071-2'/1]).
-export(['Axes071-3'/1]).
-export(['Axes072-1'/1]).
-export(['Axes072-2'/1]).
-export(['Axes073-1'/1]).
-export(['Axes073-2'/1]).
-export(['Axes074-1'/1]).
-export(['Axes074-2'/1]).
-export(['Axes074-3'/1]).
-export(['Axes074-4'/1]).
-export(['Axes075-1'/1]).
-export(['Axes075-2'/1]).
-export(['Axes075-3'/1]).
-export(['Axes075-4'/1]).
-export(['Axes076-1'/1]).
-export(['Axes076-2'/1]).
-export(['Axes076-3'/1]).
-export(['Axes076-4'/1]).
-export(['Axes077-1'/1]).
-export(['Axes077-2'/1]).
-export(['Axes077-3'/1]).
-export(['Axes078-1'/1]).
-export(['Axes078-2'/1]).
-export(['Axes078-3'/1]).
-export(['Axes078-4'/1]).
-export(['Axes079-1'/1]).
-export(['Axes079-2'/1]).
-export(['Axes079-3'/1]).
-export(['Axes079-4'/1]).
-export(['Axes080-1'/1]).
-export(['Axes080-2'/1]).
-export(['Axes080-3'/1]).
-export(['Axes081-1'/1]).
-export(['Axes081-2'/1]).
-export(['Axes081-3'/1]).
-export(['Axes081-4'/1]).
-export(['Axes082-1'/1]).
-export(['Axes082-2'/1]).
-export(['Axes082-3'/1]).
-export(['Axes083-1'/1]).
-export(['Axes083-2'/1]).
-export(['Axes083-3'/1]).
-export(['Axes084-1'/1]).
-export(['Axes084-2'/1]).
-export(['Axes084-3'/1]).
-export(['Axes084-4'/1]).
-export(['Axes085'/1]).
-export(['Axes086'/1]).
-export(['Axes087'/1]).
-export(['Axes088'/1]).
-export(['Axes089'/1]).
-export(['Axes090'/1]).
-export(['Axes091'/1]).
-export(['Axes092'/1]).
-export(['Axes093'/1]).
-export(['Axes094'/1]).
-export(['Axes095'/1]).
-export(['Axes096'/1]).
-export(['Axes097'/1]).
-export(['Axes098'/1]).
-export(['Axes099'/1]).
-export(['Axes100'/1]).
-export(['Axes101'/1]).
-export(['Axes102'/1]).
-export(['Axes103'/1]).
-export(['Axes104'/1]).
-export(['Axes105'/1]).
-export(['Axes106'/1]).
-export(['Axes107'/1]).
-export(['Axes108'/1]).
-export(['Axes109'/1]).
-export(['Axes110'/1]).
-export(['Axes111'/1]).
-export(['Axes112'/1]).
-export(['Axes113'/1]).
-export(['Axes114'/1]).
-export(['Axes115'/1]).
-export(['Axes116'/1]).
-export(['Axes117'/1]).
-export(['Axes118'/1]).
-export(['Axes119'/1]).
-export(['Axes120'/1]).
-export(['Axes121'/1]).
-export(['Axes122'/1]).
-export(['Axes123'/1]).
-export(['Axes124'/1]).
-export(['Axes125'/1]).
-export(['Axes126'/1]).
-export(['Axes127'/1]).
-export(['axis-err-1'/1]).
-export(['K2-Axes-1'/1]).
-export(['K2-Axes-2'/1]).
-export(['K2-Axes-3'/1]).
-export(['K2-Axes-4'/1]).
-export(['K2-Axes-5'/1]).
-export(['K2-Axes-6'/1]).
-export(['K2-Axes-7'/1]).
-export(['K2-Axes-8'/1]).
-export(['K2-Axes-9'/1]).
-export(['K2-Axes-10'/1]).
-export(['K2-Axes-11'/1]).
-export(['K2-Axes-12'/1]).
-export(['K2-Axes-13'/1]).
-export(['K2-Axes-14'/1]).
-export(['K2-Axes-15'/1]).
-export(['K2-Axes-16'/1]).
-export(['K2-Axes-17'/1]).
-export(['K2-Axes-18'/1]).
-export(['K2-Axes-19'/1]).
-export(['K2-Axes-20'/1]).
-export(['K2-Axes-21'/1]).
-export(['K2-Axes-22'/1]).
-export(['K2-Axes-23'/1]).
-export(['K2-Axes-24'/1]).
-export(['K2-Axes-25'/1]).
-export(['K2-Axes-26'/1]).
-export(['K2-Axes-27'/1]).
-export(['K2-Axes-28'/1]).
-export(['K2-Axes-29'/1]).
-export(['K2-Axes-30'/1]).
-export(['K2-Axes-31'/1]).
-export(['K2-Axes-32'/1]).
-export(['K2-Axes-33'/1]).
-export(['K2-Axes-34'/1]).
-export(['K2-Axes-35'/1]).
-export(['K2-Axes-36'/1]).
-export(['K2-Axes-37'/1]).
-export(['K2-Axes-38'/1]).
-export(['K2-Axes-39'/1]).
-export(['K2-Axes-40'/1]).
-export(['K2-Axes-41'/1]).
-export(['K2-Axes-42'/1]).
-export(['K2-Axes-43'/1]).
-export(['K2-Axes-44'/1]).
-export(['K2-Axes-45'/1]).
-export(['K2-Axes-46'/1]).
-export(['K2-Axes-47'/1]).
-export(['K2-Axes-48'/1]).
-export(['K2-Axes-49'/1]).
-export(['K2-Axes-50'/1]).
-export(['K2-Axes-51'/1]).
-export(['K2-Axes-52'/1]).
-export(['K2-Axes-53'/1]).
-export(['K2-Axes-54'/1]).
-export(['K2-Axes-55'/1]).
-export(['K2-Axes-56'/1]).
-export(['K2-Axes-57'/1]).
-export(['K2-Axes-58'/1]).
-export(['K2-Axes-59'/1]).
-export(['K2-Axes-60'/1]).
-export(['K2-Axes-61'/1]).
-export(['K2-Axes-62'/1]).
-export(['K2-Axes-63'/1]).
-export(['K2-Axes-64'/1]).
-export(['K2-Axes-65'/1]).
-export(['K2-Axes-66'/1]).
-export(['K2-Axes-67'/1]).
-export(['K2-Axes-68'/1]).
-export(['K2-Axes-69'/1]).
-export(['K2-Axes-70'/1]).
-export(['K2-Axes-71'/1]).
-export(['K2-Axes-72'/1]).
-export(['K2-Axes-73'/1]).
-export(['K2-Axes-74'/1]).
-export(['K2-Axes-75'/1]).
-export(['K2-Axes-76'/1]).
-export(['K2-Axes-77'/1]).
-export(['K2-Axes-78'/1]).
-export(['K2-Axes-79'/1]).
-export(['K2-Axes-80'/1]).
-export(['K2-Axes-81'/1]).
-export(['K2-Axes-82'/1]).
-export(['K2-Axes-83'/1]).
-export(['K2-Axes-84'/1]).
-export(['K2-Axes-85'/1]).
-export(['K2-Axes-86'/1]).
-export(['K2-Axes-87'/1]).
-export(['K2-Axes-88'/1]).
-export(['K2-Axes-89'/1]).
-export(['K2-Axes-90'/1]).
-export(['K2-Axes-91'/1]).
-export(['K2-Axes-92'/1]).
-export(['K2-Axes-93'/1]).
-export(['K2-Axes-94'/1]).
-export(['K2-Axes-95'/1]).
-export(['K2-Axes-96'/1]).
-export(['K2-Axes-97'/1]).
-export(['K2-Axes-98'/1]).
-export(['K2-Axes-99'/1]).
-export(['K2-Axes-100'/1]).
-export(['K2-Axes-101'/1]).
-export(['K2-Axes-102'/1]).
-export(['K2-Axes-103'/1]).
-export(['K2-Axes-104'/1]).
-export(['statictypingaxis-1'/1]).
-export(['statictypingaxis-2'/1]).
-export(['statictypingaxis-3'/1]).
-export(['statictypingaxis-4'/1]).
-export(['statictypingaxis-5'/1]).
-export(['statictypingaxis-6'/1]).
-export(['cbcl-selfAxis-001'/1]).
-export(['cbcl-childAxis-001'/1]).
-export(['cbcl-followingAxis-001'/1]).
-export(['cbcl-precedingAxis-001'/1]).
-export(['cbcl-precedingAxis-002'/1]).
-export(['cbcl-precedingAxis-003'/1]).
-export(['cbcl-except-001'/1]).
-export(['cbcl-wild-001'/1]).
-export(['cbcl-wild-002'/1]).
-export(['cbcl-path-nodes-and-atomics'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'Axes001-1',
   'Axes001-2',
   'Axes001-3',
   'Axes002-1',
   'Axes002-2',
   'Axes002-3',
   'Axes002-4',
   'Axes003-1',
   'Axes003-2',
   'Axes003-3',
   'Axes003-4',
   'Axes004-1',
   'Axes004-2',
   'Axes004-3',
   'Axes005-1',
   'Axes005-2',
   'Axes005-3',
   'Axes005-4',
   'Axes006-1',
   'Axes006-2',
   'Axes006-3',
   'Axes006-4',
   'Axes007-1',
   'Axes007-2',
   'Axes007-3',
   'Axes008-1',
   'Axes008-2',
   'Axes008-3',
   'Axes009-1',
   'Axes009-2',
   'Axes009-3',
   'Axes010-1',
   'Axes010-2',
   'Axes010-3',
   'Axes011-1',
   'Axes011-2',
   'Axes011-3',
   'Axes012-1',
   'Axes013-1',
   'Axes014-1',
   'Axes015-1',
   'Axes016-1',
   'Axes017-1',
   'Axes018-1',
   'Axes019-1',
   'Axes020-1',
   'Axes021-1',
   'Axes023-1',
   'Axes027-1',
   'Axes030-1',
   'Axes030-2',
   'Axes031-1',
   'Axes031-2',
   'Axes031-3',
   'Axes031-4',
   'Axes032-1',
   'Axes032-2',
   'Axes032-3',
   'Axes032-4',
   'Axes033-1',
   'Axes033-2',
   'Axes033-3',
   'Axes033-4',
   'Axes034-1',
   'Axes034-2',
   'Axes035-1',
   'Axes035-2',
   'Axes035-3',
   'Axes035-4',
   'Axes036-1',
   'Axes036-2',
   'Axes037-1',
   'Axes037-2',
   'Axes041-1',
   'Axes043-1',
   'Axes043-2',
   'Axes044-1',
   'Axes044-2',
   'Axes045-1',
   'Axes045-2',
   'Axes046-1',
   'Axes046-2',
   'Axes047-1',
   'Axes047-2',
   'Axes048-1',
   'Axes048-2',
   'Axes049-1',
   'Axes049-2',
   'Axes055-1',
   'Axes056-1',
   'Axes056-2',
   'Axes056-3',
   'Axes057-1',
   'Axes057-2',
   'Axes057-3',
   'Axes057-4',
   'Axes058-1',
   'Axes058-2',
   'Axes058-3',
   'Axes059-1',
   'Axes059-2',
   'Axes060-1',
   'Axes060-2',
   'Axes060-3',
   'Axes060-4',
   'Axes061-1',
   'Axes061-2',
   'Axes062-1',
   'Axes062-2',
   'Axes063-1',
   'Axes063-2',
   'Axes063-3',
   'Axes063-4',
   'Axes064-1',
   'Axes064-2',
   'Axes064-3',
   'Axes065-1',
   'Axes065-2',
   'Axes066-1',
   'Axes066-2',
   'Axes066-3',
   'Axes066-4',
   'Axes067-1',
   'Axes067-2',
   'Axes067-3',
   'Axes068-1',
   'Axes068-2',
   'Axes068-3',
   'Axes069-1',
   'Axes069-2',
   'Axes069-3',
   'Axes070-1',
   'Axes070-2',
   'Axes070-3',
   'Axes071-1',
   'Axes071-2',
   'Axes071-3',
   'Axes072-1',
   'Axes072-2',
   'Axes073-1',
   'Axes073-2',
   'Axes074-1',
   'Axes074-2',
   'Axes074-3',
   'Axes074-4',
   'Axes075-1',
   'Axes075-2',
   'Axes075-3',
   'Axes075-4',
   'Axes076-1',
   'Axes076-2',
   'Axes076-3',
   'Axes076-4',
   'Axes077-1',
   'Axes077-2',
   'Axes077-3',
   'Axes078-1',
   'Axes078-2',
   'Axes078-3',
   'Axes078-4',
   'Axes079-1',
   'Axes079-2',
   'Axes079-3',
   'Axes079-4',
   'Axes080-1',
   'Axes080-2',
   'Axes080-3',
   'Axes081-1',
   'Axes081-2',
   'Axes081-3',
   'Axes081-4',
   'Axes082-1',
   'Axes082-2',
   'Axes082-3',
   'Axes083-1',
   'Axes083-2',
   'Axes083-3',
   'Axes084-1',
   'Axes084-2',
   'Axes084-3',
   'Axes084-4',
   'Axes085',
   'Axes086',
   'Axes087',
   'Axes088',
   'Axes089',
   'Axes090',
   'Axes091',
   'Axes092',
   'Axes093',
   'Axes094',
   'Axes095',
   'Axes096',
   'Axes097',
   'Axes098',
   'Axes099',
   'Axes100',
   'Axes101',
   'Axes102',
   'Axes103',
   'Axes104',
   'Axes105',
   'Axes106',
   'Axes107',
   'Axes108',
   'Axes109',
   'Axes110',
   'Axes111',
   'Axes112',
   'Axes113',
   'Axes114',
   'Axes115',
   'Axes116',
   'Axes117',
   'Axes118',
   'Axes119',
   'Axes120',
   'Axes121',
   'Axes122',
   'Axes123',
   'Axes124',
   'Axes125',
   'Axes126',
   'Axes127',
   'axis-err-1',
   'K2-Axes-1',
   'K2-Axes-2',
   'K2-Axes-3',
   'K2-Axes-4',
   'K2-Axes-5',
   'K2-Axes-6',
   'K2-Axes-7',
   'K2-Axes-8',
   'K2-Axes-9',
   'K2-Axes-10',
   'K2-Axes-11',
   'K2-Axes-12',
   'K2-Axes-13',
   'K2-Axes-14',
   'K2-Axes-15',
   'K2-Axes-16',
   'K2-Axes-17',
   'K2-Axes-18',
   'K2-Axes-19',
   'K2-Axes-20',
   'K2-Axes-21',
   'K2-Axes-22',
   'K2-Axes-23',
   'K2-Axes-24',
   'K2-Axes-25',
   'K2-Axes-26',
   'K2-Axes-27',
   'K2-Axes-28',
   'K2-Axes-29',
   'K2-Axes-30',
   'K2-Axes-31',
   'K2-Axes-32',
   'K2-Axes-33',
   'K2-Axes-34',
   'K2-Axes-35',
   'K2-Axes-36',
   'K2-Axes-37',
   'K2-Axes-38',
   'K2-Axes-39',
   'K2-Axes-40',
   'K2-Axes-41',
   'K2-Axes-42',
   'K2-Axes-43',
   'K2-Axes-44',
   'K2-Axes-45',
   'K2-Axes-46',
   'K2-Axes-47',
   'K2-Axes-48',
   'K2-Axes-49',
   'K2-Axes-50',
   'K2-Axes-51',
   'K2-Axes-52',
   'K2-Axes-53',
   'K2-Axes-54',
   'K2-Axes-55',
   'K2-Axes-56',
   'K2-Axes-57',
   'K2-Axes-58',
   'K2-Axes-59',
   'K2-Axes-60',
   'K2-Axes-61',
   'K2-Axes-62',
   'K2-Axes-63',
   'K2-Axes-64',
   'K2-Axes-65',
   'K2-Axes-66',
   'K2-Axes-67',
   'K2-Axes-68',
   'K2-Axes-69',
   'K2-Axes-70',
   'K2-Axes-71',
   'K2-Axes-72',
   'K2-Axes-73',
   'K2-Axes-74',
   'K2-Axes-75',
   'K2-Axes-76',
   'K2-Axes-77',
   'K2-Axes-78',
   'K2-Axes-79',
   'K2-Axes-80',
   'K2-Axes-81',
   'K2-Axes-82',
   'K2-Axes-83',
   'K2-Axes-84',
   'K2-Axes-85',
   'K2-Axes-86',
   'K2-Axes-87',
   'K2-Axes-88',
   'K2-Axes-89',
   'K2-Axes-90',
   'K2-Axes-91',
   'K2-Axes-92',
   'K2-Axes-93',
   'K2-Axes-94',
   'K2-Axes-95',
   'K2-Axes-96',
   'K2-Axes-97',
   'K2-Axes-98',
   'K2-Axes-99',
   'K2-Axes-100',
   'K2-Axes-101',
   'K2-Axes-102',
   'K2-Axes-103',
   'K2-Axes-104',
   'statictypingaxis-1',
   'statictypingaxis-2',
   'statictypingaxis-3',
   'statictypingaxis-4',
   'statictypingaxis-5',
   'statictypingaxis-6',
   'cbcl-selfAxis-001',
   'cbcl-childAxis-001',
   'cbcl-followingAxis-001',
   'cbcl-precedingAxis-001',
   'cbcl-precedingAxis-002',
   'cbcl-precedingAxis-003',
   'cbcl-except-001',
   'cbcl-wild-001',
   'cbcl-wild-002',
   'cbcl-path-nodes-and-atomics'].
environment('empty',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{filename:join(BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works-mod.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/staff.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/works.xml"), "$works",""},
{filename:join(BaseDir, "../docs/staff.xml"), "$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/auction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('qname',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../docs/QName-source.xml"), ".",""}]},
{schemas, [{filename:join(BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('array',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{resources, []},
{modules, []}
];
environment('map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('array-and-map',BaseDir) ->
[{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"},
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{resources, []},
{modules, []}
];
environment('TopMany',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TopMany.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('Tree1Child',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/Tree1Child.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('Tree1Text',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/Tree1Text.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeCompass',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeCompass.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeEmpty',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeEmpty.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeRepeat',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeRepeat.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeStack',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeStack.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeTrunc',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeTrunc.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('TreeNS',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/TreeNS.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('CPPGlobals',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/CPPGlobals.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('nw_Customers',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/nw_Customers.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('XMarkAuction',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../app/XMark/XMarkAuction.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('xq311B',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "AxisStep/xq311B.xml"), ".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'Axes001-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes001-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes001-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes001-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes001-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes001-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes002-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes002-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes002-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes002-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes002-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes002-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes002-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes002-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes003-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes003-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes003-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes003-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes003-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes003-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes003-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes003-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"19") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes004-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes004-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes004-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes004-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes004-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes004-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes005-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes005-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes005-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes005-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes005-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes005-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes005-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/south-east)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes005-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes006-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes006-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes006-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes006-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes006-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes006-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes006-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes006-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"19") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes007-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes007-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes007-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes007-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes007-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes007-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes008-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::west-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes008-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes008-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::west-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes008-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes008-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::west-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes008-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes009-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes009-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes009-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes009-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes009-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/attribute::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes009-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes010-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes010-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes010-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes010-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes010-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes010-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes011-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/@west-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes011-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes011-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/@west-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes011-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes011-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west/@west-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes011-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes012-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count( / )",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes012-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes013-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/parent::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes013-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes014-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/far-north/parent::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes014-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes015-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/parent::near-north)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes015-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes016-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/parent::nowhere)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes016-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes017-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/parent::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes017-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes018-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/far-north/parent::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes018-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes019-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/..)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes019-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes020-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes020-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes021-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/self::center)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes021-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes023-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes023-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes027-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/@center-attr-3/self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes027-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes030-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/text()/self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes030-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes030-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/text()/self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes030-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes031-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes031-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes031-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes031-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes031-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes031-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes031-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes031-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes032-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes032-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes032-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes032-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes032-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes032-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes032-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes032-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes033-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes033-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes033-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes033-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes033-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes033-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes033-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes033-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"21") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes034-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes034-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes034-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes034-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes035-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes035-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes035-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes035-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes035-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes035-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes035-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes035-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes036-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::center)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes036-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes036-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::center)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes036-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes037-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes037-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes037-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes037-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"22") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes041-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/@center-attr-3/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes041-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes043-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/text()/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes043-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes043-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center/text()/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes043-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes044-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes044-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes044-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes044-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes045-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/child::far-north)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes045-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes045-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/child::far-north)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes045-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes046-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes046-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes046-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes046-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes047-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes047-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes047-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes047-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes048-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/far-north)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes048-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes048-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/far-north)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes048-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes049-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes049-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes049-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes049-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"7") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes055-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes055-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes056-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes056-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes056-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes056-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes056-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes056-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"16") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes057-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes057-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes057-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes057-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes057-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes057-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes057-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes057-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes058-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes058-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes058-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes058-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"56") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes058-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes058-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"58") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes059-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes059-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes059-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes059-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes060-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes060-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes060-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes060-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes060-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes060-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes060-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes060-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes061-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes061-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"57") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes061-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(/descendant-or-self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes061-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"59") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes062-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes062-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes062-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes062-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes063-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes063-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes063-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes063-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes063-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes063-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes063-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes063-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes064-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes064-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes064-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes064-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"56") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes064-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes064-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"58") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes065-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes065-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes065-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes065-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes066-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes066-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes066-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes066-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes066-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes066-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes066-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes066-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes067-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes067-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes067-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes067-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"56") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes067-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes067-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"58") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes068-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes068-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes068-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes068-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes068-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes068-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"14") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes069-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//attribute::mark)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes069-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes069-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//attribute::mark)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes069-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes069-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//attribute::mark)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes069-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes070-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes070-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes070-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes070-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes070-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes070-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"14") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes071-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//@mark)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes071-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes071-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//@mark)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes071-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes071-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//@mark)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes071-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"6") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes072-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeEmpty',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes072-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes072-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//self::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes072-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes073-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes073-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"57") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes073-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//self::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes073-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"59") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes074-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes074-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes074-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes074-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes074-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes074-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes074-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes074-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes075-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes075-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes075-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes075-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes075-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes075-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes075-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes075-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes076-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes076-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes076-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes076-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes076-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes076-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes076-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//child::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes076-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"37") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes077-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes077-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes077-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes077-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes077-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes077-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes078-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes078-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes078-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes078-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes078-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes078-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes078-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//south)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeStack',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes078-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"8") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes079-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes079-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes079-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes079-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes079-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes079-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes079-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes079-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"37") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes080-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes080-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes080-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes080-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes080-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//attribute::*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes080-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes081-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//attribute::center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes081-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes081-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//attribute::center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes081-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes081-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//attribute::center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes081-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes081-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//attribute::center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes081-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes082-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//attribute::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes082-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes082-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//attribute::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes082-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes082-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//attribute::node())",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes082-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes083-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes083-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes083-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes083-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes083-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//west//@*)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes083-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes084-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//@center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes084-1.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes084-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//@center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Child',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes084-2.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes084-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//@center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeCompass',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes084-3.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes084-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "fn:count(//center//@center-attr-2)",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeRepeat',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes084-4.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes085'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<root> {//Customers} </root>",
   {Env,Opts} = xqerl_test:handle_environment(environment('nw_Customers',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes085.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><Customers CustomerID=\"ALFKI\">
		<CompanyName>Alfreds Futterkiste</CompanyName>
		<ContactName>Maria Anders</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>030-0074321</Phone>
		<Fax>030-0076545</Fax>
		<FullAddress>
			<Address>Obere Str. 57</Address>
			<City>Berlin</City>
			<PostalCode>12209</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"ANATR\">
		<CompanyName>Ana Trujillo Emparedados y helados</CompanyName>
		<ContactName>Ana Trujillo</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(5) 555-4729</Phone>
		<Fax>(5) 555-3745</Fax>
		<FullAddress>
			<Address>Avda. de la Constituci&#243;n 2222</Address>
			<City>M&#233;xico D.F.</City>
			<PostalCode>05021</PostalCode>
			<Country>Mexico</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"ANTON\">
		<CompanyName>Antonio Moreno Taquer&#237;a</CompanyName>
		<ContactName>Antonio Moreno</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(5) 555-3932</Phone>
		<FullAddress>
			<Address>Mataderos  2312</Address>
			<City>M&#233;xico D.F.</City>
			<PostalCode>05023</PostalCode>
			<Country>Mexico</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"AROUT\">
		<CompanyName>Around the Horn</CompanyName>
		<ContactName>Thomas Hardy</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(171) 555-7788</Phone>
		<Fax>(171) 555-6750</Fax>
		<FullAddress>
			<Address>120 Hanover Sq.</Address>
			<City>London</City>
			<PostalCode>WA1 1DP</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BERGS\">
		<CompanyName>Berglunds snabbk&#246;p</CompanyName>
		<ContactName>Christina Berglund</ContactName>
		<ContactTitle>Order Administrator</ContactTitle>
		<Phone>0921-12 34 65</Phone>
		<Fax>0921-12 34 67</Fax>
		<FullAddress>
			<Address>Berguvsv&#228;gen  8</Address>
			<City>Lule&#229;</City>
			<PostalCode>S-958 22</PostalCode>
			<Country>Sweden</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BLAUS\">
		<CompanyName>Blauer See Delikatessen</CompanyName>
		<ContactName>Hanna Moos</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>0621-08460</Phone>
		<Fax>0621-08924</Fax>
		<FullAddress>
			<Address>Forsterstr. 57</Address>
			<City>Mannheim</City>
			<PostalCode>68306</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BLONP\">
		<CompanyName>Blondesddsl p&#232;re et fils</CompanyName>
		<ContactName>Fr&#233;d&#233;rique Citeaux</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>88.60.15.31</Phone>
		<Fax>88.60.15.32</Fax>
		<FullAddress>
			<Address>24, place Kl&#233;ber</Address>
			<City>Strasbourg</City>
			<PostalCode>67000</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BOLID\">
		<CompanyName>B&#243;lido Comidas preparadas</CompanyName>
		<ContactName>Mart&#237;n Sommer</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(91) 555 22 82</Phone>
		<Fax>(91) 555 91 99</Fax>
		<FullAddress>
			<Address>C/ Araquil, 67</Address>
			<City>Madrid</City>
			<PostalCode>28023</PostalCode>
			<Country>Spain</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BONAP\">
		<CompanyName>Bon app'</CompanyName>
		<ContactName>Laurence Lebihan</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>91.24.45.40</Phone>
		<Fax>91.24.45.41</Fax>
		<FullAddress>
			<Address>12, rue des Bouchers</Address>
			<City>Marseille</City>
			<PostalCode>13008</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BOTTM\">
		<CompanyName>Bottom-Dollar Markets</CompanyName>
		<ContactName>Elizabeth Lincoln</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(604) 555-4729</Phone>
		<Fax>(604) 555-3745</Fax>
		<FullAddress>
			<Address>23 Tsawassen Blvd.</Address>
			<City>Tsawassen</City>
			<Region>BC</Region>
			<PostalCode>T2F 8M4</PostalCode>
			<Country>Canada</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"BSBEV\">
		<CompanyName>B's Beverages</CompanyName>
		<ContactName>Victoria Ashworth</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(171) 555-1212</Phone>
		<FullAddress>
			<Address>Fauntleroy Circus</Address>
			<City>London</City>
			<PostalCode>EC2 5NT</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"CACTU\">
		<CompanyName>Cactus Comidas para llevar</CompanyName>
		<ContactName>Patricio Simpson</ContactName>
		<ContactTitle>Sales Agent</ContactTitle>
		<Phone>(1) 135-5555</Phone>
		<Fax>(1) 135-4892</Fax>
		<FullAddress>
			<Address>Cerrito 333</Address>
			<City>Buenos Aires</City>
			<PostalCode>1010</PostalCode>
			<Country>Argentina</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"CENTC\">
		<CompanyName>Centro comercial Moctezuma</CompanyName>
		<ContactName>Francisco Chang</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(5) 555-3392</Phone>
		<Fax>(5) 555-7293</Fax>
		<FullAddress>
			<Address>Sierras de Granada 9993</Address>
			<City>M&#233;xico D.F.</City>
			<PostalCode>05022</PostalCode>
			<Country>Mexico</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"CHOPS\">
		<CompanyName>Chop-suey Chinese</CompanyName>
		<ContactName>Yang Wang</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>0452-076545</Phone>
		<FullAddress>
			<Address>Hauptstr. 29</Address>
			<City>Bern</City>
			<PostalCode>3012</PostalCode>
			<Country>Switzerland</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"COMMI\">
		<CompanyName>Com&#233;rcio Mineiro</CompanyName>
		<ContactName>Pedro Afonso</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>(11) 555-7647</Phone>
		<FullAddress>
			<Address>Av. dos Lus&#237;adas, 23</Address>
			<City>Sao Paulo</City>
			<Region>SP</Region>
			<PostalCode>05432-043</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"CONSH\">
		<CompanyName>Consolidated Holdings</CompanyName>
		<ContactName>Elizabeth Brown</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(171) 555-2282</Phone>
		<Fax>(171) 555-9199</Fax>
		<FullAddress>
			<Address>Berkeley Gardens 12  Brewery</Address>
			<City>London</City>
			<PostalCode>WX1 6LT</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"DRACD\">
		<CompanyName>Drachenblut Delikatessen</CompanyName>
		<ContactName>Sven Ottlieb</ContactName>
		<ContactTitle>Order Administrator</ContactTitle>
		<Phone>0241-039123</Phone>
		<Fax>0241-059428</Fax>
		<FullAddress>
			<Address>Walserweg 21</Address>
			<City>Aachen</City>
			<PostalCode>52066</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"DUMON\">
		<CompanyName>Du monde entier</CompanyName>
		<ContactName>Janine Labrune</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>40.67.88.88</Phone>
		<Fax>40.67.89.89</Fax>
		<FullAddress>
			<Address>67, rue des Cinquante Otages</Address>
			<City>Nantes</City>
			<PostalCode>44000</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"EASTC\">
		<CompanyName>Eastern Connection</CompanyName>
		<ContactName>Ann Devon</ContactName>
		<ContactTitle>Sales Agent</ContactTitle>
		<Phone>(171) 555-0297</Phone>
		<Fax>(171) 555-3373</Fax>
		<FullAddress>
			<Address>35 King George</Address>
			<City>London</City>
			<PostalCode>WX3 6FW</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"ERNSH\">
		<CompanyName>Ernst Handel</CompanyName>
		<ContactName>Roland Mendel</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>7675-3425</Phone>
		<Fax>7675-3426</Fax>
		<FullAddress>
			<Address>Kirchgasse 6</Address>
			<City>Graz</City>
			<PostalCode>8010</PostalCode>
			<Country>Austria</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FAMIA\">
		<CompanyName>Familia Arquibaldo</CompanyName>
		<ContactName>Aria Cruz</ContactName>
		<ContactTitle>Marketing Assistant</ContactTitle>
		<Phone>(11) 555-9857</Phone>
		<FullAddress>
			<Address>Rua Or&#243;s, 92</Address>
			<City>Sao Paulo</City>
			<Region>SP</Region>
			<PostalCode>05442-030</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FISSA\">
		<CompanyName>FISSA Fabrica Inter. Salchichas S.A.</CompanyName>
		<ContactName>Diego Roel</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(91) 555 94 44</Phone>
		<Fax>(91) 555 55 93</Fax>
		<FullAddress>
			<Address>C/ Moralzarzal, 86</Address>
			<City>Madrid</City>
			<PostalCode>28034</PostalCode>
			<Country>Spain</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FOLIG\">
		<CompanyName>Folies gourmandes</CompanyName>
		<ContactName>Martine Ranc&#233;</ContactName>
		<ContactTitle>Assistant Sales Agent</ContactTitle>
		<Phone>20.16.10.16</Phone>
		<Fax>20.16.10.17</Fax>
		<FullAddress>
			<Address>184, chauss&#233;e de Tournai</Address>
			<City>Lille</City>
			<PostalCode>59000</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FOLKO\">
		<CompanyName>Folk och f&#228; HB</CompanyName>
		<ContactName>Maria Larsson</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>0695-34 67 21</Phone>
		<FullAddress>
			<Address>&#197;kergatan 24</Address>
			<City>Br&#228;cke</City>
			<PostalCode>S-844 67</PostalCode>
			<Country>Sweden</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FRANK\">
		<CompanyName>Frankenversand</CompanyName>
		<ContactName>Peter Franken</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>089-0877310</Phone>
		<Fax>089-0877451</Fax>
		<FullAddress>
			<Address>Berliner Platz 43</Address>
			<City>M&#252;nchen</City>
			<PostalCode>80805</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FRANR\">
		<CompanyName>France restauration</CompanyName>
		<ContactName>Carine Schmitt</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>40.32.21.21</Phone>
		<Fax>40.32.21.20</Fax>
		<FullAddress>
			<Address>54, rue Royale</Address>
			<City>Nantes</City>
			<PostalCode>44000</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FRANS\">
		<CompanyName>Franchi S.p.A.</CompanyName>
		<ContactName>Paolo Accorti</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>011-4988260</Phone>
		<Fax>011-4988261</Fax>
		<FullAddress>
			<Address>Via Monte Bianco 34</Address>
			<City>Torino</City>
			<PostalCode>10100</PostalCode>
			<Country>Italy</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"FURIB\">
		<CompanyName>Furia Bacalhau e Frutos do Mar</CompanyName>
		<ContactName>Lino Rodriguez</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>(1) 354-2534</Phone>
		<Fax>(1) 354-2535</Fax>
		<FullAddress>
			<Address>Jardim das rosas n. 32</Address>
			<City>Lisboa</City>
			<PostalCode>1675</PostalCode>
			<Country>Portugal</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"GALED\">
		<CompanyName>Galer&#237;a del gastr&#243;nomo</CompanyName>
		<ContactName>Eduardo Saavedra</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(93) 203 4560</Phone>
		<Fax>(93) 203 4561</Fax>
		<FullAddress>
			<Address>Rambla de Catalu&#241;a, 23</Address>
			<City>Barcelona</City>
			<PostalCode>08022</PostalCode>
			<Country>Spain</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"GODOS\">
		<CompanyName>Godos Cocina T&#237;pica</CompanyName>
		<ContactName>Jos&#233; Pedro Freyre</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>(95) 555 82 82</Phone>
		<FullAddress>
			<Address>C/ Romero, 33</Address>
			<City>Sevilla</City>
			<PostalCode>41101</PostalCode>
			<Country>Spain</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"GOURL\">
		<CompanyName>Gourmet Lanchonetes</CompanyName>
		<ContactName>Andr&#233; Fonseca</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>(11) 555-9482</Phone>
		<FullAddress>
			<Address>Av. Brasil, 442</Address>
			<City>Campinas</City>
			<Region>SP</Region>
			<PostalCode>04876-786</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"GREAL\">
		<CompanyName>Great Lakes Food Market</CompanyName>
		<ContactName>Howard Snyder</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(503) 555-7555</Phone>
		<FullAddress>
			<Address>2732 Baker Blvd.</Address>
			<City>Eugene</City>
			<Region>OR</Region>
			<PostalCode>97403</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"GROSR\">
		<CompanyName>GROSELLA-Restaurante</CompanyName>
		<ContactName>Manuel Pereira</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(2) 283-2951</Phone>
		<Fax>(2) 283-3397</Fax>
		<FullAddress>
			<Address>5&#170; Ave. Los Palos Grandes</Address>
			<City>Caracas</City>
			<Region>DF</Region>
			<PostalCode>1081</PostalCode>
			<Country>Venezuela</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"HANAR\">
		<CompanyName>Hanari Carnes</CompanyName>
		<ContactName>Mario Pontes</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(21) 555-0091</Phone>
		<Fax>(21) 555-8765</Fax>
		<FullAddress>
			<Address>Rua do Pa&#231;o, 67</Address>
			<City>Rio de Janeiro</City>
			<Region>RJ</Region>
			<PostalCode>05454-876</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"HILAA\">
		<CompanyName>HILARION-Abastos</CompanyName>
		<ContactName>Carlos Hern&#225;ndez</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(5) 555-1340</Phone>
		<Fax>(5) 555-1948</Fax>
		<FullAddress>
			<Address>Carrera 22 con Ave. Carlos Soublette #8-35</Address>
			<City>San Crist&#243;bal</City>
			<Region>T&#225;chira</Region>
			<PostalCode>5022</PostalCode>
			<Country>Venezuela</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"HUNGC\">
		<CompanyName>Hungry Coyote Import Store</CompanyName>
		<ContactName>Yoshi Latimer</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(503) 555-6874</Phone>
		<Fax>(503) 555-2376</Fax>
		<FullAddress>
			<Address>City Center Plaza 516 Main St.</Address>
			<City>Elgin</City>
			<Region>OR</Region>
			<PostalCode>97827</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"HUNGO\">
		<CompanyName>Hungry Owl All-Night Grocers</CompanyName>
		<ContactName>Patricia McKenna</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>2967 542</Phone>
		<Fax>2967 3333</Fax>
		<FullAddress>
			<Address>8 Johnstown Road</Address>
			<City>Cork</City>
			<Region>Co. Cork</Region>
			<Country>Ireland</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"ISLAT\">
		<CompanyName>Island Trading</CompanyName>
		<ContactName>Helen Bennett</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(198) 555-8888</Phone>
		<FullAddress>
			<Address>Garden House Crowther Way</Address>
			<City>Cowes</City>
			<Region>Isle of Wight</Region>
			<PostalCode>PO31 7PJ</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"KOENE\">
		<CompanyName>K&#246;niglich Essen</CompanyName>
		<ContactName>Philip Cramer</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>0555-09876</Phone>
		<FullAddress>
			<Address>Maubelstr. 90</Address>
			<City>Brandenburg</City>
			<PostalCode>14776</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LACOR\">
		<CompanyName>La corne d'abondance</CompanyName>
		<ContactName>Daniel Tonini</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>30.59.84.10</Phone>
		<Fax>30.59.85.11</Fax>
		<FullAddress>
			<Address>67, avenue de l'Europe</Address>
			<City>Versailles</City>
			<PostalCode>78000</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LAMAI\">
		<CompanyName>La maison d'Asie</CompanyName>
		<ContactName>Annette Roulet</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>61.77.61.10</Phone>
		<Fax>61.77.61.11</Fax>
		<FullAddress>
			<Address>1 rue Alsace-Lorraine</Address>
			<City>Toulouse</City>
			<PostalCode>31000</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LAUGB\">
		<CompanyName>Laughing Bacchus Wine Cellars</CompanyName>
		<ContactName>Yoshi Tannamuri</ContactName>
		<ContactTitle>Marketing Assistant</ContactTitle>
		<Phone>(604) 555-3392</Phone>
		<Fax>(604) 555-7293</Fax>
		<FullAddress>
			<Address>1900 Oak St.</Address>
			<City>Vancouver</City>
			<Region>BC</Region>
			<PostalCode>V3F 2K1</PostalCode>
			<Country>Canada</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LAZYK\">
		<CompanyName>Lazy K Kountry Store</CompanyName>
		<ContactName>John Steel</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(509) 555-7969</Phone>
		<Fax>(509) 555-6221</Fax>
		<FullAddress>
			<Address>12 Orchestra Terrace</Address>
			<City>Walla Walla</City>
			<Region>WA</Region>
			<PostalCode>99362</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LEHMS\">
		<CompanyName>Lehmanns Marktstand</CompanyName>
		<ContactName>Renate Messner</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>069-0245984</Phone>
		<Fax>069-0245874</Fax>
		<FullAddress>
			<Address>Magazinweg 7</Address>
			<City>Frankfurt a.M.</City>
			<PostalCode>60528</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LETSS\">
		<CompanyName>Let's Stop N Shop</CompanyName>
		<ContactName>Jaime Yorres</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(415) 555-5938</Phone>
		<FullAddress>
			<Address>87 Polk St. Suite 5</Address>
			<City>San Francisco</City>
			<Region>CA</Region>
			<PostalCode>94117</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LILAS\">
		<CompanyName>LILA-Supermercado</CompanyName>
		<ContactName>Carlos Gonz&#225;lez</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(9) 331-6954</Phone>
		<Fax>(9) 331-7256</Fax>
		<FullAddress>
			<Address>Carrera 52 con Ave. Bol&#237;var #65-98 Llano Largo</Address>
			<City>Barquisimeto</City>
			<Region>Lara</Region>
			<PostalCode>3508</PostalCode>
			<Country>Venezuela</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LINOD\">
		<CompanyName>LINO-Delicateses</CompanyName>
		<ContactName>Felipe Izquierdo</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(8) 34-56-12</Phone>
		<Fax>(8) 34-93-93</Fax>
		<FullAddress>
			<Address>Ave. 5 de Mayo Porlamar</Address>
			<City>I. de Margarita</City>
			<Region>Nueva Esparta</Region>
			<PostalCode>4980</PostalCode>
			<Country>Venezuela</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"LONEP\">
		<CompanyName>Lonesome Pine Restaurant</CompanyName>
		<ContactName>Fran Wilson</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>(503) 555-9573</Phone>
		<Fax>(503) 555-9646</Fax>
		<FullAddress>
			<Address>89 Chiaroscuro Rd.</Address>
			<City>Portland</City>
			<Region>OR</Region>
			<PostalCode>97219</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"MAGAA\">
		<CompanyName>Magazzini Alimentari Riuniti</CompanyName>
		<ContactName>Giovanni Rovelli</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>035-640230</Phone>
		<Fax>035-640231</Fax>
		<FullAddress>
			<Address>Via Ludovico il Moro 22</Address>
			<City>Bergamo</City>
			<PostalCode>24100</PostalCode>
			<Country>Italy</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"MAISD\">
		<CompanyName>Maison Dewey</CompanyName>
		<ContactName>Catherine Dewey</ContactName>
		<ContactTitle>Sales Agent</ContactTitle>
		<Phone>(02) 201 24 67</Phone>
		<Fax>(02) 201 24 68</Fax>
		<FullAddress>
			<Address>Rue Joseph-Bens 532</Address>
			<City>Bruxelles</City>
			<PostalCode>B-1180</PostalCode>
			<Country>Belgium</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"MEREP\">
		<CompanyName>M&#232;re Paillarde</CompanyName>
		<ContactName>Jean Fresni&#232;re</ContactName>
		<ContactTitle>Marketing Assistant</ContactTitle>
		<Phone>(514) 555-8054</Phone>
		<Fax>(514) 555-8055</Fax>
		<FullAddress>
			<Address>43 rue St. Laurent</Address>
			<City>Montr&#233;al</City>
			<Region>Qu&#233;bec</Region>
			<PostalCode>H1J 1C3</PostalCode>
			<Country>Canada</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"MORGK\">
		<CompanyName>Morgenstern Gesundkost</CompanyName>
		<ContactName>Alexander Feuer</ContactName>
		<ContactTitle>Marketing Assistant</ContactTitle>
		<Phone>0342-023176</Phone>
		<FullAddress>
			<Address>Heerstr. 22</Address>
			<City>Leipzig</City>
			<PostalCode>04179</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"NORTS\">
		<CompanyName>North/South</CompanyName>
		<ContactName>Simon Crowther</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>(171) 555-7733</Phone>
		<Fax>(171) 555-2530</Fax>
		<FullAddress>
			<Address>South House 300 Queensbridge</Address>
			<City>London</City>
			<PostalCode>SW7 1RZ</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"OCEAN\">
		<CompanyName>Oc&#233;ano Atl&#225;ntico Ltda.</CompanyName>
		<ContactName>Yvonne Moncada</ContactName>
		<ContactTitle>Sales Agent</ContactTitle>
		<Phone>(1) 135-5333</Phone>
		<Fax>(1) 135-5535</Fax>
		<FullAddress>
			<Address>Ing. Gustavo Moncada 8585 Piso 20-A</Address>
			<City>Buenos Aires</City>
			<PostalCode>1010</PostalCode>
			<Country>Argentina</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"OLDWO\">
		<CompanyName>Old World Delicatessen</CompanyName>
		<ContactName>Rene Phillips</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(907) 555-7584</Phone>
		<Fax>(907) 555-2880</Fax>
		<FullAddress>
			<Address>2743 Bering St.</Address>
			<City>Anchorage</City>
			<Region>AK</Region>
			<PostalCode>99508</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"OTTIK\">
		<CompanyName>Ottilies K&#228;seladen</CompanyName>
		<ContactName>Henriette Pfalzheim</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>0221-0644327</Phone>
		<Fax>0221-0765721</Fax>
		<FullAddress>
			<Address>Mehrheimerstr. 369</Address>
			<City>K&#246;ln</City>
			<PostalCode>50739</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"PARIS\">
		<CompanyName>Paris sp&#233;cialit&#233;s</CompanyName>
		<ContactName>Marie Bertrand</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(1) 42.34.22.66</Phone>
		<Fax>(1) 42.34.22.77</Fax>
		<FullAddress>
			<Address>265, boulevard Charonne</Address>
			<City>Paris</City>
			<PostalCode>75012</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"PERIC\">
		<CompanyName>Pericles Comidas cl&#225;sicas</CompanyName>
		<ContactName>Guillermo Fern&#225;ndez</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(5) 552-3745</Phone>
		<Fax>(5) 545-3745</Fax>
		<FullAddress>
			<Address>Calle Dr. Jorge Cash 321</Address>
			<City>M&#233;xico D.F.</City>
			<PostalCode>05033</PostalCode>
			<Country>Mexico</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"PICCO\">
		<CompanyName>Piccolo und mehr</CompanyName>
		<ContactName>Georg Pipps</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>6562-9722</Phone>
		<Fax>6562-9723</Fax>
		<FullAddress>
			<Address>Geislweg 14</Address>
			<City>Salzburg</City>
			<PostalCode>5020</PostalCode>
			<Country>Austria</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"PRINI\">
		<CompanyName>Princesa Isabel Vinhos</CompanyName>
		<ContactName>Isabel de Castro</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(1) 356-5634</Phone>
		<FullAddress>
			<Address>Estrada da sa&#250;de n. 58</Address>
			<City>Lisboa</City>
			<PostalCode>1756</PostalCode>
			<Country>Portugal</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"QUEDE\">
		<CompanyName>Que Del&#237;cia</CompanyName>
		<ContactName>Bernardo Batista</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(21) 555-4252</Phone>
		<Fax>(21) 555-4545</Fax>
		<FullAddress>
			<Address>Rua da Panificadora, 12</Address>
			<City>Rio de Janeiro</City>
			<Region>RJ</Region>
			<PostalCode>02389-673</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"QUEEN\">
		<CompanyName>Queen Cozinha</CompanyName>
		<ContactName>L&#250;cia Carvalho</ContactName>
		<ContactTitle>Marketing Assistant</ContactTitle>
		<Phone>(11) 555-1189</Phone>
		<FullAddress>
			<Address>Alameda dos Can&#224;rios, 891</Address>
			<City>Sao Paulo</City>
			<Region>SP</Region>
			<PostalCode>05487-020</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"QUICK\">
		<CompanyName>QUICK-Stop</CompanyName>
		<ContactName>Horst Kloss</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>0372-035188</Phone>
		<FullAddress>
			<Address>Taucherstra&#223;e 10</Address>
			<City>Cunewalde</City>
			<PostalCode>01307</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"RANCH\">
		<CompanyName>Rancho grande</CompanyName>
		<ContactName>Sergio Guti&#233;rrez</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(1) 123-5555</Phone>
		<Fax>(1) 123-5556</Fax>
		<FullAddress>
			<Address>Av. del Libertador 900</Address>
			<City>Buenos Aires</City>
			<PostalCode>1010</PostalCode>
			<Country>Argentina</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"RATTC\">
		<CompanyName>Rattlesnake Canyon Grocery</CompanyName>
		<ContactName>Paula Wilson</ContactName>
		<ContactTitle>Assistant Sales Representative</ContactTitle>
		<Phone>(505) 555-5939</Phone>
		<Fax>(505) 555-3620</Fax>
		<FullAddress>
			<Address>2817 Milton Dr.</Address>
			<City>Albuquerque</City>
			<Region>NM</Region>
			<PostalCode>87110</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"REGGC\">
		<CompanyName>Reggiani Caseifici</CompanyName>
		<ContactName>Maurizio Moroni</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>0522-556721</Phone>
		<Fax>0522-556722</Fax>
		<FullAddress>
			<Address>Strada Provinciale 124</Address>
			<City>Reggio Emilia</City>
			<PostalCode>42100</PostalCode>
			<Country>Italy</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"RICAR\">
		<CompanyName>Ricardo Adocicados</CompanyName>
		<ContactName>Janete Limeira</ContactName>
		<ContactTitle>Assistant Sales Agent</ContactTitle>
		<Phone>(21) 555-3412</Phone>
		<FullAddress>
			<Address>Av. Copacabana, 267</Address>
			<City>Rio de Janeiro</City>
			<Region>RJ</Region>
			<PostalCode>02389-890</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"RICSU\">
		<CompanyName>Richter Supermarkt</CompanyName>
		<ContactName>Michael Holz</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>0897-034214</Phone>
		<FullAddress>
			<Address>Grenzacherweg 237</Address>
			<City>Gen&#232;ve</City>
			<PostalCode>1203</PostalCode>
			<Country>Switzerland</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"ROMEY\">
		<CompanyName>Romero y tomillo</CompanyName>
		<ContactName>Alejandra Camino</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(91) 745 6200</Phone>
		<Fax>(91) 745 6210</Fax>
		<FullAddress>
			<Address>Gran V&#237;a, 1</Address>
			<City>Madrid</City>
			<PostalCode>28001</PostalCode>
			<Country>Spain</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SANTG\">
		<CompanyName>Sant&#233; Gourmet</CompanyName>
		<ContactName>Jonas Bergulfsen</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>07-98 92 35</Phone>
		<Fax>07-98 92 47</Fax>
		<FullAddress>
			<Address>Erling Skakkes gate 78</Address>
			<City>Stavern</City>
			<PostalCode>4110</PostalCode>
			<Country>Norway</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SAVEA\">
		<CompanyName>Save-a-lot Markets</CompanyName>
		<ContactName>Jose Pavarotti</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(208) 555-8097</Phone>
		<FullAddress>
			<Address>187 Suffolk Ln.</Address>
			<City>Boise</City>
			<Region>ID</Region>
			<PostalCode>83720</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SEVES\">
		<CompanyName>Seven Seas Imports</CompanyName>
		<ContactName>Hari Kumar</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>(171) 555-1717</Phone>
		<Fax>(171) 555-5646</Fax>
		<FullAddress>
			<Address>90 Wadhurst Rd.</Address>
			<City>London</City>
			<PostalCode>OX15 4NB</PostalCode>
			<Country>UK</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SIMOB\">
		<CompanyName>Simons bistro</CompanyName>
		<ContactName>Jytte Petersen</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>31 12 34 56</Phone>
		<Fax>31 13 35 57</Fax>
		<FullAddress>
			<Address>Vinb&#230;ltet 34</Address>
			<City>Kobenhavn</City>
			<PostalCode>1734</PostalCode>
			<Country>Denmark</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SPECD\">
		<CompanyName>Sp&#233;cialit&#233;s du monde</CompanyName>
		<ContactName>Dominique Perrier</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(1) 47.55.60.10</Phone>
		<Fax>(1) 47.55.60.20</Fax>
		<FullAddress>
			<Address>25, rue Lauriston</Address>
			<City>Paris</City>
			<PostalCode>75016</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SPLIR\">
		<CompanyName>Split Rail Beer &amp; Ale</CompanyName>
		<ContactName>Art Braunschweiger</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>(307) 555-4680</Phone>
		<Fax>(307) 555-6525</Fax>
		<FullAddress>
			<Address>P.O. Box 555</Address>
			<City>Lander</City>
			<Region>WY</Region>
			<PostalCode>82520</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"SUPRD\">
		<CompanyName>Supr&#234;mes d&#233;lices</CompanyName>
		<ContactName>Pascale Cartrain</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>(071) 23 67 22 20</Phone>
		<Fax>(071) 23 67 22 21</Fax>
		<FullAddress>
			<Address>Boulevard Tirou, 255</Address>
			<City>Charleroi</City>
			<PostalCode>B-6000</PostalCode>
			<Country>Belgium</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"THEBI\">
		<CompanyName>The Big Cheese</CompanyName>
		<ContactName>Liz Nixon</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>(503) 555-3612</Phone>
		<FullAddress>
			<Address>89 Jefferson Way Suite 2</Address>
			<City>Portland</City>
			<Region>OR</Region>
			<PostalCode>97201</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"THECR\">
		<CompanyName>The Cracker Box</CompanyName>
		<ContactName>Liu Wong</ContactName>
		<ContactTitle>Marketing Assistant</ContactTitle>
		<Phone>(406) 555-5834</Phone>
		<Fax>(406) 555-8083</Fax>
		<FullAddress>
			<Address>55 Grizzly Peak Rd.</Address>
			<City>Butte</City>
			<Region>MT</Region>
			<PostalCode>59801</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"TOMSP\">
		<CompanyName>Toms Spezialit&#228;ten</CompanyName>
		<ContactName>Karin Josephs</ContactName>
		<ContactTitle>Marketing Manager</ContactTitle>
		<Phone>0251-031259</Phone>
		<Fax>0251-035695</Fax>
		<FullAddress>
			<Address>Luisenstr. 48</Address>
			<City>M&#252;nster</City>
			<PostalCode>44087</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"TORTU\">
		<CompanyName>Tortuga Restaurante</CompanyName>
		<ContactName>Miguel Angel Paolino</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(5) 555-2933</Phone>
		<FullAddress>
			<Address>Avda. Azteca 123</Address>
			<City>M&#233;xico D.F.</City>
			<PostalCode>05033</PostalCode>
			<Country>Mexico</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"TRADH\">
		<CompanyName>Tradi&#231;&#227;o Hipermercados</CompanyName>
		<ContactName>Anabela Domingues</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>(11) 555-2167</Phone>
		<Fax>(11) 555-2168</Fax>
		<FullAddress>
			<Address>Av. In&#234;s de Castro, 414</Address>
			<City>Sao Paulo</City>
			<Region>SP</Region>
			<PostalCode>05634-030</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"TRAIH\">
		<CompanyName>Trail's Head Gourmet Provisioners</CompanyName>
		<ContactName>Helvetius Nagy</ContactName>
		<ContactTitle>Sales Associate</ContactTitle>
		<Phone>(206) 555-8257</Phone>
		<Fax>(206) 555-2174</Fax>
		<FullAddress>
			<Address>722 DaVinci Blvd.</Address>
			<City>Kirkland</City>
			<Region>WA</Region>
			<PostalCode>98034</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"VAFFE\">
		<CompanyName>Vaffeljernet</CompanyName>
		<ContactName>Palle Ibsen</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>86 21 32 43</Phone>
		<Fax>86 22 33 44</Fax>
		<FullAddress>
			<Address>Smagsloget 45</Address>
			<City>&#197;rhus</City>
			<PostalCode>8200</PostalCode>
			<Country>Denmark</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"VICTE\">
		<CompanyName>Victuailles en stock</CompanyName>
		<ContactName>Mary Saveley</ContactName>
		<ContactTitle>Sales Agent</ContactTitle>
		<Phone>78.32.54.86</Phone>
		<Fax>78.32.54.87</Fax>
		<FullAddress>
			<Address>2, rue du Commerce</Address>
			<City>Lyon</City>
			<PostalCode>69004</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"VINET\">
		<CompanyName>Vins et alcools Chevalier</CompanyName>
		<ContactName>Paul Henriot</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>26.47.15.10</Phone>
		<Fax>26.47.15.11</Fax>
		<FullAddress>
			<Address>59 rue de l'Abbaye</Address>
			<City>Reims</City>
			<PostalCode>51100</PostalCode>
			<Country>France</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"WANDK\">
		<CompanyName>Die Wandernde Kuh</CompanyName>
		<ContactName>Rita M&#252;ller</ContactName>
		<ContactTitle>Sales Representative</ContactTitle>
		<Phone>0711-020361</Phone>
		<Fax>0711-035428</Fax>
		<FullAddress>
			<Address>Adenauerallee 900</Address>
			<City>Stuttgart</City>
			<PostalCode>70563</PostalCode>
			<Country>Germany</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"WARTH\">
		<CompanyName>Wartian Herkku</CompanyName>
		<ContactName>Pirkko Koskitalo</ContactName>
		<ContactTitle>Accounting Manager</ContactTitle>
		<Phone>981-443655</Phone>
		<Fax>981-443655</Fax>
		<FullAddress>
			<Address>Torikatu 38</Address>
			<City>Oulu</City>
			<PostalCode>90110</PostalCode>
			<Country>Finland</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"WELLI\">
		<CompanyName>Wellington Importadora</CompanyName>
		<ContactName>Paula Parente</ContactName>
		<ContactTitle>Sales Manager</ContactTitle>
		<Phone>(14) 555-8122</Phone>
		<FullAddress>
			<Address>Rua do Mercado, 12</Address>
			<City>Resende</City>
			<Region>SP</Region>
			<PostalCode>08737-363</PostalCode>
			<Country>Brazil</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"WHITC\">
		<CompanyName>White Clover Markets</CompanyName>
		<ContactName>Karl Jablonski</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(206) 555-4112</Phone>
		<Fax>(206) 555-4115</Fax>
		<FullAddress>
			<Address>305 - 14th Ave. S. Suite 3B</Address>
			<City>Seattle</City>
			<Region>WA</Region>
			<PostalCode>98128</PostalCode>
			<Country>USA</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"WILMK\">
		<CompanyName>Wilman Kala</CompanyName>
		<ContactName>Matti Karttunen</ContactName>
		<ContactTitle>Owner/Marketing Assistant</ContactTitle>
		<Phone>90-224 8858</Phone>
		<Fax>90-224 8858</Fax>
		<FullAddress>
			<Address>Keskuskatu 45</Address>
			<City>Helsinki</City>
			<PostalCode>21240</PostalCode>
			<Country>Finland</Country>
		</FullAddress>
	</Customers><Customers CustomerID=\"WOLZA\">
		<CompanyName>Wolski  Zajazd</CompanyName>
		<ContactName>Zbyszek Piestrzeniewicz</ContactName>
		<ContactTitle>Owner</ContactTitle>
		<Phone>(26) 642-7012</Phone>
		<Fax>(26) 642-7012</Fax>
		<FullAddress>
			<Address>ul. Filtrowa 68</Address>
			<City>Warszawa</City>
			<PostalCode>01-012</PostalCode>
			<Country>Poland</Country>
		</FullAddress>
	</Customers></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes086'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<root> {//@*/..} </root>",
   {Env,Opts} = xqerl_test:handle_environment(environment('Tree1Text',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes086.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><west mark=\"w0\" /><center mark=\"c0\">Text in center</center><east mark=\"e0\">Text in east</east></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes087'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<root> {/doc/part/*/text()/..} </root>",
   {Env,Opts} = xqerl_test:handle_environment(environment('xq311B',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes087.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<root><retail>62.50 USD</retail><wholesale>55.00 USD</wholesale><internal>31.25 USD</internal></root>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes088'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/*/",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes088.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes089'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
xquery version \"1.0\";
declare namespace saxon=\"http://saxon.sf.net/\";
declare namespace tour=\"http://wrox.com/tour\";

(:
    XQuery program to perform a knight's tour of the chessboard.
    Author: Michael H. Kay
    Date: 26 June 2003
    
    This version modified to use XQuery 1.0, with sequences and functions.

    This query does not use a source document.
    There is an optional parameter, start, which can be set to any square on the
    chessboard, e.g. a3 or h5. XQuery does not allow parameters to be given a
    default value, so the parameter is mandatory.
    
    There is a second optional parameter, end, which indicates that the processing should stop
    after a given number of steps. This can be used to animate the display of the tour. This
    works especially well when the query is compiled into a Java servlet.

    The output is an HTML display of the completed tour.

    Internally, the following data representations are used:
    * A square on the chessboard: represented as a number in the range 0 to 63
    * A state of the chessboard: a sequence of 64 integers, each containing a move number. 
      A square that has not been visited yet is represented by a zero.
    * A set of possible moves: represented as a sequence of integers,
    * each integer representing the number of the destination square
      
:)

declare variable $start as xs:string := \"a1\";

declare variable $end as xs:string := \"64\";
declare variable $endd as xs:integer := xs:integer($end); 

(: start-column is an integer in the range 0-7 :)

declare variable $start-column as xs:integer :=
    xs:integer(translate(substring($start, 1, 1),
            'abcdefgh', '01234567'));

(: start-row is an integer in the range 0-7, with zero at the top :)

declare variable $start-row as xs:integer :=
    8 - xs:integer(substring($start, 2, 1));
    
declare function tour:main () as element() {

    (: This function controls the processing. It does not access the source document. :)

    (: Validate the input parameter :)

    if (not(string-length($start)=2) or
        not(translate(substring($start,1,1), 'abcdefgh', 'aaaaaaaa')='a') or
        not(translate(substring($start,2,1), '12345678', '11111111')='1'))
    then
        error((), \"Invalid start parameter: try say 'a1' or 'g6'\")
    else
    
    if (not($endd = 1 to 64)) 
    then
        error((), \"Invalid end parameter: must be in range 1 to 64\")
    else

    (: Set up the empty board :)

    let $empty-board as xs:integer* := 
        for $i in (1 to 64) return 0
    
    (: Place the knight on the board at the chosen starting position :)
    
    let $initial-board as xs:integer* :=
        tour:place-knight(1, $empty-board, $start-row * 8 + $start-column)
    
    (: Evaluate the knight's tour :)

    let $final-board as xs:integer* :=
       tour:make-moves(2, $initial-board, $start-row * 8 + $start-column)

    (: produce the HTML output :)
    
    return tour:print-board($final-board)
};

declare function tour:place-knight (
                    $move as xs:integer,
                    $board as xs:integer*,
                    $square as xs:integer (: range 0 to 63 :)
                  ) as xs:integer* {

    (: This function places a knight on the board at a given square. The returned value is
         the supplied board, modified to indicate that the knight reached a given square at a given
         move :)

    for $i in 1 to 64 return
        if ($i = $square + 1) then $move else $board[$i]

};

declare function tour:make-moves (
                    $move as xs:integer,
                    $board as xs:integer*,
                    $square as xs:integer (: range 0 to 63 :)
                ) as xs:integer* {

    (: This function takes the board in a given state, decides on the next move to make,
         and then calls itself recursively to make further moves, until the knight has completed
         his tour of the board. It returns the board in its final state. :)

    (: determine the possible moves that the knight can make :)

    let $possible-move-list as xs:integer* := 
        tour:list-possible-moves($board, $square)

    (: try these moves in turn until one is found that works :)

    return tour:try-possible-moves($move, $board, $square, $possible-move-list)
};

declare function tour:try-possible-moves (
                    $move as xs:integer,
                    $board as xs:integer*,
                    $square as xs:integer, (: range 0 to 63 :)
                    $possible-moves as xs:integer* )
                as xs:integer* {

    (:   This function tries a set of possible moves that the knight can make
         from a given position. It determines the best move as the one to the square with
         fewest exits. If this is unsuccessful then it can backtrack and
         try another move; however this turns out rarely to be necessary. 
         
         The function makes the selected move, and then calls make-moves() to make
         subsequent moves, returning the final state of the board. :)

         if (count($possible-moves)!=0)
                then tour:make-best-move($move, $board, $square, $possible-moves)
                else ()

         (: if there is no possible move, we return the special value () as the final state
             of the board, to indicate to the caller that we got stuck :)
};

declare function tour:make-best-move (
                    $move as xs:integer,
                    $board as xs:integer*,
                    $square as xs:integer, (: range 0 to 63 :)
                    $possible-moves as xs:integer* )
                as xs:integer* {
                
    (: this function, given the state of the board and a set of possible moves,
       determines which of the moves is the best one. It then makes this move,
       and proceeds recursively to make further moves, eventually returning the
       final state of the board. :)            
        
    (:  if at least one move is possible, find the best one :)

    let $best-move as xs:integer :=
        tour:find-best-move($board, $possible-moves, 9, 999)

    (: find the list of possible moves excluding the best one :)

    let $other-possible-moves as xs:integer* :=
        $possible-moves[. != $best-move]

    (: update the board to make the move chosen as the best one :)

    let $next-board as xs:integer* :=
        tour:place-knight($move, $board, $best-move)
    
    (: now make further moves using a recursive call, until the board is complete :)

    let $final-board as xs:integer* :=
        if ($move < $endd) (:count($next-board[.=0])!=0:) 
                    then tour:make-moves($move+1, $next-board, $best-move)
                    else $next-board

    (:   if the final board has the special value '()', we got stuck, and have to choose
         the next best of the possible moves. This is done by a recursive call. I thought
         that the knight never did get stuck, but it does: if the starting square is f1,
         the wrong choice is made at move 58, and needs to be reversed. :)

    return
        if (empty($final-board))
        then tour:try-possible-moves($move, $board, $square, $other-possible-moves)
        else $final-board
        
};

declare function tour:find-best-move (
                    $board as xs:integer*,
                    $possible-moves as xs:integer*,
                    $fewest-exits as xs:integer,
                    $best-so-far as xs:integer )
                as xs:integer {

    (:  This function finds from among the possible moves, the one with fewest exits.
         It calls itself recursively. :)
         
    (:  split the list of possible moves into the first move and the rest of the moves :)

    let $trial-move as xs:integer := 
        $possible-moves[1]
    
    let $other-possible-moves as xs:integer* :=
        $possible-moves[position() > 1]

    (: try making the first move :)

    let $trial-board as xs:integer* :=
        tour:place-knight(99, $board, $trial-move)

    (: see how many moves would be possible the next time :)

    let $trial-move-exit-list as xs:integer* :=
        tour:list-possible-moves($trial-board, $trial-move)

    let $number-of-exits as xs:integer :=
        count($trial-move-exit-list)

    (:  determine whether this trial move has fewer exits than those considered up till now :)

    let $minimum-exits as xs:integer :=
        min(($number-of-exits, $fewest-exits))

    (:  determine which is the best move (the one with fewest exits) so far :)

    let $new-best-so-far as xs:integer :=
        if ($number-of-exits < $fewest-exits)
            then $trial-move
            else $best-so-far  

    (:  if there are other possible moves, consider them too, using a recursive call.
        Otherwise return the best move found. :)

    return
        if (count($other-possible-moves)!=0)
            then tour:find-best-move($board, $other-possible-moves, 
                                            $minimum-exits, $new-best-so-far)
            else $new-best-so-far

};

declare function tour:list-possible-moves (
                $board as xs:integer*,
                $square as xs:integer )
            as xs:integer* {

    (:   This function, given the knight's position on the board, returns the set of squares
         he can move to. The squares will be ones that have not been visited before :)
            
    let $row as xs:integer := $square idiv 8
    let $column as xs:integer := $square mod 8

    return
        (if ($row > 1 and $column > 0 and $board[($square - 17) + 1]=0)
            then $square - 17 else (),
         if ($row > 1 and $column < 7 and $board[($square - 15) + 1]=0)
            then $square - 15 else (),
         if ($row > 0 and $column > 1 and $board[($square - 10) + 1]=0)
            then $square - 10 else (),
         if ($row > 0 and $column < 6 and $board[($square - 6) + 1]=0)
            then $square - 6 else (),
         if ($row < 6 and $column > 0 and $board[($square + 15) + 1]=0)
            then $square + 15 else (),
         if ($row < 6 and $column < 7 and $board[($square + 17) + 1]=0)
            then $square + 17 else (),
         if ($row < 7 and $column > 1 and $board[($square + 6) + 1]=0)
            then $square + 6 else (),
         if ($row < 7 and $column < 6 and $board[($square + 10) + 1]=0)
            then $square + 10 else () )

};

declare function tour:print-board (
                $board as xs:integer* )
            as element()
{
    (: Output the board in HTML format :)

    <html>
    <head>
        <title>Knight's tour</title>
    </head>
    <body>
    <div align=\"center\">
    <h1>Knight's tour starting at {$start}</h1>
    <table border=\"1\" cellpadding=\"4\">
        {for $row in 0 to 7 return
           <tr>
              {for $column in 0 to 7
                let $color :=
                          if ((($row + $column) mod 2)=1)
                          then 'xffff44' 
                          else 'white' return
                <td align=\"center\" bgcolor=\"{$color}\" width=\"22\">{
                  let $n := $board[$row * 8 + $column + 1]
                  return 
                      if ($endd != 64 and $n = $endd)
                      then <b>{$n}</b>
                      else if ($n = 0)
                      then \"&#xa0;\"
                      else $n
                }</td>
              }
           </tr>
        }
    </table>
    <p>{
        if ($endd != 64) 
        then
          <a href=\"Tour?start={$start}&amp;end={$endd+1}\">Step</a>
        else ()
    }</p>    
    </div>
    </body>
    </html>
};

tour:main()

",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes089.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<html><head><title>Knight's tour</title></head><body><div align=\"center\"><h1>Knight's tour starting at a1</h1><table border=\"1\" cellpadding=\"4\"><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">36</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">19</td><td width=\"22\" align=\"center\" bgcolor=\"white\">22</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">5</td><td width=\"22\" align=\"center\" bgcolor=\"white\">38</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">9</td><td width=\"22\" align=\"center\" bgcolor=\"white\">24</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">7</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">21</td><td width=\"22\" align=\"center\" bgcolor=\"white\">4</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">37</td><td width=\"22\" align=\"center\" bgcolor=\"white\">42</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">23</td><td width=\"22\" align=\"center\" bgcolor=\"white\">6</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">39</td><td width=\"22\" align=\"center\" bgcolor=\"white\">10</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">18</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">35</td><td width=\"22\" align=\"center\" bgcolor=\"white\">20</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">49</td><td width=\"22\" align=\"center\" bgcolor=\"white\">44</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">41</td><td width=\"22\" align=\"center\" bgcolor=\"white\">8</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">25</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">3</td><td width=\"22\" align=\"center\" bgcolor=\"white\">50</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">43</td><td width=\"22\" align=\"center\" bgcolor=\"white\">46</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">55</td><td width=\"22\" align=\"center\" bgcolor=\"white\">62</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">11</td><td width=\"22\" align=\"center\" bgcolor=\"white\">40</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">34</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">17</td><td width=\"22\" align=\"center\" bgcolor=\"white\">54</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">59</td><td width=\"22\" align=\"center\" bgcolor=\"white\">48</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">45</td><td width=\"22\" align=\"center\" bgcolor=\"white\">26</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">63</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">51</td><td width=\"22\" align=\"center\" bgcolor=\"white\">2</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">47</td><td width=\"22\" align=\"center\" bgcolor=\"white\">56</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">61</td><td width=\"22\" align=\"center\" bgcolor=\"white\">58</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">29</td><td width=\"22\" align=\"center\" bgcolor=\"white\">12</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">16</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">33</td><td width=\"22\" align=\"center\" bgcolor=\"white\">60</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">53</td><td width=\"22\" align=\"center\" bgcolor=\"white\">14</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">31</td><td width=\"22\" align=\"center\" bgcolor=\"white\">64</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">27</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">1</td><td width=\"22\" align=\"center\" bgcolor=\"white\">52</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">15</td><td width=\"22\" align=\"center\" bgcolor=\"white\">32</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">57</td><td width=\"22\" align=\"center\" bgcolor=\"white\">28</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">13</td><td width=\"22\" align=\"center\" bgcolor=\"white\">30</td></tr></table><p/></div></body></html>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes090'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $element as element(foo) := <foo/> return count($element/self::bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes090.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes091'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $element as element(foo) := <foo/> return count($element/self::*:bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes091.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes092'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace ns1 = \"http://www.example.org/ns1\"; declare namespace ns2 = \"http://www.example.org/ns2\"; let $element as element(ns1:foo) := <ns1:foo/> return count($element/self::ns2:*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes092.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes093'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $attribute as attribute(foo) := attribute foo { } return count($attribute/self::bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes093.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes094'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $attribute as attribute(foo) := attribute foo { } 
            return count($attribute/self::*:bar)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes094.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes095'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        declare namespace ns2 = \"http://www.example.org/ns2\"; 
        let $attribute as attribute(ns1:foo) := attribute ns1:foo { } 
        return count($attribute/self::ns2:*)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes095.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes096'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $element as element(*) := <foo/> return count($element/self::bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes096.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes097'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $element as element(*) := <foo/> return count($element/self::*:bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes097.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes098'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        declare namespace ns2 = \"http://www.example.org/ns2\"; 
        let $element as element(*) := <ns1:foo/> 
        return count($element/self::ns2:*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes098.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes099'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $attribute as attribute(*) := attribute foo { } return count($attribute/self::bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes099.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes100'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $attribute as attribute(*) := attribute foo { } return count($attribute/self::*:bar)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes101'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        declare namespace ns2 = \"http://www.example.org/ns2\"; 
        let $attribute as attribute(*) := attribute ns1:foo { } 
        return count($attribute/self::ns2:*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes102'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        declare namespace ns2 = \"http://www.example.org/ns2\"; 
        declare construction strip; 
        let $element as element(*, xs:untyped) := <e>test</e> 
        let $element as element(*, xs:untyped) := $element/self::* 
        return count($element)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes103'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $comment as comment() := <!--comment--> return count($comment/self::*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes104'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $comment as comment() := <!--comment--> return count($comment/self::foo)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes105'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $comment as comment() := <!--comment--> return count($comment/self::*:foo)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes106'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        let $comment as comment() := <!--comment--> 
        return count($comment/self::ns1:*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes107'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        let $processing-instruction as processing-instruction() := <?processing instruction?> 
        return count($processing-instruction/self::*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes108'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        let $processing-instruction as processing-instruction() := <?processing instruction?> 
        return count($processing-instruction/self::processing)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes108.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes109'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        let $processing-instruction as processing-instruction() := <?processing instruction?> 
        return count($processing-instruction/self::*:processing)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes109.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes110'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        let $processing-instruction as processing-instruction() := <?processing instruction?> 
        return count($processing-instruction/self::ns1:*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes110.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes111'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace ns1 = \"http://www.example.org/ns1\"; 
        declare namespace ns2 = \"http://www.example.org/ns2\"; declare construction strip; 
        let $element as element(*, xs:untyped) := <e a=\"value\" /> 
        let $attribute as attribute(*, xs:untypedAtomic)* := $element/attribute::* 
        return count($attribute)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes111.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes112'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/*/namespace-node()",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes112.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0134") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes113'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
'Axes114'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
'Axes115'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/*/attribute::namespace-node()",
   {Env,Opts} = xqerl_test:handle_environment(environment('TreeTrunc',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes115.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes116'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP30+"}.
'Axes117'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace {\"xsl\"}{\"http://www.w3.org/1999/XSL/Transform\"} / self::namespace-node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "Axes117.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"namespace-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_string_value(Res, "http://www.w3.org/1999/XSL/Transform") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert(Res,"name($result) = \"xsl\"") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Axes118'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes119'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes120'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes121'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes122'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes123'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes124'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes125'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes126'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XP20+"}.
'Axes127'(Config) ->
   BaseDir = ?config(base_dir, Config),
   {skip,"XQ10"}.
'axis-err-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "let $var := <anElement>Some content</anElement> return $var/20[child::text()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "axis-err-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $var := document{<e><f>f's value</f></e>}; $var/(/)/(/)//f",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<f>f's value</f>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $var := <e><f>f's value</f></e>; $var/(/)/(/)//f",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $v := <a><b/><b/><b/></a>; deep-equal($v//45, (45, 45, 45, 45))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $v := <a><b/><b/><b/></a>; $v//45",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "45 45 45 45") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*:(:hey:)ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*(:hey:):ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-7'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "* :ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-8'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*(:hey:):ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-9'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "ncname :*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-10'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "name(:hey:):*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-11'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "* :ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-12'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "ncname: *",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-13'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*(:hey:):ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-14'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "ncname:(:hey:)*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-15'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*(:hey:):(:hey:) ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-16'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*:(:hey:)ncname",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-17'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "*:",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-18'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(text {\"some text\"}/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-19'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(processing-instruction theName {\"some text\"}/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-20'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(attribute theName {\"some text\"}/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-21'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(element theName {\"some text\"}/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-22'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(comment {\"some text\"}/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-23'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<elem/>/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-24'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e>some text</e>/text()/..",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e>some text</e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-25'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e><b/></e>/b/..",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><b/></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-26'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"c\"/>/@attr/..",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e attr=\"c\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-27'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e><?name data?></e>/processing-instruction()/..",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><?name data?></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-28'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e><!--data --></e>/comment()/..",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><!--data --></e>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-29'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "preceding-or-ancestor::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-30'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(fn:root(<e/>)/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-31'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-32'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := <e/>; empty(fn:root($myVar/(/)/..))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0050") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-33'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := document { <e/>}; empty($myVar/(/)/..)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-34'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "nametest//",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-35'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "nametest/",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-36'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := <e/>; $myVar/(/)/",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-37'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "parent::self()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-38'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "123[..]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-39'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "1[element()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-40'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, <e/>)[..]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-41'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(<e/>, 1)[..]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-42'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>[parent::node()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-43'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 5 * /)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-44'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, /)[1]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-45'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(/, 1)[2]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-46'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "//",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-47'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := <e/>; empty($myVar/descendant-or-self::text())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-48'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := <e/>; $myVar/(<a/>, <b/>, <?d ?>, <!-- e-->, attribute name {}, document {()})/3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 3 3 3 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-49'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $myVar := <e/>; $myVar/(<a/>, <b/>, <?d ?>, <!-- e-->, attribute name {}, document {()})/number()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NaN NaN NaN NaN NaN NaN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-50'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "1/3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-51'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "string(<e/>)/3",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-52'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $myVar := <e/>; 
        empty($myVar/preceding-sibling::comment()/a/b/c/1/@*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-53'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3)[1]/(1, 2)[last()]/\"a string\"",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-54'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "namespace::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-55'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(()/@attr)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-56'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(()/name)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-57'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $var := <a> <b/> <c/> <d/> </a>; ($var/*, $var/*)/.",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/><c/><d/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-58'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $var := <a> <b/> <c/> <d/> </a>; ($var/*, $var/*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/><c/><d/><b/><c/><d/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-59'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; 1, root($i)//leaf/child::node(), 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-60'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<element attr=\"foo\" attr2=\"foo\"/>/*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-61'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<element attr=\"foo\" attr2=\"foo\"/>/*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-62'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e> <b attr=\"fo\"/> <b/> </e>/descendant-or-self::node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<e><b attr=\"fo\"/><b/></e><b attr=\"fo\"/><b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-63'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "1, <b attr=\"fo\"/>/child::node(), 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-64'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e> <b/> <b a=\"\"/> </e>/b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b/><b a=\"\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-65'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e> <b a=\"\"/> <b/> </e>/b",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b a=\"\"/><b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-66'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e> <!-- comment --> <?PA ?>text<b/> <?PB ?> <b/> <?PC ?> </e>/child::node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<!-- comment --><?PA ?>text<b/><?PB ?><b/><?PC ?>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-67'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "1, <e/>/descendant::node(), 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-68'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<out>{1, <e/>/descendant-or-self::node(), 1}</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>1<e/>1</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-69'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "1, <e attr=\"\"/>/descendant::node(), 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-70'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<out>{1, <e attr=\"\"/>/descendant-or-self::node(), 1}</out>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<out>1<e attr=\"\"/>1</out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-71'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/descendant::node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-72'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/descendant-or-self::node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-73'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e attr=\"\"/>/descendant::node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-74'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e attr=\"\"/>/descendant-or-self::node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-75'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a> <b c=\"\"/> <d/> </a>/descendant-or-self::node()[last()]/ancestor::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a><b c=\"\"/><d/></a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-76'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a> <b c=\"\"/> <d/> </a>/descendant-or-self::node()[last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<d/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-77'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "preceeding::node()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-78'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a> <b c=\"\"/> <d/> </a>//node()/../count(.)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-79'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a> <b c=\"\"/> <d/> </a>//node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-80'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a> <b c=\"\"/> <d/> </a>/descendant-or-self::node())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-81'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a> <b id=\"person0\"> <c/> </b> </a>/*[attribute::id eq \"person0\"]/c",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-82'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a> <b id=\"person0\"> <c/> </b> </a>/*[@id eq \"person0\"]/c",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<c/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-83'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/attribute::attribute())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-84'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e/>/attribute::schema-attribute(foo)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-85'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<e/>/attribute::schema-attribute()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-85.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-86'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $root as document-node() := . treat as document-node();
        <out>
        <empty> { (: attribute axis, and all other axes that inference can assert might produce attributes. 
             These are placed first, so we don't raise XQTY0024. :) 
             $root/foo/child::attribute(foo), 
             $root//element()/self::attribute(), 
             $root//text()/self::attribute(), 
             $root/self::attribute(), 
             $root/foo/descendant::attribute(foo), 
             $root//processing-instruction()/self::attribute(), 
             $root/attribute(foo), $root/attribute(), 
             $root/attribute::attribute(), 
             $root//parent::attribute(), 
             $root//document-node()/self::attribute(), 
             $root/@*, $root/*/@*[self::*], 
             $root//comment()/descendant-or-self::attribute(), 
             $root//processing-instruction()/descendant-or-self::attribute(), 
             $root//text()/descendant-or-self::attribute(), 
             $root//document-node()/descendant-or-self::attribute(), 
             $root//parent::attribute(), 
             $root//ancestor::attribute(), 
             $root//ancestor-or-self::attribute(), 
             $root/self::attribute(), 
             $root//attribute()/child::node(), 
             $root//attribute::text(), 
             $root//attribute::comment(), 
             $root//attribute::processing-instruction(), 
             $root//attribute::document-node(), 
             $root//attribute::document-node(element(foo)),
             $root//attribute()/self::text(),
             $root//attribute()/self::processing-instruction(), 
             $root//attribute()/self::element(), 
             $root//attribute()/self::document-node(), 
             $root//attribute()/self::comment(), 
             $root//*/attribute()//node(), 
             $root//*/attribute()/descendant::node(), 
             $root//attribute::element(), 
             $root//comment()/child::node(), 
             $root//processing-instruction()/child::node(), 
             $root//text()/child::node(),
             $root//attribute()/descendant::node(), 
             $root//comment()/descendant::node(), 
             $root//text()/descendant::node(), 
             $root//processing-instruction()/descendant::node(), 
             $root//comment()/descendant-or-self::text(), 
             $root//comment()/descendant-or-self::processing-instruction(), 
             $root//comment()/descendant-or-self::element(), 
             $root//comment()/descendant-or-self::document-node(), 
             $root//processing-instruction()/descendant-or-self::text(), 
             $root//processing-instruction()/descendant-or-self::comment(), 
             $root//processing-instruction()/descendant-or-self::element(), 
             $root//processing-instruction()/descendant-or-self::document-node(), 
             $root//text()/descendant-or-self::processing-instruction(), 
             $root//text()/descendant-or-self::comment(), 
             $root//text()/descendant-or-self::element(), 
             $root//text()/descendant-or-self::document-node(), 
             $root//attribute()/descendant-or-self::processing-instruction(), 
             $root//attribute()/descendant-or-self::text(), 
             $root//attribute()/descendant-or-self::comment(), 
             $root//attribute()/descendant-or-self::element(), 
             $root//attribute()/descendant-or-self::document-node(), 
             $root/.., $root//parent::comment(), 
             $root//parent::processing-instruction(), 
             $root//parent::text(), 
             $root//ancestor::comment(), 
             $root//ancestor::processing-instruction(), 
             $root//ancestor::text(), 
             $root/self::comment(), 
             $root/self::processing-instruction(), 
             $root/self::text(), 
             $root/self::element(), 
             $root//element()/self::text(), 
             $root//element()/self::processing-instruction(), 
             $root//element()/self::document-node(), 
             $root//element()/self::comment(), 
             $root//processing-instruction()/self::text(), 
             $root//processing-instruction()/self::element(), 
             $root//processing-instruction()/self::document-node(), 
             $root//processing-instruction()/self::comment(), 
             $root//text()/self::processing-instruction(), 
             $root//text()/self::element(), 
             $root//text()/self::document-node(), 
             $root//text()/self::comment(), 
             $root//document-node()/self::processing-instruction(), 
             $root//document-node()/self::element(), 
             $root//document-node()/self::text(), 
             $root//document-node()/self::comment() } </empty><ex>{exists($root//*/attribute()/descendant-or-self::node())}</ex></out>",
   {Env,Opts} = xqerl_test:handle_environment(environment('TopMany',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-86.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<out><empty/><ex>true</ex></out>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-87'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<result> { <e> <a>1</a> <b>2</b> </e>/(b, a)/. } </result>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-87.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><a>1</a><b>2</b></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-88'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $i := <e> <a>1</a> <b>2</b> </e>; <result> { ($i/b, $i/a)/. } </result>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-88.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<result><a>1</a><b>2</b></result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-89'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare default element namespace \"http://typedecl\"; <r> { <e attr=\"foo\"/>/@attr } </r>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-89.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<r xmlns=\"http://typedecl\" attr=\"foo\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-90'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "prefix:",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-90.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-91'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "prefix:",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-91.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-92'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<e/>/(gt gt gt))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-92.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-93'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "< asd />",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-93.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-94'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-94.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-95'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "eclare function",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-95.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-96'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function name",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-96.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-97'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function local:foo() external;",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-97.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-98'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "xquery, version, encoding, default, declare, function, option, collation, schema, import",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-98.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-99'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "declare function foo() external; 1",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-99.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XQST0045") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-100'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "empty(<a> <b/> <c/> </a>[self::b][last()])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-101'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<b/>[self::b][last()]",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_xml(Res,"<b/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-102'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        for $a in (/) return 
        for $b in $a/child::site return 
        for $c in $b/child::people return 
        for $d in $c/child::person return 
            if ((some $id in $d/attribute::id satisfies 
                    typeswitch ($id)
                     case $n as node() return $id = \"person0\"
                     default $d return ())) 
            then $d/child::name 
            else (), 
        for $b in /site/people/person where $b/@id=\"person0\" return $b/name, 
        /site/people/person[@id eq \"person0\"]/name",
   {Env,Opts} = xqerl_test:handle_environment(environment('XMarkAuction',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-102.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<name>Seongtaek Mattern</name><name>Seongtaek Mattern</name><name>Seongtaek Mattern</name>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-103'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:isComplexType($typeID) { string($typeID) }; 
        \"|\", //*/local:isComplexType(@type), \"|\"",
   {Env,Opts} = xqerl_test:handle_environment(environment('CPPGlobals',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "|       _17 _17  _11c _11c _11 _11  _17c _17c _17 _17   _11   _23  _17 _11c  |") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K2-Axes-104'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a/>/<b>{.}</b>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "K2-Axes-104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<b><a/></b>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'statictypingaxis-1'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(10)/child::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "statictypingaxis-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'statictypingaxis-2'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(10)/self::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "statictypingaxis-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'statictypingaxis-3'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(10)/attribute::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "statictypingaxis-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'statictypingaxis-4'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(10)/parent::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "statictypingaxis-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'statictypingaxis-5'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(10)/descendant::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "statictypingaxis-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'statictypingaxis-6'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(10)/descendant-or-self::*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "statictypingaxis-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-selfAxis-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "<a> { <a b=\"blah\"/>/@*/self::attribute(b) } </a>",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-selfAxis-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a b=\"blah\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-childAxis-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a b=\"blah\"/>/child::attribute(b))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-childAxis-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPST0005") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-followingAxis-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a><b/><b/></a>/b[1]/following-sibling::*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-followingAxis-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-precedingAxis-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a><b/><b/></a>/b[2]/preceding-sibling::*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-precedingAxis-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-precedingAxis-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a><b/><b/></a>/b[2]/preceding-sibling::b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-precedingAxis-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-precedingAxis-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "count(<a><b/><b/></a>/b[1]/preceding-sibling::b)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-precedingAxis-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-except-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      let $x := <a><b/><c/><d/></a> return count(($x/(node() except b) | $x/(node() except b)))
   ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-except-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-wild-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace foo=\"test\";
        let $x := <a><foo:b/><c/><d/></a> return count($x/foo:* | $x/foo:*)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-wild-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-wild-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace foo=\"http://localhost/\";
        <a><foo:b/><foo:c/></a>/foo:b/self::foo:*",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-wild-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:b xmlns:foo=\"http://localhost/\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-path-nodes-and-atomics'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:f($x) { if ($x mod 2 = 1) then <a/> else \"a\" };
        let $y := for $x in (1 to 10) return <e>{$x}</e> return $y/local:f(.)/a",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "cbcl-path-nodes-and-atomics.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPTY0018") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0019") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
