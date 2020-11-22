-module('fn_deep_equal_SUITE').

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

-export(['fn-deep-equalint2args-1'/1]).
-export(['fn-deep-equalint2args-2'/1]).
-export(['fn-deep-equalint2args-3'/1]).
-export(['fn-deep-equalint2args-4'/1]).
-export(['fn-deep-equalint2args-5'/1]).
-export(['fn-deep-equalintg2args-1'/1]).
-export(['fn-deep-equalintg2args-2'/1]).
-export(['fn-deep-equalintg2args-3'/1]).
-export(['fn-deep-equalintg2args-4'/1]).
-export(['fn-deep-equalintg2args-5'/1]).
-export(['fn-deep-equaldec2args-1'/1]).
-export(['fn-deep-equaldec2args-2'/1]).
-export(['fn-deep-equaldec2args-3'/1]).
-export(['fn-deep-equaldec2args-4'/1]).
-export(['fn-deep-equaldec2args-5'/1]).
-export(['fn-deep-equaldbl2args-1'/1]).
-export(['fn-deep-equaldbl2args-2'/1]).
-export(['fn-deep-equaldbl2args-3'/1]).
-export(['fn-deep-equaldbl2args-4'/1]).
-export(['fn-deep-equaldbl2args-5'/1]).
-export(['fn-deep-equalflt2args-1'/1]).
-export(['fn-deep-equalflt2args-2'/1]).
-export(['fn-deep-equalflt2args-3'/1]).
-export(['fn-deep-equalflt2args-4'/1]).
-export(['fn-deep-equalflt2args-5'/1]).
-export(['fn-deep-equallng2args-1'/1]).
-export(['fn-deep-equallng2args-2'/1]).
-export(['fn-deep-equallng2args-3'/1]).
-export(['fn-deep-equallng2args-4'/1]).
-export(['fn-deep-equallng2args-5'/1]).
-export(['fn-deep-equalusht2args-1'/1]).
-export(['fn-deep-equalusht2args-2'/1]).
-export(['fn-deep-equalusht2args-3'/1]).
-export(['fn-deep-equalusht2args-4'/1]).
-export(['fn-deep-equalusht2args-5'/1]).
-export(['fn-deep-equalnint2args-1'/1]).
-export(['fn-deep-equalnint2args-2'/1]).
-export(['fn-deep-equalnint2args-3'/1]).
-export(['fn-deep-equalnint2args-4'/1]).
-export(['fn-deep-equalnint2args-5'/1]).
-export(['fn-deep-equalpint2args-1'/1]).
-export(['fn-deep-equalpint2args-2'/1]).
-export(['fn-deep-equalpint2args-3'/1]).
-export(['fn-deep-equalpint2args-4'/1]).
-export(['fn-deep-equalpint2args-5'/1]).
-export(['fn-deep-equalulng2args-1'/1]).
-export(['fn-deep-equalulng2args-2'/1]).
-export(['fn-deep-equalulng2args-3'/1]).
-export(['fn-deep-equalulng2args-4'/1]).
-export(['fn-deep-equalulng2args-5'/1]).
-export(['fn-deep-equalnpi2args-1'/1]).
-export(['fn-deep-equalnpi2args-2'/1]).
-export(['fn-deep-equalnpi2args-3'/1]).
-export(['fn-deep-equalnpi2args-4'/1]).
-export(['fn-deep-equalnpi2args-5'/1]).
-export(['fn-deep-equalnni2args-1'/1]).
-export(['fn-deep-equalnni2args-2'/1]).
-export(['fn-deep-equalnni2args-3'/1]).
-export(['fn-deep-equalnni2args-4'/1]).
-export(['fn-deep-equalnni2args-5'/1]).
-export(['fn-deep-equalsht2args-1'/1]).
-export(['fn-deep-equalsht2args-2'/1]).
-export(['fn-deep-equalsht2args-3'/1]).
-export(['fn-deep-equalsht2args-4'/1]).
-export(['fn-deep-equalsht2args-5'/1]).
-export(['fn-deep-equal-mix-args-001'/1]).
-export(['fn-deep-equal-mix-args-002'/1]).
-export(['fn-deep-equal-mix-args-003'/1]).
-export(['fn-deep-equal-mix-args-004'/1]).
-export(['fn-deep-equal-mix-args-005'/1]).
-export(['fn-deep-equal-mix-args-006'/1]).
-export(['fn-deep-equal-mix-args-007'/1]).
-export(['fn-deep-equal-mix-args-008'/1]).
-export(['fn-deep-equal-mix-args-009'/1]).
-export(['fn-deep-equal-mix-args-010'/1]).
-export(['fn-deep-equal-mix-args-011'/1]).
-export(['fn-deep-equal-mix-args-012'/1]).
-export(['fn-deep-equal-mix-args-013'/1]).
-export(['fn-deep-equal-mix-args-014'/1]).
-export(['fn-deep-equal-mix-args-015'/1]).
-export(['fn-deep-equal-mix-args-016'/1]).
-export(['fn-deep-equal-mix-args-017'/1]).
-export(['fn-deep-equal-mix-args-018'/1]).
-export(['fn-deep-equal-mix-args-019'/1]).
-export(['fn-deep-equal-mix-args-020'/1]).
-export(['fn-deep-equal-mix-args-021'/1]).
-export(['fn-deep-equal-mix-args-022'/1]).
-export(['fn-deep-equal-mix-args-023'/1]).
-export(['fn-deep-equal-mix-args-024'/1]).
-export(['fn-deep-equal-mix-args-025'/1]).
-export(['fn-deep-equal-mix-args-026'/1]).
-export(['fn-deep-equal-mix-args-027'/1]).
-export(['fn-deep-equal-mix-args-028'/1]).
-export(['fn-deep-equal-mix-args-029'/1]).
-export(['fn-deep-equal-mix-args-030'/1]).
-export(['fn-deep-equal-mix-args-031'/1]).
-export(['fn-deep-equal-node-args-1'/1]).
-export(['fn-deep-equal-node-args-2'/1]).
-export(['fn-deep-equal-arrays-1'/1]).
-export(['fn-deep-equal-arrays-2'/1]).
-export(['fn-deep-equal-arrays-3'/1]).
-export(['fn-deep-equal-arrays-4'/1]).
-export(['fn-deep-equal-arrays-5'/1]).
-export(['fn-deep-equal-arrays-6'/1]).
-export(['fn-deep-equal-arrays-7'/1]).
-export(['fn-deep-equal-arrays-8'/1]).
-export(['fn-deep-equal-arrays-9'/1]).
-export(['fn-deep-equal-arrays-10'/1]).
-export(['fn-deep-equal-arrays-11'/1]).
-export(['fn-deep-equal-arrays-12'/1]).
-export(['fn-deep-equal-arrays-13'/1]).
-export(['fn-deep-equal-arrays-14'/1]).
-export(['fn-deep-equal-arrays-15'/1]).
-export(['fn-deep-equal-arrays-16'/1]).
-export(['fn-deep-equal-arrays-17'/1]).
-export(['fn-deep-equal-arrays-18'/1]).
-export(['fn-deep-equal-maps-1'/1]).
-export(['fn-deep-equal-maps-2'/1]).
-export(['fn-deep-equal-maps-3'/1]).
-export(['fn-deep-equal-maps-4'/1]).
-export(['fn-deep-equal-maps-5'/1]).
-export(['fn-deep-equal-maps-6'/1]).
-export(['fn-deep-equal-maps-7'/1]).
-export(['fn-deep-equal-maps-8'/1]).
-export(['fn-deep-equal-maps-9'/1]).
-export(['fn-deep-equal-maps-10'/1]).
-export(['fn-deep-equal-maps-11'/1]).
-export(['fn-deep-equal-maps-12'/1]).
-export(['fn-deep-equal-maps-13'/1]).
-export(['fn-deep-equal-maps-14'/1]).
-export(['fn-deep-equal-maps-15'/1]).
-export(['fn-deep-equal-maps-16'/1]).
-export(['fn-deep-equal-maps-17'/1]).
-export(['fn-deep-equal-maps-18'/1]).
-export(['fn-deep-equal-maps-19'/1]).
-export(['fn-deep-equal-maps-20'/1]).
-export(['fn-deep-equal-node-args-3'/1]).
-export(['fn-deep-equal-node-args-4'/1]).
-export(['fn-deep-equal-node-args-5'/1]).
-export(['K-SeqDeepEqualFunc-1'/1]).
-export(['K-SeqDeepEqualFunc-2'/1]).
-export(['K-SeqDeepEqualFunc-3'/1]).
-export(['K-SeqDeepEqualFunc-4'/1]).
-export(['K-SeqDeepEqualFunc-5'/1]).
-export(['K-SeqDeepEqualFunc-6'/1]).
-export(['K-SeqDeepEqualFunc-7'/1]).
-export(['K-SeqDeepEqualFunc-8'/1]).
-export(['K-SeqDeepEqualFunc-9'/1]).
-export(['K-SeqDeepEqualFunc-10'/1]).
-export(['K-SeqDeepEqualFunc-11'/1]).
-export(['K-SeqDeepEqualFunc-12'/1]).
-export(['K-SeqDeepEqualFunc-13'/1]).
-export(['K-SeqDeepEqualFunc-14'/1]).
-export(['K-SeqDeepEqualFunc-15'/1]).
-export(['K-SeqDeepEqualFunc-16'/1]).
-export(['K-SeqDeepEqualFunc-17'/1]).
-export(['K-SeqDeepEqualFunc-18'/1]).
-export(['K-SeqDeepEqualFunc-19'/1]).
-export(['K-SeqDeepEqualFunc-20'/1]).
-export(['K-SeqDeepEqualFunc-21'/1]).
-export(['K-SeqDeepEqualFunc-22'/1]).
-export(['K-SeqDeepEqualFunc-23'/1]).
-export(['K-SeqDeepEqualFunc-24'/1]).
-export(['K-SeqDeepEqualFunc-25'/1]).
-export(['K-SeqDeepEqualFunc-26'/1]).
-export(['K-SeqDeepEqualFunc-27'/1]).
-export(['K-SeqDeepEqualFunc-28'/1]).
-export(['K-SeqDeepEqualFunc-29'/1]).
-export(['K-SeqDeepEqualFunc-30'/1]).
-export(['K-SeqDeepEqualFunc-31'/1]).
-export(['K-SeqDeepEqualFunc-32'/1]).
-export(['K-SeqDeepEqualFunc-33'/1]).
-export(['K-SeqDeepEqualFunc-34'/1]).
-export(['K-SeqDeepEqualFunc-35'/1]).
-export(['K-SeqDeepEqualFunc-36'/1]).
-export(['K-SeqDeepEqualFunc-37'/1]).
-export(['K-SeqDeepEqualFunc-38'/1]).
-export(['K-SeqDeepEqualFunc-39'/1]).
-export(['K-SeqDeepEqualFunc-40'/1]).
-export(['K-SeqDeepEqualFunc-41'/1]).
-export(['K-SeqDeepEqualFunc-42'/1]).
-export(['K-SeqDeepEqualFunc-43'/1]).
-export(['K-SeqDeepEqualFunc-44'/1]).
-export(['K-SeqDeepEqualFunc-45'/1]).
-export(['K-SeqDeepEqualFunc-46'/1]).
-export(['K-SeqDeepEqualFunc-47'/1]).
-export(['K-SeqDeepEqualFunc-48'/1]).
-export(['K-SeqDeepEqualFunc-49'/1]).
-export(['K-SeqDeepEqualFunc-50'/1]).
-export(['K-SeqDeepEqualFunc-51'/1]).
-export(['K-SeqDeepEqualFunc-52'/1]).
-export(['K-SeqDeepEqualFunc-53'/1]).
-export(['K-SeqDeepEqualFunc-54'/1]).
-export(['K-SeqDeepEqualFunc-55'/1]).
-export(['K-SeqDeepEqualFunc-56'/1]).
-export(['K-SeqDeepEqualFunc-57'/1]).
-export(['K-SeqDeepEqualFunc-58'/1]).
-export(['K-SeqDeepEqualFunc-59'/1]).
-export(['K-SeqDeepEqualFunc-60'/1]).
-export(['K-SeqDeepEqualFunc-61'/1]).
-export(['K-SeqDeepEqualFunc-62'/1]).
-export(['K-SeqDeepEqualFunc-63'/1]).
-export(['K-SeqDeepEqualFunc-64'/1]).
-export(['K-SeqDeepEqualFunc-65'/1]).
-export(['K-SeqDeepEqualFunc-66'/1]).
-export(['K-SeqDeepEqualFunc-67'/1]).
-export(['K-SeqDeepEqualFunc-68'/1]).
-export(['K-SeqDeepEqualFunc-69'/1]).
-export(['K-SeqDeepEqualFunc-70'/1]).
-export(['K-SeqDeepEqualFunc-71'/1]).
-export(['K2-SeqDeepEqualFunc-1'/1]).
-export(['K2-SeqDeepEqualFunc-2'/1]).
-export(['K2-SeqDeepEqualFunc-3'/1]).
-export(['K2-SeqDeepEqualFunc-4'/1]).
-export(['K2-SeqDeepEqualFunc-5'/1]).
-export(['K2-SeqDeepEqualFunc-6'/1]).
-export(['K2-SeqDeepEqualFunc-7'/1]).
-export(['K2-SeqDeepEqualFunc-8'/1]).
-export(['K2-SeqDeepEqualFunc-9'/1]).
-export(['K2-SeqDeepEqualFunc-10'/1]).
-export(['K2-SeqDeepEqualFunc-11'/1]).
-export(['K2-SeqDeepEqualFunc-12'/1]).
-export(['K2-SeqDeepEqualFunc-13'/1]).
-export(['K2-SeqDeepEqualFunc-14'/1]).
-export(['K2-SeqDeepEqualFunc-15'/1]).
-export(['K2-SeqDeepEqualFunc-16'/1]).
-export(['K2-SeqDeepEqualFunc-17'/1]).
-export(['K2-SeqDeepEqualFunc-18'/1]).
-export(['K2-SeqDeepEqualFunc-19'/1]).
-export(['K2-SeqDeepEqualFunc-20'/1]).
-export(['K2-SeqDeepEqualFunc-21'/1]).
-export(['K2-SeqDeepEqualFunc-22'/1]).
-export(['K2-SeqDeepEqualFunc-23'/1]).
-export(['K2-SeqDeepEqualFunc-24'/1]).
-export(['K2-SeqDeepEqualFunc-25'/1]).
-export(['K2-SeqDeepEqualFunc-26'/1]).
-export(['K2-SeqDeepEqualFunc-27'/1]).
-export(['K2-SeqDeepEqualFunc-28'/1]).
-export(['K2-SeqDeepEqualFunc-29'/1]).
-export(['K2-SeqDeepEqualFunc-30'/1]).
-export(['K2-SeqDeepEqualFunc-31'/1]).
-export(['K2-SeqDeepEqualFunc-32'/1]).
-export(['K2-SeqDeepEqualFunc-33'/1]).
-export(['K2-SeqDeepEqualFunc-34'/1]).
-export(['K2-SeqDeepEqualFunc-35'/1]).
-export(['K2-SeqDeepEqualFunc-36'/1]).
-export(['K2-SeqDeepEqualFunc-37'/1]).
-export(['K2-SeqDeepEqualFunc-38'/1]).
-export(['K2-SeqDeepEqualFunc-39'/1]).
-export(['K2-SeqDeepEqualFunc-40'/1]).
-export(['K2-SeqDeepEqualFunc-41'/1]).
-export(['K2-SeqDeepEqualFunc-42'/1]).
-export(['K2-SeqDeepEqualFunc-43'/1]).
-export(['cbcl-deep-equal-001'/1]).
-export(['cbcl-deep-equal-002'/1]).
-export(['cbcl-deep-equal-003'/1]).
-export(['cbcl-deep-equal-004'/1]).
-export(['cbcl-deep-equal-005'/1]).
-export(['cbcl-deep-equal-006'/1]).
-export(['cbcl-deep-equal-007'/1]).
-export(['cbcl-deep-equal-008'/1]).
-export(['cbcl-deep-equal-009'/1]).
-export(['cbcl-deep-equal-010'/1]).

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
    __BaseDir = filename:join(TD, "fn"),
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
        {group, group_10}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-deep-equalint2args-1',
            'fn-deep-equalint2args-2',
            'fn-deep-equalint2args-3',
            'fn-deep-equalint2args-4',
            'fn-deep-equalint2args-5',
            'fn-deep-equalintg2args-1',
            'fn-deep-equalintg2args-2',
            'fn-deep-equalintg2args-3',
            'fn-deep-equalintg2args-4',
            'fn-deep-equalintg2args-5',
            'fn-deep-equaldec2args-1',
            'fn-deep-equaldec2args-2',
            'fn-deep-equaldec2args-3',
            'fn-deep-equaldec2args-4',
            'fn-deep-equaldec2args-5',
            'fn-deep-equaldbl2args-1',
            'fn-deep-equaldbl2args-2',
            'fn-deep-equaldbl2args-3',
            'fn-deep-equaldbl2args-4',
            'fn-deep-equaldbl2args-5',
            'fn-deep-equalflt2args-1',
            'fn-deep-equalflt2args-2',
            'fn-deep-equalflt2args-3'
        ]},
        {group_1, [parallel], [
            'fn-deep-equalflt2args-4',
            'fn-deep-equalflt2args-5',
            'fn-deep-equallng2args-1',
            'fn-deep-equallng2args-2',
            'fn-deep-equallng2args-3',
            'fn-deep-equallng2args-4',
            'fn-deep-equallng2args-5',
            'fn-deep-equalusht2args-1',
            'fn-deep-equalusht2args-2',
            'fn-deep-equalusht2args-3',
            'fn-deep-equalusht2args-4',
            'fn-deep-equalusht2args-5',
            'fn-deep-equalnint2args-1',
            'fn-deep-equalnint2args-2',
            'fn-deep-equalnint2args-3',
            'fn-deep-equalnint2args-4',
            'fn-deep-equalnint2args-5',
            'fn-deep-equalpint2args-1',
            'fn-deep-equalpint2args-2',
            'fn-deep-equalpint2args-3',
            'fn-deep-equalpint2args-4',
            'fn-deep-equalpint2args-5',
            'fn-deep-equalulng2args-1',
            'fn-deep-equalulng2args-2'
        ]},
        {group_2, [parallel], [
            'fn-deep-equalulng2args-3',
            'fn-deep-equalulng2args-4',
            'fn-deep-equalulng2args-5',
            'fn-deep-equalnpi2args-1',
            'fn-deep-equalnpi2args-2',
            'fn-deep-equalnpi2args-3',
            'fn-deep-equalnpi2args-4',
            'fn-deep-equalnpi2args-5',
            'fn-deep-equalnni2args-1',
            'fn-deep-equalnni2args-2',
            'fn-deep-equalnni2args-3',
            'fn-deep-equalnni2args-4',
            'fn-deep-equalnni2args-5',
            'fn-deep-equalsht2args-1',
            'fn-deep-equalsht2args-2',
            'fn-deep-equalsht2args-3',
            'fn-deep-equalsht2args-4',
            'fn-deep-equalsht2args-5',
            'fn-deep-equal-mix-args-001',
            'fn-deep-equal-mix-args-002',
            'fn-deep-equal-mix-args-003',
            'fn-deep-equal-mix-args-004',
            'fn-deep-equal-mix-args-005',
            'fn-deep-equal-mix-args-006'
        ]},
        {group_3, [parallel], [
            'fn-deep-equal-mix-args-007',
            'fn-deep-equal-mix-args-008',
            'fn-deep-equal-mix-args-009',
            'fn-deep-equal-mix-args-010',
            'fn-deep-equal-mix-args-011',
            'fn-deep-equal-mix-args-012',
            'fn-deep-equal-mix-args-013',
            'fn-deep-equal-mix-args-014',
            'fn-deep-equal-mix-args-015',
            'fn-deep-equal-mix-args-016',
            'fn-deep-equal-mix-args-017',
            'fn-deep-equal-mix-args-018',
            'fn-deep-equal-mix-args-019',
            'fn-deep-equal-mix-args-020',
            'fn-deep-equal-mix-args-021',
            'fn-deep-equal-mix-args-022',
            'fn-deep-equal-mix-args-023',
            'fn-deep-equal-mix-args-024',
            'fn-deep-equal-mix-args-025',
            'fn-deep-equal-mix-args-026',
            'fn-deep-equal-mix-args-027',
            'fn-deep-equal-mix-args-028',
            'fn-deep-equal-mix-args-029',
            'fn-deep-equal-mix-args-030'
        ]},
        {group_4, [parallel], [
            'fn-deep-equal-mix-args-031',
            'fn-deep-equal-node-args-1',
            'fn-deep-equal-node-args-2',
            'fn-deep-equal-arrays-1',
            'fn-deep-equal-arrays-2',
            'fn-deep-equal-arrays-3',
            'fn-deep-equal-arrays-4',
            'fn-deep-equal-arrays-5',
            'fn-deep-equal-arrays-6',
            'fn-deep-equal-arrays-7',
            'fn-deep-equal-arrays-8',
            'fn-deep-equal-arrays-9',
            'fn-deep-equal-arrays-10',
            'fn-deep-equal-arrays-11',
            'fn-deep-equal-arrays-12',
            'fn-deep-equal-arrays-13',
            'fn-deep-equal-arrays-14',
            'fn-deep-equal-arrays-15',
            'fn-deep-equal-arrays-16',
            'fn-deep-equal-arrays-17',
            'fn-deep-equal-arrays-18',
            'fn-deep-equal-maps-1',
            'fn-deep-equal-maps-2',
            'fn-deep-equal-maps-3'
        ]},
        {group_5, [parallel], [
            'fn-deep-equal-maps-4',
            'fn-deep-equal-maps-5',
            'fn-deep-equal-maps-6',
            'fn-deep-equal-maps-7',
            'fn-deep-equal-maps-8',
            'fn-deep-equal-maps-9',
            'fn-deep-equal-maps-10',
            'fn-deep-equal-maps-11',
            'fn-deep-equal-maps-12',
            'fn-deep-equal-maps-13',
            'fn-deep-equal-maps-14',
            'fn-deep-equal-maps-15',
            'fn-deep-equal-maps-16',
            'fn-deep-equal-maps-17',
            'fn-deep-equal-maps-18',
            'fn-deep-equal-maps-19',
            'fn-deep-equal-maps-20',
            'fn-deep-equal-node-args-3',
            'fn-deep-equal-node-args-4',
            'fn-deep-equal-node-args-5',
            'K-SeqDeepEqualFunc-1',
            'K-SeqDeepEqualFunc-2',
            'K-SeqDeepEqualFunc-3',
            'K-SeqDeepEqualFunc-4'
        ]},
        {group_6, [parallel], [
            'K-SeqDeepEqualFunc-5',
            'K-SeqDeepEqualFunc-6',
            'K-SeqDeepEqualFunc-7',
            'K-SeqDeepEqualFunc-8',
            'K-SeqDeepEqualFunc-9',
            'K-SeqDeepEqualFunc-10',
            'K-SeqDeepEqualFunc-11',
            'K-SeqDeepEqualFunc-12',
            'K-SeqDeepEqualFunc-13',
            'K-SeqDeepEqualFunc-14',
            'K-SeqDeepEqualFunc-15',
            'K-SeqDeepEqualFunc-16',
            'K-SeqDeepEqualFunc-17',
            'K-SeqDeepEqualFunc-18',
            'K-SeqDeepEqualFunc-19',
            'K-SeqDeepEqualFunc-20',
            'K-SeqDeepEqualFunc-21',
            'K-SeqDeepEqualFunc-22',
            'K-SeqDeepEqualFunc-23',
            'K-SeqDeepEqualFunc-24',
            'K-SeqDeepEqualFunc-25',
            'K-SeqDeepEqualFunc-26',
            'K-SeqDeepEqualFunc-27',
            'K-SeqDeepEqualFunc-28'
        ]},
        {group_7, [parallel], [
            'K-SeqDeepEqualFunc-29',
            'K-SeqDeepEqualFunc-30',
            'K-SeqDeepEqualFunc-31',
            'K-SeqDeepEqualFunc-32',
            'K-SeqDeepEqualFunc-33',
            'K-SeqDeepEqualFunc-34',
            'K-SeqDeepEqualFunc-35',
            'K-SeqDeepEqualFunc-36',
            'K-SeqDeepEqualFunc-37',
            'K-SeqDeepEqualFunc-38',
            'K-SeqDeepEqualFunc-39',
            'K-SeqDeepEqualFunc-40',
            'K-SeqDeepEqualFunc-41',
            'K-SeqDeepEqualFunc-42',
            'K-SeqDeepEqualFunc-43',
            'K-SeqDeepEqualFunc-44',
            'K-SeqDeepEqualFunc-45',
            'K-SeqDeepEqualFunc-46',
            'K-SeqDeepEqualFunc-47',
            'K-SeqDeepEqualFunc-48',
            'K-SeqDeepEqualFunc-49',
            'K-SeqDeepEqualFunc-50',
            'K-SeqDeepEqualFunc-51',
            'K-SeqDeepEqualFunc-52'
        ]},
        {group_8, [parallel], [
            'K-SeqDeepEqualFunc-53',
            'K-SeqDeepEqualFunc-54',
            'K-SeqDeepEqualFunc-55',
            'K-SeqDeepEqualFunc-56',
            'K-SeqDeepEqualFunc-57',
            'K-SeqDeepEqualFunc-58',
            'K-SeqDeepEqualFunc-59',
            'K-SeqDeepEqualFunc-60',
            'K-SeqDeepEqualFunc-61',
            'K-SeqDeepEqualFunc-62',
            'K-SeqDeepEqualFunc-63',
            'K-SeqDeepEqualFunc-64',
            'K-SeqDeepEqualFunc-65',
            'K-SeqDeepEqualFunc-66',
            'K-SeqDeepEqualFunc-67',
            'K-SeqDeepEqualFunc-68',
            'K-SeqDeepEqualFunc-69',
            'K-SeqDeepEqualFunc-70',
            'K-SeqDeepEqualFunc-71',
            'K2-SeqDeepEqualFunc-1',
            'K2-SeqDeepEqualFunc-2',
            'K2-SeqDeepEqualFunc-3',
            'K2-SeqDeepEqualFunc-4',
            'K2-SeqDeepEqualFunc-5'
        ]},
        {group_9, [parallel], [
            'K2-SeqDeepEqualFunc-6',
            'K2-SeqDeepEqualFunc-7',
            'K2-SeqDeepEqualFunc-8',
            'K2-SeqDeepEqualFunc-9',
            'K2-SeqDeepEqualFunc-10',
            'K2-SeqDeepEqualFunc-11',
            'K2-SeqDeepEqualFunc-12',
            'K2-SeqDeepEqualFunc-13',
            'K2-SeqDeepEqualFunc-14',
            'K2-SeqDeepEqualFunc-15',
            'K2-SeqDeepEqualFunc-16',
            'K2-SeqDeepEqualFunc-17',
            'K2-SeqDeepEqualFunc-18',
            'K2-SeqDeepEqualFunc-19',
            'K2-SeqDeepEqualFunc-20',
            'K2-SeqDeepEqualFunc-21',
            'K2-SeqDeepEqualFunc-22',
            'K2-SeqDeepEqualFunc-23',
            'K2-SeqDeepEqualFunc-24',
            'K2-SeqDeepEqualFunc-25',
            'K2-SeqDeepEqualFunc-26',
            'K2-SeqDeepEqualFunc-27',
            'K2-SeqDeepEqualFunc-28',
            'K2-SeqDeepEqualFunc-29'
        ]},
        {group_10, [parallel], [
            'K2-SeqDeepEqualFunc-30',
            'K2-SeqDeepEqualFunc-31',
            'K2-SeqDeepEqualFunc-32',
            'K2-SeqDeepEqualFunc-33',
            'K2-SeqDeepEqualFunc-34',
            'K2-SeqDeepEqualFunc-35',
            'K2-SeqDeepEqualFunc-36',
            'K2-SeqDeepEqualFunc-37',
            'K2-SeqDeepEqualFunc-38',
            'K2-SeqDeepEqualFunc-39',
            'K2-SeqDeepEqualFunc-40',
            'K2-SeqDeepEqualFunc-41',
            'K2-SeqDeepEqualFunc-42',
            'K2-SeqDeepEqualFunc-43',
            'cbcl-deep-equal-001',
            'cbcl-deep-equal-002',
            'cbcl-deep-equal-003',
            'cbcl-deep-equal-004',
            'cbcl-deep-equal-005',
            'cbcl-deep-equal-006',
            'cbcl-deep-equal-007',
            'cbcl-deep-equal-008',
            'cbcl-deep-equal-009',
            'cbcl-deep-equal-010'
        ]}
    ].

