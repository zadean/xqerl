-module('prod_AxisStep_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

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
-export(['Axes084-5'/1]).
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
-export(['K2-Axes-105'/1]).
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

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "prod"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5},
        {group, group_6},
        {group, group_7},
        {group, group_8},
        {group, group_9},
        {group, group_10},
        {group, group_11},
        {group, group_12},
        {group, group_13},
        {group, group_14}
    ].

groups() ->
    [
        {group_0, [parallel], [
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
            'Axes007-1'
        ]},
        {group_1, [parallel], [
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
            'Axes021-1'
        ]},
        {group_2, [parallel], [
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
            'Axes036-2'
        ]},
        {group_3, [parallel], [
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
            'Axes057-3'
        ]},
        {group_4, [parallel], [
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
            'Axes066-1'
        ]},
        {group_5, [parallel], [
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
            'Axes074-2'
        ]},
        {group_6, [parallel], [
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
            'Axes080-3'
        ]},
        {group_7, [parallel], [
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
            'Axes084-5',
            'Axes085',
            'Axes086',
            'Axes087',
            'Axes088',
            'Axes089',
            'Axes090',
            'Axes091',
            'Axes092',
            'Axes093'
        ]},
        {group_8, [parallel], [
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
            'Axes117'
        ]},
        {group_9, [parallel], [
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
            'K2-Axes-13'
        ]},
        {group_10, [parallel], [
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
            'K2-Axes-37'
        ]},
        {group_11, [parallel], [
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
            'K2-Axes-61'
        ]},
        {group_12, [parallel], [
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
            'K2-Axes-85'
        ]},
        {group_13, [parallel], [
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
            'K2-Axes-105',
            'statictypingaxis-1',
            'statictypingaxis-2',
            'statictypingaxis-3',
            'statictypingaxis-4'
        ]},
        {group_14, [parallel], [
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
            'cbcl-path-nodes-and-atomics'
        ]}
    ].

