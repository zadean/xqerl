-module('fn_count_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-countint1args-1'/1]).
-export(['fn-countint1args-2'/1]).
-export(['fn-countint1args-3'/1]).
-export(['fn-countintg1args-1'/1]).
-export(['fn-countintg1args-2'/1]).
-export(['fn-countintg1args-3'/1]).
-export(['fn-countdec1args-1'/1]).
-export(['fn-countdec1args-2'/1]).
-export(['fn-countdec1args-3'/1]).
-export(['fn-countdbl1args-1'/1]).
-export(['fn-countdbl1args-2'/1]).
-export(['fn-countdbl1args-3'/1]).
-export(['fn-countflt1args-1'/1]).
-export(['fn-countflt1args-2'/1]).
-export(['fn-countflt1args-3'/1]).
-export(['fn-countlng1args-1'/1]).
-export(['fn-countlng1args-2'/1]).
-export(['fn-countlng1args-3'/1]).
-export(['fn-countusht1args-1'/1]).
-export(['fn-countusht1args-2'/1]).
-export(['fn-countusht1args-3'/1]).
-export(['fn-countnint1args-1'/1]).
-export(['fn-countnint1args-2'/1]).
-export(['fn-countnint1args-3'/1]).
-export(['fn-countpint1args-1'/1]).
-export(['fn-countpint1args-2'/1]).
-export(['fn-countpint1args-3'/1]).
-export(['fn-countulng1args-1'/1]).
-export(['fn-countulng1args-2'/1]).
-export(['fn-countulng1args-3'/1]).
-export(['fn-countnpi1args-1'/1]).
-export(['fn-countnpi1args-2'/1]).
-export(['fn-countnpi1args-3'/1]).
-export(['fn-countnni1args-1'/1]).
-export(['fn-countnni1args-2'/1]).
-export(['fn-countnni1args-3'/1]).
-export(['fn-countsht1args-1'/1]).
-export(['fn-countsht1args-2'/1]).
-export(['fn-countsht1args-3'/1]).
-export(['K-SeqCountFunc-1'/1]).
-export(['K-SeqCountFunc-2'/1]).
-export(['K-SeqCountFunc-3'/1]).
-export(['K-SeqCountFunc-4'/1]).
-export(['K-SeqCountFunc-5'/1]).
-export(['K-SeqCountFunc-6'/1]).
-export(['K-SeqCountFunc-7'/1]).
-export(['K-SeqCountFunc-8'/1]).
-export(['K-SeqCountFunc-9'/1]).
-export(['K-SeqCountFunc-10'/1]).
-export(['K-SeqCountFunc-11'/1]).
-export(['K-SeqCountFunc-12'/1]).
-export(['K-SeqCountFunc-13'/1]).
-export(['K-SeqCountFunc-14'/1]).
-export(['K-SeqCountFunc-15'/1]).
-export(['K-SeqCountFunc-16'/1]).
-export(['K-SeqCountFunc-17'/1]).
-export(['K-SeqCountFunc-18'/1]).
-export(['K2-SeqCountFunc-1'/1]).
-export(['Count001'/1]).
-export(['Count002'/1]).
-export(['Count003'/1]).
-export(['Count004'/1]).
-export(['Count005'/1]).
-export(['Count006'/1]).
-export(['Count007'/1]).
-export(['Count008'/1]).
-export(['Count009'/1]).
-export(['Count010'/1]).
-export(['Count011'/1]).
-export(['Count012'/1]).
-export(['Count013'/1]).
-export(['Count014'/1]).
-export(['Count015'/1]).
-export(['cbcl-count-001'/1]).
-export(['cbcl-count-002'/1]).
-export(['cbcl-count-003'/1]).
-export(['cbcl-count-005'/1]).
-export(['cbcl-count-006'/1]).
-export(['cbcl-count-007'/1]).
-export(['cbcl-count-008'/1]).
-export(['cbcl-count-009'/1]).
-export(['cbcl-count-010'/1]).
-export(['cbcl-count-011'/1]).
-export(['cbcl-count-012'/1]).
-export(['cbcl-count-013'/1]).
-export(['cbcl-count-014'/1]).
-export(['cbcl-count-015'/1]).
-export(['cbcl-count-016'/1]).
-export(['cbcl-count-017'/1]).
-export(['cbcl-count-018'/1]).
-export(['cbcl-count-019'/1]).
-export(['cbcl-count-020'/1]).
-export(['cbcl-count-021'/1]).
-export(['cbcl-count-022'/1]).
-export(['cbcl-count-023'/1]).
-export(['cbcl-count-024'/1]).
-export(['cbcl-count-025'/1]).
-export(['cbcl-count-026'/1]).
-export(['cbcl-count-027'/1]).
-export(['cbcl-count-028'/1]).
-export(['cbcl-count-029'/1]).
-export(['cbcl-count-030'/1]).
-export(['cbcl-count-031'/1]).
-export(['cbcl-count-032'/1]).
-export(['cbcl-count-033'/1]).
-export(['cbcl-count-034'/1]).
-export(['cbcl-count-035'/1]).
-export(['cbcl-count-036'/1]).
-export(['cbcl-count-037'/1]).
-export(['cbcl-count-038'/1]).
-export(['cbcl-count-039'/1]).
-export(['cbcl-count-040'/1]).
-export(['cbcl-count-041'/1]).
-export(['cbcl-count-042'/1]).
-export(['cbcl-count-043'/1]).
-export(['cbcl-count-044'/1]).
-export(['cbcl-count-045'/1]).
-export(['cbcl-count-046'/1]).
-export(['cbcl-count-047'/1]).
-export(['cbcl-count-048'/1]).
-export(['cbcl-count-049'/1]).
-export(['cbcl-count-050'/1]).
-export(['cbcl-count-051'/1]).
-export(['cbcl-count-052'/1]).
-export(['cbcl-count-053'/1]).
-export(['cbcl-count-054'/1]).
-export(['cbcl-count-055'/1]).
-export(['cbcl-count-056'/1]).
-export(['cbcl-count-057'/1]).
-export(['cbcl-count-058'/1]).
-export(['cbcl-count-059'/1]).
-export(['cbcl-count-060'/1]).
-export(['cbcl-count-061'/1]).
-export(['cbcl-count-062'/1]).
-export(['cbcl-count-063'/1]).
-export(['cbcl-count-064'/1]).
-export(['cbcl-count-065'/1]).
-export(['cbcl-count-066'/1]).
-export(['cbcl-count-067'/1]).
-export(['cbcl-count-068'/1]).
-export(['cbcl-count-069'/1]).
-export(['cbcl-count-070'/1]).
-export(['cbcl-count-071'/1]).
-export(['cbcl-count-072'/1]).
-export(['cbcl-count-073'/1]).
-export(['cbcl-count-074'/1]).
-export(['cbcl-count-075'/1]).
-export(['cbcl-count-076'/1]).
-export(['cbcl-count-077'/1]).
-export(['cbcl-count-078'/1]).
-export(['cbcl-count-079'/1]).
-export(['cbcl-count-080'/1]).
-export(['cbcl-count-081'/1]).
-export(['cbcl-count-082'/1]).
-export(['cbcl-count-083'/1]).
-export(['cbcl-count-084'/1]).
-export(['cbcl-count-085'/1]).
-export(['cbcl-count-086'/1]).
-export(['cbcl-count-087'/1]).
-export(['cbcl-count-088'/1]).
-export(['cbcl-count-089'/1]).
-export(['cbcl-count-090'/1]).
-export(['cbcl-count-091'/1]).
-export(['cbcl-count-092'/1]).
-export(['cbcl-count-093'/1]).
-export(['cbcl-count-094'/1]).
-export(['cbcl-count-095'/1]).
-export(['cbcl-count-096'/1]).
-export(['cbcl-count-097'/1]).
-export(['cbcl-count-098'/1]).
-export(['cbcl-count-099'/1]).
-export(['cbcl-count-100'/1]).
-export(['cbcl-count-101'/1]).
-export(['cbcl-count-102'/1]).
-export(['cbcl-count-103'/1]).
-export(['cbcl-count-104'/1]).
-export(['cbcl-count-105'/1]).
-export(['cbcl-count-106'/1]).
-export(['cbcl-count-107'/1]).
-export(['cbcl-count-108'/1]).
-export(['cbcl-count-109'/1]).
-export(['cbcl-count-110'/1]).
-export(['cbcl-count-111'/1]).
-export(['cbcl-count-112'/1]).
-export(['cbcl-count-113'/1]).
-export(['cbcl-count-114'/1]).
-export(['cbcl-count-115'/1]).
-export(['cbcl-count-116'/1]).
-export(['cbcl-count-117'/1]).
-export(['cbcl-count-118'/1]).
-export(['cbcl-count-119'/1]).
-export(['cbcl-count-120'/1]).
-export(['cbcl-count-121'/1]).
-export(['cbcl-count-122'/1]).
-export(['cbcl-count-123'/1]).
-export(['cbcl-count-124'/1]).
-export(['cbcl-count-125'/1]).
-export(['cbcl-count-126'/1]).
-export(['cbcl-count-127'/1]).
-export(['cbcl-count-128'/1]).
-export(['cbcl-count-129'/1]).
-export(['cbcl-count-130'/1]).
-export(['cbcl-count-131'/1]).
-export(['cbcl-count-132'/1]).
-export(['cbcl-count-133'/1]).
-export(['cbcl-count-134'/1]).
-export(['cbcl-count-135'/1]).
-export(['cbcl-count-136'/1]).
-export(['cbcl-count-137'/1]).
-export(['cbcl-count-138'/1]).
-export(['cbcl-count-139'/1]).
-export(['cbcl-count-140'/1]).
-export(['cbcl-count-141'/1]).
-export(['cbcl-count-142'/1]).
-export(['cbcl-count-143'/1]).
-export(['cbcl-count-144'/1]).
-export(['cbcl-count-145'/1]).
-export(['cbcl-count-146'/1]).
-export(['cbcl-count-147'/1]).
-export(['cbcl-count-148'/1]).
-export(['cbcl-count-149'/1]).
-export(['cbcl-count-150'/1]).
-export(['cbcl-count-151'/1]).
-export(['cbcl-count-152'/1]).
-export(['cbcl-count-153'/1]).
-export(['cbcl-count-154'/1]).
-export(['cbcl-count-155'/1]).
-export(['cbcl-count-156'/1]).
-export(['cbcl-count-157'/1]).
-export(['cbcl-count-158'/1]).
-export(['cbcl-count-159'/1]).
-export(['cbcl-count-160'/1]).
-export(['cbcl-count-161'/1]).
-export(['cbcl-count-162'/1]).
-export(['cbcl-count-163'/1]).
-export(['cbcl-count-164'/1]).
-export(['cbcl-count-165'/1]).
-export(['cbcl-count-166'/1]).
-export(['cbcl-count-167'/1]).
-export(['cbcl-count-168'/1]).
-export(['cbcl-count-169'/1]).
-export(['cbcl-count-170'/1]).
-export(['cbcl-count-171'/1]).
-export(['cbcl-count-172'/1]).
-export(['cbcl-count-173'/1]).
-export(['cbcl-count-174'/1]).
-export(['cbcl-count-175'/1]).
-export(['cbcl-count-176'/1]).
-export(['cbcl-count-177'/1]).
-export(['cbcl-count-178'/1]).
-export(['cbcl-count-179'/1]).
-export(['cbcl-count-180'/1]).
-export(['cbcl-count-181'/1]).
-export(['cbcl-count-182'/1]).
-export(['cbcl-count-183'/1]).
-export(['cbcl-count-184'/1]).
-export(['cbcl-count-185'/1]).
-export(['cbcl-count-186'/1]).
-export(['cbcl-count-187'/1]).
-export(['cbcl-count-188'/1]).
-export(['cbcl-count-189'/1]).
-export(['cbcl-count-190'/1]).
-export(['cbcl-count-191'/1]).
-export(['cbcl-count-192'/1]).
-export(['cbcl-count-193'/1]).
-export(['cbcl-count-194'/1]).
-export(['cbcl-count-195'/1]).
-export(['cbcl-count-196'/1]).
-export(['cbcl-count-197'/1]).
-export(['cbcl-count-198'/1]).
-export(['cbcl-count-199'/1]).
-export(['cbcl-count-200'/1]).
-export(['cbcl-count-201'/1]).
-export(['cbcl-count-202'/1]).
-export(['cbcl-count-203'/1]).
-export(['cbcl-count-204'/1]).
-export(['cbcl-count-205'/1]).
-export(['cbcl-count-206'/1]).
-export(['cbcl-count-207'/1]).
-export(['cbcl-count-208'/1]).
-export(['cbcl-count-209'/1]).
-export(['cbcl-count-210'/1]).
-export(['cbcl-count-211'/1]).
-export(['cbcl-count-212'/1]).
-export(['cbcl-count-213'/1]).
-export(['cbcl-count-214'/1]).
-export(['cbcl-count-215'/1]).
-export(['cbcl-count-216'/1]).
-export(['cbcl-count-217'/1]).
-export(['cbcl-count-218'/1]).
-export(['cbcl-count-219'/1]).
-export(['cbcl-count-220'/1]).
-export(['cbcl-count-221'/1]).
-export(['cbcl-count-222'/1]).
-export(['cbcl-count-223'/1]).
-export(['cbcl-count-224'/1]).
-export(['cbcl-count-225'/1]).
-export(['cbcl-count-226'/1]).
-export(['cbcl-count-227'/1]).
-export(['cbcl-count-228'/1]).
-export(['cbcl-count-229'/1]).
-export(['cbcl-count-230'/1]).
-export(['cbcl-count-231'/1]).
-export(['cbcl-count-232'/1]).
-export(['cbcl-count-233'/1]).
-export(['cbcl-count-234'/1]).
-export(['cbcl-count-235'/1]).
-export(['cbcl-count-236'/1]).
-export(['cbcl-count-237'/1]).
-export(['cbcl-count-238'/1]).
-export(['cbcl-count-239'/1]).
-export(['cbcl-count-240'/1]).
-export(['cbcl-count-241'/1]).
-export(['cbcl-count-242'/1]).
-export(['cbcl-count-243'/1]).
-export(['cbcl-count-244'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-countint1args-1',
   'fn-countint1args-2',
   'fn-countint1args-3',
   'fn-countintg1args-1',
   'fn-countintg1args-2',
   'fn-countintg1args-3',
   'fn-countdec1args-1',
   'fn-countdec1args-2',
   'fn-countdec1args-3',
   'fn-countdbl1args-1',
   'fn-countdbl1args-2',
   'fn-countdbl1args-3',
   'fn-countflt1args-1',
   'fn-countflt1args-2',
   'fn-countflt1args-3',
   'fn-countlng1args-1',
   'fn-countlng1args-2',
   'fn-countlng1args-3',
   'fn-countusht1args-1',
   'fn-countusht1args-2',
   'fn-countusht1args-3',
   'fn-countnint1args-1',
   'fn-countnint1args-2',
   'fn-countnint1args-3',
   'fn-countpint1args-1',
   'fn-countpint1args-2',
   'fn-countpint1args-3',
   'fn-countulng1args-1',
   'fn-countulng1args-2',
   'fn-countulng1args-3',
   'fn-countnpi1args-1',
   'fn-countnpi1args-2',
   'fn-countnpi1args-3',
   'fn-countnni1args-1',
   'fn-countnni1args-2',
   'fn-countnni1args-3',
   'fn-countsht1args-1',
   'fn-countsht1args-2',
   'fn-countsht1args-3',
   'K-SeqCountFunc-1',
   'K-SeqCountFunc-2',
   'K-SeqCountFunc-3',
   'K-SeqCountFunc-4',
   'K-SeqCountFunc-5',
   'K-SeqCountFunc-6',
   'K-SeqCountFunc-7',
   'K-SeqCountFunc-8',
   'K-SeqCountFunc-9',
   'K-SeqCountFunc-10',
   'K-SeqCountFunc-11',
   'K-SeqCountFunc-12',
   'K-SeqCountFunc-13',
   'K-SeqCountFunc-14',
   'K-SeqCountFunc-15',
   'K-SeqCountFunc-16',
   'K-SeqCountFunc-17',
   'K-SeqCountFunc-18',
   'K2-SeqCountFunc-1',
   'Count001',
   'Count002',
   'Count003',
   'Count004',
   'Count005',
   'Count006',
   'Count007',
   'Count008',
   'Count009',
   'Count010',
   'Count011',
   'Count012',
   'Count013',
   'Count014',
   'Count015',
   'cbcl-count-001',
   'cbcl-count-002',
   'cbcl-count-003',
   'cbcl-count-005',
   'cbcl-count-006',
   'cbcl-count-007',
   'cbcl-count-008',
   'cbcl-count-009',
   'cbcl-count-010',
   'cbcl-count-011',
   'cbcl-count-012',
   'cbcl-count-013',
   'cbcl-count-014',
   'cbcl-count-015',
   'cbcl-count-016',
   'cbcl-count-017',
   'cbcl-count-018',
   'cbcl-count-019',
   'cbcl-count-020',
   'cbcl-count-021',
   'cbcl-count-022',
   'cbcl-count-023',
   'cbcl-count-024',
   'cbcl-count-025',
   'cbcl-count-026',
   'cbcl-count-027',
   'cbcl-count-028',
   'cbcl-count-029',
   'cbcl-count-030',
   'cbcl-count-031',
   'cbcl-count-032',
   'cbcl-count-033',
   'cbcl-count-034',
   'cbcl-count-035',
   'cbcl-count-036',
   'cbcl-count-037',
   'cbcl-count-038',
   'cbcl-count-039',
   'cbcl-count-040',
   'cbcl-count-041',
   'cbcl-count-042',
   'cbcl-count-043',
   'cbcl-count-044',
   'cbcl-count-045',
   'cbcl-count-046',
   'cbcl-count-047',
   'cbcl-count-048',
   'cbcl-count-049',
   'cbcl-count-050',
   'cbcl-count-051',
   'cbcl-count-052',
   'cbcl-count-053',
   'cbcl-count-054',
   'cbcl-count-055',
   'cbcl-count-056',
   'cbcl-count-057',
   'cbcl-count-058',
   'cbcl-count-059',
   'cbcl-count-060',
   'cbcl-count-061',
   'cbcl-count-062',
   'cbcl-count-063',
   'cbcl-count-064',
   'cbcl-count-065',
   'cbcl-count-066',
   'cbcl-count-067',
   'cbcl-count-068',
   'cbcl-count-069',
   'cbcl-count-070',
   'cbcl-count-071',
   'cbcl-count-072',
   'cbcl-count-073',
   'cbcl-count-074',
   'cbcl-count-075',
   'cbcl-count-076',
   'cbcl-count-077',
   'cbcl-count-078',
   'cbcl-count-079',
   'cbcl-count-080',
   'cbcl-count-081',
   'cbcl-count-082',
   'cbcl-count-083',
   'cbcl-count-084',
   'cbcl-count-085',
   'cbcl-count-086',
   'cbcl-count-087',
   'cbcl-count-088',
   'cbcl-count-089',
   'cbcl-count-090',
   'cbcl-count-091',
   'cbcl-count-092',
   'cbcl-count-093',
   'cbcl-count-094',
   'cbcl-count-095',
   'cbcl-count-096',
   'cbcl-count-097',
   'cbcl-count-098',
   'cbcl-count-099',
   'cbcl-count-100',
   'cbcl-count-101',
   'cbcl-count-102',
   'cbcl-count-103',
   'cbcl-count-104',
   'cbcl-count-105',
   'cbcl-count-106',
   'cbcl-count-107',
   'cbcl-count-108',
   'cbcl-count-109',
   'cbcl-count-110',
   'cbcl-count-111',
   'cbcl-count-112',
   'cbcl-count-113',
   'cbcl-count-114',
   'cbcl-count-115',
   'cbcl-count-116',
   'cbcl-count-117',
   'cbcl-count-118',
   'cbcl-count-119',
   'cbcl-count-120',
   'cbcl-count-121',
   'cbcl-count-122',
   'cbcl-count-123',
   'cbcl-count-124',
   'cbcl-count-125',
   'cbcl-count-126',
   'cbcl-count-127',
   'cbcl-count-128',
   'cbcl-count-129',
   'cbcl-count-130',
   'cbcl-count-131',
   'cbcl-count-132',
   'cbcl-count-133',
   'cbcl-count-134',
   'cbcl-count-135',
   'cbcl-count-136',
   'cbcl-count-137',
   'cbcl-count-138',
   'cbcl-count-139',
   'cbcl-count-140',
   'cbcl-count-141',
   'cbcl-count-142',
   'cbcl-count-143',
   'cbcl-count-144',
   'cbcl-count-145',
   'cbcl-count-146',
   'cbcl-count-147',
   'cbcl-count-148',
   'cbcl-count-149',
   'cbcl-count-150',
   'cbcl-count-151',
   'cbcl-count-152',
   'cbcl-count-153',
   'cbcl-count-154',
   'cbcl-count-155',
   'cbcl-count-156',
   'cbcl-count-157',
   'cbcl-count-158',
   'cbcl-count-159',
   'cbcl-count-160',
   'cbcl-count-161',
   'cbcl-count-162',
   'cbcl-count-163',
   'cbcl-count-164',
   'cbcl-count-165',
   'cbcl-count-166',
   'cbcl-count-167',
   'cbcl-count-168',
   'cbcl-count-169',
   'cbcl-count-170',
   'cbcl-count-171',
   'cbcl-count-172',
   'cbcl-count-173',
   'cbcl-count-174',
   'cbcl-count-175',
   'cbcl-count-176',
   'cbcl-count-177',
   'cbcl-count-178',
   'cbcl-count-179',
   'cbcl-count-180',
   'cbcl-count-181',
   'cbcl-count-182',
   'cbcl-count-183',
   'cbcl-count-184',
   'cbcl-count-185',
   'cbcl-count-186',
   'cbcl-count-187',
   'cbcl-count-188',
   'cbcl-count-189',
   'cbcl-count-190',
   'cbcl-count-191',
   'cbcl-count-192',
   'cbcl-count-193',
   'cbcl-count-194',
   'cbcl-count-195',
   'cbcl-count-196',
   'cbcl-count-197',
   'cbcl-count-198',
   'cbcl-count-199',
   'cbcl-count-200',
   'cbcl-count-201',
   'cbcl-count-202',
   'cbcl-count-203',
   'cbcl-count-204',
   'cbcl-count-205',
   'cbcl-count-206',
   'cbcl-count-207',
   'cbcl-count-208',
   'cbcl-count-209',
   'cbcl-count-210',
   'cbcl-count-211',
   'cbcl-count-212',
   'cbcl-count-213',
   'cbcl-count-214',
   'cbcl-count-215',
   'cbcl-count-216',
   'cbcl-count-217',
   'cbcl-count-218',
   'cbcl-count-219',
   'cbcl-count-220',
   'cbcl-count-221',
   'cbcl-count-222',
   'cbcl-count-223',
   'cbcl-count-224',
   'cbcl-count-225',
   'cbcl-count-226',
   'cbcl-count-227',
   'cbcl-count-228',
   'cbcl-count-229',
   'cbcl-count-230',
   'cbcl-count-231',
   'cbcl-count-232',
   'cbcl-count-233',
   'cbcl-count-234',
   'cbcl-count-235',
   'cbcl-count-236',
   'cbcl-count-237',
   'cbcl-count-238',
   'cbcl-count-239',
   'cbcl-count-240',
   'cbcl-count-241',
   'cbcl-count-242',
   'cbcl-count-243',
   'cbcl-count-244'].
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
'fn-countint1args-1'(_Config) ->
   Qry = "fn:count((xs:int(\"-2147483648\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countint1args-2'(_Config) ->
   Qry = "fn:count((xs:int(\"-1873914410\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countint1args-3'(_Config) ->
   Qry = "fn:count((xs:int(\"2147483647\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countintg1args-1'(_Config) ->
   Qry = "fn:count((xs:integer(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countintg1args-2'(_Config) ->
   Qry = "fn:count((xs:integer(\"830993497117024304\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countintg1args-3'(_Config) ->
   Qry = "fn:count((xs:integer(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countdec1args-1'(_Config) ->
   Qry = "fn:count((xs:decimal(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countdec1args-2'(_Config) ->
   Qry = "fn:count((xs:decimal(\"617375191608514839\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countdec1args-3'(_Config) ->
   Qry = "fn:count((xs:decimal(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countdbl1args-1'(_Config) ->
   Qry = "fn:count((xs:double(\"-1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countdbl1args-2'(_Config) ->
   Qry = "fn:count((xs:double(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countdbl1args-3'(_Config) ->
   Qry = "fn:count((xs:double(\"1.7976931348623157E308\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countflt1args-1'(_Config) ->
   Qry = "fn:count((xs:float(\"-3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countflt1args-2'(_Config) ->
   Qry = "fn:count((xs:float(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countflt1args-3'(_Config) ->
   Qry = "fn:count((xs:float(\"3.4028235E38\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countlng1args-1'(_Config) ->
   Qry = "fn:count((xs:long(\"-92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countlng1args-2'(_Config) ->
   Qry = "fn:count((xs:long(\"-47175562203048468\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countlng1args-3'(_Config) ->
   Qry = "fn:count((xs:long(\"92233720368547758\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countusht1args-1'(_Config) ->
   Qry = "fn:count((xs:unsignedShort(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countusht1args-2'(_Config) ->
   Qry = "fn:count((xs:unsignedShort(\"44633\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countusht1args-3'(_Config) ->
   Qry = "fn:count((xs:unsignedShort(\"65535\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnint1args-1'(_Config) ->
   Qry = "fn:count((xs:negativeInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnint1args-2'(_Config) ->
   Qry = "fn:count((xs:negativeInteger(\"-297014075999096793\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnint1args-3'(_Config) ->
   Qry = "fn:count((xs:negativeInteger(\"-1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countpint1args-1'(_Config) ->
   Qry = "fn:count((xs:positiveInteger(\"1\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countpint1args-2'(_Config) ->
   Qry = "fn:count((xs:positiveInteger(\"52704602390610033\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countpint1args-3'(_Config) ->
   Qry = "fn:count((xs:positiveInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countulng1args-1'(_Config) ->
   Qry = "fn:count((xs:unsignedLong(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countulng1args-2'(_Config) ->
   Qry = "fn:count((xs:unsignedLong(\"130747108607674654\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countulng1args-3'(_Config) ->
   Qry = "fn:count((xs:unsignedLong(\"184467440737095516\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnpi1args-1'(_Config) ->
   Qry = "fn:count((xs:nonPositiveInteger(\"-999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnpi1args-2'(_Config) ->
   Qry = "fn:count((xs:nonPositiveInteger(\"-475688437271870490\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnpi1args-3'(_Config) ->
   Qry = "fn:count((xs:nonPositiveInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnni1args-1'(_Config) ->
   Qry = "fn:count((xs:nonNegativeInteger(\"0\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnni1args-2'(_Config) ->
   Qry = "fn:count((xs:nonNegativeInteger(\"303884545991464527\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countnni1args-3'(_Config) ->
   Qry = "fn:count((xs:nonNegativeInteger(\"999999999999999999\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countsht1args-1'(_Config) ->
   Qry = "fn:count((xs:short(\"-32768\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countsht1args-2'(_Config) ->
   Qry = "fn:count((xs:short(\"-5324\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'fn-countsht1args-3'(_Config) ->
   Qry = "fn:count((xs:short(\"32767\")))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqCountFunc-1'(_Config) ->
   Qry = "count()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqCountFunc-2'(_Config) ->
   Qry = "count(1, ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'K-SeqCountFunc-3'(_Config) ->
   Qry = "count( () ) eq 0",
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
'K-SeqCountFunc-4'(_Config) ->
   Qry = "count( (1, 2, 3) ) eq 3",
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
'K-SeqCountFunc-5'(_Config) ->
   Qry = "count( (1, 2, ()) ) eq 2",
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
'K-SeqCountFunc-6'(_Config) ->
   Qry = "count(()) eq 0",
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
'K-SeqCountFunc-7'(_Config) ->
   Qry = "count(((((()))))) eq 0",
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
'K-SeqCountFunc-8'(_Config) ->
   Qry = "count( (((), (), ()), (), (), (), ()) ) eq 0",
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
'K-SeqCountFunc-9'(_Config) ->
   Qry = "count( (1, 2, 3) ) eq 3",
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
'K-SeqCountFunc-10'(_Config) ->
   Qry = "count( ((), \"one\", 2, \"three\")) eq 3",
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
'K-SeqCountFunc-11'(_Config) ->
   Qry = "count( (\"one\", (2, \"three\")) ) eq 3",
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
'K-SeqCountFunc-12'(_Config) ->
   Qry = "count((1, 2)) eq 2",
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
'K-SeqCountFunc-13'(_Config) ->
   Qry = "count((1, 2, 3, \"four\")) eq 4",
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
'K-SeqCountFunc-14'(_Config) ->
   Qry = "count((1, 2, 3, \"four\")) eq 4",
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
'K-SeqCountFunc-15'(_Config) ->
   Qry = "count(1 to 3) eq 3",
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
'K-SeqCountFunc-16'(_Config) ->
   Qry = "count(reverse((1, 2, 3))) eq 3",
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
'K-SeqCountFunc-17'(_Config) ->
   Qry = "count(reverse((1, 2, 3))) eq 3",
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
'K-SeqCountFunc-18'(_Config) ->
   Qry = "not(count((1, 2, current-time(), 4))) eq false()",
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
'K2-SeqCountFunc-1'(_Config) ->
   Qry = "(1 to 10)/count()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'Count001'(_Config) ->
   Qry = "count(//employee[@name='John Doe 4']) = 1",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count002'(_Config) ->
   Qry = "count(//employee[@name='John Doe 4']) < 2",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count003'(_Config) ->
   Qry = "count(//employee[@name='John Doe 4']) > 0",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count004'(_Config) ->
   Qry = "count(//employee[@name='John Doe 4']/@name) > 0.5",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count005'(_Config) ->
   Qry = "count(//*[@name='John Doe 4']) lt 1.5",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count006'(_Config) ->
   Qry = "count(//*[@name='John Doe 4']) eq 0",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count007'(_Config) ->
   Qry = "count(//*[@name='John Doe 498']) eq 0",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count008'(_Config) ->
   Qry = "count(//*[@name='John Doe 4']) lt 1000000000000",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count009'(_Config) ->
   Qry = "count(//*[@name='John Doe 4']) gt -5",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count010'(_Config) ->
   Qry = "count(//*[@name='John Doe 4']) eq 0.3",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count011'(_Config) ->
   Qry = "count(//node()) gt 40",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count012'(_Config) ->
   Qry = "count(//node()) ne -1",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count013'(_Config) ->
   Qry = "0 = count(//node())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count014'(_Config) ->
   Qry = "40 gt count(//node())",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
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
'Count015'(_Config) ->
   Qry = "count(for $s in (\"red\", \"blue\", \"green\") return string-to-codepoints($s))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-count-001'(_Config) ->
   {skip," HUGE RANGE "}.
'cbcl-count-002'(_Config) ->
   {skip," HUGE RANGE "}.
'cbcl-count-003'(_Config) ->
   Qry = "let $x := year-from-date(current-date()) return count( 1 to $x ) = $x",
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
'cbcl-count-005'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt 25",
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
'cbcl-count-006'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le 25",
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
'cbcl-count-007'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq 25",
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
'cbcl-count-008'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge 25",
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
'cbcl-count-009'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt 25",
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
'cbcl-count-010'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne 25",
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
'cbcl-count-011'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) lt 25)",
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
'cbcl-count-012'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) le 25)",
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
'cbcl-count-013'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) eq 25)",
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
'cbcl-count-014'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ge 25)",
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
'cbcl-count-015'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) gt 25)",
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
'cbcl-count-016'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ne 25)",
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
'cbcl-count-017'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 25 lt count(local:primes(100))",
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
'cbcl-count-018'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 25 le count(local:primes(100))",
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
'cbcl-count-019'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 25 eq count(local:primes(100))",
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
'cbcl-count-020'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 25 ge count(local:primes(100))",
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
'cbcl-count-021'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 25 gt count(local:primes(100))",
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
'cbcl-count-022'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 25 ne count(local:primes(100))",
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
'cbcl-count-023'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(25 lt count(local:primes(100)))",
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
'cbcl-count-024'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(25 le count(local:primes(100)))",
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
'cbcl-count-025'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(25 eq count(local:primes(100)))",
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
'cbcl-count-026'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(25 ge count(local:primes(100)))",
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
'cbcl-count-027'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(25 gt count(local:primes(100)))",
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
'cbcl-count-028'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(25 ne count(local:primes(100)))",
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
'cbcl-count-029'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) lt local:square(5)",
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
'cbcl-count-030'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) le local:square(5)",
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
'cbcl-count-031'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) eq local:square(5)",
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
'cbcl-count-032'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) ge local:square(5)",
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
'cbcl-count-033'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) gt local:square(5)",
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
'cbcl-count-034'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) ne local:square(5)",
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
'cbcl-count-035'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(2, 100)) lt count(local:primes(100, 200))",
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
'cbcl-count-036'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(2, 100)) le count(local:primes(100, 200))",
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
'cbcl-count-037'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(2, 100)) eq count(local:primes(100, 200))",
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
'cbcl-count-038'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(2, 100)) ge count(local:primes(100, 200))",
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
'cbcl-count-039'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(2, 100)) gt count(local:primes(100, 200))",
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
'cbcl-count-040'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(2, 100)) ne count(local:primes(100, 200))",
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
'cbcl-count-041'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt -1",
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
'cbcl-count-042'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le -1",
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
'cbcl-count-043'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq -1",
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
'cbcl-count-044'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge -1",
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
'cbcl-count-045'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt -1",
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
'cbcl-count-046'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne -1",
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
'cbcl-count-047'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) lt -local:square(5)",
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
'cbcl-count-048'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) le -local:square(5)",
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
'cbcl-count-049'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) eq -local:square(5)",
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
'cbcl-count-050'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) ge -local:square(5)",
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
'cbcl-count-051'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) gt -local:square(5)",
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
'cbcl-count-052'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:integer) { $n * $n }; count(local:primes(100)) ne -local:square(5)",
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
'cbcl-count-053'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(2, 100)) lt count(local:primes(100, 200)))",
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
'cbcl-count-054'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(2, 100)) le count(local:primes(100, 200)))",
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
'cbcl-count-055'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(2, 100)) eq count(local:primes(100, 200)))",
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
'cbcl-count-056'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(2, 100)) ge count(local:primes(100, 200)))",
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
'cbcl-count-057'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(2, 100)) gt count(local:primes(100, 200)))",
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
'cbcl-count-058'(_Config) ->
   Qry = "declare function local:primes($s as xs:integer, $n as xs:integer) { let $start := if ($s lt 2) then 2 else $s return for $i in $s to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(2, 100)) ne count(local:primes(100, 200)))",
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
'cbcl-count-059'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt 25.5",
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
'cbcl-count-060'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le 25.5",
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
'cbcl-count-061'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq 25.5",
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
'cbcl-count-062'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge 25.5",
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
'cbcl-count-063'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt 25.5",
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
'cbcl-count-064'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne 25.5",
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
'cbcl-count-065'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) lt 25.5)",
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
'cbcl-count-066'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) le 25.5)",
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
'cbcl-count-067'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) eq 25.5)",
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
'cbcl-count-068'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ge 25.5)",
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
'cbcl-count-069'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) gt 25.5)",
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
'cbcl-count-070'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ne 25.5)",
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
'cbcl-count-071'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 24.5 lt count(local:primes(100))",
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
'cbcl-count-072'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 24.5 le count(local:primes(100))",
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
'cbcl-count-073'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 24.5 eq count(local:primes(100))",
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
'cbcl-count-074'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 24.5 ge count(local:primes(100))",
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
'cbcl-count-075'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 24.5 gt count(local:primes(100))",
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
'cbcl-count-076'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; 24.5 ne count(local:primes(100))",
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
'cbcl-count-077'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(24.5 lt count(local:primes(100)))",
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
'cbcl-count-078'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(24.5 le count(local:primes(100)))",
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
'cbcl-count-079'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(24.5 eq count(local:primes(100)))",
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
'cbcl-count-080'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(24.5 ge count(local:primes(100)))",
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
'cbcl-count-081'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(24.5 gt count(local:primes(100)))",
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
'cbcl-count-082'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(24.5 ne count(local:primes(100)))",
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
'cbcl-count-083'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) lt local:square(5.1)",
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
'cbcl-count-084'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) le local:square(5.1)",
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
'cbcl-count-085'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) eq local:square(5.1)",
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
'cbcl-count-086'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) ge local:square(5.1)",
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
'cbcl-count-087'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) gt local:square(5.1)",
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
'cbcl-count-088'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) ne local:square(5.1)",
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
'cbcl-count-089'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt -1.5",
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
'cbcl-count-090'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le -1.5",
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
'cbcl-count-091'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq -1.5",
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
'cbcl-count-092'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge -1.5",
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
'cbcl-count-093'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt -1.5",
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
'cbcl-count-094'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne -1.5",
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
'cbcl-count-095'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) lt -local:square(5.0)",
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
'cbcl-count-096'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) le -local:square(5.0)",
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
'cbcl-count-097'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) eq -local:square(5.0)",
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
'cbcl-count-098'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) ge -local:square(5.0)",
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
'cbcl-count-099'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) gt -local:square(5.0)",
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
'cbcl-count-100'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) ne -local:square(5.0)",
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
'cbcl-count-101'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:decimal) { $n * $n }; count(local:primes(100)) ge 1.0",
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
'cbcl-count-102'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:float(\"25.5\")",
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
'cbcl-count-103'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:float(\"25.5\")",
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
'cbcl-count-104'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:float(\"25.5\")",
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
'cbcl-count-105'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:float(\"25.5\")",
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
'cbcl-count-106'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:float(\"25.5\")",
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
'cbcl-count-107'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:float(\"25.5\")",
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
'cbcl-count-108'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) lt xs:float(\"25.5\"))",
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
'cbcl-count-109'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) le xs:float(\"25.5\"))",
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
'cbcl-count-110'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) eq xs:float(\"25.5\"))",
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
'cbcl-count-111'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ge xs:float(\"25.5\"))",
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
'cbcl-count-112'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) gt xs:float(\"25.5\"))",
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
'cbcl-count-113'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ne xs:float(\"25.5\"))",
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
'cbcl-count-114'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:float(\"24.5\") lt count(local:primes(100))",
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
'cbcl-count-115'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:float(\"24.5\") le count(local:primes(100))",
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
'cbcl-count-116'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:float(\"24.5\") eq count(local:primes(100))",
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
'cbcl-count-117'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:float(\"24.5\") ge count(local:primes(100))",
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
'cbcl-count-118'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:float(\"24.5\") gt count(local:primes(100))",
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
'cbcl-count-119'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:float(\"24.5\") ne count(local:primes(100))",
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
'cbcl-count-120'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:float(\"24.5\") lt count(local:primes(100)))",
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
'cbcl-count-121'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:float(\"24.5\") le count(local:primes(100)))",
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
'cbcl-count-122'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:float(\"24.5\") eq count(local:primes(100)))",
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
'cbcl-count-123'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:float(\"24.5\") ge count(local:primes(100)))",
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
'cbcl-count-124'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:float(\"24.5\") gt count(local:primes(100)))",
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
'cbcl-count-125'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:float(\"24.5\") ne count(local:primes(100)))",
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
'cbcl-count-126'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) lt local:square(xs:float(\"4.9\"))",
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
'cbcl-count-127'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) le local:square(xs:float(\"4.9\"))",
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
'cbcl-count-128'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) eq local:square(xs:float(\"4.9\"))",
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
'cbcl-count-129'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) ge local:square(xs:float(\"4.9\"))",
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
'cbcl-count-130'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) gt local:square(xs:float(\"4.9\"))",
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
'cbcl-count-131'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) ne local:square(xs:float(\"4.9\"))",
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
'cbcl-count-132'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:float(\"-1.5\")",
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
'cbcl-count-133'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:float(\"-1.5\")",
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
'cbcl-count-134'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:float(\"-1.5\")",
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
'cbcl-count-135'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:float(\"-1.5\")",
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
'cbcl-count-136'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:float(\"-1.5\")",
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
'cbcl-count-137'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:float(\"-1.5\")",
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
'cbcl-count-138'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) lt -local:square(5.0)",
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
'cbcl-count-139'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) le -local:square(5.0)",
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
'cbcl-count-140'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) eq -local:square(5.0)",
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
'cbcl-count-141'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) ge -local:square(5.0)",
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
'cbcl-count-142'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) gt -local:square(5.0)",
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
'cbcl-count-143'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:float) { $n * $n }; count(local:primes(100)) ne -local:square(5.0)",
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
'cbcl-count-144'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:float(\"1.0\")",
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
'cbcl-count-145'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:double(\"25.5\")",
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
'cbcl-count-146'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:double(\"25.5\")",
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
'cbcl-count-147'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:double(\"25.5\")",
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
'cbcl-count-148'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:double(\"25.5\")",
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
'cbcl-count-149'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:double(\"25.5\")",
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
'cbcl-count-150'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:double(\"25.5\")",
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
'cbcl-count-151'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) lt xs:double(\"25.5\"))",
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
'cbcl-count-152'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) le xs:double(\"25.5\"))",
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
'cbcl-count-153'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) eq xs:double(\"25.5\"))",
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
'cbcl-count-154'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ge xs:double(\"25.5\"))",
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
'cbcl-count-155'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) gt xs:double(\"25.5\"))",
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
'cbcl-count-156'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(count(local:primes(100)) ne xs:double(\"25.5\"))",
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
'cbcl-count-157'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:double(\"24.5\") lt count(local:primes(100))",
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
'cbcl-count-158'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:double(\"24.5\") le count(local:primes(100))",
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
'cbcl-count-159'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:double(\"24.5\") eq count(local:primes(100))",
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
'cbcl-count-160'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:double(\"24.5\") ge count(local:primes(100))",
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
'cbcl-count-161'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:double(\"24.5\") gt count(local:primes(100))",
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
'cbcl-count-162'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; xs:double(\"24.5\") ne count(local:primes(100))",
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
'cbcl-count-163'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:double(\"24.5\") lt count(local:primes(100)))",
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
'cbcl-count-164'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:double(\"24.5\") le count(local:primes(100)))",
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
'cbcl-count-165'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:double(\"24.5\") eq count(local:primes(100)))",
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
'cbcl-count-166'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:double(\"24.5\") ge count(local:primes(100)))",
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
'cbcl-count-167'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:double(\"24.5\") gt count(local:primes(100)))",
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
'cbcl-count-168'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; not(xs:double(\"24.5\") ne count(local:primes(100)))",
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
'cbcl-count-169'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) lt local:square(xs:double(\"4.9\"))",
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
'cbcl-count-170'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) le local:square(xs:double(\"4.9\"))",
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
'cbcl-count-171'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) eq local:square(xs:double(\"4.9\"))",
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
'cbcl-count-172'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) ge local:square(xs:double(\"4.9\"))",
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
'cbcl-count-173'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) gt local:square(xs:double(\"4.9\"))",
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
'cbcl-count-174'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) ne local:square(xs:double(\"4.9\"))",
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
'cbcl-count-175'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:double(\"-1.5\")",
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
'cbcl-count-176'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:double(\"-1.5\")",
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
'cbcl-count-177'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:double(\"-1.5\")",
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
'cbcl-count-178'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:double(\"-1.5\")",
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
'cbcl-count-179'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:double(\"-1.5\")",
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
'cbcl-count-180'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:double(\"-1.5\")",
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
'cbcl-count-181'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) lt -local:square(5.0)",
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
'cbcl-count-182'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) le -local:square(5.0)",
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
'cbcl-count-183'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) eq -local:square(5.0)",
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
'cbcl-count-184'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) ge -local:square(5.0)",
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
'cbcl-count-185'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) gt -local:square(5.0)",
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
'cbcl-count-186'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:square($n as xs:double) { $n * $n }; count(local:primes(100)) ne -local:square(5.0)",
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
'cbcl-count-187'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:double(\"1.0\")",
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
'cbcl-count-188'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge 1",
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
'cbcl-count-189'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:double(\"NaN\")",
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
'cbcl-count-190'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:double(\"NaN\")",
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
'cbcl-count-191'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:double(\"NaN\")",
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
'cbcl-count-192'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:double(\"NaN\")",
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
'cbcl-count-193'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:double(\"NaN\")",
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
'cbcl-count-194'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:double(\"NaN\")",
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
'cbcl-count-195'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:double(\"INF\")",
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
'cbcl-count-196'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:double(\"INF\")",
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
'cbcl-count-197'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:double(\"INF\")",
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
'cbcl-count-198'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:double(\"INF\")",
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
'cbcl-count-199'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:double(\"INF\")",
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
'cbcl-count-200'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:double(\"INF\")",
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
'cbcl-count-201'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:float(\"NaN\")",
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
'cbcl-count-202'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:float(\"NaN\")",
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
'cbcl-count-203'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:float(\"NaN\")",
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
'cbcl-count-204'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:float(\"NaN\")",
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
'cbcl-count-205'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:float(\"NaN\")",
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
'cbcl-count-206'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:float(\"NaN\")",
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
'cbcl-count-207'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt xs:float(\"INF\")",
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
'cbcl-count-208'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le xs:float(\"INF\")",
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
'cbcl-count-209'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq xs:float(\"INF\")",
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
'cbcl-count-210'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge xs:float(\"INF\")",
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
'cbcl-count-211'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt xs:float(\"INF\")",
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
'cbcl-count-212'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne xs:float(\"INF\")",
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
'cbcl-count-213'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) lt local:strange(true())",
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
'cbcl-count-214'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) le local:strange(true())",
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
'cbcl-count-215'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) eq local:strange(true())",
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
'cbcl-count-216'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) ge local:strange(true())",
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
'cbcl-count-217'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) gt local:strange(true())",
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
'cbcl-count-218'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) ne local:strange(true())",
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
'cbcl-count-219'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) lt local:strange(false())",
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
'cbcl-count-220'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) le local:strange(false())",
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
'cbcl-count-221'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) eq local:strange(false())",
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
'cbcl-count-222'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) ge local:strange(false())",
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
'cbcl-count-223'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) gt local:strange(false())",
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
'cbcl-count-224'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:double { if ($n) then xs:double('NaN') else xs:double('INF') }; count(local:primes(100)) ne local:strange(false())",
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
'cbcl-count-225'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) lt local:strange(true())",
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
'cbcl-count-226'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) le local:strange(true())",
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
'cbcl-count-227'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) eq local:strange(true())",
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
'cbcl-count-228'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) ge local:strange(true())",
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
'cbcl-count-229'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) gt local:strange(true())",
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
'cbcl-count-230'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) ne local:strange(true())",
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
'cbcl-count-231'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) lt local:strange(false())",
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
'cbcl-count-232'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) le local:strange(false())",
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
'cbcl-count-233'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) eq local:strange(false())",
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
'cbcl-count-234'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) ge local:strange(false())",
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
'cbcl-count-235'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) gt local:strange(false())",
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
'cbcl-count-236'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; declare function local:strange($n as xs:boolean) as xs:float { if ($n) then xs:float('NaN') else xs:float('INF') }; count(local:primes(100)) ne local:strange(false())",
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
'cbcl-count-237'(_Config) ->
   Qry = "count((for $x in 1 to 10 return $x * $x)[position() < 3])",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'cbcl-count-238'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) lt -1",
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
'cbcl-count-239'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) le -1",
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
'cbcl-count-240'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) eq -1",
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
'cbcl-count-241'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge -1",
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
'cbcl-count-242'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) gt -1",
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
'cbcl-count-243'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ne -1",
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
'cbcl-count-244'(_Config) ->
   Qry = "declare function local:primes($n as xs:integer) { if ($n lt 2) then 1 else for $i in 2 to $n return if (every $x in 2 to ($i - 1) satisfies ($i mod $x ne 0)) then $i else () }; count(local:primes(100)) ge 1",
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