environment('map', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/map", "map"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('bib', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/bib.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('perverse', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "deep-equal/perverse.xsd"),
                "http://www.w3.org/XQueryTest/perversity"}
        ]},
        {resources, []},
        {modules, []}
    ].

'fn-deep-equalint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:int(\"-2147483648\")),(xs:int(\"-2147483648\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalint2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:int(\"-1873914410\")),(xs:int(\"-2147483648\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalint2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:int(\"2147483647\")),(xs:int(\"-2147483648\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalint2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:int(\"-2147483648\")),(xs:int(\"-1873914410\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalint2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:int(\"-2147483648\")),(xs:int(\"2147483647\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalint2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalintg2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:integer(\"-999999999999999999\")),(xs:integer(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalintg2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalintg2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:integer(\"830993497117024304\")),(xs:integer(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalintg2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalintg2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:integer(\"999999999999999999\")),(xs:integer(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalintg2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalintg2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:integer(\"-999999999999999999\")),(xs:integer(\"830993497117024304\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalintg2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalintg2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:integer(\"-999999999999999999\")),(xs:integer(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalintg2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equaldec2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:decimal(\"-999999999999999999\")),(xs:decimal(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldec2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equaldec2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:decimal(\"617375191608514839\")),(xs:decimal(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldec2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equaldec2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:decimal(\"999999999999999999\")),(xs:decimal(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldec2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equaldec2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:decimal(\"-999999999999999999\")),(xs:decimal(\"617375191608514839\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldec2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equaldec2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:decimal(\"-999999999999999999\")),(xs:decimal(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldec2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equaldbl2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:double(\"-1.7976931348623157E308\")),(xs:double(\"-1.7976931348623157E308\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldbl2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equaldbl2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:double(\"0\")),(xs:double(\"-1.7976931348623157E308\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldbl2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equaldbl2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:double(\"1.7976931348623157E308\")),(xs:double(\"-1.7976931348623157E308\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldbl2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equaldbl2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:double(\"-1.7976931348623157E308\")),(xs:double(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldbl2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equaldbl2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:double(\"-1.7976931348623157E308\")),(xs:double(\"1.7976931348623157E308\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equaldbl2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalflt2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:float(\"-3.4028235E38\")),(xs:float(\"-3.4028235E38\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalflt2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalflt2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:float(\"0\")),(xs:float(\"-3.4028235E38\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalflt2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalflt2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:float(\"3.4028235E38\")),(xs:float(\"-3.4028235E38\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalflt2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalflt2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:float(\"-3.4028235E38\")),(xs:float(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalflt2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalflt2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:float(\"-3.4028235E38\")),(xs:float(\"3.4028235E38\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalflt2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equallng2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:long(\"-92233720368547758\")),(xs:long(\"-92233720368547758\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equallng2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equallng2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:long(\"-47175562203048468\")),(xs:long(\"-92233720368547758\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equallng2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equallng2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:long(\"92233720368547758\")),(xs:long(\"-92233720368547758\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equallng2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equallng2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:long(\"-92233720368547758\")),(xs:long(\"-47175562203048468\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equallng2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equallng2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:long(\"-92233720368547758\")),(xs:long(\"92233720368547758\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equallng2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalusht2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedShort(\"0\")),(xs:unsignedShort(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalusht2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalusht2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedShort(\"44633\")),(xs:unsignedShort(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalusht2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalusht2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedShort(\"65535\")),(xs:unsignedShort(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalusht2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalusht2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedShort(\"0\")),(xs:unsignedShort(\"44633\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalusht2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalusht2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedShort(\"0\")),(xs:unsignedShort(\"65535\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalusht2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalnint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:negativeInteger(\"-999999999999999999\")),(xs:negativeInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnint2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalnint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:negativeInteger(\"-297014075999096793\")),(xs:negativeInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnint2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalnint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:negativeInteger(\"-1\")),(xs:negativeInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnint2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalnint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:negativeInteger(\"-999999999999999999\")),(xs:negativeInteger(\"-297014075999096793\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnint2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalnint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:negativeInteger(\"-999999999999999999\")),(xs:negativeInteger(\"-1\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnint2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalpint2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:positiveInteger(\"1\")),(xs:positiveInteger(\"1\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalpint2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalpint2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:positiveInteger(\"52704602390610033\")),(xs:positiveInteger(\"1\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalpint2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalpint2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:positiveInteger(\"999999999999999999\")),(xs:positiveInteger(\"1\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalpint2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalpint2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:positiveInteger(\"1\")),(xs:positiveInteger(\"52704602390610033\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalpint2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalpint2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:positiveInteger(\"1\")),(xs:positiveInteger(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalpint2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalulng2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedLong(\"0\")),(xs:unsignedLong(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalulng2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalulng2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedLong(\"130747108607674654\")),(xs:unsignedLong(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalulng2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalulng2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedLong(\"184467440737095516\")),(xs:unsignedLong(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalulng2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalulng2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedLong(\"0\")),(xs:unsignedLong(\"130747108607674654\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalulng2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalulng2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:unsignedLong(\"0\")),(xs:unsignedLong(\"184467440737095516\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalulng2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalnpi2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonPositiveInteger(\"-999999999999999999\")),(xs:nonPositiveInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnpi2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalnpi2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonPositiveInteger(\"-475688437271870490\")),(xs:nonPositiveInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnpi2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalnpi2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonPositiveInteger(\"0\")),(xs:nonPositiveInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnpi2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalnpi2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonPositiveInteger(\"-999999999999999999\")),(xs:nonPositiveInteger(\"-475688437271870490\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnpi2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalnpi2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonPositiveInteger(\"-999999999999999999\")),(xs:nonPositiveInteger(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnpi2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalnni2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:nonNegativeInteger(\"0\")),(xs:nonNegativeInteger(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnni2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalnni2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonNegativeInteger(\"303884545991464527\")),(xs:nonNegativeInteger(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnni2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalnni2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonNegativeInteger(\"999999999999999999\")),(xs:nonNegativeInteger(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnni2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalnni2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonNegativeInteger(\"0\")),(xs:nonNegativeInteger(\"303884545991464527\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnni2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalnni2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal((xs:nonNegativeInteger(\"0\")),(xs:nonNegativeInteger(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalnni2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equalsht2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:short(\"-32768\")),(xs:short(\"-32768\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalsht2args-1.xq"),
                Qry1
            ),
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