environment('auction', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [
            {"http://www.example.com/AuctionWatch", "ma"},
            {"http://www.w3.org/1999/xlink", "xlink"},
            {"http://www.example.com/auctioneers#anyzone", "anyzone"},
            {"http://www.example.com/auctioneers#eachbay", "eachbay"},
            {"http://www.example.com/auctioneers#yabadoo", "yabadoo"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TopMany', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TopMany.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('Tree1Child', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/Tree1Child.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('Tree1Text', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/Tree1Text.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeCompass', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeCompass.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeEmpty', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeEmpty.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeRepeat', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeRepeat.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeStack', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeStack.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeTrunc', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeTrunc.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeNS', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeNS.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('CPPGlobals', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/CPPGlobals.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('nw_Customers', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/nw_Customers.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('XMarkAuction', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../app/XMark/XMarkAuction.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('xq311B', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/xq311B.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'Axes001-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes001-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes001-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes001-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes001-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes001-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes002-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes002-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes002-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes002-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes002-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes002-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes002-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes002-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes003-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes003-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes003-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes003-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes003-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes003-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes003-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes003-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "19") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes004-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes004-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes004-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes004-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes004-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes004-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes005-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes005-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes005-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes005-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes005-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes005-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes005-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/south-east)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes005-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes006-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes006-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes006-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes006-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes006-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes006-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes006-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes006-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "19") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes007-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes007-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes007-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes007-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes007-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes007-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes008-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::west-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes008-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes008-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::west-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes008-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes008-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::west-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes008-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes009-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes009-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes009-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes009-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes009-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/attribute::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes009-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes010-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes010-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes010-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes010-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes010-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes010-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes011-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/@west-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes011-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes011-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/@west-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes011-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes011-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west/@west-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes011-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes012-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count( / )",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes012-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes013-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/parent::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes013-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes014-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/far-north/parent::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes014-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes015-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/parent::near-north)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes015-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes016-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/parent::nowhere)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes016-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes017-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/parent::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes017-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes018-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/far-north/parent::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes018-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes019-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/..)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes019-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes020-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes020-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes021-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/self::center)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes021-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes023-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes023-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes027-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/@center-attr-3/self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes027-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes030-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/text()/self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes030-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes030-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/text()/self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes030-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes031-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes031-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes031-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes031-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes031-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes031-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes031-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes031-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes032-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes032-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes032-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes032-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes032-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes032-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes032-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes032-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes033-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes033-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes033-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes033-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes033-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes033-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes033-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes033-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "21") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes034-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes034-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes034-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes034-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes035-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes035-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes035-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes035-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes035-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes035-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes035-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes035-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes036-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::center)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes036-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes036-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::center)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes036-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "9") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes037-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes037-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes037-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes037-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "22") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes041-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/@center-attr-3/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes041-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes043-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/text()/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes043-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes043-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center/text()/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes043-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes044-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes044-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes044-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes044-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes045-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/child::far-north)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes045-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes045-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/child::far-north)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes045-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes046-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes046-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes046-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes046-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "7") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes047-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes047-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes047-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes047-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes048-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/far-north)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes048-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes048-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/far-north)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes048-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes049-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes049-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes049-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes049-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "7") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes055-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes055-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes056-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes056-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes056-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes056-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes056-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes056-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "16") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes057-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes057-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes057-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes057-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes057-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes057-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes057-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes057-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes058-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes058-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes058-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes058-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "56") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes058-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes058-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "58") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes059-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes059-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes059-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes059-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes060-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes060-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes060-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes060-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes060-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes060-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes060-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes060-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes061-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes061-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "57") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes061-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(/descendant-or-self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes061-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "59") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes062-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes062-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes062-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes062-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes063-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes063-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes063-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes063-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes063-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes063-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes063-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes063-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes064-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes064-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes064-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes064-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "56") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes064-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes064-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "58") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes065-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes065-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes065-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes065-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes066-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes066-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes066-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes066-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes066-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes066-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes066-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes066-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes067-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes067-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes067-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes067-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "56") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes067-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes067-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "58") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes068-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes068-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes068-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes068-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes068-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes068-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "14") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes069-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//attribute::mark)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes069-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes069-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//attribute::mark)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes069-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes069-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//attribute::mark)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes069-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes070-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes070-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes070-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes070-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes070-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes070-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "14") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes071-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//@mark)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes071-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes071-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//@mark)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes071-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes071-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//@mark)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes071-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes072-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeEmpty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes072-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes072-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//self::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes072-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "15") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes073-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes073-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "57") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes073-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//self::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes073-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "59") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes074-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes074-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes074-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes074-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes074-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes074-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes074-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes074-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "12") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes075-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes075-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes075-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes075-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes075-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes075-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes075-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes075-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes076-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes076-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes076-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes076-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes076-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes076-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes076-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//child::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes076-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "37") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes077-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes077-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes077-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes077-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes077-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes077-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "12") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes078-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes078-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes078-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes078-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes078-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes078-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes078-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//south)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeStack', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes078-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "8") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes079-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes079-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes079-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes079-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes079-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes079-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes079-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes079-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "37") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes080-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes080-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes080-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes080-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes080-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//attribute::*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes080-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes081-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//attribute::center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes081-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes081-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//attribute::center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes081-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes081-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//attribute::center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes081-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes081-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//attribute::center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes081-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes082-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//attribute::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes082-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes082-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//attribute::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes082-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes082-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//attribute::node())",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes082-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes083-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes083-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes083-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes083-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes083-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//west//@*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes083-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes084-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//@center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes084-1.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes084-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//@center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Child', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes084-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes084-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//@center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeCompass', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes084-3.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes084-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//center//@center-attr-2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeRepeat', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes084-4.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes084-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(//text()[normalize-space()])",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes084-5.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "827") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes085'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<root> {//Customers} </root>",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes085.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<root><Customers CustomerID=\"ALFKI\">\n"
                "		<CompanyName>Alfreds Futterkiste</CompanyName>\n"
                "		<ContactName>Maria Anders</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>030-0074321</Phone>\n"
                "		<Fax>030-0076545</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Obere Str. 57</Address>\n"
                "			<City>Berlin</City>\n"
                "			<PostalCode>12209</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"ANATR\">\n"
                "		<CompanyName>Ana Trujillo Emparedados y helados</CompanyName>\n"
                "		<ContactName>Ana Trujillo</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(5) 555-4729</Phone>\n"
                "		<Fax>(5) 555-3745</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Avda. de la Constituci&#243;n 2222</Address>\n"
                "			<City>M&#233;xico D.F.</City>\n"
                "			<PostalCode>05021</PostalCode>\n"
                "			<Country>Mexico</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"ANTON\">\n"
                "		<CompanyName>Antonio Moreno Taquer&#237;a</CompanyName>\n"
                "		<ContactName>Antonio Moreno</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(5) 555-3932</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Mataderos  2312</Address>\n"
                "			<City>M&#233;xico D.F.</City>\n"
                "			<PostalCode>05023</PostalCode>\n"
                "			<Country>Mexico</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"AROUT\">\n"
                "		<CompanyName>Around the Horn</CompanyName>\n"
                "		<ContactName>Thomas Hardy</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(171) 555-7788</Phone>\n"
                "		<Fax>(171) 555-6750</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>120 Hanover Sq.</Address>\n"
                "			<City>London</City>\n"
                "			<PostalCode>WA1 1DP</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BERGS\">\n"
                "		<CompanyName>Berglunds snabbk&#246;p</CompanyName>\n"
                "		<ContactName>Christina Berglund</ContactName>\n"
                "		<ContactTitle>Order Administrator</ContactTitle>\n"
                "		<Phone>0921-12 34 65</Phone>\n"
                "		<Fax>0921-12 34 67</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Berguvsv&#228;gen  8</Address>\n"
                "			<City>Lule&#229;</City>\n"
                "			<PostalCode>S-958 22</PostalCode>\n"
                "			<Country>Sweden</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BLAUS\">\n"
                "		<CompanyName>Blauer See Delikatessen</CompanyName>\n"
                "		<ContactName>Hanna Moos</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>0621-08460</Phone>\n"
                "		<Fax>0621-08924</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Forsterstr. 57</Address>\n"
                "			<City>Mannheim</City>\n"
                "			<PostalCode>68306</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BLONP\">\n"
                "		<CompanyName>Blondesddsl p&#232;re et fils</CompanyName>\n"
                "		<ContactName>Fr&#233;d&#233;rique Citeaux</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>88.60.15.31</Phone>\n"
                "		<Fax>88.60.15.32</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>24, place Kl&#233;ber</Address>\n"
                "			<City>Strasbourg</City>\n"
                "			<PostalCode>67000</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BOLID\">\n"
                "		<CompanyName>B&#243;lido Comidas preparadas</CompanyName>\n"
                "		<ContactName>Mart&#237;n Sommer</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(91) 555 22 82</Phone>\n"
                "		<Fax>(91) 555 91 99</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>C/ Araquil, 67</Address>\n"
                "			<City>Madrid</City>\n"
                "			<PostalCode>28023</PostalCode>\n"
                "			<Country>Spain</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BONAP\">\n"
                "		<CompanyName>Bon app'</CompanyName>\n"
                "		<ContactName>Laurence Lebihan</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>91.24.45.40</Phone>\n"
                "		<Fax>91.24.45.41</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>12, rue des Bouchers</Address>\n"
                "			<City>Marseille</City>\n"
                "			<PostalCode>13008</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BOTTM\">\n"
                "		<CompanyName>Bottom-Dollar Markets</CompanyName>\n"
                "		<ContactName>Elizabeth Lincoln</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(604) 555-4729</Phone>\n"
                "		<Fax>(604) 555-3745</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>23 Tsawassen Blvd.</Address>\n"
                "			<City>Tsawassen</City>\n"
                "			<Region>BC</Region>\n"
                "			<PostalCode>T2F 8M4</PostalCode>\n"
                "			<Country>Canada</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"BSBEV\">\n"
                "		<CompanyName>B's Beverages</CompanyName>\n"
                "		<ContactName>Victoria Ashworth</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(171) 555-1212</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Fauntleroy Circus</Address>\n"
                "			<City>London</City>\n"
                "			<PostalCode>EC2 5NT</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"CACTU\">\n"
                "		<CompanyName>Cactus Comidas para llevar</CompanyName>\n"
                "		<ContactName>Patricio Simpson</ContactName>\n"
                "		<ContactTitle>Sales Agent</ContactTitle>\n"
                "		<Phone>(1) 135-5555</Phone>\n"
                "		<Fax>(1) 135-4892</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Cerrito 333</Address>\n"
                "			<City>Buenos Aires</City>\n"
                "			<PostalCode>1010</PostalCode>\n"
                "			<Country>Argentina</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"CENTC\">\n"
                "		<CompanyName>Centro comercial Moctezuma</CompanyName>\n"
                "		<ContactName>Francisco Chang</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(5) 555-3392</Phone>\n"
                "		<Fax>(5) 555-7293</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Sierras de Granada 9993</Address>\n"
                "			<City>M&#233;xico D.F.</City>\n"
                "			<PostalCode>05022</PostalCode>\n"
                "			<Country>Mexico</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"CHOPS\">\n"
                "		<CompanyName>Chop-suey Chinese</CompanyName>\n"
                "		<ContactName>Yang Wang</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>0452-076545</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Hauptstr. 29</Address>\n"
                "			<City>Bern</City>\n"
                "			<PostalCode>3012</PostalCode>\n"
                "			<Country>Switzerland</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"COMMI\">\n"
                "		<CompanyName>Com&#233;rcio Mineiro</CompanyName>\n"
                "		<ContactName>Pedro Afonso</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>(11) 555-7647</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Av. dos Lus&#237;adas, 23</Address>\n"
                "			<City>Sao Paulo</City>\n"
                "			<Region>SP</Region>\n"
                "			<PostalCode>05432-043</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"CONSH\">\n"
                "		<CompanyName>Consolidated Holdings</CompanyName>\n"
                "		<ContactName>Elizabeth Brown</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(171) 555-2282</Phone>\n"
                "		<Fax>(171) 555-9199</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Berkeley Gardens 12  Brewery</Address>\n"
                "			<City>London</City>\n"
                "			<PostalCode>WX1 6LT</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"DRACD\">\n"
                "		<CompanyName>Drachenblut Delikatessen</CompanyName>\n"
                "		<ContactName>Sven Ottlieb</ContactName>\n"
                "		<ContactTitle>Order Administrator</ContactTitle>\n"
                "		<Phone>0241-039123</Phone>\n"
                "		<Fax>0241-059428</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Walserweg 21</Address>\n"
                "			<City>Aachen</City>\n"
                "			<PostalCode>52066</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"DUMON\">\n"
                "		<CompanyName>Du monde entier</CompanyName>\n"
                "		<ContactName>Janine Labrune</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>40.67.88.88</Phone>\n"
                "		<Fax>40.67.89.89</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>67, rue des Cinquante Otages</Address>\n"
                "			<City>Nantes</City>\n"
                "			<PostalCode>44000</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"EASTC\">\n"
                "		<CompanyName>Eastern Connection</CompanyName>\n"
                "		<ContactName>Ann Devon</ContactName>\n"
                "		<ContactTitle>Sales Agent</ContactTitle>\n"
                "		<Phone>(171) 555-0297</Phone>\n"
                "		<Fax>(171) 555-3373</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>35 King George</Address>\n"
                "			<City>London</City>\n"
                "			<PostalCode>WX3 6FW</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"ERNSH\">\n"
                "		<CompanyName>Ernst Handel</CompanyName>\n"
                "		<ContactName>Roland Mendel</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>7675-3425</Phone>\n"
                "		<Fax>7675-3426</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Kirchgasse 6</Address>\n"
                "			<City>Graz</City>\n"
                "			<PostalCode>8010</PostalCode>\n"
                "			<Country>Austria</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FAMIA\">\n"
                "		<CompanyName>Familia Arquibaldo</CompanyName>\n"
                "		<ContactName>Aria Cruz</ContactName>\n"
                "		<ContactTitle>Marketing Assistant</ContactTitle>\n"
                "		<Phone>(11) 555-9857</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Rua Or&#243;s, 92</Address>\n"
                "			<City>Sao Paulo</City>\n"
                "			<Region>SP</Region>\n"
                "			<PostalCode>05442-030</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FISSA\">\n"
                "		<CompanyName>FISSA Fabrica Inter. Salchichas S.A.</CompanyName>\n"
                "		<ContactName>Diego Roel</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(91) 555 94 44</Phone>\n"
                "		<Fax>(91) 555 55 93</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>C/ Moralzarzal, 86</Address>\n"
                "			<City>Madrid</City>\n"
                "			<PostalCode>28034</PostalCode>\n"
                "			<Country>Spain</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FOLIG\">\n"
                "		<CompanyName>Folies gourmandes</CompanyName>\n"
                "		<ContactName>Martine Ranc&#233;</ContactName>\n"
                "		<ContactTitle>Assistant Sales Agent</ContactTitle>\n"
                "		<Phone>20.16.10.16</Phone>\n"
                "		<Fax>20.16.10.17</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>184, chauss&#233;e de Tournai</Address>\n"
                "			<City>Lille</City>\n"
                "			<PostalCode>59000</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FOLKO\">\n"
                "		<CompanyName>Folk och f&#228; HB</CompanyName>\n"
                "		<ContactName>Maria Larsson</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>0695-34 67 21</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>&#197;kergatan 24</Address>\n"
                "			<City>Br&#228;cke</City>\n"
                "			<PostalCode>S-844 67</PostalCode>\n"
                "			<Country>Sweden</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FRANK\">\n"
                "		<CompanyName>Frankenversand</CompanyName>\n"
                "		<ContactName>Peter Franken</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>089-0877310</Phone>\n"
                "		<Fax>089-0877451</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Berliner Platz 43</Address>\n"
                "			<City>M&#252;nchen</City>\n"
                "			<PostalCode>80805</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FRANR\">\n"
                "		<CompanyName>France restauration</CompanyName>\n"
                "		<ContactName>Carine Schmitt</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>40.32.21.21</Phone>\n"
                "		<Fax>40.32.21.20</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>54, rue Royale</Address>\n"
                "			<City>Nantes</City>\n"
                "			<PostalCode>44000</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FRANS\">\n"
                "		<CompanyName>Franchi S.p.A.</CompanyName>\n"
                "		<ContactName>Paolo Accorti</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>011-4988260</Phone>\n"
                "		<Fax>011-4988261</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Via Monte Bianco 34</Address>\n"
                "			<City>Torino</City>\n"
                "			<PostalCode>10100</PostalCode>\n"
                "			<Country>Italy</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"FURIB\">\n"
                "		<CompanyName>Furia Bacalhau e Frutos do Mar</CompanyName>\n"
                "		<ContactName>Lino Rodriguez</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>(1) 354-2534</Phone>\n"
                "		<Fax>(1) 354-2535</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Jardim das rosas n. 32</Address>\n"
                "			<City>Lisboa</City>\n"
                "			<PostalCode>1675</PostalCode>\n"
                "			<Country>Portugal</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"GALED\">\n"
                "		<CompanyName>Galer&#237;a del gastr&#243;nomo</CompanyName>\n"
                "		<ContactName>Eduardo Saavedra</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(93) 203 4560</Phone>\n"
                "		<Fax>(93) 203 4561</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Rambla de Catalu&#241;a, 23</Address>\n"
                "			<City>Barcelona</City>\n"
                "			<PostalCode>08022</PostalCode>\n"
                "			<Country>Spain</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"GODOS\">\n"
                "		<CompanyName>Godos Cocina T&#237;pica</CompanyName>\n"
                "		<ContactName>Jos&#233; Pedro Freyre</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>(95) 555 82 82</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>C/ Romero, 33</Address>\n"
                "			<City>Sevilla</City>\n"
                "			<PostalCode>41101</PostalCode>\n"
                "			<Country>Spain</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"GOURL\">\n"
                "		<CompanyName>Gourmet Lanchonetes</CompanyName>\n"
                "		<ContactName>Andr&#233; Fonseca</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>(11) 555-9482</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Av. Brasil, 442</Address>\n"
                "			<City>Campinas</City>\n"
                "			<Region>SP</Region>\n"
                "			<PostalCode>04876-786</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"GREAL\">\n"
                "		<CompanyName>Great Lakes Food Market</CompanyName>\n"
                "		<ContactName>Howard Snyder</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(503) 555-7555</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>2732 Baker Blvd.</Address>\n"
                "			<City>Eugene</City>\n"
                "			<Region>OR</Region>\n"
                "			<PostalCode>97403</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"GROSR\">\n"
                "		<CompanyName>GROSELLA-Restaurante</CompanyName>\n"
                "		<ContactName>Manuel Pereira</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(2) 283-2951</Phone>\n"
                "		<Fax>(2) 283-3397</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>5&#170; Ave. Los Palos Grandes</Address>\n"
                "			<City>Caracas</City>\n"
                "			<Region>DF</Region>\n"
                "			<PostalCode>1081</PostalCode>\n"
                "			<Country>Venezuela</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"HANAR\">\n"
                "		<CompanyName>Hanari Carnes</CompanyName>\n"
                "		<ContactName>Mario Pontes</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(21) 555-0091</Phone>\n"
                "		<Fax>(21) 555-8765</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Rua do Pa&#231;o, 67</Address>\n"
                "			<City>Rio de Janeiro</City>\n"
                "			<Region>RJ</Region>\n"
                "			<PostalCode>05454-876</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"HILAA\">\n"
                "		<CompanyName>HILARION-Abastos</CompanyName>\n"
                "		<ContactName>Carlos Hern&#225;ndez</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(5) 555-1340</Phone>\n"
                "		<Fax>(5) 555-1948</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Carrera 22 con Ave. Carlos Soublette #8-35</Address>\n"
                "			<City>San Crist&#243;bal</City>\n"
                "			<Region>T&#225;chira</Region>\n"
                "			<PostalCode>5022</PostalCode>\n"
                "			<Country>Venezuela</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"HUNGC\">\n"
                "		<CompanyName>Hungry Coyote Import Store</CompanyName>\n"
                "		<ContactName>Yoshi Latimer</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(503) 555-6874</Phone>\n"
                "		<Fax>(503) 555-2376</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>City Center Plaza 516 Main St.</Address>\n"
                "			<City>Elgin</City>\n"
                "			<Region>OR</Region>\n"
                "			<PostalCode>97827</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"HUNGO\">\n"
                "		<CompanyName>Hungry Owl All-Night Grocers</CompanyName>\n"
                "		<ContactName>Patricia McKenna</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>2967 542</Phone>\n"
                "		<Fax>2967 3333</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>8 Johnstown Road</Address>\n"
                "			<City>Cork</City>\n"
                "			<Region>Co. Cork</Region>\n"
                "			<Country>Ireland</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"ISLAT\">\n"
                "		<CompanyName>Island Trading</CompanyName>\n"
                "		<ContactName>Helen Bennett</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(198) 555-8888</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Garden House Crowther Way</Address>\n"
                "			<City>Cowes</City>\n"
                "			<Region>Isle of Wight</Region>\n"
                "			<PostalCode>PO31 7PJ</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"KOENE\">\n"
                "		<CompanyName>K&#246;niglich Essen</CompanyName>\n"
                "		<ContactName>Philip Cramer</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>0555-09876</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Maubelstr. 90</Address>\n"
                "			<City>Brandenburg</City>\n"
                "			<PostalCode>14776</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LACOR\">\n"
                "		<CompanyName>La corne d'abondance</CompanyName>\n"
                "		<ContactName>Daniel Tonini</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>30.59.84.10</Phone>\n"
                "		<Fax>30.59.85.11</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>67, avenue de l'Europe</Address>\n"
                "			<City>Versailles</City>\n"
                "			<PostalCode>78000</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LAMAI\">\n"
                "		<CompanyName>La maison d'Asie</CompanyName>\n"
                "		<ContactName>Annette Roulet</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>61.77.61.10</Phone>\n"
                "		<Fax>61.77.61.11</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>1 rue Alsace-Lorraine</Address>\n"
                "			<City>Toulouse</City>\n"
                "			<PostalCode>31000</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LAUGB\">\n"
                "		<CompanyName>Laughing Bacchus Wine Cellars</CompanyName>\n"
                "		<ContactName>Yoshi Tannamuri</ContactName>\n"
                "		<ContactTitle>Marketing Assistant</ContactTitle>\n"
                "		<Phone>(604) 555-3392</Phone>\n"
                "		<Fax>(604) 555-7293</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>1900 Oak St.</Address>\n"
                "			<City>Vancouver</City>\n"
                "			<Region>BC</Region>\n"
                "			<PostalCode>V3F 2K1</PostalCode>\n"
                "			<Country>Canada</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LAZYK\">\n"
                "		<CompanyName>Lazy K Kountry Store</CompanyName>\n"
                "		<ContactName>John Steel</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(509) 555-7969</Phone>\n"
                "		<Fax>(509) 555-6221</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>12 Orchestra Terrace</Address>\n"
                "			<City>Walla Walla</City>\n"
                "			<Region>WA</Region>\n"
                "			<PostalCode>99362</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LEHMS\">\n"
                "		<CompanyName>Lehmanns Marktstand</CompanyName>\n"
                "		<ContactName>Renate Messner</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>069-0245984</Phone>\n"
                "		<Fax>069-0245874</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Magazinweg 7</Address>\n"
                "			<City>Frankfurt a.M.</City>\n"
                "			<PostalCode>60528</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LETSS\">\n"
                "		<CompanyName>Let's Stop N Shop</CompanyName>\n"
                "		<ContactName>Jaime Yorres</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(415) 555-5938</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>87 Polk St. Suite 5</Address>\n"
                "			<City>San Francisco</City>\n"
                "			<Region>CA</Region>\n"
                "			<PostalCode>94117</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LILAS\">\n"
                "		<CompanyName>LILA-Supermercado</CompanyName>\n"
                "		<ContactName>Carlos Gonz&#225;lez</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(9) 331-6954</Phone>\n"
                "		<Fax>(9) 331-7256</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Carrera 52 con Ave. Bol&#237;var #65-98 Llano Largo</Address>\n"
                "			<City>Barquisimeto</City>\n"
                "			<Region>Lara</Region>\n"
                "			<PostalCode>3508</PostalCode>\n"
                "			<Country>Venezuela</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LINOD\">\n"
                "		<CompanyName>LINO-Delicateses</CompanyName>\n"
                "		<ContactName>Felipe Izquierdo</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(8) 34-56-12</Phone>\n"
                "		<Fax>(8) 34-93-93</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Ave. 5 de Mayo Porlamar</Address>\n"
                "			<City>I. de Margarita</City>\n"
                "			<Region>Nueva Esparta</Region>\n"
                "			<PostalCode>4980</PostalCode>\n"
                "			<Country>Venezuela</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"LONEP\">\n"
                "		<CompanyName>Lonesome Pine Restaurant</CompanyName>\n"
                "		<ContactName>Fran Wilson</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>(503) 555-9573</Phone>\n"
                "		<Fax>(503) 555-9646</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>89 Chiaroscuro Rd.</Address>\n"
                "			<City>Portland</City>\n"
                "			<Region>OR</Region>\n"
                "			<PostalCode>97219</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"MAGAA\">\n"
                "		<CompanyName>Magazzini Alimentari Riuniti</CompanyName>\n"
                "		<ContactName>Giovanni Rovelli</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>035-640230</Phone>\n"
                "		<Fax>035-640231</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Via Ludovico il Moro 22</Address>\n"
                "			<City>Bergamo</City>\n"
                "			<PostalCode>24100</PostalCode>\n"
                "			<Country>Italy</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"MAISD\">\n"
                "		<CompanyName>Maison Dewey</CompanyName>\n"
                "		<ContactName>Catherine Dewey</ContactName>\n"
                "		<ContactTitle>Sales Agent</ContactTitle>\n"
                "		<Phone>(02) 201 24 67</Phone>\n"
                "		<Fax>(02) 201 24 68</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Rue Joseph-Bens 532</Address>\n"
                "			<City>Bruxelles</City>\n"
                "			<PostalCode>B-1180</PostalCode>\n"
                "			<Country>Belgium</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"MEREP\">\n"
                "		<CompanyName>M&#232;re Paillarde</CompanyName>\n"
                "		<ContactName>Jean Fresni&#232;re</ContactName>\n"
                "		<ContactTitle>Marketing Assistant</ContactTitle>\n"
                "		<Phone>(514) 555-8054</Phone>\n"
                "		<Fax>(514) 555-8055</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>43 rue St. Laurent</Address>\n"
                "			<City>Montr&#233;al</City>\n"
                "			<Region>Qu&#233;bec</Region>\n"
                "			<PostalCode>H1J 1C3</PostalCode>\n"
                "			<Country>Canada</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"MORGK\">\n"
                "		<CompanyName>Morgenstern Gesundkost</CompanyName>\n"
                "		<ContactName>Alexander Feuer</ContactName>\n"
                "		<ContactTitle>Marketing Assistant</ContactTitle>\n"
                "		<Phone>0342-023176</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Heerstr. 22</Address>\n"
                "			<City>Leipzig</City>\n"
                "			<PostalCode>04179</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"NORTS\">\n"
                "		<CompanyName>North/South</CompanyName>\n"
                "		<ContactName>Simon Crowther</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>(171) 555-7733</Phone>\n"
                "		<Fax>(171) 555-2530</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>South House 300 Queensbridge</Address>\n"
                "			<City>London</City>\n"
                "			<PostalCode>SW7 1RZ</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"OCEAN\">\n"
                "		<CompanyName>Oc&#233;ano Atl&#225;ntico Ltda.</CompanyName>\n"
                "		<ContactName>Yvonne Moncada</ContactName>\n"
                "		<ContactTitle>Sales Agent</ContactTitle>\n"
                "		<Phone>(1) 135-5333</Phone>\n"
                "		<Fax>(1) 135-5535</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Ing. Gustavo Moncada 8585 Piso 20-A</Address>\n"
                "			<City>Buenos Aires</City>\n"
                "			<PostalCode>1010</PostalCode>\n"
                "			<Country>Argentina</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"OLDWO\">\n"
                "		<CompanyName>Old World Delicatessen</CompanyName>\n"
                "		<ContactName>Rene Phillips</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(907) 555-7584</Phone>\n"
                "		<Fax>(907) 555-2880</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>2743 Bering St.</Address>\n"
                "			<City>Anchorage</City>\n"
                "			<Region>AK</Region>\n"
                "			<PostalCode>99508</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"OTTIK\">\n"
                "		<CompanyName>Ottilies K&#228;seladen</CompanyName>\n"
                "		<ContactName>Henriette Pfalzheim</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>0221-0644327</Phone>\n"
                "		<Fax>0221-0765721</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Mehrheimerstr. 369</Address>\n"
                "			<City>K&#246;ln</City>\n"
                "			<PostalCode>50739</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"PARIS\">\n"
                "		<CompanyName>Paris sp&#233;cialit&#233;s</CompanyName>\n"
                "		<ContactName>Marie Bertrand</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(1) 42.34.22.66</Phone>\n"
                "		<Fax>(1) 42.34.22.77</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>265, boulevard Charonne</Address>\n"
                "			<City>Paris</City>\n"
                "			<PostalCode>75012</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"PERIC\">\n"
                "		<CompanyName>Pericles Comidas cl&#225;sicas</CompanyName>\n"
                "		<ContactName>Guillermo Fern&#225;ndez</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(5) 552-3745</Phone>\n"
                "		<Fax>(5) 545-3745</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Calle Dr. Jorge Cash 321</Address>\n"
                "			<City>M&#233;xico D.F.</City>\n"
                "			<PostalCode>05033</PostalCode>\n"
                "			<Country>Mexico</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"PICCO\">\n"
                "		<CompanyName>Piccolo und mehr</CompanyName>\n"
                "		<ContactName>Georg Pipps</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>6562-9722</Phone>\n"
                "		<Fax>6562-9723</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Geislweg 14</Address>\n"
                "			<City>Salzburg</City>\n"
                "			<PostalCode>5020</PostalCode>\n"
                "			<Country>Austria</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"PRINI\">\n"
                "		<CompanyName>Princesa Isabel Vinhos</CompanyName>\n"
                "		<ContactName>Isabel de Castro</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(1) 356-5634</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Estrada da sa&#250;de n. 58</Address>\n"
                "			<City>Lisboa</City>\n"
                "			<PostalCode>1756</PostalCode>\n"
                "			<Country>Portugal</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"QUEDE\">\n"
                "		<CompanyName>Que Del&#237;cia</CompanyName>\n"
                "		<ContactName>Bernardo Batista</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(21) 555-4252</Phone>\n"
                "		<Fax>(21) 555-4545</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Rua da Panificadora, 12</Address>\n"
                "			<City>Rio de Janeiro</City>\n"
                "			<Region>RJ</Region>\n"
                "			<PostalCode>02389-673</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"QUEEN\">\n"
                "		<CompanyName>Queen Cozinha</CompanyName>\n"
                "		<ContactName>L&#250;cia Carvalho</ContactName>\n"
                "		<ContactTitle>Marketing Assistant</ContactTitle>\n"
                "		<Phone>(11) 555-1189</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Alameda dos Can&#224;rios, 891</Address>\n"
                "			<City>Sao Paulo</City>\n"
                "			<Region>SP</Region>\n"
                "			<PostalCode>05487-020</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"QUICK\">\n"
                "		<CompanyName>QUICK-Stop</CompanyName>\n"
                "		<ContactName>Horst Kloss</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>0372-035188</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Taucherstra&#223;e 10</Address>\n"
                "			<City>Cunewalde</City>\n"
                "			<PostalCode>01307</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"RANCH\">\n"
                "		<CompanyName>Rancho grande</CompanyName>\n"
                "		<ContactName>Sergio Guti&#233;rrez</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(1) 123-5555</Phone>\n"
                "		<Fax>(1) 123-5556</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Av. del Libertador 900</Address>\n"
                "			<City>Buenos Aires</City>\n"
                "			<PostalCode>1010</PostalCode>\n"
                "			<Country>Argentina</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"RATTC\">\n"
                "		<CompanyName>Rattlesnake Canyon Grocery</CompanyName>\n"
                "		<ContactName>Paula Wilson</ContactName>\n"
                "		<ContactTitle>Assistant Sales Representative</ContactTitle>\n"
                "		<Phone>(505) 555-5939</Phone>\n"
                "		<Fax>(505) 555-3620</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>2817 Milton Dr.</Address>\n"
                "			<City>Albuquerque</City>\n"
                "			<Region>NM</Region>\n"
                "			<PostalCode>87110</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"REGGC\">\n"
                "		<CompanyName>Reggiani Caseifici</CompanyName>\n"
                "		<ContactName>Maurizio Moroni</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>0522-556721</Phone>\n"
                "		<Fax>0522-556722</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Strada Provinciale 124</Address>\n"
                "			<City>Reggio Emilia</City>\n"
                "			<PostalCode>42100</PostalCode>\n"
                "			<Country>Italy</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"RICAR\">\n"
                "		<CompanyName>Ricardo Adocicados</CompanyName>\n"
                "		<ContactName>Janete Limeira</ContactName>\n"
                "		<ContactTitle>Assistant Sales Agent</ContactTitle>\n"
                "		<Phone>(21) 555-3412</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Av. Copacabana, 267</Address>\n"
                "			<City>Rio de Janeiro</City>\n"
                "			<Region>RJ</Region>\n"
                "			<PostalCode>02389-890</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"RICSU\">\n"
                "		<CompanyName>Richter Supermarkt</CompanyName>\n"
                "		<ContactName>Michael Holz</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>0897-034214</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Grenzacherweg 237</Address>\n"
                "			<City>Gen&#232;ve</City>\n"
                "			<PostalCode>1203</PostalCode>\n"
                "			<Country>Switzerland</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"ROMEY\">\n"
                "		<CompanyName>Romero y tomillo</CompanyName>\n"
                "		<ContactName>Alejandra Camino</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(91) 745 6200</Phone>\n"
                "		<Fax>(91) 745 6210</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Gran V&#237;a, 1</Address>\n"
                "			<City>Madrid</City>\n"
                "			<PostalCode>28001</PostalCode>\n"
                "			<Country>Spain</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SANTG\">\n"
                "		<CompanyName>Sant&#233; Gourmet</CompanyName>\n"
                "		<ContactName>Jonas Bergulfsen</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>07-98 92 35</Phone>\n"
                "		<Fax>07-98 92 47</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Erling Skakkes gate 78</Address>\n"
                "			<City>Stavern</City>\n"
                "			<PostalCode>4110</PostalCode>\n"
                "			<Country>Norway</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SAVEA\">\n"
                "		<CompanyName>Save-a-lot Markets</CompanyName>\n"
                "		<ContactName>Jose Pavarotti</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(208) 555-8097</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>187 Suffolk Ln.</Address>\n"
                "			<City>Boise</City>\n"
                "			<Region>ID</Region>\n"
                "			<PostalCode>83720</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SEVES\">\n"
                "		<CompanyName>Seven Seas Imports</CompanyName>\n"
                "		<ContactName>Hari Kumar</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>(171) 555-1717</Phone>\n"
                "		<Fax>(171) 555-5646</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>90 Wadhurst Rd.</Address>\n"
                "			<City>London</City>\n"
                "			<PostalCode>OX15 4NB</PostalCode>\n"
                "			<Country>UK</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SIMOB\">\n"
                "		<CompanyName>Simons bistro</CompanyName>\n"
                "		<ContactName>Jytte Petersen</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>31 12 34 56</Phone>\n"
                "		<Fax>31 13 35 57</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Vinb&#230;ltet 34</Address>\n"
                "			<City>Kobenhavn</City>\n"
                "			<PostalCode>1734</PostalCode>\n"
                "			<Country>Denmark</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SPECD\">\n"
                "		<CompanyName>Sp&#233;cialit&#233;s du monde</CompanyName>\n"
                "		<ContactName>Dominique Perrier</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(1) 47.55.60.10</Phone>\n"
                "		<Fax>(1) 47.55.60.20</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>25, rue Lauriston</Address>\n"
                "			<City>Paris</City>\n"
                "			<PostalCode>75016</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SPLIR\">\n"
                "		<CompanyName>Split Rail Beer &amp; Ale</CompanyName>\n"
                "		<ContactName>Art Braunschweiger</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>(307) 555-4680</Phone>\n"
                "		<Fax>(307) 555-6525</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>P.O. Box 555</Address>\n"
                "			<City>Lander</City>\n"
                "			<Region>WY</Region>\n"
                "			<PostalCode>82520</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"SUPRD\">\n"
                "		<CompanyName>Supr&#234;mes d&#233;lices</CompanyName>\n"
                "		<ContactName>Pascale Cartrain</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>(071) 23 67 22 20</Phone>\n"
                "		<Fax>(071) 23 67 22 21</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Boulevard Tirou, 255</Address>\n"
                "			<City>Charleroi</City>\n"
                "			<PostalCode>B-6000</PostalCode>\n"
                "			<Country>Belgium</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"THEBI\">\n"
                "		<CompanyName>The Big Cheese</CompanyName>\n"
                "		<ContactName>Liz Nixon</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>(503) 555-3612</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>89 Jefferson Way Suite 2</Address>\n"
                "			<City>Portland</City>\n"
                "			<Region>OR</Region>\n"
                "			<PostalCode>97201</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"THECR\">\n"
                "		<CompanyName>The Cracker Box</CompanyName>\n"
                "		<ContactName>Liu Wong</ContactName>\n"
                "		<ContactTitle>Marketing Assistant</ContactTitle>\n"
                "		<Phone>(406) 555-5834</Phone>\n"
                "		<Fax>(406) 555-8083</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>55 Grizzly Peak Rd.</Address>\n"
                "			<City>Butte</City>\n"
                "			<Region>MT</Region>\n"
                "			<PostalCode>59801</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"TOMSP\">\n"
                "		<CompanyName>Toms Spezialit&#228;ten</CompanyName>\n"
                "		<ContactName>Karin Josephs</ContactName>\n"
                "		<ContactTitle>Marketing Manager</ContactTitle>\n"
                "		<Phone>0251-031259</Phone>\n"
                "		<Fax>0251-035695</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Luisenstr. 48</Address>\n"
                "			<City>M&#252;nster</City>\n"
                "			<PostalCode>44087</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"TORTU\">\n"
                "		<CompanyName>Tortuga Restaurante</CompanyName>\n"
                "		<ContactName>Miguel Angel Paolino</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(5) 555-2933</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Avda. Azteca 123</Address>\n"
                "			<City>M&#233;xico D.F.</City>\n"
                "			<PostalCode>05033</PostalCode>\n"
                "			<Country>Mexico</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"TRADH\">\n"
                "		<CompanyName>Tradi&#231;&#227;o Hipermercados</CompanyName>\n"
                "		<ContactName>Anabela Domingues</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>(11) 555-2167</Phone>\n"
                "		<Fax>(11) 555-2168</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Av. In&#234;s de Castro, 414</Address>\n"
                "			<City>Sao Paulo</City>\n"
                "			<Region>SP</Region>\n"
                "			<PostalCode>05634-030</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"TRAIH\">\n"
                "		<CompanyName>Trail's Head Gourmet Provisioners</CompanyName>\n"
                "		<ContactName>Helvetius Nagy</ContactName>\n"
                "		<ContactTitle>Sales Associate</ContactTitle>\n"
                "		<Phone>(206) 555-8257</Phone>\n"
                "		<Fax>(206) 555-2174</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>722 DaVinci Blvd.</Address>\n"
                "			<City>Kirkland</City>\n"
                "			<Region>WA</Region>\n"
                "			<PostalCode>98034</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"VAFFE\">\n"
                "		<CompanyName>Vaffeljernet</CompanyName>\n"
                "		<ContactName>Palle Ibsen</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>86 21 32 43</Phone>\n"
                "		<Fax>86 22 33 44</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Smagsloget 45</Address>\n"
                "			<City>&#197;rhus</City>\n"
                "			<PostalCode>8200</PostalCode>\n"
                "			<Country>Denmark</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"VICTE\">\n"
                "		<CompanyName>Victuailles en stock</CompanyName>\n"
                "		<ContactName>Mary Saveley</ContactName>\n"
                "		<ContactTitle>Sales Agent</ContactTitle>\n"
                "		<Phone>78.32.54.86</Phone>\n"
                "		<Fax>78.32.54.87</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>2, rue du Commerce</Address>\n"
                "			<City>Lyon</City>\n"
                "			<PostalCode>69004</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"VINET\">\n"
                "		<CompanyName>Vins et alcools Chevalier</CompanyName>\n"
                "		<ContactName>Paul Henriot</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>26.47.15.10</Phone>\n"
                "		<Fax>26.47.15.11</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>59 rue de l'Abbaye</Address>\n"
                "			<City>Reims</City>\n"
                "			<PostalCode>51100</PostalCode>\n"
                "			<Country>France</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"WANDK\">\n"
                "		<CompanyName>Die Wandernde Kuh</CompanyName>\n"
                "		<ContactName>Rita M&#252;ller</ContactName>\n"
                "		<ContactTitle>Sales Representative</ContactTitle>\n"
                "		<Phone>0711-020361</Phone>\n"
                "		<Fax>0711-035428</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Adenauerallee 900</Address>\n"
                "			<City>Stuttgart</City>\n"
                "			<PostalCode>70563</PostalCode>\n"
                "			<Country>Germany</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"WARTH\">\n"
                "		<CompanyName>Wartian Herkku</CompanyName>\n"
                "		<ContactName>Pirkko Koskitalo</ContactName>\n"
                "		<ContactTitle>Accounting Manager</ContactTitle>\n"
                "		<Phone>981-443655</Phone>\n"
                "		<Fax>981-443655</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Torikatu 38</Address>\n"
                "			<City>Oulu</City>\n"
                "			<PostalCode>90110</PostalCode>\n"
                "			<Country>Finland</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"WELLI\">\n"
                "		<CompanyName>Wellington Importadora</CompanyName>\n"
                "		<ContactName>Paula Parente</ContactName>\n"
                "		<ContactTitle>Sales Manager</ContactTitle>\n"
                "		<Phone>(14) 555-8122</Phone>\n"
                "		<FullAddress>\n"
                "			<Address>Rua do Mercado, 12</Address>\n"
                "			<City>Resende</City>\n"
                "			<Region>SP</Region>\n"
                "			<PostalCode>08737-363</PostalCode>\n"
                "			<Country>Brazil</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"WHITC\">\n"
                "		<CompanyName>White Clover Markets</CompanyName>\n"
                "		<ContactName>Karl Jablonski</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(206) 555-4112</Phone>\n"
                "		<Fax>(206) 555-4115</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>305 - 14th Ave. S. Suite 3B</Address>\n"
                "			<City>Seattle</City>\n"
                "			<Region>WA</Region>\n"
                "			<PostalCode>98128</PostalCode>\n"
                "			<Country>USA</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"WILMK\">\n"
                "		<CompanyName>Wilman Kala</CompanyName>\n"
                "		<ContactName>Matti Karttunen</ContactName>\n"
                "		<ContactTitle>Owner/Marketing Assistant</ContactTitle>\n"
                "		<Phone>90-224 8858</Phone>\n"
                "		<Fax>90-224 8858</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>Keskuskatu 45</Address>\n"
                "			<City>Helsinki</City>\n"
                "			<PostalCode>21240</PostalCode>\n"
                "			<Country>Finland</Country>\n"
                "		</FullAddress>\n"
                "	</Customers><Customers CustomerID=\"WOLZA\">\n"
                "		<CompanyName>Wolski  Zajazd</CompanyName>\n"
                "		<ContactName>Zbyszek Piestrzeniewicz</ContactName>\n"
                "		<ContactTitle>Owner</ContactTitle>\n"
                "		<Phone>(26) 642-7012</Phone>\n"
                "		<Fax>(26) 642-7012</Fax>\n"
                "		<FullAddress>\n"
                "			<Address>ul. Filtrowa 68</Address>\n"
                "			<City>Warszawa</City>\n"
                "			<PostalCode>01-012</PostalCode>\n"
                "			<Country>Poland</Country>\n"
                "		</FullAddress>\n"
                "	</Customers></root>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes086'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<root> {//@*/..} </root>",
    {Env, Opts} = xqerl_test:handle_environment(environment('Tree1Text', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes086.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<root><west mark=\"w0\" /><center mark=\"c0\">Text in center</center><east mark=\"e0\">Text in east</east></root>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes087'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<root> {/doc/part/*/text()/..} </root>",
    {Env, Opts} = xqerl_test:handle_environment(environment('xq311B', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes087.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<root><retail>62.50 USD</retail><wholesale>55.00 USD</wholesale><internal>31.25 USD</internal></root>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes088'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/*/",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes088.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes089'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "xquery version \"1.0\";\n"
        "declare namespace saxon=\"http://saxon.sf.net/\";\n"
        "declare namespace tour=\"http://wrox.com/tour\";\n"
        "\n"
        "(:\n"
        "    XQuery program to perform a knight's tour of the chessboard.\n"
        "    Author: Michael H. Kay\n"
        "    Date: 26 June 2003\n"
        "    \n"
        "    This version modified to use XQuery 1.0, with sequences and functions.\n"
        "\n"
        "    This query does not use a source document.\n"
        "    There is an optional parameter, start, which can be set to any square on the\n"
        "    chessboard, e.g. a3 or h5. XQuery does not allow parameters to be given a\n"
        "    default value, so the parameter is mandatory.\n"
        "    \n"
        "    There is a second optional parameter, end, which indicates that the processing should stop\n"
        "    after a given number of steps. This can be used to animate the display of the tour. This\n"
        "    works especially well when the query is compiled into a Java servlet.\n"
        "\n"
        "    The output is an HTML display of the completed tour.\n"
        "\n"
        "    Internally, the following data representations are used:\n"
        "    * A square on the chessboard: represented as a number in the range 0 to 63\n"
        "    * A state of the chessboard: a sequence of 64 integers, each containing a move number. \n"
        "      A square that has not been visited yet is represented by a zero.\n"
        "    * A set of possible moves: represented as a sequence of integers,\n"
        "    * each integer representing the number of the destination square\n"
        "      \n"
        ":)\n"
        "\n"
        "declare variable $start as xs:string := \"a1\";\n"
        "\n"
        "declare variable $end as xs:string := \"64\";\n"
        "declare variable $endd as xs:integer := xs:integer($end); \n"
        "\n"
        "(: start-column is an integer in the range 0-7 :)\n"
        "\n"
        "declare variable $start-column as xs:integer :=\n"
        "    xs:integer(translate(substring($start, 1, 1),\n"
        "            'abcdefgh', '01234567'));\n"
        "\n"
        "(: start-row is an integer in the range 0-7, with zero at the top :)\n"
        "\n"
        "declare variable $start-row as xs:integer :=\n"
        "    8 - xs:integer(substring($start, 2, 1));\n"
        "    \n"
        "declare function tour:main () as element() {\n"
        "\n"
        "    (: This function controls the processing. It does not access the source document. :)\n"
        "\n"
        "    (: Validate the input parameter :)\n"
        "\n"
        "    if (not(string-length($start)=2) or\n"
        "        not(translate(substring($start,1,1), 'abcdefgh', 'aaaaaaaa')='a') or\n"
        "        not(translate(substring($start,2,1), '12345678', '11111111')='1'))\n"
        "    then\n"
        "        error((), \"Invalid start parameter: try say 'a1' or 'g6'\")\n"
        "    else\n"
        "    \n"
        "    if (not($endd = 1 to 64)) \n"
        "    then\n"
        "        error((), \"Invalid end parameter: must be in range 1 to 64\")\n"
        "    else\n"
        "\n"
        "    (: Set up the empty board :)\n"
        "\n"
        "    let $empty-board as xs:integer* := \n"
        "        for $i in (1 to 64) return 0\n"
        "    \n"
        "    (: Place the knight on the board at the chosen starting position :)\n"
        "    \n"
        "    let $initial-board as xs:integer* :=\n"
        "        tour:place-knight(1, $empty-board, $start-row * 8 + $start-column)\n"
        "    \n"
        "    (: Evaluate the knight's tour :)\n"
        "\n"
        "    let $final-board as xs:integer* :=\n"
        "       tour:make-moves(2, $initial-board, $start-row * 8 + $start-column)\n"
        "\n"
        "    (: produce the HTML output :)\n"
        "    \n"
        "    return tour:print-board($final-board)\n"
        "};\n"
        "\n"
        "declare function tour:place-knight (\n"
        "                    $move as xs:integer,\n"
        "                    $board as xs:integer*,\n"
        "                    $square as xs:integer (: range 0 to 63 :)\n"
        "                  ) as xs:integer* {\n"
        "\n"
        "    (: This function places a knight on the board at a given square. The returned value is\n"
        "         the supplied board, modified to indicate that the knight reached a given square at a given\n"
        "         move :)\n"
        "\n"
        "    for $i in 1 to 64 return\n"
        "        if ($i = $square + 1) then $move else $board[$i]\n"
        "\n"
        "};\n"
        "\n"
        "declare function tour:make-moves (\n"
        "                    $move as xs:integer,\n"
        "                    $board as xs:integer*,\n"
        "                    $square as xs:integer (: range 0 to 63 :)\n"
        "                ) as xs:integer* {\n"
        "\n"
        "    (: This function takes the board in a given state, decides on the next move to make,\n"
        "         and then calls itself recursively to make further moves, until the knight has completed\n"
        "         his tour of the board. It returns the board in its final state. :)\n"
        "\n"
        "    (: determine the possible moves that the knight can make :)\n"
        "\n"
        "    let $possible-move-list as xs:integer* := \n"
        "        tour:list-possible-moves($board, $square)\n"
        "\n"
        "    (: try these moves in turn until one is found that works :)\n"
        "\n"
        "    return tour:try-possible-moves($move, $board, $square, $possible-move-list)\n"
        "};\n"
        "\n"
        "declare function tour:try-possible-moves (\n"
        "                    $move as xs:integer,\n"
        "                    $board as xs:integer*,\n"
        "                    $square as xs:integer, (: range 0 to 63 :)\n"
        "                    $possible-moves as xs:integer* )\n"
        "                as xs:integer* {\n"
        "\n"
        "    (:   This function tries a set of possible moves that the knight can make\n"
        "         from a given position. It determines the best move as the one to the square with\n"
        "         fewest exits. If this is unsuccessful then it can backtrack and\n"
        "         try another move; however this turns out rarely to be necessary. \n"
        "         \n"
        "         The function makes the selected move, and then calls make-moves() to make\n"
        "         subsequent moves, returning the final state of the board. :)\n"
        "\n"
        "         if (count($possible-moves)!=0)\n"
        "                then tour:make-best-move($move, $board, $square, $possible-moves)\n"
        "                else ()\n"
        "\n"
        "         (: if there is no possible move, we return the special value () as the final state\n"
        "             of the board, to indicate to the caller that we got stuck :)\n"
        "};\n"
        "\n"
        "declare function tour:make-best-move (\n"
        "                    $move as xs:integer,\n"
        "                    $board as xs:integer*,\n"
        "                    $square as xs:integer, (: range 0 to 63 :)\n"
        "                    $possible-moves as xs:integer* )\n"
        "                as xs:integer* {\n"
        "                \n"
        "    (: this function, given the state of the board and a set of possible moves,\n"
        "       determines which of the moves is the best one. It then makes this move,\n"
        "       and proceeds recursively to make further moves, eventually returning the\n"
        "       final state of the board. :)            \n"
        "        \n"
        "    (:  if at least one move is possible, find the best one :)\n"
        "\n"
        "    let $best-move as xs:integer :=\n"
        "        tour:find-best-move($board, $possible-moves, 9, 999)\n"
        "\n"
        "    (: find the list of possible moves excluding the best one :)\n"
        "\n"
        "    let $other-possible-moves as xs:integer* :=\n"
        "        $possible-moves[. != $best-move]\n"
        "\n"
        "    (: update the board to make the move chosen as the best one :)\n"
        "\n"
        "    let $next-board as xs:integer* :=\n"
        "        tour:place-knight($move, $board, $best-move)\n"
        "    \n"
        "    (: now make further moves using a recursive call, until the board is complete :)\n"
        "\n"
        "    let $final-board as xs:integer* :=\n"
        "        if ($move < $endd) (:count($next-board[.=0])!=0:) \n"
        "                    then tour:make-moves($move+1, $next-board, $best-move)\n"
        "                    else $next-board\n"
        "\n"
        "    (:   if the final board has the special value '()', we got stuck, and have to choose\n"
        "         the next best of the possible moves. This is done by a recursive call. I thought\n"
        "         that the knight never did get stuck, but it does: if the starting square is f1,\n"
        "         the wrong choice is made at move 58, and needs to be reversed. :)\n"
        "\n"
        "    return\n"
        "        if (empty($final-board))\n"
        "        then tour:try-possible-moves($move, $board, $square, $other-possible-moves)\n"
        "        else $final-board\n"
        "        \n"
        "};\n"
        "\n"
        "declare function tour:find-best-move (\n"
        "                    $board as xs:integer*,\n"
        "                    $possible-moves as xs:integer*,\n"
        "                    $fewest-exits as xs:integer,\n"
        "                    $best-so-far as xs:integer )\n"
        "                as xs:integer {\n"
        "\n"
        "    (:  This function finds from among the possible moves, the one with fewest exits.\n"
        "         It calls itself recursively. :)\n"
        "         \n"
        "    (:  split the list of possible moves into the first move and the rest of the moves :)\n"
        "\n"
        "    let $trial-move as xs:integer := \n"
        "        $possible-moves[1]\n"
        "    \n"
        "    let $other-possible-moves as xs:integer* :=\n"
        "        $possible-moves[position() > 1]\n"
        "\n"
        "    (: try making the first move :)\n"
        "\n"
        "    let $trial-board as xs:integer* :=\n"
        "        tour:place-knight(99, $board, $trial-move)\n"
        "\n"
        "    (: see how many moves would be possible the next time :)\n"
        "\n"
        "    let $trial-move-exit-list as xs:integer* :=\n"
        "        tour:list-possible-moves($trial-board, $trial-move)\n"
        "\n"
        "    let $number-of-exits as xs:integer :=\n"
        "        count($trial-move-exit-list)\n"
        "\n"
        "    (:  determine whether this trial move has fewer exits than those considered up till now :)\n"
        "\n"
        "    let $minimum-exits as xs:integer :=\n"
        "        min(($number-of-exits, $fewest-exits))\n"
        "\n"
        "    (:  determine which is the best move (the one with fewest exits) so far :)\n"
        "\n"
        "    let $new-best-so-far as xs:integer :=\n"
        "        if ($number-of-exits < $fewest-exits)\n"
        "            then $trial-move\n"
        "            else $best-so-far  \n"
        "\n"
        "    (:  if there are other possible moves, consider them too, using a recursive call.\n"
        "        Otherwise return the best move found. :)\n"
        "\n"
        "    return\n"
        "        if (count($other-possible-moves)!=0)\n"
        "            then tour:find-best-move($board, $other-possible-moves, \n"
        "                                            $minimum-exits, $new-best-so-far)\n"
        "            else $new-best-so-far\n"
        "\n"
        "};\n"
        "\n"
        "declare function tour:list-possible-moves (\n"
        "                $board as xs:integer*,\n"
        "                $square as xs:integer )\n"
        "            as xs:integer* {\n"
        "\n"
        "    (:   This function, given the knight's position on the board, returns the set of squares\n"
        "         he can move to. The squares will be ones that have not been visited before :)\n"
        "            \n"
        "    let $row as xs:integer := $square idiv 8\n"
        "    let $column as xs:integer := $square mod 8\n"
        "\n"
        "    return\n"
        "        (if ($row > 1 and $column > 0 and $board[($square - 17) + 1]=0)\n"
        "            then $square - 17 else (),\n"
        "         if ($row > 1 and $column < 7 and $board[($square - 15) + 1]=0)\n"
        "            then $square - 15 else (),\n"
        "         if ($row > 0 and $column > 1 and $board[($square - 10) + 1]=0)\n"
        "            then $square - 10 else (),\n"
        "         if ($row > 0 and $column < 6 and $board[($square - 6) + 1]=0)\n"
        "            then $square - 6 else (),\n"
        "         if ($row < 6 and $column > 0 and $board[($square + 15) + 1]=0)\n"
        "            then $square + 15 else (),\n"
        "         if ($row < 6 and $column < 7 and $board[($square + 17) + 1]=0)\n"
        "            then $square + 17 else (),\n"
        "         if ($row < 7 and $column > 1 and $board[($square + 6) + 1]=0)\n"
        "            then $square + 6 else (),\n"
        "         if ($row < 7 and $column < 6 and $board[($square + 10) + 1]=0)\n"
        "            then $square + 10 else () )\n"
        "\n"
        "};\n"
        "\n"
        "declare function tour:print-board (\n"
        "                $board as xs:integer* )\n"
        "            as element()\n"
        "{\n"
        "    (: Output the board in HTML format :)\n"
        "\n"
        "    <html>\n"
        "    <head>\n"
        "        <title>Knight's tour</title>\n"
        "    </head>\n"
        "    <body>\n"
        "    <div align=\"center\">\n"
        "    <h1>Knight's tour starting at {$start}</h1>\n"
        "    <table border=\"1\" cellpadding=\"4\">\n"
        "        {for $row in 0 to 7 return\n"
        "           <tr>\n"
        "              {for $column in 0 to 7\n"
        "                let $color :=\n"
        "                          if ((($row + $column) mod 2)=1)\n"
        "                          then 'xffff44' \n"
        "                          else 'white' return\n"
        "                <td align=\"center\" bgcolor=\"{$color}\" width=\"22\">{\n"
        "                  let $n := $board[$row * 8 + $column + 1]\n"
        "                  return \n"
        "                      if ($endd != 64 and $n = $endd)\n"
        "                      then <b>{$n}</b>\n"
        "                      else if ($n = 0)\n"
        "                      then \"&#xa0;\"\n"
        "                      else $n\n"
        "                }</td>\n"
        "              }\n"
        "           </tr>\n"
        "        }\n"
        "    </table>\n"
        "    <p>{\n"
        "        if ($endd != 64) \n"
        "        then\n"
        "          <a href=\"Tour?start={$start}&amp;end={$endd+1}\">Step</a>\n"
        "        else ()\n"
        "    }</p>    \n"
        "    </div>\n"
        "    </body>\n"
        "    </html>\n"
        "};\n"
        "\n"
        "tour:main()\n"
        "\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes089.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<html><head><title>Knight's tour</title></head><body><div align=\"center\"><h1>Knight's tour starting at a1</h1><table border=\"1\" cellpadding=\"4\"><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">36</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">19</td><td width=\"22\" align=\"center\" bgcolor=\"white\">22</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">5</td><td width=\"22\" align=\"center\" bgcolor=\"white\">38</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">9</td><td width=\"22\" align=\"center\" bgcolor=\"white\">24</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">7</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">21</td><td width=\"22\" align=\"center\" bgcolor=\"white\">4</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">37</td><td width=\"22\" align=\"center\" bgcolor=\"white\">42</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">23</td><td width=\"22\" align=\"center\" bgcolor=\"white\">6</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">39</td><td width=\"22\" align=\"center\" bgcolor=\"white\">10</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">18</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">35</td><td width=\"22\" align=\"center\" bgcolor=\"white\">20</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">49</td><td width=\"22\" align=\"center\" bgcolor=\"white\">44</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">41</td><td width=\"22\" align=\"center\" bgcolor=\"white\">8</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">25</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">3</td><td width=\"22\" align=\"center\" bgcolor=\"white\">50</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">43</td><td width=\"22\" align=\"center\" bgcolor=\"white\">46</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">55</td><td width=\"22\" align=\"center\" bgcolor=\"white\">62</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">11</td><td width=\"22\" align=\"center\" bgcolor=\"white\">40</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">34</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">17</td><td width=\"22\" align=\"center\" bgcolor=\"white\">54</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">59</td><td width=\"22\" align=\"center\" bgcolor=\"white\">48</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">45</td><td width=\"22\" align=\"center\" bgcolor=\"white\">26</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">63</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">51</td><td width=\"22\" align=\"center\" bgcolor=\"white\">2</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">47</td><td width=\"22\" align=\"center\" bgcolor=\"white\">56</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">61</td><td width=\"22\" align=\"center\" bgcolor=\"white\">58</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">29</td><td width=\"22\" align=\"center\" bgcolor=\"white\">12</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"white\">16</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">33</td><td width=\"22\" align=\"center\" bgcolor=\"white\">60</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">53</td><td width=\"22\" align=\"center\" bgcolor=\"white\">14</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">31</td><td width=\"22\" align=\"center\" bgcolor=\"white\">64</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">27</td></tr><tr><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">1</td><td width=\"22\" align=\"center\" bgcolor=\"white\">52</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">15</td><td width=\"22\" align=\"center\" bgcolor=\"white\">32</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">57</td><td width=\"22\" align=\"center\" bgcolor=\"white\">28</td><td width=\"22\" align=\"center\" bgcolor=\"xffff44\">13</td><td width=\"22\" align=\"center\" bgcolor=\"white\">30</td></tr></table><p/></div></body></html>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes090'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $element as element(foo) := <foo/> return count($element/self::bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes090.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes091'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $element as element(foo) := <foo/> return count($element/self::*:bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes091.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes092'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ns1 = \"http://www.example.org/ns1\"; declare namespace ns2 = \"http://www.example.org/ns2\"; let $element as element(ns1:foo) := <ns1:foo/> return count($element/self::ns2:*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes092.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes093'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $attribute as attribute(foo) := attribute foo { } return count($attribute/self::bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes093.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes094'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $attribute as attribute(foo) := attribute foo { } \n"
        "            return count($attribute/self::*:bar)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes094.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes095'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        declare namespace ns2 = \"http://www.example.org/ns2\"; \n"
        "        let $attribute as attribute(ns1:foo) := attribute ns1:foo { } \n"
        "        return count($attribute/self::ns2:*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes095.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes096'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $element as element(*) := <foo/> return count($element/self::bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes096.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes097'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $element as element(*) := <foo/> return count($element/self::*:bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes097.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes098'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        declare namespace ns2 = \"http://www.example.org/ns2\"; \n"
        "        let $element as element(*) := <ns1:foo/> \n"
        "        return count($element/self::ns2:*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes098.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes099'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $attribute as attribute(*) := attribute foo { } return count($attribute/self::bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes099.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes100'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $attribute as attribute(*) := attribute foo { } return count($attribute/self::*:bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes100.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes101'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        declare namespace ns2 = \"http://www.example.org/ns2\"; \n"
        "        let $attribute as attribute(*) := attribute ns1:foo { } \n"
        "        return count($attribute/self::ns2:*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes101.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes102'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        declare namespace ns2 = \"http://www.example.org/ns2\"; \n"
        "        declare construction strip; \n"
        "        let $element as element(*, xs:untyped) := <e>test</e> \n"
        "        let $element as element(*, xs:untyped) := $element/self::* \n"
        "        return count($element)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes102.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes103'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $comment as comment() := <!--comment--> return count($comment/self::*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes103.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes104'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $comment as comment() := <!--comment--> return count($comment/self::foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes104.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes105'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $comment as comment() := <!--comment--> return count($comment/self::*:foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes105.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes106'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        let $comment as comment() := <!--comment--> \n"
        "        return count($comment/self::ns1:*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes106.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes107'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $processing-instruction as processing-instruction() := <?processing instruction?> \n"
        "        return count($processing-instruction/self::*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes107.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes108'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $processing-instruction as processing-instruction() := <?processing instruction?> \n"
        "        return count($processing-instruction/self::processing)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes108.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes109'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $processing-instruction as processing-instruction() := <?processing instruction?> \n"
        "        return count($processing-instruction/self::*:processing)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes109.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes110'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        let $processing-instruction as processing-instruction() := <?processing instruction?> \n"
        "        return count($processing-instruction/self::ns1:*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes110.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes111'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace ns1 = \"http://www.example.org/ns1\"; \n"
        "        declare namespace ns2 = \"http://www.example.org/ns2\"; declare construction strip; \n"
        "        let $element as element(*, xs:untyped) := <e a=\"value\" /> \n"
        "        let $attribute as attribute(*, xs:untypedAtomic)* := $element/attribute::* \n"
        "        return count($attribute)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes111.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes112'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/*/namespace-node()",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes112.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0134") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0134 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes113'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+, feature:namespace-axis"}.

'Axes114'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+, feature:namespace-axis"}.

'Axes115'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/*/attribute::namespace-node()",
    {Env, Opts} = xqerl_test:handle_environment(environment('TreeTrunc', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes115.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes116'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+, feature:namespace-axis"}.

'Axes117'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "namespace {\"xsl\"}{\"http://www.w3.org/1999/XSL/Transform\"} / self::namespace-node()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Axes117.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "namespace-node()") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_string_value(Res, "http://www.w3.org/1999/XSL/Transform")
                    of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "name($result) = \"xsl\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Axes118'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes119'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes120'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes121'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes122'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes123'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes124'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes125'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes126'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:namespace-axis"}.

'Axes127'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'axis-err-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var := <anElement>Some content</anElement> return $var/20[child::text()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "axis-err-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0020") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var := document{<e><f>f's value</f></e>}; $var/(/)/(/)//f",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<f>f's value</f>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var := <e><f>f's value</f></e>; $var/(/)/(/)//f",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPDY0050") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v := <a><b/><b/><b/></a>; deep-equal($v//45, (45, 45, 45, 45))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v := <a><b/><b/><b/></a>; $v//45",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "45 45 45 45") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*:(:hey:)ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*(:hey:):ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "* :ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*(:hey:):ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "ncname :*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "name(:hey:):*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "* :ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "ncname: *",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*(:hey:):ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "ncname:(:hey:)*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*(:hey:):(:hey:) ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*:(:hey:)ncname",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "*:",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(text {\"some text\"}/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(processing-instruction theName {\"some text\"}/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(attribute theName {\"some text\"}/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(element theName {\"some text\"}/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(comment {\"some text\"}/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<elem/>/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-23.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e>some text</e>/text()/..",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-24.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e>some text</e>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e><b/></e>/b/..",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-25.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e><b/></e>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e attr=\"c\"/>/@attr/..",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-26.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e attr=\"c\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e><?name data?></e>/processing-instruction()/..",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-27.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e><?name data?></e>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e><!--data --></e>/comment()/..",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-28.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e><!--data --></e>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "preceding-or-ancestor::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-29.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(fn:root(<e/>)/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-30.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-31.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar := <e/>; empty(fn:root($myVar/(/)/..))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-32.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0050") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0050 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar := document { <e/>}; empty($myVar/(/)/..)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-33.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "nametest//",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-34.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "nametest/",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-35.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar := <e/>; $myVar/(/)/",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-36.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "parent::self()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-37.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "123[..]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-38.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0020") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1[element()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-39.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0020") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1, <e/>)[..]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-40.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0020") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(<e/>, 1)[..]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-41.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0020") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>[parent::node()])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-42.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1, 5 * /)[1]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-43.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1, /)[1]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-44.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(/, 1)[2]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-45.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "//",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-46.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $myVar := <e/>; empty($myVar/descendant-or-self::text())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-47.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-48'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $myVar := <e/>; $myVar/(<a/>, <b/>, <?d ?>, <!-- e-->, attribute name {}, document {()})/3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-48.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 3 3 3 3 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-49'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $myVar := <e/>; $myVar/(<a/>, <b/>, <?d ?>, <!-- e-->, attribute name {}, document {()})/number()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-49.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN NaN NaN NaN NaN NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-50'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1/3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-50.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-51'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string(<e/>)/3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-51.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-52'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $myVar := <e/>; \n"
        "        empty($myVar/preceding-sibling::comment()/a/b/c/1/@*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-52.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0019") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0020") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-53'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1, 2, 3)[1]/(1, 2)[last()]/\"a string\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-53.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-54'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "namespace::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-54.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-55'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(()/@attr)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-55.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-56'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(()/name)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-56.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-57'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var := <a> <b/> <c/> <d/> </a>; ($var/*, $var/*)/.",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-57.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<b/><c/><d/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-58'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var := <a> <b/> <c/> <d/> </a>; ($var/*, $var/*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-58.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<b/><c/><d/><b/><c/><d/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-59'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $i := <root> <child/> <child/> <child> <child2> <child3> <leaf/> </child3> </child2> </child> </root>; 1, root($i)//leaf/child::node(), 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-59.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_string_value(Res, "1 1") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-60'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<element attr=\"foo\" attr2=\"foo\"/>/*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-60.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-61'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<element attr=\"foo\" attr2=\"foo\"/>/*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-61.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-62'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e> <b attr=\"fo\"/> <b/> </e>/descendant-or-self::node()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-62.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e><b attr=\"fo\"/><b/></e><b attr=\"fo\"/><b/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-63'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1, <b attr=\"fo\"/>/child::node(), 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-63.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-64'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e> <b/> <b a=\"\"/> </e>/b",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-64.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<b/><b a=\"\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-65'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e> <b a=\"\"/> <b/> </e>/b",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-65.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<b a=\"\"/><b/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-66'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e> <!-- comment --> <?PA ?>text<b/> <?PB ?> <b/> <?PC ?> </e>/child::node()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-66.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<!-- comment --><?PA ?>text<b/><?PB ?><b/><?PC ?>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-67'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1, <e/>/descendant::node(), 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-67.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-68'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<out>{1, <e/>/descendant-or-self::node(), 1}</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-68.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>1<e/>1</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-69'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1, <e attr=\"\"/>/descendant::node(), 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-69.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-70'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<out>{1, <e attr=\"\"/>/descendant-or-self::node(), 1}</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-70.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>1<e attr=\"\"/>1</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-71'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/descendant::node())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-71.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-72'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/descendant-or-self::node())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-72.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-73'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e attr=\"\"/>/descendant::node())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-73.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-74'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e attr=\"\"/>/descendant-or-self::node())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-74.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-75'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> <b c=\"\"/> <d/> </a>/descendant-or-self::node()[last()]/ancestor::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-75.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a><b c=\"\"/><d/></a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-76'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> <b c=\"\"/> <d/> </a>/descendant-or-self::node()[last()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-76.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<d/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-77'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "preceeding::node()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-77.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-78'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> <b c=\"\"/> <d/> </a>//node()/../count(.)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-78.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-79'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a> <b c=\"\"/> <d/> </a>//node())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-79.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-80'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a> <b c=\"\"/> <d/> </a>/descendant-or-self::node())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-80.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-81'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> <b id=\"person0\"> <c/> </b> </a>/*[attribute::id eq \"person0\"]/c",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-81.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<c/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-82'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> <b id=\"person0\"> <c/> </b> </a>/*[@id eq \"person0\"]/c",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-82.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<c/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-83'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/attribute::attribute())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-83.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-84'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/attribute::schema-attribute(foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-84.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-85'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/attribute::schema-attribute()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-85.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-86'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $root as document-node() := . treat as document-node();\n"
        "        <out>\n"
        "        <empty> { (: attribute axis, and all other axes that inference can assert might produce attributes. \n"
        "             These are placed first, so we don't raise XQTY0024. :) \n"
        "             $root/foo/child::attribute(foo), \n"
        "             $root//element()/self::attribute(), \n"
        "             $root//text()/self::attribute(), \n"
        "             $root/self::attribute(), \n"
        "             $root/foo/descendant::attribute(foo), \n"
        "             $root//processing-instruction()/self::attribute(), \n"
        "             $root/attribute(foo), $root/attribute(), \n"
        "             $root/attribute::attribute(), \n"
        "             $root//parent::attribute(), \n"
        "             $root//document-node()/self::attribute(), \n"
        "             $root/@*, $root/*/@*[self::*], \n"
        "             $root//comment()/descendant-or-self::attribute(), \n"
        "             $root//processing-instruction()/descendant-or-self::attribute(), \n"
        "             $root//text()/descendant-or-self::attribute(), \n"
        "             $root//document-node()/descendant-or-self::attribute(), \n"
        "             $root//parent::attribute(), \n"
        "             $root//ancestor::attribute(), \n"
        "             $root//ancestor-or-self::attribute(), \n"
        "             $root/self::attribute(), \n"
        "             $root//attribute()/child::node(), \n"
        "             $root//attribute::text(), \n"
        "             $root//attribute::comment(), \n"
        "             $root//attribute::processing-instruction(), \n"
        "             $root//attribute::document-node(), \n"
        "             $root//attribute::document-node(element(foo)),\n"
        "             $root//attribute()/self::text(),\n"
        "             $root//attribute()/self::processing-instruction(), \n"
        "             $root//attribute()/self::element(), \n"
        "             $root//attribute()/self::document-node(), \n"
        "             $root//attribute()/self::comment(), \n"
        "             $root//*/attribute()//node(), \n"
        "             $root//*/attribute()/descendant::node(), \n"
        "             $root//attribute::element(), \n"
        "             $root//comment()/child::node(), \n"
        "             $root//processing-instruction()/child::node(), \n"
        "             $root//text()/child::node(),\n"
        "             $root//attribute()/descendant::node(), \n"
        "             $root//comment()/descendant::node(), \n"
        "             $root//text()/descendant::node(), \n"
        "             $root//processing-instruction()/descendant::node(), \n"
        "             $root//comment()/descendant-or-self::text(), \n"
        "             $root//comment()/descendant-or-self::processing-instruction(), \n"
        "             $root//comment()/descendant-or-self::element(), \n"
        "             $root//comment()/descendant-or-self::document-node(), \n"
        "             $root//processing-instruction()/descendant-or-self::text(), \n"
        "             $root//processing-instruction()/descendant-or-self::comment(), \n"
        "             $root//processing-instruction()/descendant-or-self::element(), \n"
        "             $root//processing-instruction()/descendant-or-self::document-node(), \n"
        "             $root//text()/descendant-or-self::processing-instruction(), \n"
        "             $root//text()/descendant-or-self::comment(), \n"
        "             $root//text()/descendant-or-self::element(), \n"
        "             $root//text()/descendant-or-self::document-node(), \n"
        "             $root//attribute()/descendant-or-self::processing-instruction(), \n"
        "             $root//attribute()/descendant-or-self::text(), \n"
        "             $root//attribute()/descendant-or-self::comment(), \n"
        "             $root//attribute()/descendant-or-self::element(), \n"
        "             $root//attribute()/descendant-or-self::document-node(), \n"
        "             $root/.., $root//parent::comment(), \n"
        "             $root//parent::processing-instruction(), \n"
        "             $root//parent::text(), \n"
        "             $root//ancestor::comment(), \n"
        "             $root//ancestor::processing-instruction(), \n"
        "             $root//ancestor::text(), \n"
        "             $root/self::comment(), \n"
        "             $root/self::processing-instruction(), \n"
        "             $root/self::text(), \n"
        "             $root/self::element(), \n"
        "             $root//element()/self::text(), \n"
        "             $root//element()/self::processing-instruction(), \n"
        "             $root//element()/self::document-node(), \n"
        "             $root//element()/self::comment(), \n"
        "             $root//processing-instruction()/self::text(), \n"
        "             $root//processing-instruction()/self::element(), \n"
        "             $root//processing-instruction()/self::document-node(), \n"
        "             $root//processing-instruction()/self::comment(), \n"
        "             $root//text()/self::processing-instruction(), \n"
        "             $root//text()/self::element(), \n"
        "             $root//text()/self::document-node(), \n"
        "             $root//text()/self::comment(), \n"
        "             $root//document-node()/self::processing-instruction(), \n"
        "             $root//document-node()/self::element(), \n"
        "             $root//document-node()/self::text(), \n"
        "             $root//document-node()/self::comment() } </empty><ex>{exists($root//*/attribute()/descendant-or-self::node())}</ex></out>",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-86.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_xml(Res, "<out><empty/><ex>true</ex></out>") of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-87'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<result> { <e> <a>1</a> <b>2</b> </e>/(b, a)/. } </result>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-87.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result><a>1</a><b>2</b></result>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-88'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $i := <e> <a>1</a> <b>2</b> </e>; <result> { ($i/b, $i/a)/. } </result>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-88.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result><a>1</a><b>2</b></result>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-89'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare default element namespace \"http://typedecl\"; <r> { <e attr=\"foo\"/>/@attr } </r>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-89.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<r xmlns=\"http://typedecl\" attr=\"foo\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-90'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "prefix:",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-90.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-91'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "prefix:",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-91.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-92'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<e/>/(gt gt gt))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-92.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-93'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "< asd />",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-93.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-94'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-94.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPDY0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-95'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "eclare function",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-95.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-96'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function name",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-96.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-97'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:foo() external;",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-97.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-98'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xquery, version, encoding, default, declare, function, option, collation, schema, import",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-98.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPDY0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-99'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function foo() external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-99.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XQST0045") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0045 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-100'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(<a> <b/> <c/> </a>[self::b][last()])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-100.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-101'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<b/>[self::b][last()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-101.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_xml(Res, "<b/>") of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-102'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $a in (/) return \n"
        "        for $b in $a/child::site return \n"
        "        for $c in $b/child::people return \n"
        "        for $d in $c/child::person return \n"
        "            if ((some $id in $d/attribute::id satisfies \n"
        "                    typeswitch ($id)\n"
        "                     case $n as node() return $id = \"person0\"\n"
        "                     default $d return ())) \n"
        "            then $d/child::name \n"
        "            else (), \n"
        "        for $b in /site/people/person where $b/@id=\"person0\" return $b/name, \n"
        "        /site/people/person[@id eq \"person0\"]/name",
    {Env, Opts} = xqerl_test:handle_environment(environment('XMarkAuction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-102.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_xml(
                Res,
                "<name>Seongtaek Mattern</name><name>Seongtaek Mattern</name><name>Seongtaek Mattern</name>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-103'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:isComplexType($typeID) { string($typeID) }; \n"
        "        \"|\", //*/local:isComplexType(@type), \"|\"",
    {Env, Opts} = xqerl_test:handle_environment(environment('CPPGlobals', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-103.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "|       _17 _17  _11c _11c _11 _11  _17c _17c _17 _17   _11   _23  _17 _11c  |"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-104'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a/>/<b>{.}</b>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-104.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<b><a/></b>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Axes-105'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $x := document{<a><b/></a>}, $a := $x/a, $b := $a/b\n"
        "         return <out p=\"{exists($x/self::document-node())}\" \n"
        "                     q=\"{exists($x/document-node())}\" \n"
        "                     r=\"{exists($a/parent::document-node())}\"\n"
        "                     s=\"{exists($b/ancestor::document-node())}\"\n"
        "                     t=\"{exists($b/parent::document-node())}\"\n"
        "                     u=\"{exists($b/preceding::document-node())}\"/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-Axes-105.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "$result/self::out/@p = 'true'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/self::out/@q = 'false'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/self::out/@r = 'true'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/self::out/@s = 'true'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/self::out/@t = 'false'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result/self::out/@u = 'false'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'statictypingaxis-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10)/child::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "statictypingaxis-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'statictypingaxis-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10)/self::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "statictypingaxis-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'statictypingaxis-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10)/attribute::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "statictypingaxis-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'statictypingaxis-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10)/parent::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "statictypingaxis-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'statictypingaxis-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10)/descendant::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "statictypingaxis-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'statictypingaxis-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(10)/descendant-or-self::*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "statictypingaxis-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0019") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-selfAxis-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a> { <a b=\"blah\"/>/@*/self::attribute(b) } </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-selfAxis-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a b=\"blah\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-childAxis-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a b=\"blah\"/>/child::attribute(b))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-childAxis-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-followingAxis-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a><b/><b/></a>/b[1]/following-sibling::*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-followingAxis-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-precedingAxis-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a><b/><b/></a>/b[2]/preceding-sibling::*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-precedingAxis-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-precedingAxis-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a><b/><b/></a>/b[2]/preceding-sibling::b)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-precedingAxis-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-precedingAxis-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(<a><b/><b/></a>/b[1]/preceding-sibling::b)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-precedingAxis-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-except-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      let $x := <a><b/><c/><d/></a> return count(($x/(node() except b) | $x/(node() except b)))\n"
        "   ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-except-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-wild-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace foo=\"test\";\n"
        "        let $x := <a><foo:b/><c/><d/></a> return count($x/foo:* | $x/foo:*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-wild-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-wild-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace foo=\"http://localhost/\";\n"
        "        <a><foo:b/><foo:c/></a>/foo:b/self::foo:*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-wild-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<foo:b xmlns:foo=\"http://localhost/\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-path-nodes-and-atomics'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($x) { if ($x mod 2 = 1) then <a/> else \"a\" };\n"
        "        let $y := for $x in (1 to 10) return <e>{$x}</e> return $y/local:f(.)/a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-path-nodes-and-atomics.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPTY0018") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0018 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0019") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0019 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
