-module('prod_NamedFunctionRef_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['function-literal-001'/1]).
-export(['function-literal-002'/1]).
-export(['function-literal-003'/1]).
-export(['function-literal-004'/1]).
-export(['function-literal-005'/1]).
-export(['function-literal-006'/1]).
-export(['function-literal-007'/1]).
-export(['function-literal-008'/1]).
-export(['function-literal-009'/1]).
-export(['function-literal-010'/1]).
-export(['function-literal-011'/1]).
-export(['function-literal-012'/1]).
-export(['function-literal-013'/1]).
-export(['function-literal-014'/1]).
-export(['function-literal-015'/1]).
-export(['function-literal-016'/1]).
-export(['function-literal-017'/1]).
-export(['function-literal-018'/1]).
-export(['function-literal-019'/1]).
-export(['function-literal-020'/1]).
-export(['function-literal-021'/1]).
-export(['function-literal-022'/1]).
-export(['function-literal-023'/1]).
-export(['function-literal-024'/1]).
-export(['function-literal-025'/1]).
-export(['function-literal-026'/1]).
-export(['function-literal-027'/1]).
-export(['function-literal-028'/1]).
-export(['function-literal-029'/1]).
-export(['function-literal-030'/1]).
-export(['function-literal-031'/1]).
-export(['function-literal-032'/1]).
-export(['function-literal-033'/1]).
-export(['function-literal-033a'/1]).
-export(['function-literal-034'/1]).
-export(['function-literal-034a'/1]).
-export(['function-literal-035'/1]).
-export(['function-literal-036'/1]).
-export(['function-literal-037'/1]).
-export(['function-literal-038'/1]).
-export(['function-literal-039'/1]).
-export(['function-literal-040'/1]).
-export(['function-literal-041'/1]).
-export(['function-literal-042'/1]).
-export(['function-literal-043'/1]).
-export(['function-literal-044'/1]).
-export(['function-literal-045'/1]).
-export(['function-literal-046'/1]).
-export(['function-literal-047'/1]).
-export(['function-literal-048'/1]).
-export(['function-literal-049'/1]).
-export(['function-literal-050'/1]).
-export(['function-literal-051'/1]).
-export(['function-literal-052'/1]).
-export(['function-literal-053'/1]).
-export(['function-literal-054'/1]).
-export(['function-literal-055'/1]).
-export(['function-literal-056'/1]).
-export(['function-literal-057'/1]).
-export(['function-literal-058'/1]).
-export(['function-literal-059'/1]).
-export(['function-literal-060'/1]).
-export(['function-literal-061'/1]).
-export(['function-literal-062'/1]).
-export(['function-literal-063'/1]).
-export(['function-literal-064'/1]).
-export(['function-literal-065'/1]).
-export(['function-literal-066'/1]).
-export(['function-literal-067'/1]).
-export(['function-literal-068'/1]).
-export(['function-literal-069'/1]).
-export(['function-literal-070'/1]).
-export(['function-literal-071'/1]).
-export(['function-literal-072'/1]).
-export(['function-literal-073'/1]).
-export(['function-literal-074'/1]).
-export(['function-literal-075'/1]).
-export(['function-literal-076'/1]).
-export(['function-literal-077'/1]).
-export(['function-literal-078'/1]).
-export(['function-literal-079'/1]).
-export(['function-literal-080'/1]).
-export(['function-literal-081'/1]).
-export(['function-literal-082'/1]).
-export(['function-literal-083'/1]).
-export(['function-literal-084'/1]).
-export(['function-literal-085'/1]).
-export(['function-literal-086'/1]).
-export(['function-literal-087'/1]).
-export(['function-literal-088'/1]).
-export(['function-literal-089'/1]).
-export(['function-literal-090'/1]).
-export(['function-literal-091'/1]).
-export(['function-literal-092'/1]).
-export(['function-literal-093'/1]).
-export(['function-literal-094'/1]).
-export(['function-literal-095'/1]).
-export(['function-literal-096'/1]).
-export(['function-literal-097'/1]).
-export(['function-literal-098'/1]).
-export(['function-literal-099'/1]).
-export(['function-literal-100'/1]).
-export(['function-literal-101'/1]).
-export(['function-literal-102'/1]).
-export(['function-literal-103'/1]).
-export(['function-literal-104'/1]).
-export(['function-literal-105'/1]).
-export(['function-literal-106'/1]).
-export(['function-literal-107'/1]).
-export(['function-literal-108'/1]).
-export(['function-literal-109'/1]).
-export(['function-literal-110'/1]).
-export(['function-literal-111'/1]).
-export(['function-literal-112'/1]).
-export(['function-literal-113'/1]).
-export(['function-literal-114'/1]).
-export(['function-literal-115'/1]).
-export(['function-literal-116'/1]).
-export(['function-literal-117'/1]).
-export(['function-literal-118'/1]).
-export(['function-literal-119'/1]).
-export(['function-literal-120'/1]).
-export(['function-literal-121'/1]).
-export(['function-literal-122'/1]).
-export(['function-literal-123'/1]).
-export(['function-literal-124'/1]).
-export(['function-literal-125'/1]).
-export(['function-literal-126'/1]).
-export(['function-literal-127'/1]).
-export(['function-literal-128'/1]).
-export(['function-literal-129'/1]).
-export(['function-literal-130'/1]).
-export(['function-literal-131'/1]).
-export(['function-literal-132'/1]).
-export(['function-literal-133'/1]).
-export(['function-literal-134'/1]).
-export(['function-literal-135'/1]).
-export(['function-literal-136'/1]).
-export(['function-literal-137'/1]).
-export(['function-literal-138'/1]).
-export(['function-literal-139'/1]).
-export(['function-literal-140'/1]).
-export(['function-literal-141'/1]).
-export(['function-literal-142'/1]).
-export(['function-literal-143'/1]).
-export(['function-literal-144'/1]).
-export(['function-literal-145'/1]).
-export(['function-literal-146'/1]).
-export(['function-literal-147'/1]).
-export(['function-literal-148'/1]).
-export(['function-literal-149'/1]).
-export(['function-literal-150'/1]).
-export(['function-literal-151'/1]).
-export(['function-literal-152'/1]).
-export(['function-literal-153'/1]).
-export(['function-literal-154'/1]).
-export(['function-literal-155'/1]).
-export(['function-literal-155a'/1]).
-export(['function-literal-156'/1]).
-export(['function-literal-156a'/1]).
-export(['function-literal-157'/1]).
-export(['function-literal-158'/1]).
-export(['function-literal-159'/1]).
-export(['function-literal-160'/1]).
-export(['function-literal-161'/1]).
-export(['function-literal-162'/1]).
-export(['function-literal-163'/1]).
-export(['function-literal-164'/1]).
-export(['function-literal-165'/1]).
-export(['function-literal-166'/1]).
-export(['function-literal-167'/1]).
-export(['function-literal-168'/1]).
-export(['function-literal-169'/1]).
-export(['function-literal-170'/1]).
-export(['function-literal-171'/1]).
-export(['function-literal-172'/1]).
-export(['function-literal-173'/1]).
-export(['function-literal-174'/1]).
-export(['function-literal-175'/1]).
-export(['function-literal-176'/1]).
-export(['function-literal-177'/1]).
-export(['function-literal-178'/1]).
-export(['function-literal-179'/1]).
-export(['function-literal-180'/1]).
-export(['function-literal-181'/1]).
-export(['function-literal-182'/1]).
-export(['function-literal-183'/1]).
-export(['function-literal-184'/1]).
-export(['function-literal-185'/1]).
-export(['function-literal-186'/1]).
-export(['function-literal-187'/1]).
-export(['function-literal-188'/1]).
-export(['function-literal-189'/1]).
-export(['function-literal-190'/1]).
-export(['function-literal-191'/1]).
-export(['function-literal-192'/1]).
-export(['function-literal-193'/1]).
-export(['function-literal-194'/1]).
-export(['function-literal-195'/1]).
-export(['function-literal-196'/1]).
-export(['function-literal-197'/1]).
-export(['function-literal-198'/1]).
-export(['function-literal-199'/1]).
-export(['function-literal-200'/1]).
-export(['function-literal-201'/1]).
-export(['function-literal-202'/1]).
-export(['function-literal-203'/1]).
-export(['function-literal-204'/1]).
-export(['function-literal-205'/1]).
-export(['function-literal-206'/1]).
-export(['function-literal-207'/1]).
-export(['function-literal-208'/1]).
-export(['function-literal-209'/1]).
-export(['function-literal-210'/1]).
-export(['function-literal-211'/1]).
-export(['function-literal-212'/1]).
-export(['function-literal-213'/1]).
-export(['function-literal-214'/1]).
-export(['function-literal-215'/1]).
-export(['function-literal-216'/1]).
-export(['function-literal-217'/1]).
-export(['function-literal-218'/1]).
-export(['function-literal-219'/1]).
-export(['function-literal-220'/1]).
-export(['function-literal-221'/1]).
-export(['function-literal-222'/1]).
-export(['function-literal-223'/1]).
-export(['function-literal-224'/1]).
-export(['function-literal-225'/1]).
-export(['function-literal-226'/1]).
-export(['function-literal-227'/1]).
-export(['function-literal-228'/1]).
-export(['function-literal-229'/1]).
-export(['function-literal-230'/1]).
-export(['function-literal-231'/1]).
-export(['function-literal-232'/1]).
-export(['function-literal-233'/1]).
-export(['function-literal-234'/1]).
-export(['function-literal-235'/1]).
-export(['function-literal-236'/1]).
-export(['function-literal-237'/1]).
-export(['function-literal-238'/1]).
-export(['function-literal-239'/1]).
-export(['function-literal-240'/1]).
-export(['function-literal-241'/1]).
-export(['function-literal-242'/1]).
-export(['function-literal-243'/1]).
-export(['function-literal-244'/1]).
-export(['function-literal-245'/1]).
-export(['function-literal-246'/1]).
-export(['function-literal-247'/1]).
-export(['function-literal-248'/1]).
-export(['function-literal-249'/1]).
-export(['function-literal-250'/1]).
-export(['function-literal-251'/1]).
-export(['function-literal-252'/1]).
-export(['function-literal-253'/1]).
-export(['function-literal-254'/1]).
-export(['function-literal-255'/1]).
-export(['function-literal-256'/1]).
-export(['function-literal-257'/1]).
-export(['function-literal-258'/1]).
-export(['function-literal-259'/1]).
-export(['function-literal-260'/1]).
-export(['function-literal-261'/1]).
-export(['function-literal-262'/1]).
-export(['function-literal-263'/1]).
-export(['function-literal-264'/1]).
-export(['function-literal-265'/1]).
-export(['function-literal-266'/1]).
-export(['function-literal-267'/1]).
-export(['function-literal-268'/1]).
-export(['function-literal-269'/1]).
-export(['function-literal-270'/1]).
-export(['function-literal-271'/1]).
-export(['function-literal-272'/1]).
-export(['function-literal-273'/1]).
-export(['function-literal-274'/1]).
-export(['function-literal-275'/1]).
-export(['function-literal-276'/1]).
-export(['function-literal-277'/1]).
-export(['function-literal-278'/1]).
-export(['function-literal-279'/1]).
-export(['function-literal-280'/1]).
-export(['function-literal-281'/1]).
-export(['function-literal-282'/1]).
-export(['function-literal-283'/1]).
-export(['function-literal-284'/1]).
-export(['function-literal-285'/1]).
-export(['function-literal-286'/1]).
-export(['function-literal-287'/1]).
-export(['function-literal-288'/1]).
-export(['function-literal-289'/1]).
-export(['function-literal-290'/1]).
-export(['function-literal-291'/1]).
-export(['function-literal-292'/1]).
-export(['function-literal-293'/1]).
-export(['function-literal-294'/1]).
-export(['function-literal-295'/1]).
-export(['function-literal-296'/1]).
-export(['function-literal-297'/1]).
-export(['function-literal-298'/1]).
-export(['function-literal-299'/1]).
-export(['function-literal-300'/1]).
-export(['function-literal-301'/1]).
-export(['function-literal-302'/1]).
-export(['function-literal-303'/1]).
-export(['function-literal-304'/1]).
-export(['function-literal-305'/1]).
-export(['function-literal-306'/1]).
-export(['function-literal-307'/1]).
-export(['function-literal-308'/1]).
-export(['function-literal-309'/1]).
-export(['function-literal-310'/1]).
-export(['function-literal-311'/1]).
-export(['function-literal-312'/1]).
-export(['function-literal-313'/1]).
-export(['function-literal-314'/1]).
-export(['function-literal-315'/1]).
-export(['function-literal-316'/1]).
-export(['function-literal-317'/1]).
-export(['function-literal-318'/1]).
-export(['function-literal-319'/1]).
-export(['function-literal-320'/1]).
-export(['function-literal-321'/1]).
-export(['function-literal-322'/1]).
-export(['function-literal-323'/1]).
-export(['function-literal-324'/1]).
-export(['function-literal-325'/1]).
-export(['function-literal-326'/1]).
-export(['function-literal-327'/1]).
-export(['function-literal-328'/1]).
-export(['function-literal-329'/1]).
-export(['function-literal-330'/1]).
-export(['function-literal-331'/1]).
-export(['function-literal-332'/1]).
-export(['function-literal-333'/1]).
-export(['function-literal-334'/1]).
-export(['function-literal-335'/1]).
-export(['function-literal-336'/1]).
-export(['function-literal-337'/1]).
-export(['function-literal-338'/1]).
-export(['function-literal-339'/1]).
-export(['function-literal-340'/1]).
-export(['function-literal-341'/1]).
-export(['function-literal-342'/1]).
-export(['function-literal-343'/1]).
-export(['function-literal-344'/1]).
-export(['function-literal-345'/1]).
-export(['function-literal-346'/1]).
-export(['function-literal-347'/1]).
-export(['function-literal-348'/1]).
-export(['function-literal-349'/1]).
-export(['function-literal-350'/1]).
-export(['function-literal-351'/1]).
-export(['function-literal-352'/1]).
-export(['function-literal-353'/1]).
-export(['function-literal-354'/1]).
-export(['function-literal-355'/1]).
-export(['function-literal-356'/1]).
-export(['function-literal-357'/1]).
-export(['function-literal-358'/1]).
-export(['function-literal-359'/1]).
-export(['function-literal-360'/1]).
-export(['function-literal-361'/1]).
-export(['function-literal-362'/1]).
-export(['function-literal-363'/1]).
-export(['function-literal-364'/1]).
-export(['function-literal-365'/1]).
-export(['function-literal-366'/1]).
-export(['function-literal-367'/1]).
-export(['function-literal-368'/1]).
-export(['function-literal-369'/1]).
-export(['function-literal-370'/1]).
-export(['function-literal-371'/1]).
-export(['function-literal-372'/1]).
-export(['function-literal-373'/1]).
-export(['function-literal-374'/1]).
-export(['function-literal-375'/1]).
-export(['function-literal-376'/1]).
-export(['function-literal-377'/1]).
-export(['function-literal-378'/1]).
-export(['function-literal-379'/1]).
-export(['function-literal-380'/1]).
-export(['function-literal-381'/1]).
-export(['function-literal-382'/1]).
-export(['function-literal-383'/1]).
-export(['function-literal-384'/1]).
-export(['function-literal-385'/1]).
-export(['function-literal-386'/1]).
-export(['function-literal-387'/1]).
-export(['function-literal-388'/1]).
-export(['function-literal-389'/1]).
-export(['function-literal-390'/1]).
-export(['function-literal-391'/1]).
-export(['function-literal-392'/1]).
-export(['function-literal-393'/1]).
-export(['function-literal-394'/1]).
-export(['function-literal-395'/1]).
-export(['function-literal-396'/1]).
-export(['function-literal-397'/1]).
-export(['function-literal-398'/1]).
-export(['function-literal-399'/1]).
-export(['function-literal-400'/1]).
-export(['function-literal-401'/1]).
-export(['function-literal-402'/1]).
-export(['function-literal-403'/1]).
-export(['function-literal-404'/1]).
-export(['function-literal-405'/1]).
-export(['function-literal-406'/1]).
-export(['function-literal-407'/1]).
-export(['function-literal-408'/1]).
-export(['function-literal-409'/1]).
-export(['function-literal-410'/1]).
-export(['function-literal-411'/1]).
-export(['function-literal-412'/1]).
-export(['function-literal-413'/1]).
-export(['function-literal-414'/1]).
-export(['function-literal-415'/1]).
-export(['function-literal-416'/1]).
-export(['function-literal-417'/1]).
-export(['function-literal-418'/1]).
-export(['function-literal-419'/1]).
-export(['function-literal-420'/1]).
-export(['function-literal-421'/1]).
-export(['function-literal-422'/1]).
-export(['function-literal-423'/1]).
-export(['function-literal-424'/1]).
-export(['function-literal-425'/1]).
-export(['function-literal-426'/1]).
-export(['function-literal-427'/1]).
-export(['function-literal-428'/1]).
-export(['function-literal-429'/1]).
-export(['function-literal-430'/1]).
-export(['function-literal-431'/1]).
-export(['function-literal-432'/1]).
-export(['function-literal-433'/1]).
-export(['function-literal-434'/1]).
-export(['function-literal-435'/1]).
-export(['function-literal-436'/1]).
-export(['function-literal-437'/1]).
-export(['function-literal-438'/1]).
-export(['function-literal-439'/1]).
-export(['function-literal-440'/1]).
-export(['function-literal-441'/1]).
-export(['function-literal-442'/1]).
-export(['function-literal-443'/1]).
-export(['function-literal-444'/1]).
-export(['function-literal-445'/1]).
-export(['function-literal-446'/1]).
-export(['function-literal-447'/1]).
-export(['function-literal-448'/1]).
-export(['function-literal-449'/1]).
-export(['function-literal-450'/1]).
-export(['function-literal-451'/1]).
-export(['function-literal-452'/1]).
-export(['function-literal-453'/1]).
-export(['function-literal-454'/1]).
-export(['function-literal-455'/1]).
-export(['function-literal-456'/1]).
-export(['function-literal-457'/1]).
-export(['function-literal-458'/1]).
-export(['function-literal-459'/1]).
-export(['function-literal-460'/1]).
-export(['function-literal-461'/1]).
-export(['function-literal-462'/1]).
-export(['function-literal-463'/1]).
-export(['function-literal-464'/1]).
-export(['function-literal-465'/1]).
-export(['function-literal-466'/1]).
-export(['function-literal-467'/1]).
-export(['function-literal-468'/1]).
-export(['function-literal-469'/1]).
-export(['function-literal-470'/1]).
-export(['function-literal-471'/1]).
-export(['function-literal-472'/1]).
-export(['function-literal-473'/1]).
-export(['function-literal-474'/1]).
-export(['function-literal-475'/1]).
-export(['function-literal-476'/1]).
-export(['function-literal-477'/1]).
-export(['function-literal-478'/1]).
-export(['function-literal-479'/1]).
-export(['function-literal-480'/1]).
-export(['function-literal-481'/1]).
-export(['function-literal-482'/1]).
-export(['function-literal-483'/1]).
-export(['function-literal-484'/1]).
-export(['function-literal-485'/1]).
-export(['function-literal-486'/1]).
-export(['function-literal-487'/1]).
-export(['function-literal-488'/1]).
-export(['function-literal-489'/1]).
-export(['function-literal-490'/1]).
-export(['function-literal-491'/1]).
-export(['function-literal-492'/1]).
-export(['function-literal-493'/1]).
-export(['function-literal-494'/1]).
-export(['function-literal-495'/1]).
-export(['function-literal-496'/1]).
-export(['function-literal-497'/1]).
-export(['function-literal-498'/1]).
-export(['function-literal-499'/1]).
-export(['function-literal-500'/1]).
-export(['function-literal-501'/1]).
-export(['function-literal-502'/1]).
-export(['function-literal-503'/1]).
-export(['function-literal-504'/1]).
-export(['function-literal-505'/1]).
-export(['function-literal-506'/1]).
-export(['function-literal-507'/1]).
-export(['function-literal-508'/1]).
-export(['function-literal-509'/1]).
-export(['function-literal-510'/1]).
-export(['function-literal-511'/1]).
-export(['function-literal-512'/1]).
-export(['function-literal-513'/1]).
-export(['function-literal-514'/1]).
-export(['function-literal-515'/1]).
-export(['function-literal-516'/1]).
-export(['function-literal-517'/1]).
-export(['function-literal-518'/1]).
-export(['function-literal-519'/1]).
-export(['function-literal-520'/1]).
-export(['function-literal-523'/1]).
-export(['function-literal-524'/1]).
-export(['function-literal-525'/1]).
-export(['function-literal-526'/1]).
-export(['function-literal-527'/1]).
-export(['function-literal-528'/1]).
-export(['function-literal-701'/1]).
-export(['function-literal-702'/1]).
-export(['function-literal-703'/1]).
-export(['function-literal-704'/1]).
-export(['function-literal-705'/1]).
-export(['function-literal-706'/1]).
-export(['function-literal-707'/1]).
-export(['function-literal-708'/1]).
-export(['named-function-ref-reserved-function-names-001'/1]).
-export(['named-function-ref-reserved-function-names-002'/1]).
-export(['named-function-ref-reserved-function-names-003'/1]).
-export(['named-function-ref-reserved-function-names-004'/1]).
-export(['named-function-ref-reserved-function-names-005'/1]).
-export(['named-function-ref-reserved-function-names-006'/1]).
-export(['named-function-ref-reserved-function-names-007'/1]).
-export(['named-function-ref-reserved-function-names-008'/1]).
-export(['named-function-ref-reserved-function-names-009'/1]).
-export(['named-function-ref-reserved-function-names-010'/1]).
-export(['named-function-ref-reserved-function-names-011'/1]).
-export(['named-function-ref-reserved-function-names-012'/1]).
-export(['named-function-ref-reserved-function-names-013'/1]).
-export(['named-function-ref-reserved-function-names-014'/1]).
-export(['named-function-ref-reserved-function-names-015'/1]).
-export(['named-function-ref-reserved-function-names-016'/1]).
-export(['named-function-ref-reserved-function-names-017'/1]).
-export(['named-function-ref-reserved-function-names-018'/1]).
suite() ->
[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> ct:timetrap({seconds,60}), xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_ds),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   BaseDir = filename:join(TD, "prod")

,[{base_dir, BaseDir}|Config].
all() -> [
   'function-literal-001',
   'function-literal-002',
   'function-literal-003',
   'function-literal-004',
   'function-literal-005',
   'function-literal-006',
   'function-literal-007',
   'function-literal-008',
   'function-literal-009',
   'function-literal-010',
   'function-literal-011',
   'function-literal-012',
   'function-literal-013',
   'function-literal-014',
   'function-literal-015',
   'function-literal-016',
   'function-literal-017',
   'function-literal-018',
   'function-literal-019',
   'function-literal-020',
   'function-literal-021',
   'function-literal-022',
   'function-literal-023',
   'function-literal-024',
   'function-literal-025',
   'function-literal-026',
   'function-literal-027',
   'function-literal-028',
   'function-literal-029',
   'function-literal-030',
   'function-literal-031',
   'function-literal-032',
   'function-literal-033',
   'function-literal-033a',
   'function-literal-034',
   'function-literal-034a',
   'function-literal-035',
   'function-literal-036',
   'function-literal-037',
   'function-literal-038',
   'function-literal-039',
   'function-literal-040',
   'function-literal-041',
   'function-literal-042',
   'function-literal-043',
   'function-literal-044',
   'function-literal-045',
   'function-literal-046',
   'function-literal-047',
   'function-literal-048',
   'function-literal-049',
   'function-literal-050',
   'function-literal-051',
   'function-literal-052',
   'function-literal-053',
   'function-literal-054',
   'function-literal-055',
   'function-literal-056',
   'function-literal-057',
   'function-literal-058',
   'function-literal-059',
   'function-literal-060',
   'function-literal-061',
   'function-literal-062',
   'function-literal-063',
   'function-literal-064',
   'function-literal-065',
   'function-literal-066',
   'function-literal-067',
   'function-literal-068',
   'function-literal-069',
   'function-literal-070',
   'function-literal-071',
   'function-literal-072',
   'function-literal-073',
   'function-literal-074',
   'function-literal-075',
   'function-literal-076',
   'function-literal-077',
   'function-literal-078',
   'function-literal-079',
   'function-literal-080',
   'function-literal-081',
   'function-literal-082',
   'function-literal-083',
   'function-literal-084',
   'function-literal-085',
   'function-literal-086',
   'function-literal-087',
   'function-literal-088',
   'function-literal-089',
   'function-literal-090',
   'function-literal-091',
   'function-literal-092',
   'function-literal-093',
   'function-literal-094',
   'function-literal-095',
   'function-literal-096',
   'function-literal-097',
   'function-literal-098',
   'function-literal-099',
   'function-literal-100',
   'function-literal-101',
   'function-literal-102',
   'function-literal-103',
   'function-literal-104',
   'function-literal-105',
   'function-literal-106',
   'function-literal-107',
   'function-literal-108',
   'function-literal-109',
   'function-literal-110',
   'function-literal-111',
   'function-literal-112',
   'function-literal-113',
   'function-literal-114',
   'function-literal-115',
   'function-literal-116',
   'function-literal-117',
   'function-literal-118',
   'function-literal-119',
   'function-literal-120',
   'function-literal-121',
   'function-literal-122',
   'function-literal-123',
   'function-literal-124',
   'function-literal-125',
   'function-literal-126',
   'function-literal-127',
   'function-literal-128',
   'function-literal-129',
   'function-literal-130',
   'function-literal-131',
   'function-literal-132',
   'function-literal-133',
   'function-literal-134',
   'function-literal-135',
   'function-literal-136',
   'function-literal-137',
   'function-literal-138',
   'function-literal-139',
   'function-literal-140',
   'function-literal-141',
   'function-literal-142',
   'function-literal-143',
   'function-literal-144',
   'function-literal-145',
   'function-literal-146',
   'function-literal-147',
   'function-literal-148',
   'function-literal-149',
   'function-literal-150',
   'function-literal-151',
   'function-literal-152',
   'function-literal-153',
   'function-literal-154',
   'function-literal-155',
   'function-literal-155a',
   'function-literal-156',
   'function-literal-156a',
   'function-literal-157',
   'function-literal-158',
   'function-literal-159',
   'function-literal-160',
   'function-literal-161',
   'function-literal-162',
   'function-literal-163',
   'function-literal-164',
   'function-literal-165',
   'function-literal-166',
   'function-literal-167',
   'function-literal-168',
   'function-literal-169',
   'function-literal-170',
   'function-literal-171',
   'function-literal-172',
   'function-literal-173',
   'function-literal-174',
   'function-literal-175',
   'function-literal-176',
   'function-literal-177',
   'function-literal-178',
   'function-literal-179',
   'function-literal-180',
   'function-literal-181',
   'function-literal-182',
   'function-literal-183',
   'function-literal-184',
   'function-literal-185',
   'function-literal-186',
   'function-literal-187',
   'function-literal-188',
   'function-literal-189',
   'function-literal-190',
   'function-literal-191',
   'function-literal-192',
   'function-literal-193',
   'function-literal-194',
   'function-literal-195',
   'function-literal-196',
   'function-literal-197',
   'function-literal-198',
   'function-literal-199',
   'function-literal-200',
   'function-literal-201',
   'function-literal-202',
   'function-literal-203',
   'function-literal-204',
   'function-literal-205',
   'function-literal-206',
   'function-literal-207',
   'function-literal-208',
   'function-literal-209',
   'function-literal-210',
   'function-literal-211',
   'function-literal-212',
   'function-literal-213',
   'function-literal-214',
   'function-literal-215',
   'function-literal-216',
   'function-literal-217',
   'function-literal-218',
   'function-literal-219',
   'function-literal-220',
   'function-literal-221',
   'function-literal-222',
   'function-literal-223',
   'function-literal-224',
   'function-literal-225',
   'function-literal-226',
   'function-literal-227',
   'function-literal-228',
   'function-literal-229',
   'function-literal-230',
   'function-literal-231',
   'function-literal-232',
   'function-literal-233',
   'function-literal-234',
   'function-literal-235',
   'function-literal-236',
   'function-literal-237',
   'function-literal-238',
   'function-literal-239',
   'function-literal-240',
   'function-literal-241',
   'function-literal-242',
   'function-literal-243',
   'function-literal-244',
   'function-literal-245',
   'function-literal-246',
   'function-literal-247',
   'function-literal-248',
   'function-literal-249',
   'function-literal-250',
   'function-literal-251',
   'function-literal-252',
   'function-literal-253',
   'function-literal-254',
   'function-literal-255',
   'function-literal-256',
   'function-literal-257',
   'function-literal-258',
   'function-literal-259',
   'function-literal-260',
   'function-literal-261',
   'function-literal-262',
   'function-literal-263',
   'function-literal-264',
   'function-literal-265',
   'function-literal-266',
   'function-literal-267',
   'function-literal-268',
   'function-literal-269',
   'function-literal-270',
   'function-literal-271',
   'function-literal-272',
   'function-literal-273',
   'function-literal-274',
   'function-literal-275',
   'function-literal-276',
   'function-literal-277',
   'function-literal-278',
   'function-literal-279',
   'function-literal-280',
   'function-literal-281',
   'function-literal-282',
   'function-literal-283',
   'function-literal-284',
   'function-literal-285',
   'function-literal-286',
   'function-literal-287',
   'function-literal-288',
   'function-literal-289',
   'function-literal-290',
   'function-literal-291',
   'function-literal-292',
   'function-literal-293',
   'function-literal-294',
   'function-literal-295',
   'function-literal-296',
   'function-literal-297',
   'function-literal-298',
   'function-literal-299',
   'function-literal-300',
   'function-literal-301',
   'function-literal-302',
   'function-literal-303',
   'function-literal-304',
   'function-literal-305',
   'function-literal-306',
   'function-literal-307',
   'function-literal-308',
   'function-literal-309',
   'function-literal-310',
   'function-literal-311',
   'function-literal-312',
   'function-literal-313',
   'function-literal-314',
   'function-literal-315',
   'function-literal-316',
   'function-literal-317',
   'function-literal-318',
   'function-literal-319',
   'function-literal-320',
   'function-literal-321',
   'function-literal-322',
   'function-literal-323',
   'function-literal-324',
   'function-literal-325',
   'function-literal-326',
   'function-literal-327',
   'function-literal-328',
   'function-literal-329',
   'function-literal-330',
   'function-literal-331',
   'function-literal-332',
   'function-literal-333',
   'function-literal-334',
   'function-literal-335',
   'function-literal-336',
   'function-literal-337',
   'function-literal-338',
   'function-literal-339',
   'function-literal-340',
   'function-literal-341',
   'function-literal-342',
   'function-literal-343',
   'function-literal-344',
   'function-literal-345',
   'function-literal-346',
   'function-literal-347',
   'function-literal-348',
   'function-literal-349',
   'function-literal-350',
   'function-literal-351',
   'function-literal-352',
   'function-literal-353',
   'function-literal-354',
   'function-literal-355',
   'function-literal-356',
   'function-literal-357',
   'function-literal-358',
   'function-literal-359',
   'function-literal-360',
   'function-literal-361',
   'function-literal-362',
   'function-literal-363',
   'function-literal-364',
   'function-literal-365',
   'function-literal-366',
   'function-literal-367',
   'function-literal-368',
   'function-literal-369',
   'function-literal-370',
   'function-literal-371',
   'function-literal-372',
   'function-literal-373',
   'function-literal-374',
   'function-literal-375',
   'function-literal-376',
   'function-literal-377',
   'function-literal-378',
   'function-literal-379',
   'function-literal-380',
   'function-literal-381',
   'function-literal-382',
   'function-literal-383',
   'function-literal-384',
   'function-literal-385',
   'function-literal-386',
   'function-literal-387',
   'function-literal-388',
   'function-literal-389',
   'function-literal-390',
   'function-literal-391',
   'function-literal-392',
   'function-literal-393',
   'function-literal-394',
   'function-literal-395',
   'function-literal-396',
   'function-literal-397',
   'function-literal-398',
   'function-literal-399',
   'function-literal-400',
   'function-literal-401',
   'function-literal-402',
   'function-literal-403',
   'function-literal-404',
   'function-literal-405',
   'function-literal-406',
   'function-literal-407',
   'function-literal-408',
   'function-literal-409',
   'function-literal-410',
   'function-literal-411',
   'function-literal-412',
   'function-literal-413',
   'function-literal-414',
   'function-literal-415',
   'function-literal-416',
   'function-literal-417',
   'function-literal-418',
   'function-literal-419',
   'function-literal-420',
   'function-literal-421',
   'function-literal-422',
   'function-literal-423',
   'function-literal-424',
   'function-literal-425',
   'function-literal-426',
   'function-literal-427',
   'function-literal-428',
   'function-literal-429',
   'function-literal-430',
   'function-literal-431',
   'function-literal-432',
   'function-literal-433',
   'function-literal-434',
   'function-literal-435',
   'function-literal-436',
   'function-literal-437',
   'function-literal-438',
   'function-literal-439',
   'function-literal-440',
   'function-literal-441',
   'function-literal-442',
   'function-literal-443',
   'function-literal-444',
   'function-literal-445',
   'function-literal-446',
   'function-literal-447',
   'function-literal-448',
   'function-literal-449',
   'function-literal-450',
   'function-literal-451',
   'function-literal-452',
   'function-literal-453',
   'function-literal-454',
   'function-literal-455',
   'function-literal-456',
   'function-literal-457',
   'function-literal-458',
   'function-literal-459',
   'function-literal-460',
   'function-literal-461',
   'function-literal-462',
   'function-literal-463',
   'function-literal-464',
   'function-literal-465',
   'function-literal-466',
   'function-literal-467',
   'function-literal-468',
   'function-literal-469',
   'function-literal-470',
   'function-literal-471',
   'function-literal-472',
   'function-literal-473',
   'function-literal-474',
   'function-literal-475',
   'function-literal-476',
   'function-literal-477',
   'function-literal-478',
   'function-literal-479',
   'function-literal-480',
   'function-literal-481',
   'function-literal-482',
   'function-literal-483',
   'function-literal-484',
   'function-literal-485',
   'function-literal-486',
   'function-literal-487',
   'function-literal-488',
   'function-literal-489',
   'function-literal-490',
   'function-literal-491',
   'function-literal-492',
   'function-literal-493',
   'function-literal-494',
   'function-literal-495',
   'function-literal-496',
   'function-literal-497',
   'function-literal-498',
   'function-literal-499',
   'function-literal-500',
   'function-literal-501',
   'function-literal-502',
   'function-literal-503',
   'function-literal-504',
   'function-literal-505',
   'function-literal-506',
   'function-literal-507',
   'function-literal-508',
   'function-literal-509',
   'function-literal-510',
   'function-literal-511',
   'function-literal-512',
   'function-literal-513',
   'function-literal-514',
   'function-literal-515',
   'function-literal-516',
   'function-literal-517',
   'function-literal-518',
   'function-literal-519',
   'function-literal-520',
   'function-literal-523',
   'function-literal-524',
   'function-literal-525',
   'function-literal-526',
   'function-literal-527',
   'function-literal-528',
   'function-literal-701',
   'function-literal-702',
   'function-literal-703',
   'function-literal-704',
   'function-literal-705',
   'function-literal-706',
   'function-literal-707',
   'function-literal-708',
   'named-function-ref-reserved-function-names-001',
   'named-function-ref-reserved-function-names-002',
   'named-function-ref-reserved-function-names-003',
   'named-function-ref-reserved-function-names-004',
   'named-function-ref-reserved-function-names-005',
   'named-function-ref-reserved-function-names-006',
   'named-function-ref-reserved-function-names-007',
   'named-function-ref-reserved-function-names-008',
   'named-function-ref-reserved-function-names-009',
   'named-function-ref-reserved-function-names-010',
   'named-function-ref-reserved-function-names-011',
   'named-function-ref-reserved-function-names-012',
   'named-function-ref-reserved-function-names-013',
   'named-function-ref-reserved-function-names-014',
   'named-function-ref-reserved-function-names-015',
   'named-function-ref-reserved-function-names-016',
   'named-function-ref-reserved-function-names-017',
   'named-function-ref-reserved-function-names-018'].
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
environment('function-lookup',BaseDir) ->
[{'decimal-formats', []},
{sources, [{filename:join(BaseDir, "../fn/function-lookup/function-lookup.xml"), ".","http://www.w3.org/fots/fn/function-lookup/function-lookup.xml"}]},
{schemas, []},
{collections, [{"",[{src,filename:join(BaseDir, "../fn/function-lookup/collection-1.xml")},
{src,filename:join(BaseDir, "../fn/function-lookup/collection-2.xml")}]}]},
{'static-base-uri', []},
{params, []},
{vars, []},
{namespaces, []},
{resources, [{filename:join(BaseDir, "../fn/unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]},
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
].
'function-literal-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}node-name#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}node-name#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}node-name#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}node-name#1(/root)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}nilled#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}nilled#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}nilled#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}nilled#1(/root)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/Q{http://www.w3.org/2005/xpath-functions}string#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}string#1(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}data#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/Q{http://www.w3.org/2005/xpath-functions}data#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}data#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}data#1(/root/child[1])",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}base-uri#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}base-uri#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-019'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}base-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-020'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}base-uri#1(/)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-021'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}document-uri#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-022'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}document-uri#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-023'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}document-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-024'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}document-uri#1(/)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-025'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}error#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-026'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}error#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-027'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}error#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-028'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}error#1(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XXXX0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-029'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}error#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-030'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}error#2(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'), 'string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XXXX0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-031'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}error#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-032'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}error#3(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'), 'string', (1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XXXX0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-033'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}trace#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-033a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}trace#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-033a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-034'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}trace#2(1, 'label')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-034a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}trace#1(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-034a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-035'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}abs#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-036'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}abs#1(-1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-037'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}ceiling#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-038'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}ceiling#1(0.9)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-039'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}floor#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-040'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}floor#1(1.1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-041'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}round#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-042'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}round#1(1.1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-043'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}round#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-044'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}round#2(1.1, 0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-045'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}round-half-to-even#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-046'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}round-half-to-even#1(1.1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-047'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}round-half-to-even#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-048'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}round-half-to-even#2(1.1, 0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-049'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}number#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-049.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-050'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/Q{http://www.w3.org/2005/xpath-functions}number#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-050.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-051'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}number#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-051.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-052'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}number#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-052.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-053'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-integer#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-053.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-054'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-integer#2(1, '0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-054.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-055'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-integer#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-055.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-056'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-integer#3(1, '0', 'en')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-056.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-057'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-number#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-057.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-058'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-number#2(1, '0')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-058.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-059'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-number#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-059.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-060'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-number#3(1, '0', ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-060.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-061'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}pi#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-061.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-062'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}pi#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-062.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.141592653589793") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-063'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}exp#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-063.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-064'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "format-number(Q{http://www.w3.org/2005/xpath-functions/math}exp#1(1e0), '#.0000000')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-064.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2.7182818") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-065'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}exp10#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-065.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-066'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}exp10#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-066.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-067'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}log#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-067.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-068'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}log#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-068.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-069'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}log10#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-069.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-070'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}log10#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-070.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-071'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}pow#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-071.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-072'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}pow#2(1e0, 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-072.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-073'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}sqrt#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-073.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-074'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}sqrt#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-074.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-075'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}sin#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-075.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-076'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}sin#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-076.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.8414709848078965") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-077'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}cos#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-077.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-078'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}cos#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-078.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.5403023058681398") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-079'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}tan#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-079.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-080'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}tan#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-080.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5574077246549023") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-081'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}asin#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-081.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-082'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}asin#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-082.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5707963267948966") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-083'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}acos#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-083.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-084'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}acos#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-084.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-085'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}atan#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-085.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-086'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}atan#1(1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-086.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.7853981633974483") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-087'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions/math}atan2#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-087.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-088'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions/math}atan2#2(1e0, 1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-088.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.7853981633974483") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-089'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}codepoints-to-string#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-089.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-090'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}codepoints-to-string#1((65, 66))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-090.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "AB") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-091'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string-to-codepoints#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-091.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-092'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}string-to-codepoints#1('A')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-092.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "65") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-093'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}compare#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-093.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-094'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}compare#2('string', 'string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-094.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-095'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}compare#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-095.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-096'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}compare#3('string', 'string', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-096.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-097'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}codepoint-equal#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-097.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-098'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}codepoint-equal#2('string', 'string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-098.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-099'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}concat#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-099.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-100'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}concat#3('a', 'bc', 'def')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcdef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-101'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string-join#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-102'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}string-join#1(('abc', 'def'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcdef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-103'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string-join#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-104'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}string-join#2(('abc', 'def'), '-')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-105'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}substring#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-106'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}substring#2('string', 2e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "tring") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-107'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}substring#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-108'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}substring#3('string', 1e0, 1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-108.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "s") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-109'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string-length#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-109.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-110'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/Q{http://www.w3.org/2005/xpath-functions}string-length#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-110.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-111'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}string-length#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-111.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-112'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}string-length#1('string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-112.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-113'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}normalize-space#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-113.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-114'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/Q{http://www.w3.org/2005/xpath-functions}normalize-space#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-114.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-115'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}normalize-space#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-115.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-116'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}normalize-space#1(' string ')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-116.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-117'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}normalize-unicode#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-117.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-118'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}normalize-unicode#1('string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-118.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-119'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}normalize-unicode#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-119.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-120'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}normalize-unicode#2('string', 'NFC')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-120.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-121'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}upper-case#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-121.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-122'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}upper-case#1('string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-122.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "STRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-123'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}lower-case#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-123.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-124'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}lower-case#1('STRING')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-124.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-125'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}translate#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-125.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-126'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}translate#3('string', 'i', 'o')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-126.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "strong") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-127'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}contains#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-127.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-128'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}contains#2('string', 'rin')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-128.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-129'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}contains#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-129.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-130'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}contains#3('string', 'RIN', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-130.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-131'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}starts-with#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-131.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-132'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}starts-with#2('string', 'str')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-132.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-133'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}starts-with#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-133.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-134'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}starts-with#3('string', 'ing', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-134.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-135'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}ends-with#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-135.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-136'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}ends-with#2('string', 'ing')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-136.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-137'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}ends-with#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-137.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-138'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}ends-with#3('string', 'str', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-138.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-139'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}substring-before#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-139.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-140'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}substring-before#2('string', 'ing')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-140.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-141'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}substring-before#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-141.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-142'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}substring-before#3('string', 'ing', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-142.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-143'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}substring-after#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-143.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-144'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}substring-after#2('string', 'str')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-144.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ing") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-145'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}substring-after#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-145.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-146'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}substring-after#3('string', 'str', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-146.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ing") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-147'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}matches#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-147.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-148'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}matches#2('string', 'string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-148.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-149'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}matches#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-149.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-150'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}matches#3('string', 'STRING', 'i')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-150.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-151'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}replace#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-151.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-152'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}replace#3('string', 'i', 'o')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-152.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "strong") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-153'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}replace#4)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-153.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-154'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}replace#4('string', 'I', 'o', 'i')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-154.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "strong") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-155'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}tokenize#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-155.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-155a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}tokenize#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-155a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-156'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}tokenize#2('string', 'i')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-156.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str ng") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-156a'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}tokenize#1('a b c ')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-156a.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a b c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-157'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}tokenize#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-157.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-158'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}tokenize#3('string', 'i', 'i')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-158.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str ng") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-159'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}analyze-string#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-159.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-160'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}analyze-string#2('', 'abc')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-160.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-161'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}analyze-string#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-161.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-162'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}analyze-string#3('', 'abc', 'i')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-162.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-163'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}resolve-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-163.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-164'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}resolve-uri#1('http://www.w3.org/2005/xpath-functions')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-164.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-165'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}resolve-uri#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-165.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-166'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}resolve-uri#2('/2005/xpath-functions', 'http://www.w3.org/')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-166.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xpath-functions") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-167'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}encode-for-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-167.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-168'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}encode-for-uri#1(' ')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-168.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "%20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-169'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}iri-to-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-169.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-170'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}iri-to-uri#1('http://www.example.com/')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-170.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-171'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}escape-html-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-171.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-172'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}escape-html-uri#1('http://www.example.com/')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-172.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-173'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}true#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-173.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-174'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}true#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-174.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-175'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}false#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-175.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-176'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}false#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-176.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-177'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}boolean#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-177.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-178'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}boolean#1(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-178.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-179'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}not#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-179.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-180'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}not#1(\"string\")",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-180.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-181'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}years-from-duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-181.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-182'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}years-from-duration#1(xs:yearMonthDuration(\"P20Y15M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-182.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "21") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-183'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}months-from-duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-183.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-184'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}months-from-duration#1(xs:yearMonthDuration(\"P20Y15M\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-184.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-185'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}days-from-duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-185.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-186'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}days-from-duration#1(xs:dayTimeDuration(\"P3DT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-186.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-187'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}hours-from-duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-187.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-188'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}hours-from-duration#1(xs:dayTimeDuration(\"P3DT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-188.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-189'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}minutes-from-duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-189.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-190'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}minutes-from-duration#1(xs:dayTimeDuration(\"P3DT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-190.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-191'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}seconds-from-duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-191.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-192'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}seconds-from-duration#1(xs:dayTimeDuration(\"P3DT10H12.5S\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-192.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-193'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}dateTime#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-193.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-194'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}dateTime#2(xs:date('2012-01-01Z'), xs:time('00:00:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-194.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012-01-01T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-195'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}year-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-195.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-196'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}year-from-dateTime#1(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-196.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-197'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}month-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-197.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-198'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}month-from-dateTime#1(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-198.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-199'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}day-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-199.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-200'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}day-from-dateTime#1(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-200.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-201'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}hours-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-201.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-202'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}hours-from-dateTime#1(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-202.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-203'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}minutes-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-203.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-204'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}minutes-from-dateTime#1(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-204.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-205'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}seconds-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-205.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-206'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}seconds-from-dateTime#1(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-206.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-207'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}timezone-from-dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-207.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-208'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}timezone-from-dateTime#1(xs:dateTime('2012-01-01T00:00:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-208.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-209'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}year-from-date#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-209.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-210'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}year-from-date#1(xs:date('2012-02-01Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-210.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-211'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}month-from-date#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-211.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-212'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}month-from-date#1(xs:date('2012-02-01Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-212.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-213'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}day-from-date#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-213.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-214'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}day-from-date#1(xs:date('2012-02-01Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-214.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-215'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}timezone-from-date#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-215.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-216'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}timezone-from-date#1(xs:date('2012-01-01Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-216.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-217'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}hours-from-time#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-217.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-218'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}hours-from-time#1(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-218.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-219'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}minutes-from-time#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-219.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-220'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}minutes-from-time#1(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-220.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-221'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}seconds-from-time#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-221.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-222'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}seconds-from-time#1(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-222.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-223'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}timezone-from-time#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-223.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-224'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}timezone-from-time#1(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-224.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-225'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}adjust-dateTime-to-timezone#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-225.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-226'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}adjust-dateTime-to-timezone#1(xs:dateTime('2012-01-01T00:00:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-226.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-227'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}adjust-dateTime-to-timezone#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-227.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-228'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}adjust-dateTime-to-timezone#2(xs:dateTime(\"1970-01-01T00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-228.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-31T14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-229'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}adjust-date-to-timezone#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-229.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-230'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}adjust-date-to-timezone#1(xs:date('2012-01-01Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-230.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:date") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-231'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}adjust-date-to-timezone#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-231.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-232'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}adjust-date-to-timezone#2(xs:date(\"1970-01-01Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-232.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-31-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-233'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}adjust-time-to-timezone#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-233.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-234'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}adjust-time-to-timezone#1(xs:time('00:00:00Z'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-234.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:time") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-235'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}adjust-time-to-timezone#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-235.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-236'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}adjust-time-to-timezone#2(xs:time(\"00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-236.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-237'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-dateTime#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-237.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-238'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-dateTime#2(xs:dateTime('2012-01-01T00:00:00Z'), '[Y]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-238.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-239'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-dateTime#5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-239.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-240'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-dateTime#5(xs:dateTime('2012-01-01T00:00:00Z'), '[Y]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-240.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-241'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-date#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-241.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-242'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-date#2(xs:date('2012-01-01Z'), '[Y]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-242.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-243'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-date#5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-243.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-244'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-date#5(xs:date('2012-01-01Z'), '[Y]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-244.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-245'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-time#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-245.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-246'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-time#2(xs:time('00:00:00Z'), '[H01]')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-246.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-247'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}format-time#5)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-247.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-248'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}format-time#5(xs:time('00:00:00Z'), '[H01]', 'en', (), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-248.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-249'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}resolve-QName#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-249.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-250'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}resolve-QName#2('ns:local', /root/*[2])",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-250.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ns:local") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-251'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}QName#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-251.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-252'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}QName#2('http://www.example.org/', 'ns:local')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-252.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ns:local") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-253'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}prefix-from-QName#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-253.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-254'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}prefix-from-QName#1(fn:QName('http://www.example.org', 'foo:bar'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-254.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "foo") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-255'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}local-name-from-QName#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-255.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-256'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}local-name-from-QName#1(fn:QName('http://www.example.org', 'foo:bar'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-256.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "bar") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-257'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}namespace-uri-from-QName#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-257.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-258'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}namespace-uri-from-QName#1(fn:QName('http://www.example.org', 'foo:bar'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-258.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-259'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}namespace-uri-for-prefix#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-259.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-260'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}namespace-uri-for-prefix#2('ns', /root/*[2])",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-260.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-261'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}in-scope-prefixes#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-261.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-262'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}in-scope-prefixes#1(/root)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-262.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-263'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}name#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-263.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-264'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}name#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-264.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-265'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}name#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-265.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-266'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}name#1(/root)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-266.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-267'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}local-name#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-267.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-268'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}local-name#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-268.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-269'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}local-name#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-269.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-270'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}local-name#1(/root)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-270.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-271'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}namespace-uri#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-271.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-272'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/*[2]/Q{http://www.w3.org/2005/xpath-functions}namespace-uri#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-272.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-273'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}namespace-uri#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-273.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-274'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}namespace-uri#1(/root/*[2])",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-274.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-275'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}lang#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-275.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-276'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}lang#1('en')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-276.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-277'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}lang#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-277.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-278'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}lang#2('en', /root)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-278.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-279'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}root#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-279.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-280'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/root/Q{http://www.w3.org/2005/xpath-functions}root#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-280.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-281'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}root#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-281.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-282'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}root#1(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-282.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-283'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}path#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-283.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-284'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}path#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-284.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-285'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}path#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-285.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-286'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}path#1(/)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-286.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-287'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}has-children#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-287.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-288'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}has-children#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-288.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-289'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}has-children#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-289.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-290'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}has-children#1(/)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-290.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-291'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}innermost#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-291.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-292'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}innermost#1(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-292.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-293'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}outermost#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-293.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-294'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}outermost#1(())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-294.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-295'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}empty#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-295.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-296'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}empty#1((1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-296.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-297'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}exists#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-297.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-298'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}exists#1((1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-298.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-299'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}head#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-299.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-300'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}head#1((1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-300.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-301'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}tail#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-301.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-302'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}tail#1((1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-302.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-303'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}insert-before#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-303.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-304'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}insert-before#3((1, 2, 3), 2, ('a', 'b', 'c'))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-304.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 a b c 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-305'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}remove#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-305.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-306'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}remove#2(('a', 'b', 'c'), 2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-306.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-307'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}reverse#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-307.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-308'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}reverse#1(1 to 3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-308.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-309'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}subsequence#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-309.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-310'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}subsequence#2((1, true()), 2e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-310.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-311'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}subsequence#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-311.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-312'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}subsequence#3((1, true()), 1e0, 1e0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-312.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-313'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unordered#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-313.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-314'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unordered#1(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-314.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-315'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}distinct-values#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-315.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-316'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}distinct-values#1((1, 1, 1))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-316.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-317'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}distinct-values#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-317.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-318'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}distinct-values#2((1, 1, 1), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-318.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-319'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}index-of#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-319.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-320'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}index-of#2((1, 'string'), 'string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-320.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-321'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}index-of#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-321.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-322'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}index-of#3((1, 'string'), 'string', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-322.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-323'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}deep-equal#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-323.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-324'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}deep-equal#2((1, true()), (1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-324.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-325'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}deep-equal#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-325.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-326'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}deep-equal#3((1, true()), (1, true()), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-326.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-327'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}zero-or-one#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-327.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-328'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}zero-or-one#1(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-328.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-329'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}one-or-more#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-329.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-330'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}one-or-more#1(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-330.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-331'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}exactly-one#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-331.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-332'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}exactly-one#1(1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-332.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-333'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}count#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-333.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-334'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}count#1((1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-334.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-335'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}avg#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-335.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-336'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}avg#1((1, 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-336.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-337'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}max#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-337.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-338'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}max#1((1, 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-338.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-339'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}max#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-339.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-340'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}max#2((1, 3), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-340.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-341'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}min#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-341.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-342'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}min#1((1, 3))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-342.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-343'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}min#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-343.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-344'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}min#2((1, 3), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-344.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-345'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}sum#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-345.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-346'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}sum#1((1, 2))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-346.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-347'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}sum#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-347.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-348'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}sum#2((1, 2), 0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-348.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-349'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}id#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-349.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-350'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}id#1(('id1', 'id2'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-350.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-351'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}id#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-351.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-352'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}id#2(('id1', 'id2'), /)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-352.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-353'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}element-with-id#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-353.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-354'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}element-with-id#1(('id1', 'id2'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-354.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-355'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}element-with-id#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-355.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-356'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}element-with-id#2(('id1', 'id2'), /)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-356.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-357'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}idref#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-357.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-358'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}idref#1(('id1', 'id2'))",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-358.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-359'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}idref#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-359.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-360'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}idref#2(('id1', 'id2'), /)",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-360.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-361'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}generate-id#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-361.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-362'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "/Q{http://www.w3.org/2005/xpath-functions}generate-id#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-362.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-363'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}generate-id#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-363.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-364'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}generate-id#1(())",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-364.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-365'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}doc#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-365.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-366'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}doc#1('http://www.w3.org/fots/fn/function-lookup/function-lookup.xml')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-366.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-367'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}doc-available#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-367.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-368'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}doc-available#1('http://www.example.org/unknown-document')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-368.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "False"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-369'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}collection#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-369.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-370'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}collection#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-370.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-371'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}collection#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-371.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-372'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}collection#1(())",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-372.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-373'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}uri-collection#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-373.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-374'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}uri-collection#0()",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-374.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-375'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}uri-collection#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-375.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-376'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}uri-collection#1(())",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-376.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-377'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unparsed-text#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-377.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-378'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unparsed-text#1('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-378.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-379'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unparsed-text#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-379.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-380'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unparsed-text#2('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-380.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-381'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unparsed-text-lines#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-381.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-382'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unparsed-text-lines#1('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-382.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-383'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unparsed-text-lines#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-383.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-384'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unparsed-text-lines#2('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-384.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-385'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unparsed-text-available#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-385.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-386'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unparsed-text-available#1('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-386.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-387'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}unparsed-text-available#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-387.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-388'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}unparsed-text-available#2('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')",
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-388.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-389'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}environment-variable#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-389.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-390'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}environment-variable#1('should-not-exist')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-390.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-391'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}available-environment-variables#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-391.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-392'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}available-environment-variables#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-392.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-393'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}parse-xml#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-393.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-394'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}parse-xml#1('<doc />')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-394.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-395'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}parse-xml-fragment#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-395.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-396'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}parse-xml-fragment#1('<doc />')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-396.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-397'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}serialize#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-397.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-398'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}serialize#1((1, true()))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-398.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result, \"1 true\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-399'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}serialize#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-399.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-400'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}serialize#2((1, false()), ())",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-400.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result, \"1 false\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-401'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}position#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-401.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-402'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(2, 4, 6)!Q{http://www.w3.org/2005/xpath-functions}position#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-402.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-403'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}last#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-403.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-404'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "(2, 4, 6)!Q{http://www.w3.org/2005/xpath-functions}last#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-404.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-405'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}current-dateTime#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-405.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-406'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}current-dateTime#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-406.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-407'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}current-date#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-407.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-408'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}current-date#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-408.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:date") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-409'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}current-time#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-409.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-410'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}current-time#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-410.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:time") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-411'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}implicit-timezone#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-411.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-412'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}implicit-timezone#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-412.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:dayTimeDuration") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-413'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}default-collation#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-413.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-414'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}default-collation#0()",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-414.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xpath-functions/collation/codepoint") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-415'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}static-base-uri#0)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-415.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-416'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}static-base-uri#0()",
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []},
{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.example.com"}]},
{'context-item', [""]},
{vars, []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-416.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI?") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-417'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}function-lookup#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-417.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-418'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}function-lookup#2(fn:QName('http://www.example.org', 'foo:bar'), 1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-418.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-419'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}function-name#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-419.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-420'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}function-name#1(fn:abs#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-420.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"fn:QName('http://www.w3.org/2005/xpath-functions', 'fn:abs')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-421'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}function-arity#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-421.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-422'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}function-arity#1(fn:abs#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-422.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-423'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}for-each#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-423.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-424'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}for-each#2((\"23\", \"29\"), xs:int#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-424.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(23, 29)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-425'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}filter#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-425.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-426'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}filter#2(1 to 10, function($a) {$a mod 2 = 0})",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-426.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2, 4, 6, 8, 10)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-427'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}fold-left#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-427.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-428'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}fold-left#3(1 to 5, \"\", fn:concat(?, \".\", ?))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-428.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, ".1.2.3.4.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-429'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}fold-right#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-429.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-430'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}fold-right#3(1 to 5, \"\", fn:concat(?, \".\", ?))",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-430.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.2.3.4.5.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-431'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2005/xpath-functions}for-each-pair#3)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-431.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-432'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2005/xpath-functions}for-each-pair#3((\"a\", \"b\", \"c\"), (\"x\", \"y\", \"z\"), concat#2)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-432.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"ax\", \"by\", \"cz\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-433'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}untypedAtomic#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-433.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-434'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}untypedAtomic#1('string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-434.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-435'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}dateTime#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-435.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-436'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}dateTime#1('1970-01-02T04:05:06Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-436.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-02T04:05:06Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-437'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}date#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-437.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-438'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}date#1('1970-01-02Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-438.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-02Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-439'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}time#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-439.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-440'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}time#1('01:02:03Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-440.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "01:02:03Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-441'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}duration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-441.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-442'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}duration#1('P5Y2M10DT15H')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-442.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P5Y2M10DT15H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-443'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}yearMonthDuration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-443.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-444'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}yearMonthDuration#1('P1Y')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-444.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-445'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}dayTimeDuration#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-445.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-446'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}dayTimeDuration#1('PT15H')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-446.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT15H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-447'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}float#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-447.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-448'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}float#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-448.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-449'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}double#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-449.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-450'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}double#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-450.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-451'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}decimal#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-451.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-452'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}decimal#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-452.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-453'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}integer#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-453.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-454'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}integer#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-454.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-455'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}nonPositiveInteger#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-455.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-456'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}nonPositiveInteger#1('-1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-456.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-457'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}negativeInteger#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-457.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-458'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}negativeInteger#1('-1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-458.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-459'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}long#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-459.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-460'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}long#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-460.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-461'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}int#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-461.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-462'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}int#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-462.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-463'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}short#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-463.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-464'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}short#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-464.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-465'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}byte#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-465.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-466'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}byte#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-466.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-467'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}nonNegativeInteger#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-467.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-468'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}nonNegativeInteger#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-468.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-469'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}unsignedLong#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-469.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-470'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}unsignedLong#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-470.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-471'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}unsignedInt#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-471.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-472'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}unsignedInt#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-472.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-473'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}unsignedShort#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-473.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-474'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}unsignedShort#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-474.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-475'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}unsignedByte#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-475.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-476'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}unsignedByte#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-476.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-477'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}nonNegativeInteger#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-477.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-478'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}nonNegativeInteger#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-478.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-479'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}positiveInteger#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-479.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-480'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}positiveInteger#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-480.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-481'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}gYearMonth#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-481.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-482'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}gYearMonth#1('2001-10Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-482.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2001-10Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-483'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}gYear#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-483.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-484'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}gYear#1('2012Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-484.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-485'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}gMonthDay#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-485.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-486'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}gMonthDay#1('--11-01Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-486.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "--11-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-487'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}gDay#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-487.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-488'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}gDay#1('---01Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-488.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "---01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-489'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}gMonth#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-489.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-490'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}gMonth#1('--11Z')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-490.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "--11Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-491'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}string#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-491.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-492'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}string#1('string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-492.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-493'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}normalizedString#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-493.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-494'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}normalizedString#1('normalized
string')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-494.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "normalized string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-495'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}token#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-495.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-496'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}token#1('token')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-496.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "token") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-497'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}language#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-497.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-498'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}language#1('en')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-498.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "en") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-499'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}NMTOKEN#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-499.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-500'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}NMTOKEN#1('NMTOKEN')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-500.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NMTOKEN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-501'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}Name#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-501.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-502'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}Name#1('Name')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-502.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Name") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-503'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}NCName#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-503.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-504'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}NCName#1('NCName')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-504.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NCName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-505'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}ID#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-505.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-506'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}ID#1('ID')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-506.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ID") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-507'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}IDREF#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-507.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-508'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}IDREF#1('IDREF')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-508.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "IDREF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-509'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}ENTITY#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-509.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-510'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}ENTITY#1('ENTITY')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-510.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ENTITY") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-511'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}boolean#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-511.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-512'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}boolean#1('1')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-512.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-513'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}base64Binary#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-513.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-514'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}base64Binary#1('D74D35D35D35')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-514.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "D74D35D35D35") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-515'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}hexBinary#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-515.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-516'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}hexBinary#1('0fb7')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-516.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0FB7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-517'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}anyURI#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-517.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-518'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}anyURI#1('http://www.example.org/')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-518.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-519'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}QName#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-519.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-520'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}QName#1('fn:QName')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-520.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "fn:QName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-523'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}IDREFS#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-523.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-524'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}IDREFS#1('ID1 ID2 ID3')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-524.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ID1 ID2 ID3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-525'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}NMTOKENS#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-525.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-526'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}NMTOKENS#1('NMTOKEN1 NMTOKEN2 NMTOKEN3')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-526.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NMTOKEN1 NMTOKEN2 NMTOKEN3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-527'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "exists(Q{http://www.w3.org/2001/XMLSchema}ENTITIES#1)",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-527.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "True"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-528'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "Q{http://www.w3.org/2001/XMLSchema}ENTITIES#1('ENTITY1 ENTITY2 ENTITY3')",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-528.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ENTITY1 ENTITY2 ENTITY3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-701'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:plus($x, $y) {
          $x + $y
        };
        function-name(local:plus#2)  
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-701.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"QName(\"http://www.w3.org/2005/xquery-local-functions\", \"plus\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-702'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:plus($x, $y) {
          $x + $y
        };
        function-arity(local:plus#2)  
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-702.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-703'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare function local:plus($x, $y) {
          $x + $y
        };
        let $f := (if (current-date() gt xs:date('1900-01-01')) then local:plus#2 else round#2)
        return $f(5, 7)  
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-703.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-704'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $v := function-name(local:plus#2);
        declare function local:plus($x, $y) {
          $x + $y
        };
        $v 
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-704.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"QName(\"http://www.w3.org/2005/xquery-local-functions\", \"plus\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-705'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $v := function-arity(local:plus#2);
        declare function local:plus($x, $y) {
          $x + $y
        };
        $v
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-705.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-706'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $f := (if (current-date() gt xs:date('1900-01-01')) then local:plus#2 else round#2);
        declare function local:plus($x, $y) {
          $x + $y
        };
        $f(5, 7)  
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-706.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-707'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $f := (if (current-date() gt xs:date('1900-01-01')) then local:plus#2 else round#2);
        declare function local:plus($x, $y) {
          $x + $y + $a
        };
        declare variable $a := function-arity($f);
        $f(3, 4) 
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-707.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"9") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'function-literal-708'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
        declare default function namespace \"http://example.com/functions\";
        declare variable $f := (if (fn:current-date() gt xs:date('1900-01-01')) then plus#2 else fn:round#2);
        declare function plus($x, $y) {
          $x + $y
        };
        $f(5, 7)  
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "function-literal-708.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"12") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-001'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(attribute#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-002'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(comment#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-003'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(document-node#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-004'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(element#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-005'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(empty-sequence#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-006'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(function#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-007'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(if#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-008'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(item#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-008.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-009'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(namespace-node#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-010'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(node#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-010.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-011'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(processing-instruction#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-012'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(schema-attribute#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-013'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(schema-element#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-014'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(switch#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-014.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-015'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(text#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-016'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
	fn:exists(typeswitch#0)
      ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-017'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      fn:exists(array#0)
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
'named-function-ref-reserved-function-names-018'(Config) ->
   BaseDir = ?config(base_dir, Config),
   Qry = "
      fn:exists(map#0)
    ",
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(BaseDir, "named-function-ref-reserved-function-names-018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.