'fn-deep-equalsht2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:short(\"-5324\")),(xs:short(\"-32768\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalsht2args-2.xq"),
                Qry1
            ),
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

'fn-deep-equalsht2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:short(\"32767\")),(xs:short(\"-32768\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalsht2args-3.xq"),
                Qry1
            ),
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

'fn-deep-equalsht2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:short(\"-32768\")),(xs:short(\"-5324\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalsht2args-4.xq"),
                Qry1
            ),
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

'fn-deep-equalsht2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal((xs:short(\"-32768\")),(xs:short(\"32767\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equalsht2args-5.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( (1,2) , (2,1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-001.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( (1,2) , (1,2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-002.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:string(\"A\") , \"A\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-003.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:string(\"A\") , \"a\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-004.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:string(\"A\") , (\"A\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-005.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:string(\"\") , (\"\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-006.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( () , ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-007.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( (()) , ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-008.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( ( ) , ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-009.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(xs:string(\"abc\"), xs:string(\"cba\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-010.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:anyURI(\"www.example.com\") , \"www.example.com\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-011.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:anyURI(\"www.example.com\") , xs:string(\"www.example.com\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-012.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:integer(1) , xs:decimal(1.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-013.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:integer(1) , xs:integer(-1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-014.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:integer(1) , xs:float(1.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-015.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:integer(1) , xs:double(1.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-016.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:decimal(1.01) , xs:float(1.01))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-017.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:decimal(1.01) , xs:double(1.01))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-018.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:float(1.01) , xs:double(1.01))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-019.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:float(\"INF\") , xs:double(\"INF\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-020.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:float(\"-INF\") , xs:double(\"-INF\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-021.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:float(\"NaN\") , xs:double(\"NaN\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-022.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:boolean(\"1\") , xs:boolean(\"true\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-023.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:boolean(\"true\") , xs:boolean(\"true\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-024.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:boolean(\"true\") , true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-025.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:boolean(\"0\") , xs:boolean(\"false\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-026.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:boolean(\"false\") , false())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-027.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:date(\"1993-03-31\") , \"1993-03-31\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-028.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal( xs:date(\"1993-03-31\") , xs:string(\"1993-03-31\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-029.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(xs:dateTime(\"1972-12-31T00:00:00\"), \"1972-12-31T00:00:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-030.xq"),
                Qry1
            ),
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

