-module('prod_InstanceofExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['instanceof1'/1]).
-export(['instanceof2'/1]).
-export(['instanceof3'/1]).
-export(['instanceof4'/1]).
-export(['instanceof5'/1]).
-export(['instanceof6'/1]).
-export(['instanceof7'/1]).
-export(['instanceof8'/1]).
-export(['instanceof9'/1]).
-export(['instanceof10'/1]).
-export(['instanceof11'/1]).
-export(['instanceof12'/1]).
-export(['instanceof13'/1]).
-export(['instanceof14'/1]).
-export(['instanceof15'/1]).
-export(['instanceof16'/1]).
-export(['instanceof17'/1]).
-export(['instanceof18'/1]).
-export(['instanceof19'/1]).
-export(['instanceof20'/1]).
-export(['instanceof21'/1]).
-export(['instanceof22'/1]).
-export(['instanceof23'/1]).
-export(['instanceof24'/1]).
-export(['instanceof25'/1]).
-export(['instanceof26'/1]).
-export(['instanceof27'/1]).
-export(['instanceof28'/1]).
-export(['instanceof29'/1]).
-export(['instanceof30'/1]).
-export(['instanceof31'/1]).
-export(['instanceof32'/1]).
-export(['instanceof33'/1]).
-export(['instanceof34'/1]).
-export(['instanceof35'/1]).
-export(['instanceof36'/1]).
-export(['instanceof37'/1]).
-export(['instanceof38'/1]).
-export(['instanceof39'/1]).
-export(['instanceof40'/1]).
-export(['instanceof41'/1]).
-export(['instanceof42'/1]).
-export(['instanceof43'/1]).
-export(['instanceof44'/1]).
-export(['instanceof45'/1]).
-export(['instanceof46'/1]).
-export(['instanceof47'/1]).
-export(['instanceof48'/1]).
-export(['instanceof49'/1]).
-export(['instanceof50'/1]).
-export(['instanceof51'/1]).
-export(['instanceof52'/1]).
-export(['instanceof53'/1]).
-export(['instanceof54'/1]).
-export(['instanceof55'/1]).
-export(['instanceof56'/1]).
-export(['instanceof57'/1]).
-export(['instanceof58'/1]).
-export(['instanceof59'/1]).
-export(['instanceof60'/1]).
-export(['instanceof61'/1]).
-export(['instanceof62'/1]).
-export(['instanceof63'/1]).
-export(['instanceof64'/1]).
-export(['instanceof65'/1]).
-export(['instanceof66'/1]).
-export(['instanceof67'/1]).
-export(['instanceof68'/1]).
-export(['instanceof69'/1]).
-export(['instanceof70'/1]).
-export(['instanceof71'/1]).
-export(['instanceof72'/1]).
-export(['instanceof73'/1]).
-export(['instanceof74'/1]).
-export(['instanceof75'/1]).
-export(['instanceof76'/1]).
-export(['instanceof77'/1]).
-export(['instanceof78'/1]).
-export(['instanceof79'/1]).
-export(['instanceof80'/1]).
-export(['instanceof81'/1]).
-export(['instanceof82'/1]).
-export(['instanceof83'/1]).
-export(['instanceof84'/1]).
-export(['instanceof85'/1]).
-export(['instanceof86'/1]).
-export(['instanceof87'/1]).
-export(['instanceof88'/1]).
-export(['instanceof89'/1]).
-export(['instanceof90'/1]).
-export(['instanceof91'/1]).
-export(['instanceof92'/1]).
-export(['instanceof93'/1]).
-export(['instanceof94'/1]).
-export(['instanceof95'/1]).
-export(['instanceof96'/1]).
-export(['instanceof97'/1]).
-export(['instanceof98'/1]).
-export(['instanceof99'/1]).
-export(['instanceof100'/1]).
-export(['instanceof101'/1]).
-export(['instanceof102'/1]).
-export(['instanceof103'/1]).
-export(['instanceof104'/1]).
-export(['instanceof105'/1]).
-export(['instanceof106'/1]).
-export(['instanceof107'/1]).
-export(['instanceof108'/1]).
-export(['instanceof109'/1]).
-export(['instanceof110'/1]).
-export(['instanceof111'/1]).
-export(['instanceof112'/1]).
-export(['instanceof113'/1]).
-export(['instanceof114'/1]).
-export(['instanceof115'/1]).
-export(['instanceof116'/1]).
-export(['instanceof117'/1]).
-export(['instanceof118'/1]).
-export(['instanceof119'/1]).
-export(['instanceof120'/1]).
-export(['instanceof121'/1]).
-export(['instanceof122'/1]).
-export(['instanceof123'/1]).
-export(['instanceof124'/1]).
-export(['instanceof125'/1]).
-export(['instanceof126'/1]).
-export(['instanceof127'/1]).
-export(['instanceof128'/1]).
-export(['instanceof129'/1]).
-export(['instanceof130'/1]).
-export(['instanceof131'/1]).
-export(['instanceof132'/1]).
-export(['instanceof133'/1]).
-export(['instanceof134'/1]).
-export(['instanceof135'/1]).
-export(['instanceof136'/1]).
-export(['instanceof137'/1]).
-export(['instanceof138'/1]).
-export(['instanceof139'/1]).
-export(['instanceof140'/1]).
-export(['instanceof141'/1]).
-export(['instanceof142'/1]).
-export(['K-SeqExprInstanceOf-1'/1]).
-export(['K-SeqExprInstanceOf-2'/1]).
-export(['K-SeqExprInstanceOf-3'/1]).
-export(['K-SeqExprInstanceOf-4'/1]).
-export(['K-SeqExprInstanceOf-5'/1]).
-export(['K-SeqExprInstanceOf-6'/1]).
-export(['K-SeqExprInstanceOf-7'/1]).
-export(['K-SeqExprInstanceOf-8'/1]).
-export(['K-SeqExprInstanceOf-9'/1]).
-export(['K-SeqExprInstanceOf-10'/1]).
-export(['K-SeqExprInstanceOf-11'/1]).
-export(['K-SeqExprInstanceOf-12'/1]).
-export(['K-SeqExprInstanceOf-13'/1]).
-export(['K-SeqExprInstanceOf-14'/1]).
-export(['K-SeqExprInstanceOf-15'/1]).
-export(['K-SeqExprInstanceOf-16'/1]).
-export(['K-SeqExprInstanceOf-17'/1]).
-export(['K-SeqExprInstanceOf-18'/1]).
-export(['K-SeqExprInstanceOf-19'/1]).
-export(['K-SeqExprInstanceOf-20'/1]).
-export(['K-SeqExprInstanceOf-21'/1]).
-export(['K-SeqExprInstanceOf-22'/1]).
-export(['K-SeqExprInstanceOf-23'/1]).
-export(['K-SeqExprInstanceOf-24'/1]).
-export(['K-SeqExprInstanceOf-25'/1]).
-export(['K-SeqExprInstanceOf-26'/1]).
-export(['K-SeqExprInstanceOf-27'/1]).
-export(['K-SeqExprInstanceOf-28'/1]).
-export(['K-SeqExprInstanceOf-29'/1]).
-export(['K-SeqExprInstanceOf-30'/1]).
-export(['K-SeqExprInstanceOf-31'/1]).
-export(['K-SeqExprInstanceOf-32'/1]).
-export(['K-SeqExprInstanceOf-33'/1]).
-export(['K-SeqExprInstanceOf-34'/1]).
-export(['K-SeqExprInstanceOf-35'/1]).
-export(['K-SeqExprInstanceOf-36'/1]).
-export(['K-SeqExprInstanceOf-37'/1]).
-export(['K-SeqExprInstanceOf-38'/1]).
-export(['K-SeqExprInstanceOf-39'/1]).
-export(['K-SeqExprInstanceOf-40'/1]).
-export(['K-SeqExprInstanceOf-41'/1]).
-export(['K-SeqExprInstanceOf-42'/1]).
-export(['K-SeqExprInstanceOf-43'/1]).
-export(['K-SeqExprInstanceOf-44'/1]).
-export(['K-SeqExprInstanceOf-45'/1]).
-export(['K-SeqExprInstanceOf-46'/1]).
-export(['K-SeqExprInstanceOf-47'/1]).
-export(['K-SeqExprInstanceOf-48'/1]).
-export(['K-SeqExprInstanceOf-49'/1]).
-export(['K-SeqExprInstanceOf-50'/1]).
-export(['K-SeqExprInstanceOf-51'/1]).
-export(['K-SeqExprInstanceOf-52'/1]).
-export(['K-SeqExprInstanceOf-53'/1]).
-export(['K-SeqExprInstanceOf-54'/1]).
-export(['K-SeqExprInstanceOf-55'/1]).
-export(['K-SeqExprInstanceOf-56'/1]).
-export(['K-SeqExprInstanceOf-57'/1]).
-export(['K-SeqExprInstanceOf-58'/1]).
-export(['K-SeqExprInstanceOf-59'/1]).
-export(['K-SeqExprInstanceOf-60'/1]).
-export(['K-SeqExprInstanceOf-61'/1]).
-export(['K-SeqExprInstanceOf-62'/1]).
-export(['K-SeqExprInstanceOf-63'/1]).
-export(['K-SeqExprInstanceOf-64'/1]).
-export(['K-SeqExprInstanceOf-65'/1]).
-export(['K-SeqExprInstanceOf-66'/1]).
-export(['K2-SeqExprInstanceOf-1'/1]).
-export(['K2-SeqExprInstanceOf-2'/1]).
-export(['K2-SeqExprInstanceOf-3'/1]).
-export(['K2-SeqExprInstanceOf-4'/1]).
-export(['K2-SeqExprInstanceOf-5'/1]).
-export(['K2-SeqExprInstanceOf-6'/1]).
-export(['K2-SeqExprInstanceOf-7'/1]).
-export(['K2-SeqExprInstanceOf-8'/1]).
-export(['K2-SeqExprInstanceOf-9'/1]).
-export(['K2-SeqExprInstanceOf-10'/1]).
-export(['K2-SeqExprInstanceOf-11'/1]).
-export(['K2-SeqExprInstanceOf-12'/1]).
-export(['K2-SeqExprInstanceOf-13'/1]).
-export(['K2-SeqExprInstanceOf-14'/1]).
-export(['K2-SeqExprInstanceOf-15'/1]).
-export(['K2-SeqExprInstanceOf-16'/1]).
-export(['K2-SeqExprInstanceOf-17'/1]).
-export(['K2-SeqExprInstanceOf-18'/1]).
-export(['K2-SeqExprInstanceOf-19'/1]).
-export(['K2-SeqExprInstanceOf-20'/1]).
-export(['K2-SeqExprInstanceOf-21'/1]).
-export(['K2-SeqExprInstanceOf-22'/1]).
-export(['K2-SeqExprInstanceOf-23'/1]).
-export(['K2-SeqExprInstanceOf-24'/1]).
-export(['K2-SeqExprInstanceOf-25'/1]).
-export(['K2-SeqExprInstanceOf-26'/1]).
-export(['K2-SeqExprInstanceOf-27'/1]).
-export(['K2-SeqExprInstanceOf-28'/1]).
-export(['K2-SeqExprInstanceOf-29'/1]).
-export(['K2-SeqExprInstanceOf-30'/1]).
-export(['K2-SeqExprInstanceOf-31'/1]).
-export(['K2-SeqExprInstanceOf-32'/1]).
-export(['K2-SeqExprInstanceOf-33'/1]).
-export(['K2-SeqExprInstanceOf-34'/1]).
-export(['K2-SeqExprInstanceOf-35'/1]).
-export(['K2-SeqExprInstanceOf-36'/1]).
-export(['K2-SeqExprInstanceOf-37'/1]).
-export(['K2-SeqExprInstanceOf-38'/1]).
-export(['K2-SeqExprInstanceOf-39'/1]).
-export(['K2-SeqExprInstanceOf-40'/1]).
-export(['K2-SeqExprInstanceOf-41'/1]).
-export(['K2-SeqExprInstanceOf-42'/1]).
-export(['K2-SeqExprInstanceOf-43'/1]).
-export(['K2-SeqExprInstanceOf-44'/1]).
-export(['K2-SeqExprInstanceOf-45'/1]).
-export(['K2-SeqExprInstanceOf-46'/1]).
-export(['K2-SeqExprInstanceOf-47'/1]).
-export(['K2-SeqExprInstanceOf-48'/1]).
-export(['K2-SeqExprInstanceOf-49'/1]).
-export(['K2-SeqExprInstanceOf-50'/1]).
-export(['K2-SeqExprInstanceOf-51'/1]).
-export(['K2-SeqExprInstanceOf-52'/1]).
-export(['K2-SeqExprInstanceOf-53'/1]).
-export(['K2-SeqExprInstanceOf-54'/1]).
-export(['K2-SeqExprInstanceOf-55'/1]).
-export(['K2-SeqExprInstanceOf-56'/1]).
-export(['K2-SeqExprInstanceOf-57'/1]).
-export(['K2-SeqExprInstanceOf-58'/1]).
-export(['K2-SeqExprInstanceOf-59'/1]).
-export(['K2-SeqExprInstanceOf-60'/1]).
-export(['K2-SeqExprInstanceOf-61'/1]).
-export(['K2-SeqExprInstanceOf-62'/1]).
-export(['K2-SeqExprInstanceOf-63'/1]).
-export(['K2-SeqExprInstanceOf-64'/1]).
-export(['K2-SeqExprInstanceOf-65'/1]).
-export(['K2-SeqExprInstanceOf-66'/1]).
-export(['K2-SeqExprInstanceOf-67'/1]).
-export(['K2-SeqExprInstanceOf-68'/1]).
-export(['K2-SeqExprInstanceOf-69'/1]).
-export(['K2-SeqExprInstanceOf-70'/1]).
-export(['K2-SeqExprInstanceOf-71'/1]).
-export(['K2-SeqExprInstanceOf-72'/1]).
-export(['K2-SeqExprInstanceOf-73'/1]).
-export(['K2-SeqExprInstanceOf-74'/1]).
-export(['K2-SeqExprInstanceOf-75'/1]).
-export(['K2-SeqExprInstanceOf-76'/1]).
-export(['K2-SeqExprInstanceOf-77'/1]).
-export(['K2-SeqExprInstanceOf-78'/1]).
-export(['K2-SeqExprInstanceOf-79'/1]).
-export(['K2-SeqExprInstanceOf-80'/1]).
-export(['K2-SeqExprInstanceOf-81'/1]).
-export(['K2-SeqExprInstanceOf-82'/1]).
-export(['K2-SeqExprInstanceOf-83'/1]).
-export(['K2-SeqExprInstanceOf-84'/1]).
-export(['K2-SeqExprInstanceOf-85'/1]).
-export(['K2-SeqExprInstanceOf-86'/1]).
-export(['K2-SeqExprInstanceOf-87'/1]).
-export(['K2-SeqExprInstanceOf-88'/1]).
-export(['K2-SeqExprInstanceOf-89'/1]).
-export(['K2-SeqExprInstanceOf-90'/1]).
-export(['K2-SeqExprInstanceOf-91'/1]).
-export(['K2-SeqExprInstanceOf-92'/1]).
-export(['K2-SeqExprInstanceOf-93'/1]).
-export(['K2-SeqExprInstanceOf-94'/1]).
-export(['K2-SeqExprInstanceOf-95'/1]).
-export(['K2-SeqExprInstanceOf-96'/1]).
-export(['K2-SeqExprInstanceOf-97'/1]).
-export(['K2-SeqExprInstanceOf-98'/1]).
-export(['K2-SeqExprInstanceOf-99'/1]).
-export(['K2-SeqExprInstanceOf-100'/1]).
-export(['cbcl-instance-of-001'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
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
   {group, group_12}
   ].
groups() -> [
   {group_0, [parallel], [
    'instanceof1', 
    'instanceof2', 
    'instanceof3', 
    'instanceof4', 
    'instanceof5', 
    'instanceof6', 
    'instanceof7', 
    'instanceof8', 
    'instanceof9', 
    'instanceof10', 
    'instanceof11', 
    'instanceof12', 
    'instanceof13', 
    'instanceof14', 
    'instanceof15', 
    'instanceof16', 
    'instanceof17', 
    'instanceof18', 
    'instanceof19', 
    'instanceof20', 
    'instanceof21', 
    'instanceof22', 
    'instanceof23']}, 
   {group_1, [parallel], [
    'instanceof24', 
    'instanceof25', 
    'instanceof26', 
    'instanceof27', 
    'instanceof28', 
    'instanceof29', 
    'instanceof30', 
    'instanceof31', 
    'instanceof32', 
    'instanceof33', 
    'instanceof34', 
    'instanceof35', 
    'instanceof36', 
    'instanceof37', 
    'instanceof38', 
    'instanceof39', 
    'instanceof40', 
    'instanceof41', 
    'instanceof42', 
    'instanceof43', 
    'instanceof44', 
    'instanceof45', 
    'instanceof46', 
    'instanceof47']}, 
   {group_2, [parallel], [
    'instanceof48', 
    'instanceof49', 
    'instanceof50', 
    'instanceof51', 
    'instanceof52', 
    'instanceof53', 
    'instanceof54', 
    'instanceof55', 
    'instanceof56', 
    'instanceof57', 
    'instanceof58', 
    'instanceof59', 
    'instanceof60', 
    'instanceof61', 
    'instanceof62', 
    'instanceof63', 
    'instanceof64', 
    'instanceof65', 
    'instanceof66', 
    'instanceof67', 
    'instanceof68', 
    'instanceof69', 
    'instanceof70', 
    'instanceof71']}, 
   {group_3, [parallel], [
    'instanceof72', 
    'instanceof73', 
    'instanceof74', 
    'instanceof75', 
    'instanceof76', 
    'instanceof77', 
    'instanceof78', 
    'instanceof79', 
    'instanceof80', 
    'instanceof81', 
    'instanceof82', 
    'instanceof83', 
    'instanceof84', 
    'instanceof85', 
    'instanceof86', 
    'instanceof87', 
    'instanceof88', 
    'instanceof89', 
    'instanceof90', 
    'instanceof91', 
    'instanceof92', 
    'instanceof93', 
    'instanceof94', 
    'instanceof95']}, 
   {group_4, [parallel], [
    'instanceof96', 
    'instanceof97', 
    'instanceof98', 
    'instanceof99', 
    'instanceof100', 
    'instanceof101', 
    'instanceof102', 
    'instanceof103', 
    'instanceof104', 
    'instanceof105', 
    'instanceof106', 
    'instanceof107', 
    'instanceof108', 
    'instanceof109', 
    'instanceof110', 
    'instanceof111', 
    'instanceof112', 
    'instanceof113', 
    'instanceof114', 
    'instanceof115', 
    'instanceof116', 
    'instanceof117', 
    'instanceof118', 
    'instanceof119']}, 
   {group_5, [parallel], [
    'instanceof120', 
    'instanceof121', 
    'instanceof122', 
    'instanceof123', 
    'instanceof124', 
    'instanceof125', 
    'instanceof126', 
    'instanceof127', 
    'instanceof128', 
    'instanceof129', 
    'instanceof130', 
    'instanceof131', 
    'instanceof132', 
    'instanceof133', 
    'instanceof134', 
    'instanceof135', 
    'instanceof136', 
    'instanceof137', 
    'instanceof138', 
    'instanceof139', 
    'instanceof140', 
    'instanceof141', 
    'instanceof142', 
    'K-SeqExprInstanceOf-1']}, 
   {group_6, [parallel], [
    'K-SeqExprInstanceOf-2', 
    'K-SeqExprInstanceOf-3', 
    'K-SeqExprInstanceOf-4', 
    'K-SeqExprInstanceOf-5', 
    'K-SeqExprInstanceOf-6', 
    'K-SeqExprInstanceOf-7', 
    'K-SeqExprInstanceOf-8', 
    'K-SeqExprInstanceOf-9', 
    'K-SeqExprInstanceOf-10', 
    'K-SeqExprInstanceOf-11', 
    'K-SeqExprInstanceOf-12', 
    'K-SeqExprInstanceOf-13', 
    'K-SeqExprInstanceOf-14', 
    'K-SeqExprInstanceOf-15', 
    'K-SeqExprInstanceOf-16', 
    'K-SeqExprInstanceOf-17', 
    'K-SeqExprInstanceOf-18', 
    'K-SeqExprInstanceOf-19', 
    'K-SeqExprInstanceOf-20', 
    'K-SeqExprInstanceOf-21', 
    'K-SeqExprInstanceOf-22', 
    'K-SeqExprInstanceOf-23', 
    'K-SeqExprInstanceOf-24', 
    'K-SeqExprInstanceOf-25']}, 
   {group_7, [parallel], [
    'K-SeqExprInstanceOf-26', 
    'K-SeqExprInstanceOf-27', 
    'K-SeqExprInstanceOf-28', 
    'K-SeqExprInstanceOf-29', 
    'K-SeqExprInstanceOf-30', 
    'K-SeqExprInstanceOf-31', 
    'K-SeqExprInstanceOf-32', 
    'K-SeqExprInstanceOf-33', 
    'K-SeqExprInstanceOf-34', 
    'K-SeqExprInstanceOf-35', 
    'K-SeqExprInstanceOf-36', 
    'K-SeqExprInstanceOf-37', 
    'K-SeqExprInstanceOf-38', 
    'K-SeqExprInstanceOf-39', 
    'K-SeqExprInstanceOf-40', 
    'K-SeqExprInstanceOf-41', 
    'K-SeqExprInstanceOf-42', 
    'K-SeqExprInstanceOf-43', 
    'K-SeqExprInstanceOf-44', 
    'K-SeqExprInstanceOf-45', 
    'K-SeqExprInstanceOf-46', 
    'K-SeqExprInstanceOf-47', 
    'K-SeqExprInstanceOf-48', 
    'K-SeqExprInstanceOf-49']}, 
   {group_8, [parallel], [
    'K-SeqExprInstanceOf-50', 
    'K-SeqExprInstanceOf-51', 
    'K-SeqExprInstanceOf-52', 
    'K-SeqExprInstanceOf-53', 
    'K-SeqExprInstanceOf-54', 
    'K-SeqExprInstanceOf-55', 
    'K-SeqExprInstanceOf-56', 
    'K-SeqExprInstanceOf-57', 
    'K-SeqExprInstanceOf-58', 
    'K-SeqExprInstanceOf-59', 
    'K-SeqExprInstanceOf-60', 
    'K-SeqExprInstanceOf-61', 
    'K-SeqExprInstanceOf-62', 
    'K-SeqExprInstanceOf-63', 
    'K-SeqExprInstanceOf-64', 
    'K-SeqExprInstanceOf-65', 
    'K-SeqExprInstanceOf-66', 
    'K2-SeqExprInstanceOf-1', 
    'K2-SeqExprInstanceOf-2', 
    'K2-SeqExprInstanceOf-3', 
    'K2-SeqExprInstanceOf-4', 
    'K2-SeqExprInstanceOf-5', 
    'K2-SeqExprInstanceOf-6', 
    'K2-SeqExprInstanceOf-7']}, 
   {group_9, [parallel], [
    'K2-SeqExprInstanceOf-8', 
    'K2-SeqExprInstanceOf-9', 
    'K2-SeqExprInstanceOf-10', 
    'K2-SeqExprInstanceOf-11', 
    'K2-SeqExprInstanceOf-12', 
    'K2-SeqExprInstanceOf-13', 
    'K2-SeqExprInstanceOf-14', 
    'K2-SeqExprInstanceOf-15', 
    'K2-SeqExprInstanceOf-16', 
    'K2-SeqExprInstanceOf-17', 
    'K2-SeqExprInstanceOf-18', 
    'K2-SeqExprInstanceOf-19', 
    'K2-SeqExprInstanceOf-20', 
    'K2-SeqExprInstanceOf-21', 
    'K2-SeqExprInstanceOf-22', 
    'K2-SeqExprInstanceOf-23', 
    'K2-SeqExprInstanceOf-24', 
    'K2-SeqExprInstanceOf-25', 
    'K2-SeqExprInstanceOf-26', 
    'K2-SeqExprInstanceOf-27', 
    'K2-SeqExprInstanceOf-28', 
    'K2-SeqExprInstanceOf-29', 
    'K2-SeqExprInstanceOf-30', 
    'K2-SeqExprInstanceOf-31']}, 
   {group_10, [parallel], [
    'K2-SeqExprInstanceOf-32', 
    'K2-SeqExprInstanceOf-33', 
    'K2-SeqExprInstanceOf-34', 
    'K2-SeqExprInstanceOf-35', 
    'K2-SeqExprInstanceOf-36', 
    'K2-SeqExprInstanceOf-37', 
    'K2-SeqExprInstanceOf-38', 
    'K2-SeqExprInstanceOf-39', 
    'K2-SeqExprInstanceOf-40', 
    'K2-SeqExprInstanceOf-41', 
    'K2-SeqExprInstanceOf-42', 
    'K2-SeqExprInstanceOf-43', 
    'K2-SeqExprInstanceOf-44', 
    'K2-SeqExprInstanceOf-45', 
    'K2-SeqExprInstanceOf-46', 
    'K2-SeqExprInstanceOf-47', 
    'K2-SeqExprInstanceOf-48', 
    'K2-SeqExprInstanceOf-49', 
    'K2-SeqExprInstanceOf-50', 
    'K2-SeqExprInstanceOf-51', 
    'K2-SeqExprInstanceOf-52', 
    'K2-SeqExprInstanceOf-53', 
    'K2-SeqExprInstanceOf-54', 
    'K2-SeqExprInstanceOf-55']}, 
   {group_11, [parallel], [
    'K2-SeqExprInstanceOf-56', 
    'K2-SeqExprInstanceOf-57', 
    'K2-SeqExprInstanceOf-58', 
    'K2-SeqExprInstanceOf-59', 
    'K2-SeqExprInstanceOf-60', 
    'K2-SeqExprInstanceOf-61', 
    'K2-SeqExprInstanceOf-62', 
    'K2-SeqExprInstanceOf-63', 
    'K2-SeqExprInstanceOf-64', 
    'K2-SeqExprInstanceOf-65', 
    'K2-SeqExprInstanceOf-66', 
    'K2-SeqExprInstanceOf-67', 
    'K2-SeqExprInstanceOf-68', 
    'K2-SeqExprInstanceOf-69', 
    'K2-SeqExprInstanceOf-70', 
    'K2-SeqExprInstanceOf-71', 
    'K2-SeqExprInstanceOf-72', 
    'K2-SeqExprInstanceOf-73', 
    'K2-SeqExprInstanceOf-74', 
    'K2-SeqExprInstanceOf-75', 
    'K2-SeqExprInstanceOf-76', 
    'K2-SeqExprInstanceOf-77', 
    'K2-SeqExprInstanceOf-78', 
    'K2-SeqExprInstanceOf-79']}, 
   {group_12, [parallel], [
    'K2-SeqExprInstanceOf-80', 
    'K2-SeqExprInstanceOf-81', 
    'K2-SeqExprInstanceOf-82', 
    'K2-SeqExprInstanceOf-83', 
    'K2-SeqExprInstanceOf-84', 
    'K2-SeqExprInstanceOf-85', 
    'K2-SeqExprInstanceOf-86', 
    'K2-SeqExprInstanceOf-87', 
    'K2-SeqExprInstanceOf-88', 
    'K2-SeqExprInstanceOf-89', 
    'K2-SeqExprInstanceOf-90', 
    'K2-SeqExprInstanceOf-91', 
    'K2-SeqExprInstanceOf-92', 
    'K2-SeqExprInstanceOf-93', 
    'K2-SeqExprInstanceOf-94', 
    'K2-SeqExprInstanceOf-95', 
    'K2-SeqExprInstanceOf-96', 
    'K2-SeqExprInstanceOf-97', 
    'K2-SeqExprInstanceOf-98', 
    'K2-SeqExprInstanceOf-99', 
    'K2-SeqExprInstanceOf-100', 
    'cbcl-instance-of-001']}].
environment('ListUnionTypes',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ValidateExpr/listunion.xsd"),"http://www.w3.org/XQueryTest/ListUnionTypes"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('union-List-defined-Types',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "SchemaImport/unionListDefined.xsd"),"http://www.w3.org/XQueryTest/unionListDefined"}]}, 
{resources, []}, 
{modules, []}
].
'instanceof1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:boolean(\"true\") instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1267.43233E12 instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof67'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof68'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof69'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof70'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof71'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof72'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof73'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof74'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof75'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof76'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof77'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof78'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof79'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof80'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof81'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof82'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof83'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof84'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof85'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof85.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof86'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof86.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof87'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof87.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof88'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"A String Function\" instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof88.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof89'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof89.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof90'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof90.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof91'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof91.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof92'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof92.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof93'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof93.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof94'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof94.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof95'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof95.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof96'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof96.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof97'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof97.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof98'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof98.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof99'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967.543233 instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof99.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof100'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:dateTime", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:time", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:date", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:float", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof108'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof108.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof109'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof109.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof110'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "12678967543233 instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof110.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof111'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:NMTOKEN('abc') instance of xs:NMTOKENS", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof111.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof112'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof113'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof114'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof115'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof116'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof117'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof118'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof119'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof120'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'instanceof121'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(*)
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof121.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof122'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(node()?) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof122.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof123'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(node()) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof123.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof124'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(element(A)?) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof124.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof125'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(element(A)) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof125.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof126'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(element(A)) as xs:anyAtomicType
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof126.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof127'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(element(A)) as xs:string+
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof127.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof128'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(element(A)) as xs:NCName
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof128.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof129'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(node()*) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof129.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof130'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#1 instance of function(item()) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof130.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof131'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         name#0 instance of function(item()) as xs:string
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof131.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof132'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         filter#2 instance of function(item()*, function(item()) as xs:boolean) as item()*
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof132.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof133'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         filter#2 instance of function(item()*, function(item()*) as xs:boolean) as item()*
       ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof133.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof134'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         filter#2 instance of function(function(*), item()*) as item()*
       ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('union-List-defined-Types',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "instanceof134.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'instanceof135'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof136'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof137'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof138'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof139'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof140'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof141'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'instanceof142'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"schemaImport"}. 
'K-SeqExprInstanceOf-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of item()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of item()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of xs:integer?", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1 instance of xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "false() instance of xs:boolean", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "false() instance of xs:anyAtomicType", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "\"a string\" instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(\"false\" instance of xs:boolean)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1.1 instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1.1 instance of xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:anyURI(\"http://www.example.com/\") instance of xs:anyURI", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(xs:anyURI(\"http://www.example.com/\") instance of xs:string)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(\"a string\" instance of xs:untypedAtomic)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, 5) instance of xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not((1, 2, 3, 4, 5) instance of xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not((1, 2, 3, 4, 5) instance of xs:integer?)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, 5) instance of xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, 3, 4, 5) instance of item()+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not((1, 2, \"a string\", 4, 5) instance of xs:integer*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not((1, 2, 1.1, 4, 5) instance of xs:integer*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not((1, 2, \"a string\", 4, 5) instance of xs:string*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, \"a string\", 4, 5) instance of xs:anyAtomicType*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, 2, count(\"one\"), 4, 5) instance of xs:integer+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of element())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of processing-instruction())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of comment())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of text())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of node())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of element())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of processing-instruction())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of comment())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(1 instance of empty-sequence())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not( (1, 2, 3) instance of empty-sequence())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "() instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(((()))) instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((), (), ()) instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((), \"xs:string\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(\"xs:string\", (), \"xs:string\") instance of xs:string+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1.1, (), 1) instance of xs:decimal+", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(\"a string\" instance of xs:NOTATION)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(\"a string\" instance of xs:QName)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "1.1 instance of xs:decimal and not(1.1 instance of xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of prefixDoesNotExist:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of xs:doesNotExist", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of xs:qname", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of none", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of void", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of none()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "3 instance of void()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"XPST0051") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "error() instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "error() instance of xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "error() instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(error(), 1) instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, error()) instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(error(), 1) instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(1, error()) instance of xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(error(), 1) instance of xs:integer*", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "not(((10)div(3)) instance of xs:integer)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((10)idiv(3)) instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqExprInstanceOf-66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "((10)mod(3)) instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-SeqExprInstanceOf-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of element()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of element(*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of element(e)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of element(name)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of attribute()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of attribute(*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e/> instance of attribute(e)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of attribute(e)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of attribute()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of attribute(*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of element(e)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of element()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of element(*)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "attribute e{\"content\"} instance of attribute(name)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(0) instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(-1) instance of xs:negativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(0) instance of xs:long", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(0) instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(0) instance of xs:short", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:byte(0) instance of xs:byte", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(0) instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(0) instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(0) instance of xs:unsignedLong", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedInt(0) instance of xs:unsignedInt", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(0) instance of xs:unsignedShort", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedByte(0) instance of xs:unsignedByte", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(1) instance of xs:positiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:normalizedString(\"NCName\") instance of xs:normalizedString", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:token(\"NCName\") instance of xs:token", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:language(\"NCName\") instance of xs:language", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:NMTOKEN(\"NCName\") instance of xs:NMTOKEN", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:Name(\"NCName\") instance of xs:Name", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:NCName(\"NCName\") instance of xs:NCName", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:ID(\"NCName\") instance of xs:ID", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:IDREF(\"NCName\") instance of xs:IDREF", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:ENTITY(\"NCName\") instance of xs:ENTITY", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:normalizedString(\"ncname\") instance of xs:string", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:token(\"ncname\") instance of xs:normalizedString", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:language(\"ncname\") instance of xs:token", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:NMTOKEN(\"ncname\") instance of xs:token", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:Name(\"ncname\") instance of xs:token", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:NCName(\"ncname\") instance of xs:Name", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:ID(\"ncname\") instance of xs:NCName", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:IDREF(\"ncname\") instance of xs:NCName", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:ENTITY(\"ncname\") instance of xs:NCName", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(\"0\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(\"-1\") instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"0\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(\"0\") instance of xs:long", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(\"0\") instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:byte(\"0\") instance of xs:short", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"0\") instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(\"0\") instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedInt(\"0\") instance of xs:unsignedLong", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(\"0\") instance of xs:unsignedInt", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedByte(\"0\") instance of xs:unsignedShort", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"1\") instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(\"1\") instance of xs:negativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-59.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") instance of xs:negativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-60.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(\"1\") instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-61.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"1\") instance of xs:negativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-62.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"1\") instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-63.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"1\") instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(\"1\") instance of xs:positiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:token(\"ncname\") instance of xs:NCName", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-67'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:ID(\"ncname\") instance of xs:IDREF", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-68'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:ENTITY(\"ncname\") instance of xs:IDREF", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-69'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:language(\"ncname\") instance of xs:NMTOKEN", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-70'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:Name(\"ncname\") instance of xs:language", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-71'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:normalizedString(\"ncname\") instance of xs:token", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-72'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e a=\"\"/>/attribute::a instance of attribute(a)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-73'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e a=\"\"/>/@a instance of attribute(a)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-74'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:byte(xs:double(\"1\")) instance of xs:byte", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-75'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(xs:double(\"0\")) instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-75.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-76'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(xs:double(\"-4\")) instance of xs:negativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-76.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-77'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(xs:double(\"-4\")) instance of xs:long", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-77.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-78'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(xs:double(\"-4\")) instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-78.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-79'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(xs:double(\"-4\")) instance of xs:short", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-79.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-80'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(xs:double(\"4\")) instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-80.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-81'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(xs:double(\"4\")) instance of xs:unsignedLong", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-81.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-82'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedInt(xs:double(\"4\")) instance of xs:unsignedInt", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-82.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-83'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(xs:double(\"4\")) instance of xs:unsignedShort", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-83.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-84'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedByte(xs:double(\"4\")) instance of xs:unsignedByte", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-84.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-85'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(xs:double(\"4\")) instance of xs:positiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-85.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-86'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:byte(xs:float(\"1\")) instance of xs:byte", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-86.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-87'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonPositiveInteger(xs:float(\"0\")) instance of xs:nonPositiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-87.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-88'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:negativeInteger(xs:float(\"-4\")) instance of xs:negativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-88.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-89'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:long(xs:float(\"-4\")) instance of xs:long", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-89.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-90'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:int(xs:float(\"-4\")) instance of xs:int", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-90.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-91'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:short(xs:float(\"-4\")) instance of xs:short", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-91.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-92'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:nonNegativeInteger(xs:float(\"4\")) instance of xs:nonNegativeInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-92.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-93'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedLong(xs:float(\"4\")) instance of xs:unsignedLong", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-93.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-94'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedInt(xs:float(\"4\")) instance of xs:unsignedInt", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-94.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-95'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedShort(xs:float(\"4\")) instance of xs:unsignedShort", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-95.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-96'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:unsignedByte(xs:float(\"4\")) instance of xs:unsignedByte", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-96.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-97'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "xs:positiveInteger(xs:float(\"4\")) instance of xs:positiveInteger", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-97.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-98'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "node-name(text {\"\"}) instance of empty-sequence()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-98.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-99'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<e attr=\"\"/>/(@attr instance of attribute(), @* instance of attribute())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-99.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqExprInstanceOf-100'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "<a><b/></a>/(b instance of element(), * instance of element())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-SeqExprInstanceOf-100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-instance-of-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $x in (xs:integer(1), xs:decimal(1)) return (((($x + 1) * 2) - 1) instance of xs:integer)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-instance-of-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.