'fn-deep-equal-mix-args-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(xs:time(\"12:30:00\"), \"12:30:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-mix-args-031.xq"),
                Qry1
            ),
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

'fn-deep-equal-node-args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(<a> {/bib/node()} </a>/node(), <b> {/bib/node()} </b>/node() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-node-args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-deep-equal-node-args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal(<a> {/bib/node(), /bib/node()} </a>/node(), <b> {/bib/node(), <difference/>, /bib/node()} </b>/node() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-node-args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-deep-equal-arrays-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([], [])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-1.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([1,2], [1,2])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-2.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([[]], [[]])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-3.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([], [1])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-4.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([1], 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-5.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([], [()])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-6.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([()], [()])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-7.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([map{}], [map{}])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-8.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([map{1:1, 2:2}], [map{2:2, 1:1}])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-9.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal([<a>1</a>], [<a>1</a>])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-10.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([['a', 'b', 'c']], [['a', 'b', 'c']])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-11.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal([['a', 'b', 'c']], [['A', 'B', 'C']])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-12.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal([['a', 'b', 'c']], [['A', 'B', 'C']], 'http://www.w3.org/2013/collation/UCA?strength=secondary')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-13.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(([['a', 'b', 'c']], [], [1]), ([['a', 'b', 'c']], [], [1]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-14.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(([['a', 'b', 'c']], [], [1]), ([['a', 'b', 'c']], [], [1], []))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-15.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(([['a', 'b', 'c']], [], [1]), ([['a', 'b', 'c']], [], [2]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-16.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(([['a', 'b', 'c']], [], [1]), ([['a', 'b', 'c', 'd']], [], [1]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-17.xq"),
                Qry1
            ),
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

'fn-deep-equal-arrays-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal(([['a', 'b', 'd'] => array:put(3, 'c')], [], [1]), ([['a', 'b', 'c', 'd'] => array:remove(4)], [], [1]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-arrays-18.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{}, map{})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-1.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{1:2}, map{})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-2.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{}, map{1:()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-3.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{1:true(), 2:false()}, map{2:false(), 1:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-4.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{1:true()}, map{1.0:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-5.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{1:true()}, map{1.0e0:true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-6.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{xs:double('NaN'):true()}, map{xs:double('NaN'):true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-7.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{xs:double('NaN'):true()}, map{xs:float('NaN'):true()})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-8.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{12:[1,2,3]}, map{12.0:[1.0, 2.0, 3.0]})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-9.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(map{12:[1,2,3]}, map{12:[3,2,1]})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-10.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal(map{12:<a x='2' y='3'>23</a>}, map{12:<a y='3' x='2'>23</a>})\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-11.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal(map{12:<a x='2' y='3'>23</a>}, map{12:<a y='3' x='2' z='1'>23</a>})\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-12.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal(map{\"a\":1}, map{\"A\":1}, \n"
        "            'http://www.w3.org/2013/collation/UCA?strength=secondary')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-13.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal(map{1:\"a\"}, map{1:\"A\"}, \n"
        "            'http://www.w3.org/2013/collation/UCA?strength=secondary')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-14.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal(map{1:\"A\"}, map:remove(map{1:\"A\", 2:\"B\"}, 2))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-deep-equal-maps-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $t := xs:dateTime('2014-10-14T11:31:12') return\n"
        "        let $u := adjust-dateTime-to-timezone($t, implicit-timezone()) return\n"
        "        fn:deep-equal(map{$t :()}, map{$u :()})\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-16.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $t := xs:dateTime('2014-10-14T11:31:12') return\n"
        "        let $u := adjust-dateTime-to-timezone($t, implicit-timezone()+xs:dayTimeDuration('PT1H')) return\n"
        "        fn:deep-equal(map{$t :()}, map{$u :()})\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-17.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal((map{1:'a', 2:'b'}, map{1:'x', 2:'y'}), (map{2:'b', 1:'a'}, map{2:'y', 1:'x'}))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-18.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal((map{1:'a', 2:'b'}, map{1:'x', 2:'y'}), (map{2:'b', 1:'a'}, map{2:'y', 1:'z'}))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-19.xq"),
                Qry1
            ),
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

'fn-deep-equal-maps-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        fn:deep-equal((map{1:'a', 2:'b'}, map{1:'x', 2:'y'}), (map{2:'b', 1:'a'}, map{2:'y', 1:'x'}, map{}))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-maps-20.xq"),
                Qry1
            ),
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

'fn-deep-equal-node-args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal(<a> {/node(), /node()} </a>/node(), <b> {/node(), 'difference', /node()} </b>/node() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-node-args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-deep-equal-node-args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal(<a> {/node(), <diff x='1'/>, /node()} </a>/node(), <b> {/node(), <diff x='2'/>, /node()} </b>/node() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-node-args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'fn-deep-equal-node-args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:deep-equal(<a> {/node(), <diff x='1'/>, /node()} </a>/node(), <b> {/node(), <diff xx='1'/>, /node()} </b>/node() )",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-deep-equal-node-args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqDeepEqualFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(\"a string\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqDeepEqualFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(\"a string\", \"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqDeepEqualFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCH0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCH0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqDeepEqualFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(\"a string\", \"a string\", ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqDeepEqualFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(\"a string\", \"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-6.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((), ()) eq true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-7.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(xs:float(\"NaN\"), xs:float(\"NaN\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-8.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(xs:double(\"NaN\"), xs:double(\"NaN\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-9.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(xs:float(\"NaN\"), xs:double(\"NaN\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-10.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(xs:double(\"NaN\"), xs:float(\"NaN\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-11.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(xs:float(\"NaN\"), xs:float(0)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-12.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(xs:float(0), xs:float(\"NaN\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-13.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(xs:double(0), xs:double(\"NaN\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-14.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(xs:double(\"NaN\"), xs:double(0)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-15.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(xs:decimal(\"1\"), xs:anyURI(\"example.com\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-16.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(QName(\"example.com\", \"ncname\"), 3e2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-17.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 2, xs:anyURI(\"example.com\")), (1, 2, 3)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-18.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, xs:decimal(\"2.2\"), 3), (1, 2, 3)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-19.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((true(), 2, 3), (1, 2, 3)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-20.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 2, 3), (1, 2, QName(\"example.com\", \"ncname\"))))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-21.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 2, 3), (1, xs:hexBinary(\"FF\"), 3)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-22.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 2, 3), (xs:base64Binary(\"FFFF\"), 2, 3)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-23.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, 2, xs:base64Binary(\"FFFF\")), (1, 2, xs:base64Binary(\"FFFF\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-24.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, 1, 1), (1, 1, 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-25.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 3), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-26.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 3, 1), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-27.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((3, 1, 1), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-28.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), (3, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-29.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), (1, 3, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-30.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), (1, 1, 3)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-31.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of(20, 20), (1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-32.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of((20, 40), 20), (1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-33.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of((20, 20), 20), (1, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-34.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of((20, 40, 20), 20), (1, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-35.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, 1, \"str\"), (1, 1, \"str\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-36.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, \"str\", 1), (1, \"str\", 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-37.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((\"str\", 1, 1), (\"str\", 1, 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-38.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, 1, ()), (1, 1, ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-39.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, (), 1), (1, (), 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-40.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(((), 1, 1), ((), 1, 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-41.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, ()), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-42.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, (), 1), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-43.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(((), 1, 1), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-44.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), (1, 1, ())))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-45.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), (1, (), 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-46.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), ((), 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-47.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-48'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-48.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-49'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), (1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-49.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-50'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((), (1, 1, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-50.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-51'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal((1, 1, 1), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-51.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-52'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((), reverse(0 to -5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-52.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-53'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((), 0 to -5)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-53.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-54'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(reverse(0 to -5), ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-54.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-55'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(0 to -5, ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-55.xq"),
                Qry1
            ),
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

'K-SeqDeepEqualFunc-56'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((\"a\", \"A\"), (\"A\", \"a\"), \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-56.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-57'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((\"a\", \"A\"), (\"A\", \"b\"), \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-57.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-58'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b x=\"abc\"/></a>, <a><b x=\"ABC\"/></a>,\n"
        "             \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-58.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-59'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b>abc</b></a>, <a><b>ABC</b></a>,\n"
        "             \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-59.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-60'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b>abc</b></a>, <a><B>abc</B></a>,\n"
        "             \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-60.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-61'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b x=\"abc\"/></a>, <a><b X=\"abc\"/></a>,\n"
        "             \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-61.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-62'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $deep := deep-equal(?, ?, \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")\n"
        "         return $deep(<a><b>abc</b></a>, <a><b>ABC</b></a>)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-62.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-63'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $deep := deep-equal#3 \n"
        "         return $deep(<a><b>abc</b></a>, <a><b>ABC</b></a>, \n"
        "                      \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-63.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-64'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((\"a\", \"A\"), (\"A\", \"a\"), \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-64.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-65'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((\"a\", \"A\"), (\"A\", \"b\"), \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-65.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-66'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b x=\"abc\"/></a>, <a><b x=\"ABC\"/></a>,\n"
        "             \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-66.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-67'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b>abc</b></a>, <a><b>ABC</b></a>,\n"
        "             \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-67.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-68'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b>abc</b></a>, <a><B>abc</B></a>,\n"
        "             \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-68.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-69'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(<a><b x=\"abc\"/></a>, <a><b X=\"abc\"/></a>,\n"
        "             \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-69.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-70'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $deep := deep-equal(?, ?, \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "         return $deep(<a><b>abc</b></a>, <a><b>ABC</b></a>)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-70.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K-SeqDeepEqualFunc-71'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $deep := deep-equal#3 \n"
        "         return $deep(<a><b>abc</b></a>, <a><b>ABC</b></a>, \n"
        "                      \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\")\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDeepEqualFunc-71.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'K2-SeqDeepEqualFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(deep-equal(current-time(), current-date()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-1.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(current-time(), <e/>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-2.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(<e/>, current-time())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-3.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((current-time(), current-time(), current-time()), (current-time(), current-time()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-4.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, <e/>, 2), (1, <e/>, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-5.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, <a/>, 2), (1, <b/>, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-6.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((<a/>, <b/>, 4), (<a/>, <b/>, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-7.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqDeepEqualFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, 2, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqDeepEqualFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((<a/>, <b/>, <c/>), (<a/>, <b/>, <c/>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-10.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((<a/>, <b/>, <c/>), (<a/>, <b/>, <a/>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-11.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((<a/>, <b/>), (<a/>, <b/>, <c/>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-12.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((<a/>, <b/>, <c/>), (<a/>, <b/>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-13.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := document { <?target data?>, text{\"some text\"}}; declare variable $d2 := document {text{\"some text\"}}; deep-equal($d1, $d2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-14.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := document {()}; declare variable $d2 := document {<?target data?>}; deep-equal($d1, $d2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-15.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := document { <?target data?>, text{\"some text\"}}; declare variable $d2 := document {text{\"some text\"}}; deep-equal($d1, $d2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-16.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := document {()}; declare variable $d2 := document {<?target data?>}; deep-equal($d1, $d2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-17.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(<e>1</e>, 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-18.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(1, <e>1</e>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-19.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := <e a=\"1\" b=\"2\">te<?target data?>xt</e>; declare variable $d2 := <e b=\"2\" a=\"1\">text</e>; deep-equal($d1, $d2), deep-equal($d2, $d1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-20.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqDeepEqualFunc-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := <e a=\"1\" b=\"2\"><?target data?>text</e>; declare variable $d2 := <e b=\"2\" a=\"1\">text</e>; deep-equal($d1, $d2), deep-equal($d2, $d1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-21.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqDeepEqualFunc-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := <e a=\"1\" b=\"2\">te<!-- content -->xt</e>; declare variable $d2 := <e b=\"2\" a=\"1\">text</e>; deep-equal($d1, $d2), deep-equal($d2, $d1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-22.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqDeepEqualFunc-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $d1 := <e a=\"1\" b=\"2\"><!-- content -->text</e>; declare variable $d2 := <e b=\"2\" a=\"1\">text</e>; deep-equal($d1, $d2), deep-equal($d2, $d1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-23.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqDeepEqualFunc-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(attribute name {\"content\"}, attribute name {\"content\"})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-24.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((attribute name2 {\"content\"}, attribute name {\"content\"}), (attribute name {\"content\"}, attribute name2 {\"content\"}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-25.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((attribute name {\"content\"}, attribute name {\"content\"}), (attribute name {\"content\"}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-26.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((attribute name {\"content\"}, attribute name {\"content\"}), attribute name {\"content\"})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-27.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(attribute name {}, attribute name {})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-28.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(attribute name {\"content\"}, attribute name {\"content\"})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-29.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(attribute name {\"content\"}, attribute name {})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-30.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(attribute name {}, attribute name2 {})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-31.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(attribute name {\"content \"}, attribute name2 {\"content \"})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-32.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        deep-equal(<e xmlns=\"http://www.example.com/ns\"/>, <p:e xmlns:p=\"http://www.example.com/ns\"/>)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-33.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        deep-equal(<e><a>12</a></e>/*, <f><a>12</a></f>/*)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-34.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        deep-equal(\"a\", xs:NCName(\"a\"))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-35.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'K2-SeqDeepEqualFunc-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'K2-SeqDeepEqualFunc-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation, feature:schemaImport"}.

'K2-SeqDeepEqualFunc-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation, feature:schemaImport"}.

'K2-SeqDeepEqualFunc-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        deep-equal(xs:dateTime('2012-05-30T12:00:00'), xs:dateTime('2012-05-30T12:00:00Z') - implicit-timezone())\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-40.xq"),
                Qry1
            ),
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

'K2-SeqDeepEqualFunc-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation, feature:schemaImport"}.

'K2-SeqDeepEqualFunc-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation, feature:schemaImport"}.

'K2-SeqDeepEqualFunc-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((0 to year-from-date(current-date()))!(10 idiv .), 11 to 22)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDeepEqualFunc-43.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-deep-equal-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $doc1 := <doc><?processing-instruction content ?></doc> let $doc2 := <doc><!--comment--></doc> return deep-equal($doc1, $doc2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-001.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $doc1 := <?cheese brie?> let $doc2 := <?cheese stilton?> return deep-equal($doc1, $doc2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-002.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $doc1 := <?foo test?> let $doc2 := <?bar test?> return deep-equal($doc1, $doc2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-003.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $doc1 := <?foo bar?> let $doc2 := <?foo bar?> return deep-equal($doc1, $doc2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-004.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:f($x as xs:integer)as xs:integer* { 1 to $x }; deep-equal((local:f(3), 2, local:f(1)), (local:f(3), 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-005.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:f($x as xs:integer) as xs:integer* { 1 to $x }; deep-equal((local:f(3), 2), (local:f(3), 2, local:f(1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-006.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(xs:gMonth(\"--12+03:00\"), xs:gMonth(\"--12\")) eq (implicit-timezone() eq xs:dayTimeDuration(\"PT3H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-007.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((xs:untypedAtomic(\"a\"), xs:untypedAtomic(\"P1Y\"), 2.0), (xs:untypedAtomic(\"a\"), xs:yearMonthDuration(\"P12M\"), xs:untypedAtomic(\" 2\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-008.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:deep-equal(<a b=\"b\" c=\"c\" />, <a b=\"b\" />)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-009.xq"),
                Qry1
            ),
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

'cbcl-deep-equal-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal((<a />, xs:untypedAtomic(\"a\"), xs:untypedAtomic(\"P1Y\"), 2.0), (<a />, xs:untypedAtomic(\"a\"), xs:yearMonthDuration(\"P12M\"), xs:untypedAtomic(\" 2\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-deep-equal-010.xq"),
                Qry1
            ),
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
