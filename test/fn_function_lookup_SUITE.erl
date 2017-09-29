-module('fn_function_lookup_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-function-lookup-001'/1]).
-export(['fn-function-lookup-002'/1]).
-export(['fn-function-lookup-003'/1]).
-export(['fn-function-lookup-004'/1]).
-export(['fn-function-lookup-005'/1]).
-export(['fn-function-lookup-006'/1]).
-export(['fn-function-lookup-007'/1]).
-export(['fn-function-lookup-008'/1]).
-export(['fn-function-lookup-009'/1]).
-export(['fn-function-lookup-010'/1]).
-export(['fn-function-lookup-011'/1]).
-export(['fn-function-lookup-012'/1]).
-export(['fn-function-lookup-013'/1]).
-export(['fn-function-lookup-014'/1]).
-export(['fn-function-lookup-015'/1]).
-export(['fn-function-lookup-016'/1]).
-export(['fn-function-lookup-017'/1]).
-export(['fn-function-lookup-018'/1]).
-export(['fn-function-lookup-019'/1]).
-export(['fn-function-lookup-020'/1]).
-export(['fn-function-lookup-021'/1]).
-export(['fn-function-lookup-022'/1]).
-export(['fn-function-lookup-023'/1]).
-export(['fn-function-lookup-024'/1]).
-export(['fn-function-lookup-025'/1]).
-export(['fn-function-lookup-026'/1]).
-export(['fn-function-lookup-027'/1]).
-export(['fn-function-lookup-028'/1]).
-export(['fn-function-lookup-029'/1]).
-export(['fn-function-lookup-030'/1]).
-export(['fn-function-lookup-031'/1]).
-export(['fn-function-lookup-032'/1]).
-export(['fn-function-lookup-033'/1]).
-export(['fn-function-lookup-034'/1]).
-export(['fn-function-lookup-035'/1]).
-export(['fn-function-lookup-036'/1]).
-export(['fn-function-lookup-037'/1]).
-export(['fn-function-lookup-038'/1]).
-export(['fn-function-lookup-039'/1]).
-export(['fn-function-lookup-040'/1]).
-export(['fn-function-lookup-041'/1]).
-export(['fn-function-lookup-042'/1]).
-export(['fn-function-lookup-043'/1]).
-export(['fn-function-lookup-044'/1]).
-export(['fn-function-lookup-045'/1]).
-export(['fn-function-lookup-046'/1]).
-export(['fn-function-lookup-047'/1]).
-export(['fn-function-lookup-048'/1]).
-export(['fn-function-lookup-049'/1]).
-export(['fn-function-lookup-050'/1]).
-export(['fn-function-lookup-051'/1]).
-export(['fn-function-lookup-052'/1]).
-export(['fn-function-lookup-053'/1]).
-export(['fn-function-lookup-054'/1]).
-export(['fn-function-lookup-055'/1]).
-export(['fn-function-lookup-056'/1]).
-export(['fn-function-lookup-057'/1]).
-export(['fn-function-lookup-058'/1]).
-export(['fn-function-lookup-059'/1]).
-export(['fn-function-lookup-060'/1]).
-export(['fn-function-lookup-061'/1]).
-export(['fn-function-lookup-062'/1]).
-export(['fn-function-lookup-063'/1]).
-export(['fn-function-lookup-064'/1]).
-export(['fn-function-lookup-065'/1]).
-export(['fn-function-lookup-066'/1]).
-export(['fn-function-lookup-067'/1]).
-export(['fn-function-lookup-068'/1]).
-export(['fn-function-lookup-069'/1]).
-export(['fn-function-lookup-070'/1]).
-export(['fn-function-lookup-071'/1]).
-export(['fn-function-lookup-072'/1]).
-export(['fn-function-lookup-073'/1]).
-export(['fn-function-lookup-074'/1]).
-export(['fn-function-lookup-075'/1]).
-export(['fn-function-lookup-076'/1]).
-export(['fn-function-lookup-077'/1]).
-export(['fn-function-lookup-078'/1]).
-export(['fn-function-lookup-079'/1]).
-export(['fn-function-lookup-080'/1]).
-export(['fn-function-lookup-081'/1]).
-export(['fn-function-lookup-082'/1]).
-export(['fn-function-lookup-083'/1]).
-export(['fn-function-lookup-084'/1]).
-export(['fn-function-lookup-085'/1]).
-export(['fn-function-lookup-086'/1]).
-export(['fn-function-lookup-087'/1]).
-export(['fn-function-lookup-088'/1]).
-export(['fn-function-lookup-089'/1]).
-export(['fn-function-lookup-090'/1]).
-export(['fn-function-lookup-091'/1]).
-export(['fn-function-lookup-092'/1]).
-export(['fn-function-lookup-093'/1]).
-export(['fn-function-lookup-094'/1]).
-export(['fn-function-lookup-095'/1]).
-export(['fn-function-lookup-096'/1]).
-export(['fn-function-lookup-097'/1]).
-export(['fn-function-lookup-098'/1]).
-export(['fn-function-lookup-099'/1]).
-export(['fn-function-lookup-100'/1]).
-export(['fn-function-lookup-101'/1]).
-export(['fn-function-lookup-102'/1]).
-export(['fn-function-lookup-103'/1]).
-export(['fn-function-lookup-104'/1]).
-export(['fn-function-lookup-105'/1]).
-export(['fn-function-lookup-106'/1]).
-export(['fn-function-lookup-107'/1]).
-export(['fn-function-lookup-108'/1]).
-export(['fn-function-lookup-109'/1]).
-export(['fn-function-lookup-110'/1]).
-export(['fn-function-lookup-111'/1]).
-export(['fn-function-lookup-112'/1]).
-export(['fn-function-lookup-113'/1]).
-export(['fn-function-lookup-114'/1]).
-export(['fn-function-lookup-115'/1]).
-export(['fn-function-lookup-116'/1]).
-export(['fn-function-lookup-117'/1]).
-export(['fn-function-lookup-118'/1]).
-export(['fn-function-lookup-119'/1]).
-export(['fn-function-lookup-120'/1]).
-export(['fn-function-lookup-121'/1]).
-export(['fn-function-lookup-122'/1]).
-export(['fn-function-lookup-123'/1]).
-export(['fn-function-lookup-124'/1]).
-export(['fn-function-lookup-125'/1]).
-export(['fn-function-lookup-126'/1]).
-export(['fn-function-lookup-127'/1]).
-export(['fn-function-lookup-128'/1]).
-export(['fn-function-lookup-129'/1]).
-export(['fn-function-lookup-130'/1]).
-export(['fn-function-lookup-131'/1]).
-export(['fn-function-lookup-132'/1]).
-export(['fn-function-lookup-133'/1]).
-export(['fn-function-lookup-134'/1]).
-export(['fn-function-lookup-135'/1]).
-export(['fn-function-lookup-136'/1]).
-export(['fn-function-lookup-137'/1]).
-export(['fn-function-lookup-138'/1]).
-export(['fn-function-lookup-139'/1]).
-export(['fn-function-lookup-140'/1]).
-export(['fn-function-lookup-141'/1]).
-export(['fn-function-lookup-142'/1]).
-export(['fn-function-lookup-143'/1]).
-export(['fn-function-lookup-144'/1]).
-export(['fn-function-lookup-145'/1]).
-export(['fn-function-lookup-146'/1]).
-export(['fn-function-lookup-147'/1]).
-export(['fn-function-lookup-148'/1]).
-export(['fn-function-lookup-149'/1]).
-export(['fn-function-lookup-150'/1]).
-export(['fn-function-lookup-151'/1]).
-export(['fn-function-lookup-152'/1]).
-export(['fn-function-lookup-153'/1]).
-export(['fn-function-lookup-154'/1]).
-export(['fn-function-lookup-155'/1]).
-export(['fn-function-lookup-156'/1]).
-export(['fn-function-lookup-157'/1]).
-export(['fn-function-lookup-158'/1]).
-export(['fn-function-lookup-159'/1]).
-export(['fn-function-lookup-160'/1]).
-export(['fn-function-lookup-161'/1]).
-export(['fn-function-lookup-162'/1]).
-export(['fn-function-lookup-163'/1]).
-export(['fn-function-lookup-164'/1]).
-export(['fn-function-lookup-165'/1]).
-export(['fn-function-lookup-166'/1]).
-export(['fn-function-lookup-167'/1]).
-export(['fn-function-lookup-168'/1]).
-export(['fn-function-lookup-169'/1]).
-export(['fn-function-lookup-170'/1]).
-export(['fn-function-lookup-171'/1]).
-export(['fn-function-lookup-172'/1]).
-export(['fn-function-lookup-173'/1]).
-export(['fn-function-lookup-174'/1]).
-export(['fn-function-lookup-175'/1]).
-export(['fn-function-lookup-176'/1]).
-export(['fn-function-lookup-177'/1]).
-export(['fn-function-lookup-178'/1]).
-export(['fn-function-lookup-179'/1]).
-export(['fn-function-lookup-180'/1]).
-export(['fn-function-lookup-181'/1]).
-export(['fn-function-lookup-182'/1]).
-export(['fn-function-lookup-183'/1]).
-export(['fn-function-lookup-184'/1]).
-export(['fn-function-lookup-185'/1]).
-export(['fn-function-lookup-186'/1]).
-export(['fn-function-lookup-187'/1]).
-export(['fn-function-lookup-188'/1]).
-export(['fn-function-lookup-189'/1]).
-export(['fn-function-lookup-190'/1]).
-export(['fn-function-lookup-191'/1]).
-export(['fn-function-lookup-192'/1]).
-export(['fn-function-lookup-193'/1]).
-export(['fn-function-lookup-194'/1]).
-export(['fn-function-lookup-195'/1]).
-export(['fn-function-lookup-196'/1]).
-export(['fn-function-lookup-197'/1]).
-export(['fn-function-lookup-198'/1]).
-export(['fn-function-lookup-199'/1]).
-export(['fn-function-lookup-200'/1]).
-export(['fn-function-lookup-201'/1]).
-export(['fn-function-lookup-202'/1]).
-export(['fn-function-lookup-203'/1]).
-export(['fn-function-lookup-204'/1]).
-export(['fn-function-lookup-205'/1]).
-export(['fn-function-lookup-206'/1]).
-export(['fn-function-lookup-207'/1]).
-export(['fn-function-lookup-208'/1]).
-export(['fn-function-lookup-209'/1]).
-export(['fn-function-lookup-210'/1]).
-export(['fn-function-lookup-211'/1]).
-export(['fn-function-lookup-212'/1]).
-export(['fn-function-lookup-213'/1]).
-export(['fn-function-lookup-214'/1]).
-export(['fn-function-lookup-215'/1]).
-export(['fn-function-lookup-216'/1]).
-export(['fn-function-lookup-217'/1]).
-export(['fn-function-lookup-218'/1]).
-export(['fn-function-lookup-219'/1]).
-export(['fn-function-lookup-220'/1]).
-export(['fn-function-lookup-221'/1]).
-export(['fn-function-lookup-222'/1]).
-export(['fn-function-lookup-223'/1]).
-export(['fn-function-lookup-224'/1]).
-export(['fn-function-lookup-225'/1]).
-export(['fn-function-lookup-226'/1]).
-export(['fn-function-lookup-227'/1]).
-export(['fn-function-lookup-228'/1]).
-export(['fn-function-lookup-229'/1]).
-export(['fn-function-lookup-230'/1]).
-export(['fn-function-lookup-231'/1]).
-export(['fn-function-lookup-232'/1]).
-export(['fn-function-lookup-233'/1]).
-export(['fn-function-lookup-234'/1]).
-export(['fn-function-lookup-235'/1]).
-export(['fn-function-lookup-236'/1]).
-export(['fn-function-lookup-237'/1]).
-export(['fn-function-lookup-238'/1]).
-export(['fn-function-lookup-239'/1]).
-export(['fn-function-lookup-240'/1]).
-export(['fn-function-lookup-241'/1]).
-export(['fn-function-lookup-242'/1]).
-export(['fn-function-lookup-243'/1]).
-export(['fn-function-lookup-244'/1]).
-export(['fn-function-lookup-245'/1]).
-export(['fn-function-lookup-246'/1]).
-export(['fn-function-lookup-247'/1]).
-export(['fn-function-lookup-248'/1]).
-export(['fn-function-lookup-249'/1]).
-export(['fn-function-lookup-250'/1]).
-export(['fn-function-lookup-251'/1]).
-export(['fn-function-lookup-252'/1]).
-export(['fn-function-lookup-253'/1]).
-export(['fn-function-lookup-254'/1]).
-export(['fn-function-lookup-255'/1]).
-export(['fn-function-lookup-256'/1]).
-export(['fn-function-lookup-257'/1]).
-export(['fn-function-lookup-258'/1]).
-export(['fn-function-lookup-259'/1]).
-export(['fn-function-lookup-260'/1]).
-export(['fn-function-lookup-261'/1]).
-export(['fn-function-lookup-262'/1]).
-export(['fn-function-lookup-263'/1]).
-export(['fn-function-lookup-264'/1]).
-export(['fn-function-lookup-265'/1]).
-export(['fn-function-lookup-266'/1]).
-export(['fn-function-lookup-267'/1]).
-export(['fn-function-lookup-268'/1]).
-export(['fn-function-lookup-269'/1]).
-export(['fn-function-lookup-270'/1]).
-export(['fn-function-lookup-271'/1]).
-export(['fn-function-lookup-272'/1]).
-export(['fn-function-lookup-273'/1]).
-export(['fn-function-lookup-274'/1]).
-export(['fn-function-lookup-275'/1]).
-export(['fn-function-lookup-276'/1]).
-export(['fn-function-lookup-277'/1]).
-export(['fn-function-lookup-278'/1]).
-export(['fn-function-lookup-279'/1]).
-export(['fn-function-lookup-280'/1]).
-export(['fn-function-lookup-281'/1]).
-export(['fn-function-lookup-282'/1]).
-export(['fn-function-lookup-283'/1]).
-export(['fn-function-lookup-284'/1]).
-export(['fn-function-lookup-285'/1]).
-export(['fn-function-lookup-286'/1]).
-export(['fn-function-lookup-287'/1]).
-export(['fn-function-lookup-288'/1]).
-export(['fn-function-lookup-289'/1]).
-export(['fn-function-lookup-290'/1]).
-export(['fn-function-lookup-291'/1]).
-export(['fn-function-lookup-292'/1]).
-export(['fn-function-lookup-293'/1]).
-export(['fn-function-lookup-294'/1]).
-export(['fn-function-lookup-295'/1]).
-export(['fn-function-lookup-296'/1]).
-export(['fn-function-lookup-297'/1]).
-export(['fn-function-lookup-298'/1]).
-export(['fn-function-lookup-299'/1]).
-export(['fn-function-lookup-300'/1]).
-export(['fn-function-lookup-301'/1]).
-export(['fn-function-lookup-302'/1]).
-export(['fn-function-lookup-303'/1]).
-export(['fn-function-lookup-304'/1]).
-export(['fn-function-lookup-305'/1]).
-export(['fn-function-lookup-306'/1]).
-export(['fn-function-lookup-307'/1]).
-export(['fn-function-lookup-308'/1]).
-export(['fn-function-lookup-309'/1]).
-export(['fn-function-lookup-310'/1]).
-export(['fn-function-lookup-311'/1]).
-export(['fn-function-lookup-312'/1]).
-export(['fn-function-lookup-313'/1]).
-export(['fn-function-lookup-314'/1]).
-export(['fn-function-lookup-315'/1]).
-export(['fn-function-lookup-316'/1]).
-export(['fn-function-lookup-317'/1]).
-export(['fn-function-lookup-318'/1]).
-export(['fn-function-lookup-319'/1]).
-export(['fn-function-lookup-320'/1]).
-export(['fn-function-lookup-321'/1]).
-export(['fn-function-lookup-322'/1]).
-export(['fn-function-lookup-323'/1]).
-export(['fn-function-lookup-324'/1]).
-export(['fn-function-lookup-325'/1]).
-export(['fn-function-lookup-326'/1]).
-export(['fn-function-lookup-327'/1]).
-export(['fn-function-lookup-328'/1]).
-export(['fn-function-lookup-329'/1]).
-export(['fn-function-lookup-330'/1]).
-export(['fn-function-lookup-331'/1]).
-export(['fn-function-lookup-332'/1]).
-export(['fn-function-lookup-333'/1]).
-export(['fn-function-lookup-334'/1]).
-export(['fn-function-lookup-335'/1]).
-export(['fn-function-lookup-336'/1]).
-export(['fn-function-lookup-337'/1]).
-export(['fn-function-lookup-338'/1]).
-export(['fn-function-lookup-339'/1]).
-export(['fn-function-lookup-340'/1]).
-export(['fn-function-lookup-341'/1]).
-export(['fn-function-lookup-342'/1]).
-export(['fn-function-lookup-343'/1]).
-export(['fn-function-lookup-344'/1]).
-export(['fn-function-lookup-345'/1]).
-export(['fn-function-lookup-346'/1]).
-export(['fn-function-lookup-347'/1]).
-export(['fn-function-lookup-348'/1]).
-export(['fn-function-lookup-349'/1]).
-export(['fn-function-lookup-350'/1]).
-export(['fn-function-lookup-351'/1]).
-export(['fn-function-lookup-352'/1]).
-export(['fn-function-lookup-353'/1]).
-export(['fn-function-lookup-354'/1]).
-export(['fn-function-lookup-355'/1]).
-export(['fn-function-lookup-356'/1]).
-export(['fn-function-lookup-357'/1]).
-export(['fn-function-lookup-358'/1]).
-export(['fn-function-lookup-359'/1]).
-export(['fn-function-lookup-360'/1]).
-export(['fn-function-lookup-361'/1]).
-export(['fn-function-lookup-362'/1]).
-export(['fn-function-lookup-363'/1]).
-export(['fn-function-lookup-364'/1]).
-export(['fn-function-lookup-365'/1]).
-export(['fn-function-lookup-366'/1]).
-export(['fn-function-lookup-367'/1]).
-export(['fn-function-lookup-368'/1]).
-export(['fn-function-lookup-369'/1]).
-export(['fn-function-lookup-370'/1]).
-export(['fn-function-lookup-371'/1]).
-export(['fn-function-lookup-372'/1]).
-export(['fn-function-lookup-373'/1]).
-export(['fn-function-lookup-374'/1]).
-export(['fn-function-lookup-375'/1]).
-export(['fn-function-lookup-376'/1]).
-export(['fn-function-lookup-377'/1]).
-export(['fn-function-lookup-378'/1]).
-export(['fn-function-lookup-379'/1]).
-export(['fn-function-lookup-380'/1]).
-export(['fn-function-lookup-381'/1]).
-export(['fn-function-lookup-382'/1]).
-export(['fn-function-lookup-383'/1]).
-export(['fn-function-lookup-384'/1]).
-export(['fn-function-lookup-385'/1]).
-export(['fn-function-lookup-386'/1]).
-export(['fn-function-lookup-387'/1]).
-export(['fn-function-lookup-388'/1]).
-export(['fn-function-lookup-389'/1]).
-export(['fn-function-lookup-390'/1]).
-export(['fn-function-lookup-391'/1]).
-export(['fn-function-lookup-392'/1]).
-export(['fn-function-lookup-393'/1]).
-export(['fn-function-lookup-394'/1]).
-export(['fn-function-lookup-395'/1]).
-export(['fn-function-lookup-396'/1]).
-export(['fn-function-lookup-397'/1]).
-export(['fn-function-lookup-398'/1]).
-export(['fn-function-lookup-399'/1]).
-export(['fn-function-lookup-400'/1]).
-export(['fn-function-lookup-401'/1]).
-export(['fn-function-lookup-402'/1]).
-export(['fn-function-lookup-403'/1]).
-export(['fn-function-lookup-404'/1]).
-export(['fn-function-lookup-405'/1]).
-export(['fn-function-lookup-406'/1]).
-export(['fn-function-lookup-407'/1]).
-export(['fn-function-lookup-408'/1]).
-export(['fn-function-lookup-409'/1]).
-export(['fn-function-lookup-410'/1]).
-export(['fn-function-lookup-411'/1]).
-export(['fn-function-lookup-412'/1]).
-export(['fn-function-lookup-413'/1]).
-export(['fn-function-lookup-414'/1]).
-export(['fn-function-lookup-415'/1]).
-export(['fn-function-lookup-416'/1]).
-export(['fn-function-lookup-417'/1]).
-export(['fn-function-lookup-418'/1]).
-export(['fn-function-lookup-419'/1]).
-export(['fn-function-lookup-420'/1]).
-export(['fn-function-lookup-421'/1]).
-export(['fn-function-lookup-422'/1]).
-export(['fn-function-lookup-423'/1]).
-export(['fn-function-lookup-424'/1]).
-export(['fn-function-lookup-425'/1]).
-export(['fn-function-lookup-426'/1]).
-export(['fn-function-lookup-427'/1]).
-export(['fn-function-lookup-428'/1]).
-export(['fn-function-lookup-429'/1]).
-export(['fn-function-lookup-430'/1]).
-export(['fn-function-lookup-431'/1]).
-export(['fn-function-lookup-432'/1]).
-export(['fn-function-lookup-433'/1]).
-export(['fn-function-lookup-434'/1]).
-export(['fn-function-lookup-435'/1]).
-export(['fn-function-lookup-436'/1]).
-export(['fn-function-lookup-437'/1]).
-export(['fn-function-lookup-438'/1]).
-export(['fn-function-lookup-439'/1]).
-export(['fn-function-lookup-440'/1]).
-export(['fn-function-lookup-441'/1]).
-export(['fn-function-lookup-442'/1]).
-export(['fn-function-lookup-443'/1]).
-export(['fn-function-lookup-444'/1]).
-export(['fn-function-lookup-445'/1]).
-export(['fn-function-lookup-446'/1]).
-export(['fn-function-lookup-447'/1]).
-export(['fn-function-lookup-448'/1]).
-export(['fn-function-lookup-449'/1]).
-export(['fn-function-lookup-450'/1]).
-export(['fn-function-lookup-451'/1]).
-export(['fn-function-lookup-452'/1]).
-export(['fn-function-lookup-453'/1]).
-export(['fn-function-lookup-454'/1]).
-export(['fn-function-lookup-455'/1]).
-export(['fn-function-lookup-456'/1]).
-export(['fn-function-lookup-457'/1]).
-export(['fn-function-lookup-458'/1]).
-export(['fn-function-lookup-459'/1]).
-export(['fn-function-lookup-460'/1]).
-export(['fn-function-lookup-461'/1]).
-export(['fn-function-lookup-462'/1]).
-export(['fn-function-lookup-463'/1]).
-export(['fn-function-lookup-464'/1]).
-export(['fn-function-lookup-465'/1]).
-export(['fn-function-lookup-466'/1]).
-export(['fn-function-lookup-467'/1]).
-export(['fn-function-lookup-468'/1]).
-export(['fn-function-lookup-469'/1]).
-export(['fn-function-lookup-470'/1]).
-export(['fn-function-lookup-471'/1]).
-export(['fn-function-lookup-472'/1]).
-export(['fn-function-lookup-473'/1]).
-export(['fn-function-lookup-474'/1]).
-export(['fn-function-lookup-475'/1]).
-export(['fn-function-lookup-476'/1]).
-export(['fn-function-lookup-477'/1]).
-export(['fn-function-lookup-478'/1]).
-export(['fn-function-lookup-479'/1]).
-export(['fn-function-lookup-480'/1]).
-export(['fn-function-lookup-481'/1]).
-export(['fn-function-lookup-482'/1]).
-export(['fn-function-lookup-483'/1]).
-export(['fn-function-lookup-484'/1]).
-export(['fn-function-lookup-485'/1]).
-export(['fn-function-lookup-486'/1]).
-export(['fn-function-lookup-487'/1]).
-export(['fn-function-lookup-488'/1]).
-export(['fn-function-lookup-489'/1]).
-export(['fn-function-lookup-490'/1]).
-export(['fn-function-lookup-491'/1]).
-export(['fn-function-lookup-492'/1]).
-export(['fn-function-lookup-493'/1]).
-export(['fn-function-lookup-494'/1]).
-export(['fn-function-lookup-495'/1]).
-export(['fn-function-lookup-496'/1]).
-export(['fn-function-lookup-497'/1]).
-export(['fn-function-lookup-498'/1]).
-export(['fn-function-lookup-499'/1]).
-export(['fn-function-lookup-500'/1]).
-export(['fn-function-lookup-501'/1]).
-export(['fn-function-lookup-502'/1]).
-export(['fn-function-lookup-503'/1]).
-export(['fn-function-lookup-504'/1]).
-export(['fn-function-lookup-505'/1]).
-export(['fn-function-lookup-506'/1]).
-export(['fn-function-lookup-507'/1]).
-export(['fn-function-lookup-508'/1]).
-export(['fn-function-lookup-509'/1]).
-export(['fn-function-lookup-510'/1]).
-export(['fn-function-lookup-511'/1]).
-export(['fn-function-lookup-512'/1]).
-export(['fn-function-lookup-513'/1]).
-export(['fn-function-lookup-514'/1]).
-export(['fn-function-lookup-515'/1]).
-export(['fn-function-lookup-516'/1]).
-export(['fn-function-lookup-517'/1]).
-export(['fn-function-lookup-518'/1]).
-export(['fn-function-lookup-519'/1]).
-export(['fn-function-lookup-520'/1]).
-export(['fn-function-lookup-521'/1]).
-export(['fn-function-lookup-522'/1]).
-export(['fn-function-lookup-523'/1]).
-export(['fn-function-lookup-524'/1]).
-export(['fn-function-lookup-525'/1]).
-export(['fn-function-lookup-526'/1]).
-export(['fn-function-lookup-527'/1]).
-export(['fn-function-lookup-528'/1]).
-export(['fn-function-lookup-529'/1]).
-export(['fn-function-lookup-530'/1]).
-export(['fn-function-lookup-601'/1]).
-export(['fn-function-lookup-602'/1]).
-export(['fn-function-lookup-603'/1]).
-export(['fn-function-lookup-604'/1]).
-export(['fn-function-lookup-605'/1]).
-export(['fn-function-lookup-606'/1]).
-export(['fn-function-lookup-607'/1]).
-export(['fn-function-lookup-608'/1]).
-export(['fn-function-lookup-609'/1]).
-export(['fn-function-lookup-610'/1]).
-export(['fn-function-lookup-611'/1]).
-export(['fn-function-lookup-612'/1]).
-export(['fn-function-lookup-613'/1]).
-export(['fn-function-lookup-614'/1]).
-export(['fn-function-lookup-615'/1]).
-export(['fn-function-lookup-701'/1]).
-export(['fn-function-lookup-702'/1]).
-export(['fn-function-lookup-703'/1]).
-export(['fn-function-lookup-704'/1]).
-export(['fn-function-lookup-705'/1]).
-export(['fn-function-lookup-706'/1]).
-export(['fn-function-lookup-707'/1]).
-export(['fn-function-lookup-708'/1]).
-export(['fn-function-lookup-709'/1]).
-export(['fn-function-lookup-710'/1]).
-export(['fn-function-lookup-711'/1]).
-export(['fn-function-lookup-712'/1]).
-export(['fn-function-lookup-713'/1]).
-export(['fn-function-lookup-714'/1]).
-export(['fn-function-lookup-715'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-function-lookup-001',
   'fn-function-lookup-002',
   'fn-function-lookup-003',
   'fn-function-lookup-004',
   'fn-function-lookup-005',
   'fn-function-lookup-006',
   'fn-function-lookup-007',
   'fn-function-lookup-008',
   'fn-function-lookup-009',
   'fn-function-lookup-010',
   'fn-function-lookup-011',
   'fn-function-lookup-012',
   'fn-function-lookup-013',
   'fn-function-lookup-014',
   'fn-function-lookup-015',
   'fn-function-lookup-016',
   'fn-function-lookup-017',
   'fn-function-lookup-018',
   'fn-function-lookup-019',
   'fn-function-lookup-020',
   'fn-function-lookup-021',
   'fn-function-lookup-022',
   'fn-function-lookup-023',
   'fn-function-lookup-024',
   'fn-function-lookup-025',
   'fn-function-lookup-026',
   'fn-function-lookup-027',
   'fn-function-lookup-028',
   'fn-function-lookup-029',
   'fn-function-lookup-030',
   'fn-function-lookup-031',
   'fn-function-lookup-032',
   'fn-function-lookup-033',
   'fn-function-lookup-034',
   'fn-function-lookup-035',
   'fn-function-lookup-036',
   'fn-function-lookup-037',
   'fn-function-lookup-038',
   'fn-function-lookup-039',
   'fn-function-lookup-040',
   'fn-function-lookup-041',
   'fn-function-lookup-042',
   'fn-function-lookup-043',
   'fn-function-lookup-044',
   'fn-function-lookup-045',
   'fn-function-lookup-046',
   'fn-function-lookup-047',
   'fn-function-lookup-048',
   'fn-function-lookup-049',
   'fn-function-lookup-050',
   'fn-function-lookup-051',
   'fn-function-lookup-052',
   'fn-function-lookup-053',
   'fn-function-lookup-054',
   'fn-function-lookup-055',
   'fn-function-lookup-056',
   'fn-function-lookup-057',
   'fn-function-lookup-058',
   'fn-function-lookup-059',
   'fn-function-lookup-060',
   'fn-function-lookup-061',
   'fn-function-lookup-062',
   'fn-function-lookup-063',
   'fn-function-lookup-064',
   'fn-function-lookup-065',
   'fn-function-lookup-066',
   'fn-function-lookup-067',
   'fn-function-lookup-068',
   'fn-function-lookup-069',
   'fn-function-lookup-070',
   'fn-function-lookup-071',
   'fn-function-lookup-072',
   'fn-function-lookup-073',
   'fn-function-lookup-074',
   'fn-function-lookup-075',
   'fn-function-lookup-076',
   'fn-function-lookup-077',
   'fn-function-lookup-078',
   'fn-function-lookup-079',
   'fn-function-lookup-080',
   'fn-function-lookup-081',
   'fn-function-lookup-082',
   'fn-function-lookup-083',
   'fn-function-lookup-084',
   'fn-function-lookup-085',
   'fn-function-lookup-086',
   'fn-function-lookup-087',
   'fn-function-lookup-088',
   'fn-function-lookup-089',
   'fn-function-lookup-090',
   'fn-function-lookup-091',
   'fn-function-lookup-092',
   'fn-function-lookup-093',
   'fn-function-lookup-094',
   'fn-function-lookup-095',
   'fn-function-lookup-096',
   'fn-function-lookup-097',
   'fn-function-lookup-098',
   'fn-function-lookup-099',
   'fn-function-lookup-100',
   'fn-function-lookup-101',
   'fn-function-lookup-102',
   'fn-function-lookup-103',
   'fn-function-lookup-104',
   'fn-function-lookup-105',
   'fn-function-lookup-106',
   'fn-function-lookup-107',
   'fn-function-lookup-108',
   'fn-function-lookup-109',
   'fn-function-lookup-110',
   'fn-function-lookup-111',
   'fn-function-lookup-112',
   'fn-function-lookup-113',
   'fn-function-lookup-114',
   'fn-function-lookup-115',
   'fn-function-lookup-116',
   'fn-function-lookup-117',
   'fn-function-lookup-118',
   'fn-function-lookup-119',
   'fn-function-lookup-120',
   'fn-function-lookup-121',
   'fn-function-lookup-122',
   'fn-function-lookup-123',
   'fn-function-lookup-124',
   'fn-function-lookup-125',
   'fn-function-lookup-126',
   'fn-function-lookup-127',
   'fn-function-lookup-128',
   'fn-function-lookup-129',
   'fn-function-lookup-130',
   'fn-function-lookup-131',
   'fn-function-lookup-132',
   'fn-function-lookup-133',
   'fn-function-lookup-134',
   'fn-function-lookup-135',
   'fn-function-lookup-136',
   'fn-function-lookup-137',
   'fn-function-lookup-138',
   'fn-function-lookup-139',
   'fn-function-lookup-140',
   'fn-function-lookup-141',
   'fn-function-lookup-142',
   'fn-function-lookup-143',
   'fn-function-lookup-144',
   'fn-function-lookup-145',
   'fn-function-lookup-146',
   'fn-function-lookup-147',
   'fn-function-lookup-148',
   'fn-function-lookup-149',
   'fn-function-lookup-150',
   'fn-function-lookup-151',
   'fn-function-lookup-152',
   'fn-function-lookup-153',
   'fn-function-lookup-154',
   'fn-function-lookup-155',
   'fn-function-lookup-156',
   'fn-function-lookup-157',
   'fn-function-lookup-158',
   'fn-function-lookup-159',
   'fn-function-lookup-160',
   'fn-function-lookup-161',
   'fn-function-lookup-162',
   'fn-function-lookup-163',
   'fn-function-lookup-164',
   'fn-function-lookup-165',
   'fn-function-lookup-166',
   'fn-function-lookup-167',
   'fn-function-lookup-168',
   'fn-function-lookup-169',
   'fn-function-lookup-170',
   'fn-function-lookup-171',
   'fn-function-lookup-172',
   'fn-function-lookup-173',
   'fn-function-lookup-174',
   'fn-function-lookup-175',
   'fn-function-lookup-176',
   'fn-function-lookup-177',
   'fn-function-lookup-178',
   'fn-function-lookup-179',
   'fn-function-lookup-180',
   'fn-function-lookup-181',
   'fn-function-lookup-182',
   'fn-function-lookup-183',
   'fn-function-lookup-184',
   'fn-function-lookup-185',
   'fn-function-lookup-186',
   'fn-function-lookup-187',
   'fn-function-lookup-188',
   'fn-function-lookup-189',
   'fn-function-lookup-190',
   'fn-function-lookup-191',
   'fn-function-lookup-192',
   'fn-function-lookup-193',
   'fn-function-lookup-194',
   'fn-function-lookup-195',
   'fn-function-lookup-196',
   'fn-function-lookup-197',
   'fn-function-lookup-198',
   'fn-function-lookup-199',
   'fn-function-lookup-200',
   'fn-function-lookup-201',
   'fn-function-lookup-202',
   'fn-function-lookup-203',
   'fn-function-lookup-204',
   'fn-function-lookup-205',
   'fn-function-lookup-206',
   'fn-function-lookup-207',
   'fn-function-lookup-208',
   'fn-function-lookup-209',
   'fn-function-lookup-210',
   'fn-function-lookup-211',
   'fn-function-lookup-212',
   'fn-function-lookup-213',
   'fn-function-lookup-214',
   'fn-function-lookup-215',
   'fn-function-lookup-216',
   'fn-function-lookup-217',
   'fn-function-lookup-218',
   'fn-function-lookup-219',
   'fn-function-lookup-220',
   'fn-function-lookup-221',
   'fn-function-lookup-222',
   'fn-function-lookup-223',
   'fn-function-lookup-224',
   'fn-function-lookup-225',
   'fn-function-lookup-226',
   'fn-function-lookup-227',
   'fn-function-lookup-228',
   'fn-function-lookup-229',
   'fn-function-lookup-230',
   'fn-function-lookup-231',
   'fn-function-lookup-232',
   'fn-function-lookup-233',
   'fn-function-lookup-234',
   'fn-function-lookup-235',
   'fn-function-lookup-236',
   'fn-function-lookup-237',
   'fn-function-lookup-238',
   'fn-function-lookup-239',
   'fn-function-lookup-240',
   'fn-function-lookup-241',
   'fn-function-lookup-242',
   'fn-function-lookup-243',
   'fn-function-lookup-244',
   'fn-function-lookup-245',
   'fn-function-lookup-246',
   'fn-function-lookup-247',
   'fn-function-lookup-248',
   'fn-function-lookup-249',
   'fn-function-lookup-250',
   'fn-function-lookup-251',
   'fn-function-lookup-252',
   'fn-function-lookup-253',
   'fn-function-lookup-254',
   'fn-function-lookup-255',
   'fn-function-lookup-256',
   'fn-function-lookup-257',
   'fn-function-lookup-258',
   'fn-function-lookup-259',
   'fn-function-lookup-260',
   'fn-function-lookup-261',
   'fn-function-lookup-262',
   'fn-function-lookup-263',
   'fn-function-lookup-264',
   'fn-function-lookup-265',
   'fn-function-lookup-266',
   'fn-function-lookup-267',
   'fn-function-lookup-268',
   'fn-function-lookup-269',
   'fn-function-lookup-270',
   'fn-function-lookup-271',
   'fn-function-lookup-272',
   'fn-function-lookup-273',
   'fn-function-lookup-274',
   'fn-function-lookup-275',
   'fn-function-lookup-276',
   'fn-function-lookup-277',
   'fn-function-lookup-278',
   'fn-function-lookup-279',
   'fn-function-lookup-280',
   'fn-function-lookup-281',
   'fn-function-lookup-282',
   'fn-function-lookup-283',
   'fn-function-lookup-284',
   'fn-function-lookup-285',
   'fn-function-lookup-286',
   'fn-function-lookup-287',
   'fn-function-lookup-288',
   'fn-function-lookup-289',
   'fn-function-lookup-290',
   'fn-function-lookup-291',
   'fn-function-lookup-292',
   'fn-function-lookup-293',
   'fn-function-lookup-294',
   'fn-function-lookup-295',
   'fn-function-lookup-296',
   'fn-function-lookup-297',
   'fn-function-lookup-298',
   'fn-function-lookup-299',
   'fn-function-lookup-300',
   'fn-function-lookup-301',
   'fn-function-lookup-302',
   'fn-function-lookup-303',
   'fn-function-lookup-304',
   'fn-function-lookup-305',
   'fn-function-lookup-306',
   'fn-function-lookup-307',
   'fn-function-lookup-308',
   'fn-function-lookup-309',
   'fn-function-lookup-310',
   'fn-function-lookup-311',
   'fn-function-lookup-312',
   'fn-function-lookup-313',
   'fn-function-lookup-314',
   'fn-function-lookup-315',
   'fn-function-lookup-316',
   'fn-function-lookup-317',
   'fn-function-lookup-318',
   'fn-function-lookup-319',
   'fn-function-lookup-320',
   'fn-function-lookup-321',
   'fn-function-lookup-322',
   'fn-function-lookup-323',
   'fn-function-lookup-324',
   'fn-function-lookup-325',
   'fn-function-lookup-326',
   'fn-function-lookup-327',
   'fn-function-lookup-328',
   'fn-function-lookup-329',
   'fn-function-lookup-330',
   'fn-function-lookup-331',
   'fn-function-lookup-332',
   'fn-function-lookup-333',
   'fn-function-lookup-334',
   'fn-function-lookup-335',
   'fn-function-lookup-336',
   'fn-function-lookup-337',
   'fn-function-lookup-338',
   'fn-function-lookup-339',
   'fn-function-lookup-340',
   'fn-function-lookup-341',
   'fn-function-lookup-342',
   'fn-function-lookup-343',
   'fn-function-lookup-344',
   'fn-function-lookup-345',
   'fn-function-lookup-346',
   'fn-function-lookup-347',
   'fn-function-lookup-348',
   'fn-function-lookup-349',
   'fn-function-lookup-350',
   'fn-function-lookup-351',
   'fn-function-lookup-352',
   'fn-function-lookup-353',
   'fn-function-lookup-354',
   'fn-function-lookup-355',
   'fn-function-lookup-356',
   'fn-function-lookup-357',
   'fn-function-lookup-358',
   'fn-function-lookup-359',
   'fn-function-lookup-360',
   'fn-function-lookup-361',
   'fn-function-lookup-362',
   'fn-function-lookup-363',
   'fn-function-lookup-364',
   'fn-function-lookup-365',
   'fn-function-lookup-366',
   'fn-function-lookup-367',
   'fn-function-lookup-368',
   'fn-function-lookup-369',
   'fn-function-lookup-370',
   'fn-function-lookup-371',
   'fn-function-lookup-372',
   'fn-function-lookup-373',
   'fn-function-lookup-374',
   'fn-function-lookup-375',
   'fn-function-lookup-376',
   'fn-function-lookup-377',
   'fn-function-lookup-378',
   'fn-function-lookup-379',
   'fn-function-lookup-380',
   'fn-function-lookup-381',
   'fn-function-lookup-382',
   'fn-function-lookup-383',
   'fn-function-lookup-384',
   'fn-function-lookup-385',
   'fn-function-lookup-386',
   'fn-function-lookup-387',
   'fn-function-lookup-388',
   'fn-function-lookup-389',
   'fn-function-lookup-390',
   'fn-function-lookup-391',
   'fn-function-lookup-392',
   'fn-function-lookup-393',
   'fn-function-lookup-394',
   'fn-function-lookup-395',
   'fn-function-lookup-396',
   'fn-function-lookup-397',
   'fn-function-lookup-398',
   'fn-function-lookup-399',
   'fn-function-lookup-400',
   'fn-function-lookup-401',
   'fn-function-lookup-402',
   'fn-function-lookup-403',
   'fn-function-lookup-404',
   'fn-function-lookup-405',
   'fn-function-lookup-406',
   'fn-function-lookup-407',
   'fn-function-lookup-408',
   'fn-function-lookup-409',
   'fn-function-lookup-410',
   'fn-function-lookup-411',
   'fn-function-lookup-412',
   'fn-function-lookup-413',
   'fn-function-lookup-414',
   'fn-function-lookup-415',
   'fn-function-lookup-416',
   'fn-function-lookup-417',
   'fn-function-lookup-418',
   'fn-function-lookup-419',
   'fn-function-lookup-420',
   'fn-function-lookup-421',
   'fn-function-lookup-422',
   'fn-function-lookup-423',
   'fn-function-lookup-424',
   'fn-function-lookup-425',
   'fn-function-lookup-426',
   'fn-function-lookup-427',
   'fn-function-lookup-428',
   'fn-function-lookup-429',
   'fn-function-lookup-430',
   'fn-function-lookup-431',
   'fn-function-lookup-432',
   'fn-function-lookup-433',
   'fn-function-lookup-434',
   'fn-function-lookup-435',
   'fn-function-lookup-436',
   'fn-function-lookup-437',
   'fn-function-lookup-438',
   'fn-function-lookup-439',
   'fn-function-lookup-440',
   'fn-function-lookup-441',
   'fn-function-lookup-442',
   'fn-function-lookup-443',
   'fn-function-lookup-444',
   'fn-function-lookup-445',
   'fn-function-lookup-446',
   'fn-function-lookup-447',
   'fn-function-lookup-448',
   'fn-function-lookup-449',
   'fn-function-lookup-450',
   'fn-function-lookup-451',
   'fn-function-lookup-452',
   'fn-function-lookup-453',
   'fn-function-lookup-454',
   'fn-function-lookup-455',
   'fn-function-lookup-456',
   'fn-function-lookup-457',
   'fn-function-lookup-458',
   'fn-function-lookup-459',
   'fn-function-lookup-460',
   'fn-function-lookup-461',
   'fn-function-lookup-462',
   'fn-function-lookup-463',
   'fn-function-lookup-464',
   'fn-function-lookup-465',
   'fn-function-lookup-466',
   'fn-function-lookup-467',
   'fn-function-lookup-468',
   'fn-function-lookup-469',
   'fn-function-lookup-470',
   'fn-function-lookup-471',
   'fn-function-lookup-472',
   'fn-function-lookup-473',
   'fn-function-lookup-474',
   'fn-function-lookup-475',
   'fn-function-lookup-476',
   'fn-function-lookup-477',
   'fn-function-lookup-478',
   'fn-function-lookup-479',
   'fn-function-lookup-480',
   'fn-function-lookup-481',
   'fn-function-lookup-482',
   'fn-function-lookup-483',
   'fn-function-lookup-484',
   'fn-function-lookup-485',
   'fn-function-lookup-486',
   'fn-function-lookup-487',
   'fn-function-lookup-488',
   'fn-function-lookup-489',
   'fn-function-lookup-490',
   'fn-function-lookup-491',
   'fn-function-lookup-492',
   'fn-function-lookup-493',
   'fn-function-lookup-494',
   'fn-function-lookup-495',
   'fn-function-lookup-496',
   'fn-function-lookup-497',
   'fn-function-lookup-498',
   'fn-function-lookup-499',
   'fn-function-lookup-500',
   'fn-function-lookup-501',
   'fn-function-lookup-502',
   'fn-function-lookup-503',
   'fn-function-lookup-504',
   'fn-function-lookup-505',
   'fn-function-lookup-506',
   'fn-function-lookup-507',
   'fn-function-lookup-508',
   'fn-function-lookup-509',
   'fn-function-lookup-510',
   'fn-function-lookup-511',
   'fn-function-lookup-512',
   'fn-function-lookup-513',
   'fn-function-lookup-514',
   'fn-function-lookup-515',
   'fn-function-lookup-516',
   'fn-function-lookup-517',
   'fn-function-lookup-518',
   'fn-function-lookup-519',
   'fn-function-lookup-520',
   'fn-function-lookup-521',
   'fn-function-lookup-522',
   'fn-function-lookup-523',
   'fn-function-lookup-524',
   'fn-function-lookup-525',
   'fn-function-lookup-526',
   'fn-function-lookup-527',
   'fn-function-lookup-528',
   'fn-function-lookup-529',
   'fn-function-lookup-530',
   'fn-function-lookup-601',
   'fn-function-lookup-602',
   'fn-function-lookup-603',
   'fn-function-lookup-604',
   'fn-function-lookup-605',
   'fn-function-lookup-606',
   'fn-function-lookup-607',
   'fn-function-lookup-608',
   'fn-function-lookup-609',
   'fn-function-lookup-610',
   'fn-function-lookup-611',
   'fn-function-lookup-612',
   'fn-function-lookup-613',
   'fn-function-lookup-614',
   'fn-function-lookup-615',
   'fn-function-lookup-701',
   'fn-function-lookup-702',
   'fn-function-lookup-703',
   'fn-function-lookup-704',
   'fn-function-lookup-705',
   'fn-function-lookup-706',
   'fn-function-lookup-707',
   'fn-function-lookup-708',
   'fn-function-lookup-709',
   'fn-function-lookup-710',
   'fn-function-lookup-711',
   'fn-function-lookup-712',
   'fn-function-lookup-713',
   'fn-function-lookup-714',
   'fn-function-lookup-715'].
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
];
environment('function-lookup') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/function-lookup/function-lookup.xml",".","http://www.w3.org/fots/fn/function-lookup/function-lookup.xml"}]},
{schemas, []},
{collections, [{"",["file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/function-lookup/collection-1.xml",
"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/function-lookup/collection-2.xml"]}]},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/unparsed-text/text-plain-utf-8.txt","http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]},
{modules, []}
].
'fn-function-lookup-001'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-002'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      root
    ",
   case xqerl_test:string_value(Res) of
             "root" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-003'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-004'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1)(/root)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      root
    ",
   case xqerl_test:string_value(Res) of
             "root" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-005'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-006'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      false
    ",
   case xqerl_test:string_value(Res) of
             "false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-007'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-008'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 1)(/root)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      false
    ",
   case xqerl_test:string_value(Res) of
             "false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-009'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-010'(_Config) ->
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-011'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-012'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 1)(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-013'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-014'(_Config) ->
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-015'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-016'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 1)(/root/child[1])",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-017'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-018'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.w3.org/fots/fn/function-lookup/function-lookup.xml
    ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-019'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-020'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 1)(/)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.w3.org/fots/fn/function-lookup/function-lookup.xml
    ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-021'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-022'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.w3.org/fots/fn/function-lookup/function-lookup.xml
    ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-023'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-024'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 1)(/)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.w3.org/fots/fn/function-lookup/function-lookup.xml
    ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-025'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-026'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'fn-function-lookup-027'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-028'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 1)(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XXXX0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XXXX0000'}) end.
'fn-function-lookup-029'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-030'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 2)(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'), 'string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XXXX0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XXXX0000'}) end.
'fn-function-lookup-031'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-032'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 3)(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'), 'string', (1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XXXX0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XXXX0000'}) end.
'fn-function-lookup-033'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'trace'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-034'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'trace'), 2)(1, 'label')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-035'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'abs'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-036'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'abs'), 1)(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-037'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ceiling'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-038'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ceiling'), 1)(0.9)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-039'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'floor'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-040'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'floor'), 1)(1.1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-041'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-042'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 1)(1.1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-043'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-044'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 2)(1.1, 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-045'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-046'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 1)(1.1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-047'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-048'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 2)(1.1, 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-049'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-050'(_Config) ->
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-051'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-052'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-053'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-054'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 2)(1, '0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-055'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-056'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 3)(1, '0', 'en')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-057'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-058'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 2)(1, '0')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-059'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-060'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 3)(1, '0', ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-061'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pi'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-062'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pi'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3.141592653589793
    ",
   case xqerl_test:string_value(Res) of
             "3.141592653589793" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-063'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-064'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      abs($result - 2.71828182845) lt 1e-10
    ",
   case (xqerl_seq2:singleton_value(xqerl:run("declare variable $result external;""abs($result - 2.71828182845) lt 1e-10",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, "assert"};
           _ -> ct:fail({Res,Exp}) 
           end.
'fn-function-lookup-065'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp10'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-066'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp10'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      10
    ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-067'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-068'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-069'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log10'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-070'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log10'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-071'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pow'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-072'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pow'), 2)(1e0, 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-073'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sqrt'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-074'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sqrt'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-075'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sin'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-076'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sin'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0.8414709848078965
    ",
   case xqerl_test:string_value(Res) of
             "0.8414709848078965" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-077'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'cos'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-078'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'cos'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0.5403023058681398
    ",
   case xqerl_test:string_value(Res) of
             "0.5403023058681398" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-079'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'tan'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-080'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'tan'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1.5574077246549023
    ",
   case xqerl_test:string_value(Res) of
             "1.5574077246549023" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-081'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'asin'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-082'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'asin'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1.5707963267948966
    ",
   case xqerl_test:string_value(Res) of
             "1.5707963267948966" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-083'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'acos'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-084'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'acos'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-085'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-086'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan'), 1)(1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0.7853981633974483
    ",
   case xqerl_test:string_value(Res) of
             "0.7853981633974483" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-087'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan2'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-088'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan2'), 2)(1e0, 1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0.7853981633974483
    ",
   case xqerl_test:string_value(Res) of
             "0.7853981633974483" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-089'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoints-to-string'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-090'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoints-to-string'), 1)((65, 66))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      AB
    ",
   case xqerl_test:string_value(Res) of
             "AB" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-091'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-to-codepoints'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-092'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-to-codepoints'), 1)('A')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      65
    ",
   case xqerl_test:string_value(Res) of
             "65" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-093'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-094'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 2)('string', 'string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-095'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-096'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 3)('string', 'string', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-097'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoint-equal'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-098'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoint-equal'), 2)('string', 'string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-099'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'concat'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-100'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'concat'), 3)('a', 'bc', 'def')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      abcdef
    ",
   case xqerl_test:string_value(Res) of
             "abcdef" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-101'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-102'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 1)(('abc', 'def'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      abcdef
    ",
   case xqerl_test:string_value(Res) of
             "abcdef" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-103'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-104'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 2)(('abc', 'def'), '-')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      abc-def
    ",
   case xqerl_test:string_value(Res) of
             "abc-def" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-105'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-106'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 2)('string', 2e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      tring
    ",
   case xqerl_test:string_value(Res) of
             "tring" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-107'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-108'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 3)('string', 1e0, 1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      s
    ",
   case xqerl_test:string_value(Res) of
             "s" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-109'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-110'(_Config) ->
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-111'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-112'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 1)('string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      6
    ",
   case xqerl_test:string_value(Res) of
             "6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-113'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-114'(_Config) ->
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-115'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-116'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 1)(' string ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      string
    ",
   case xqerl_test:string_value(Res) of
             "string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-117'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-118'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 1)('string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      string
    ",
   case xqerl_test:string_value(Res) of
             "string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-119'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-120'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 2)('string', 'NFC')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      string
    ",
   case xqerl_test:string_value(Res) of
             "string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-121'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'upper-case'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-122'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'upper-case'), 1)('string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      STRING
    ",
   case xqerl_test:string_value(Res) of
             "STRING" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-123'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lower-case'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-124'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lower-case'), 1)('STRING')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      string
    ",
   case xqerl_test:string_value(Res) of
             "string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-125'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'translate'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-126'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'translate'), 3)('string', 'i', 'o')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      strong
    ",
   case xqerl_test:string_value(Res) of
             "strong" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-127'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-128'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 2)('string', 'rin')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-129'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-130'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 3)('string', 'RIN', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-131'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-132'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 2)('string', 'str')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-133'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-134'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 3)('string', 'ing', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-135'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-136'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 2)('string', 'ing')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-137'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-138'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 3)('string', 'str', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-139'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-140'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 2)('string', 'ing')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      str
    ",
   case xqerl_test:string_value(Res) of
             "str" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-141'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-142'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 3)('string', 'ing', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      str
    ",
   case xqerl_test:string_value(Res) of
             "str" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-143'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-144'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 2)('string', 'str')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ing
    ",
   case xqerl_test:string_value(Res) of
             "ing" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-145'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-146'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 3)('string', 'str', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ing
    ",
   case xqerl_test:string_value(Res) of
             "ing" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-147'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-148'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 2)('string', 'string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-149'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-150'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 3)('string', 'STRING', 'i')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-151'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-152'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 3)('string', 'i', 'o')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      strong
    ",
   case xqerl_test:string_value(Res) of
             "strong" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-153'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-154'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 4)('string', 'I', 'o', 'i')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      strong
    ",
   case xqerl_test:string_value(Res) of
             "strong" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-155'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-156'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 2)('string', 'i')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      str ng
    ",
   case xqerl_test:string_value(Res) of
             "str ng" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-157'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-158'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 3)('string', 'i', 'i')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      str ng
    ",
   case xqerl_test:string_value(Res) of
             "str ng" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-159'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-160'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 2)('', 'abc')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      <fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>
    ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-function-lookup-161'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-162'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 3)('', 'abc', 'i')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      <fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>
    ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-function-lookup-163'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-164'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 1)('http://www.w3.org/2005/xpath-functions')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:anyURI
    ",
   case xqerl_types:type(Res) of
           'xs:anyURI' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-165'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-166'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 2)('/2005/xpath-functions', 'http://www.w3.org/')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.w3.org/2005/xpath-functions
    ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/2005/xpath-functions" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-167'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'encode-for-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-168'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'encode-for-uri'), 1)(' ')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      %20
    ",
   case xqerl_test:string_value(Res) of
             "%20" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-169'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'iri-to-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-170'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'iri-to-uri'), 1)('http://www.example.com/')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.com/
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-171'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'escape-html-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-172'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'escape-html-uri'), 1)('http://www.example.com/')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.com/
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.com/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-173'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'true'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-174'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'true'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-175'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'false'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-176'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'false'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-177'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'boolean'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-178'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'boolean'), 1)(\"string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-179'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'not'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-180'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'not'), 1)(\"string\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-181'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'years-from-duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-182'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'years-from-duration'), 1)(xs:yearMonthDuration(\"P20Y15M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      21
    ",
   case xqerl_test:string_value(Res) of
             "21" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-183'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'months-from-duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-184'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'months-from-duration'), 1)(xs:yearMonthDuration(\"P20Y15M\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-185'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'days-from-duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-186'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'days-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-187'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-188'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      10
    ",
   case xqerl_test:string_value(Res) of
             "10" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-189'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-190'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-191'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-192'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H12.5S\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      12.5
    ",
   case xqerl_test:string_value(Res) of
             "12.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-193'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'dateTime'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-194'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'dateTime'), 2)(xs:date('2012-01-01Z'), xs:time('00:00:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012-01-01T00:00:00Z
    ",
   case xqerl_test:string_value(Res) of
             "2012-01-01T00:00:00Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-195'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-196'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012
    ",
   case xqerl_test:string_value(Res) of
             "2012" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-197'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-198'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      4
    ",
   case xqerl_test:string_value(Res) of
             "4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-199'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-200'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-201'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-202'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))",
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
'fn-function-lookup-203'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-204'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-205'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-206'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-207'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-208'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-dateTime'), 1)(xs:dateTime('2012-01-01T00:00:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      PT0S
    ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-209'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-date'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-210'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-date'), 1)(xs:date('2012-02-01Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012
    ",
   case xqerl_test:string_value(Res) of
             "2012" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-211'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-date'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-212'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-date'), 1)(xs:date('2012-02-01Z'))",
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
'fn-function-lookup-213'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-date'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-214'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-date'), 1)(xs:date('2012-02-01Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-215'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-date'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-216'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-date'), 1)(xs:date('2012-01-01Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      PT0S
    ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-217'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-time'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-218'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-time'), 1)(xs:time('02:01:00Z'))",
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
'fn-function-lookup-219'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-time'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-220'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-time'), 1)(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-221'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-time'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-222'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-time'), 1)(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0
    ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-223'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-time'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-224'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-time'), 1)(xs:time('02:01:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      PT0S
    ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-225'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-226'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 1)(xs:dateTime('2012-01-01T00:00:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:dateTime
    ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-227'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-228'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 2)(xs:dateTime(\"1970-01-01T00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1969-12-31T14:00:00-10:00
    ",
   case xqerl_test:string_value(Res) of
             "1969-12-31T14:00:00-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-229'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-230'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 1)(xs:date('2012-01-01Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:date
    ",
   case xqerl_types:type(Res) of
           'xs:date' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-231'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-232'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 2)(xs:date(\"1970-01-01Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1969-12-31-10:00

    ",
   case xqerl_test:string_value(Res) of
             "1969-12-31-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-233'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-234'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 1)(xs:time('00:00:00Z'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:time
    ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-235'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-236'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 2)(xs:time(\"00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      14:00:00-10:00
    ",
   case xqerl_test:string_value(Res) of
             "14:00:00-10:00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-237'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-238'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 2)(xs:dateTime('2012-01-01T00:00:00Z'), '[Y]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string
    ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-239'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-240'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 5)(xs:dateTime('2012-01-01T00:00:00Z'), '[Y]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012
    ",
   case xqerl_test:string_value(Res) of
             "2012" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-241'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-242'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 2)(xs:date('2012-01-01Z'), '[Y]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string
    ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-243'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-244'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 5)(xs:date('2012-01-01Z'), '[Y]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012
    ",
   case xqerl_test:string_value(Res) of
             "2012" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-245'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-246'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 2)(xs:time('00:00:00Z'), '[H01]')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string
    ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-247'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 5))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-248'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 5)(xs:time('00:00:00Z'), '[H01]', 'en', (), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      00
    ",
   case xqerl_test:string_value(Res) of
             "00" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-249'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-QName'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-250'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-QName'), 2)('ns:local', /root/*[2])",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ns:local
    ",
   case xqerl_test:string_value(Res) of
             "ns:local" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-251'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'QName'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-252'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'QName'), 2)('http://www.example.org/', 'ns:local')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ns:local
    ",
   case xqerl_test:string_value(Res) of
             "ns:local" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-253'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'prefix-from-QName'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-254'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'prefix-from-QName'), 1)(fn:QName('http://www.example.org', 'foo:bar'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      foo
    ",
   case xqerl_test:string_value(Res) of
             "foo" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-255'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name-from-QName'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-256'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name-from-QName'), 1)(fn:QName('http://www.example.org', 'foo:bar'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      bar
    ",
   case xqerl_test:string_value(Res) of
             "bar" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-257'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-from-QName'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-258'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-from-QName'), 1)(fn:QName('http://www.example.org', 'foo:bar'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.org
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-259'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-for-prefix'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-260'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-for-prefix'), 2)('ns', /root/*[2])",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.org/
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-261'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'in-scope-prefixes'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-262'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'in-scope-prefixes'), 1)(/root)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xml
    ",
   case xqerl_test:string_value(Res) of
             "xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-263'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-264'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      root
    ",
   case xqerl_test:string_value(Res) of
             "root" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-265'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-266'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 1)(/root)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      root
    ",
   case xqerl_test:string_value(Res) of
             "root" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-267'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-268'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      root
    ",
   case xqerl_test:string_value(Res) of
             "root" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-269'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-270'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 1)(/root)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      root
    ",
   case xqerl_test:string_value(Res) of
             "root" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-271'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-272'(_Config) ->
   Qry = "/root/*[2]/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.org/
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-273'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-274'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 1)(/root/*[2])",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.org/
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-275'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-276'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 1)('en')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-277'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-278'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 2)('en', /root)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-279'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-280'(_Config) ->
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      document-node()
    ",
   case xqerl_types:type(Res) of
           'document-node' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-281'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-282'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 1)(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-283'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-284'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      /
    ",
   case xqerl_test:string_value(Res) of
             "/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-285'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-286'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 1)(/)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      /
    ",
   case xqerl_test:string_value(Res) of
             "/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-287'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-288'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-289'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-290'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 1)(/)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-291'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'innermost'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-292'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'innermost'), 1)(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-293'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'outermost'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-294'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'outermost'), 1)(())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-295'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'empty'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-296'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'empty'), 1)((1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-297'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exists'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-298'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exists'), 1)((1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-299'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'head'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-300'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'head'), 1)((1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-301'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tail'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-302'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tail'), 1)((1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      true
    ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-303'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'insert-before'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-304'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'insert-before'), 3)((1, 2, 3), 2, ('a', 'b', 'c'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1 a b c 2 3
    ",
   case xqerl_test:string_value(Res) of
             "1 a b c 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-305'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'remove'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-306'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'remove'), 2)(('a', 'b', 'c'), 2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      a c
    ",
   case xqerl_test:string_value(Res) of
             "a c" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-307'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'reverse'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-308'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'reverse'), 1)(1 to 3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3 2 1
    ",
   case xqerl_test:string_value(Res) of
             "3 2 1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-309'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-310'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 2)((1, true()), 2e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      true
    ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-311'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-312'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 3)((1, true()), 1e0, 1e0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-313'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unordered'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-314'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unordered'), 1)(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-315'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-316'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 1)((1, 1, 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-317'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-318'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 2)((1, 1, 1), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-319'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-320'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 2)((1, 'string'), 'string')",
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
'fn-function-lookup-321'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-322'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 3)((1, 'string'), 'string', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
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
'fn-function-lookup-323'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-324'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 2)((1, true()), (1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-325'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-326'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 3)((1, true()), (1, true()), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-327'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'zero-or-one'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-328'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'zero-or-one'), 1)(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-329'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'one-or-more'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-330'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'one-or-more'), 1)(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-331'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exactly-one'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-332'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exactly-one'), 1)(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-333'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'count'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-334'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'count'), 1)((1, true()))",
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
'fn-function-lookup-335'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'avg'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-336'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'avg'), 1)((1, 3))",
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
'fn-function-lookup-337'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-338'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 1)((1, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-339'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-340'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 2)((1, 3), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-341'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-342'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 1)((1, 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-343'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-344'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 2)((1, 3), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-345'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-346'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 1)((1, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-347'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-348'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 2)((1, 2), 0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3
    ",
   case xqerl_test:string_value(Res) of
             "3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-349'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-350'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 1)(('id1', 'id2'))",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-351'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-352'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 2)(('id1', 'id2'), /)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-353'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-354'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 1)(('id1', 'id2'))",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-355'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-356'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 2)(('id1', 'id2'), /)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-357'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-358'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 1)(('id1', 'id2'))",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-359'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-360'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 2)(('id1', 'id2'), /)",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-361'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-362'(_Config) ->
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string
    ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-363'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-364'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 1)(())",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
	xs:string
	\"\"
      
    ",
 case  begin Tst2 = xqerl:run("\"\""),
  ResVal2 = xqerl_types:value(Res),
  TstVal2 = xqerl_types:value(Tst2),
  ResVal2 == TstVal2 end andalso xqerl_types:type(Res) == 'xs:string' of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'fn-function-lookup-365'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-366'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc'), 1)('http://www.w3.org/fots/fn/function-lookup/function-lookup.xml')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      document-node()
    ",
   case xqerl_types:type(Res) of
           'document-node' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-367'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc-available'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-368'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc-available'), 1)('http://www.example.org/unknown-document')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-369'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-370'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      node()+
    ",
   case xqerl_types:type(Res) of
           'node+' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-371'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-372'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 1)(())",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      node()+
    ",
   case xqerl_types:type(Res) of
           'node+' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-373'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-374'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 0)()",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:anyURI+
    ",
   case xqerl_types:type(Res) of
           'xs:anyURI+' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-375'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-376'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 1)(())",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:anyURI+
    ",
   case xqerl_types:type(Res) of
           'xs:anyURI+' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-377'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-378'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 1)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string
    ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-379'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-380'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 2)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string
    ",
   case xqerl_types:type(Res) of
           'xs:string' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-381'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-382'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 1)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string+
    ",
   case xqerl_types:type(Res) of
           'xs:string+' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-383'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-384'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 2)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string+
    ",
   case xqerl_types:type(Res) of
           'xs:string+' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-385'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-386'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 1)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-387'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-388'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 2)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')",
   Env = xqerl_test:handle_environment(environment('function-lookup')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-389'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'environment-variable'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-390'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'environment-variable'), 1)('should-not-exist')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-391'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'available-environment-variables'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-392'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'available-environment-variables'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:string*
    ",
   case xqerl_types:type(Res) of
           'xs:string*' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-393'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-394'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml'), 1)('<doc />')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      node()
    ",
   case xqerl_types:type(Res) of
           'node' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-395'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml-fragment'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-396'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml-fragment'), 1)('<doc />')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      node()
    ",
   case xqerl_types:type(Res) of
           'node' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-397'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-398'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 1)((1, true()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1 true
    ",
   case xqerl_test:string_value(Res) of
             "1 true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-399'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-400'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 2)((1, false()), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1 false
    ",
   case xqerl_test:string_value(Res) of
             "1 false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-401'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'position'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-402'(_Config) ->
   Qry = "(2, 4, 6)!function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'position'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1 2 3
    ",
   case xqerl_test:string_value(Res) of
             "1 2 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-403'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'last'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-404'(_Config) ->
   Qry = "(2, 4, 6)!function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'last'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      3 3 3
    ",
   case xqerl_test:string_value(Res) of
             "3 3 3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-405'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-dateTime'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-406'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-dateTime'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:dateTime
    ",
   case xqerl_types:type(Res) of
           'xs:dateTime' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-407'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-date'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-408'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-date'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:date
    ",
   case xqerl_types:type(Res) of
           'xs:date' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-409'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-time'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-410'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-time'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:time
    ",
   case xqerl_types:type(Res) of
           'xs:time' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-411'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'implicit-timezone'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-412'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'implicit-timezone'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:dayTimeDuration
    ",
   case xqerl_types:type(Res) of
           'xs:dayTimeDuration' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-413'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'default-collation'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-414'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'default-collation'), 0)()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.w3.org/2005/xpath-functions/collation/codepoint
    ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/2005/xpath-functions/collation/codepoint" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-415'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'static-base-uri'), 0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-416'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'static-base-uri'), 0)()",
   Env = xqerl_test:handle_environment([{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', [{"http://www.example.com"}]},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:anyURI?
    ",
   case xqerl_types:type(Res) of
           'xs:anyURI?' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-417'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-lookup'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-418'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-lookup'), 2)(fn:QName('http://www.example.org', 'foo:bar'), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-419'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-name'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-420'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-name'), 1)(fn:abs#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      fn:QName('http://www.w3.org/2005/xpath-functions', 'fn:abs')
    ",
 Tst = xqerl:run("fn:QName('http://www.w3.org/2005/xpath-functions', 'fn:abs')"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-421'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-arity'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-422'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-arity'), 1)(fn:abs#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-423'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-424'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each'), 2)((\"23\", \"29\"), xs:int#1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      (23, 29)
    ",
 Tst = xqerl:run("(23, 29)"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-425'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'filter'), 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-426'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'filter'), 2)(1 to 10, function($a) {$a mod 2 = 0})",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      (2, 4, 6, 8, 10)
    ",
 Tst = xqerl:run("(2, 4, 6, 8, 10)"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-427'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-left'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-428'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-left'), 3)(1 to 5, \"\", fn:concat(?, \".\", ?))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      .1.2.3.4.5
    ",
   case xqerl_test:string_value(Res) of
             ".1.2.3.4.5" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-429'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-right'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-430'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-right'), 3)(1 to 5, \"\", fn:concat(?, \".\", ?))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1.2.3.4.5.
    ",
   case xqerl_test:string_value(Res) of
             "1.2.3.4.5." -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-431'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each-pair'), 3))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-432'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each-pair'), 3)((\"a\", \"b\", \"c\"), (\"x\", \"y\", \"z\"), concat#2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      (\"ax\", \"by\", \"cz\")
    ",
 Tst = xqerl:run("(\"ax\", \"by\", \"cz\")"),
  ResVal = xqerl_test:string_value(Res),
  TstVal = xqerl_test:string_value(Tst),
  if ResVal == TstVal -> {comment, "assert-deep-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-433'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'untypedAtomic'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-434'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'untypedAtomic'), 1)('string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      string
    ",
   case xqerl_test:string_value(Res) of
             "string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-435'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTime'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-436'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTime'), 1)('1970-01-02T04:05:06Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1970-01-02T04:05:06Z
    ",
   case xqerl_test:string_value(Res) of
             "1970-01-02T04:05:06Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-437'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'date'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-438'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'date'), 1)('1970-01-02Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1970-01-02Z
    ",
   case xqerl_test:string_value(Res) of
             "1970-01-02Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-439'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'time'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-440'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'time'), 1)('01:02:03Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      01:02:03Z
    ",
   case xqerl_test:string_value(Res) of
             "01:02:03Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-441'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'duration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-442'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'duration'), 1)('P5Y2M10DT15H')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      P5Y2M10DT15H
    ",
   case xqerl_test:string_value(Res) of
             "P5Y2M10DT15H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-443'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'yearMonthDuration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-444'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'yearMonthDuration'), 1)('P1Y')",
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
'fn-function-lookup-445'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dayTimeDuration'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-446'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dayTimeDuration'), 1)('PT15H')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      PT15H
    ",
   case xqerl_test:string_value(Res) of
             "PT15H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-447'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'float'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-448'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'float'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-449'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'double'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-450'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'double'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-451'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'decimal'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-452'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'decimal'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-453'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'integer'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-454'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'integer'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-455'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonPositiveInteger'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-456'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonPositiveInteger'), 1)('-1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      -1
    ",
   case xqerl_test:string_value(Res) of
             "-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-457'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'negativeInteger'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-458'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'negativeInteger'), 1)('-1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      -1
    ",
   case xqerl_test:string_value(Res) of
             "-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-459'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'long'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-460'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'long'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-461'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'int'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-462'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'int'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-463'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'short'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-464'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'short'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-465'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'byte'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-466'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'byte'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-467'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-468'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-469'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedLong'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-470'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedLong'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-471'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedInt'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-472'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedInt'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-473'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedShort'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-474'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedShort'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-475'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedByte'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-476'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedByte'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-477'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-478'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-479'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'positiveInteger'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-480'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'positiveInteger'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      1
    ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-481'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYearMonth'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-482'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYearMonth'), 1)('2001-10Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2001-10Z
    ",
   case xqerl_test:string_value(Res) of
             "2001-10Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-483'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYear'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-484'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYear'), 1)('2012Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012Z
    ",
   case xqerl_test:string_value(Res) of
             "2012Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-485'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonthDay'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-486'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonthDay'), 1)('--11-01Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      --11-01Z
    ",
   case xqerl_test:string_value(Res) of
             "--11-01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-487'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gDay'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-488'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gDay'), 1)('---01Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ---01Z
    ",
   case xqerl_test:string_value(Res) of
             "---01Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-489'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonth'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-490'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonth'), 1)('--11Z')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      --11Z
    ",
   case xqerl_test:string_value(Res) of
             "--11Z" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-491'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'string'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-492'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'string'), 1)('string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      string
    ",
   case xqerl_test:string_value(Res) of
             "string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-493'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'normalizedString'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-494'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'normalizedString'), 1)('normalized
string')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      normalized string
    ",
   case xqerl_test:string_value(Res) of
             "normalized string" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-495'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'token'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-496'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'token'), 1)('token')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      token
    ",
   case xqerl_test:string_value(Res) of
             "token" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-497'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'language'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-498'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'language'), 1)('en')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      en
    ",
   case xqerl_test:string_value(Res) of
             "en" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-499'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKEN'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-500'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKEN'), 1)('NMTOKEN')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      NMTOKEN
    ",
   case xqerl_test:string_value(Res) of
             "NMTOKEN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-501'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'Name'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-502'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'Name'), 1)('Name')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      Name
    ",
   case xqerl_test:string_value(Res) of
             "Name" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-503'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NCName'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-504'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NCName'), 1)('NCName')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      NCName
    ",
   case xqerl_test:string_value(Res) of
             "NCName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-505'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ID'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-506'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ID'), 1)('ID')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ID
    ",
   case xqerl_test:string_value(Res) of
             "ID" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-507'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREF'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-508'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREF'), 1)('IDREF')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      IDREF
    ",
   case xqerl_test:string_value(Res) of
             "IDREF" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-509'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITY'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-510'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITY'), 1)('ENTITY')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ENTITY
    ",
   case xqerl_test:string_value(Res) of
             "ENTITY" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-511'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'boolean'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-512'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'boolean'), 1)('1')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      true
    ",
   case xqerl_test:string_value(Res) of
             "true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-513'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'base64Binary'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-514'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'base64Binary'), 1)('D74D35D35D35')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      D74D35D35D35
    ",
   case xqerl_test:string_value(Res) of
             "D74D35D35D35" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-515'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'hexBinary'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-516'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'hexBinary'), 1)('0fb7')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      0FB7
    ",
   case xqerl_test:string_value(Res) of
             "0FB7" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-517'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'anyURI'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-518'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'anyURI'), 1)('http://www.example.org/')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      http://www.example.org/
    ",
   case xqerl_test:string_value(Res) of
             "http://www.example.org/" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-519'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'QName'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-520'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'QName'), 1)('fn:QName')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      fn:QName
    ",
   case xqerl_test:string_value(Res) of
             "fn:QName" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-521'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTimeStamp'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      xs:boolean
    ",
   case xqerl_types:type(Res) of
           'xs:boolean' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-522'(_Config) ->
   Qry = "
      let $f := function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTimeStamp'), 1)
      return if (exists($f)) then year-from-dateTime($f('2012-05-25T11:42:00+01:00')) else 2012",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      2012
    ",
 Tst = xqerl:run("2012"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-523'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREFS'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-524'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREFS'), 1)('ID1 ID2 ID3')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ID1 ID2 ID3
    ",
   case xqerl_test:string_value(Res) of
             "ID1 ID2 ID3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-525'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKENS'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-526'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKENS'), 1)('NMTOKEN1 NMTOKEN2 NMTOKEN3')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      NMTOKEN1 NMTOKEN2 NMTOKEN3
    ",
   case xqerl_test:string_value(Res) of
             "NMTOKEN1 NMTOKEN2 NMTOKEN3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-527'(_Config) ->
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITIES'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-528'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITIES'), 1)('ENTITY1 ENTITY2 ENTITY3')",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      ENTITY1 ENTITY2 ENTITY3
    ",
   case xqerl_test:string_value(Res) of
             "ENTITY1 ENTITY2 ENTITY3" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-529'(_Config) ->
   Qry = "empty(function-lookup(fn:QName('http://www.w3.org/2005/xquery-local-functions', 'missing'), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-function-lookup-530'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xquery-local-functions', 'missing'), 1)(\"arg\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
      
    ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-601'(_Config) ->
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"abs\"), 1)(-3)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-602'(_Config) ->
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"concat\"), 3)(\"a\", \"b\", \"c\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         abc
      ",
   case xqerl_test:string_value(Res) of
             "abc" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-603'(_Config) ->
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions/math\", \"pi\"), 0)() idiv 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         3
      ",
 Tst = xqerl:run("3"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-604'(_Config) ->
   Qry = "function-lookup(QName(\"http://www.w3.org/2001/XMLSchema\", \"time\"), 1)(\"12:30:00Z\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         xs:time(\"12:30:00Z\")
      ",
 Tst = xqerl:run("xs:time(\"12:30:00Z\")"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-605'(_Config) ->
   Qry = "
        xquery version \"3.0\";
      	declare function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(13)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         169
      ",
 Tst = xqerl:run("169"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-606'(_Config) ->
   Qry = "
        xquery version \"3.0\";
      	declare %private function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(13)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         169
      ",
 Tst = xqerl:run("169"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-function-lookup-607'(_Config) ->
   Qry = "
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"cube\"), 1)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-608'(_Config) ->
   Qry = "
        function-lookup(QName(\"\", \"round\"), 2)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-function-lookup-609'(_Config) ->
   Qry = "
        function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"round\"), 2) ! 
                   (function-name(.) ! (namespace-uri-from-QName(.), local-name-from-QName(.)), function-arity(.))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         http://www.w3.org/2005/xpath-functions round 2
      ",
   case xqerl_test:string_value(Res) of
             "http://www.w3.org/2005/xpath-functions round 2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-610'(_Config) ->
   Qry = "
        xquery version \"3.0\";
      	declare %private function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(13, 12)
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-611'(_Config) ->
   Qry = "
        xquery version \"3.0\";
      	declare %private function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(\"banana\")
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-612'(_Config) ->
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"round\"), 2)(?, 3)(1.2345678)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         1.235
      ",
   case xqerl_test:string_value(Res) of
             "1.235" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-function-lookup-613'(_Config) ->
   Qry = "
        declare variable $n external := xs:QName('local:return-v');
        declare variable $v := function-lookup($n, 0)();
        declare function local:return-v() {$v + 1};
        $v
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0054" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0054'}) end.
'fn-function-lookup-614'(_Config) ->
   Qry = "
        let $f := function-lookup(QName(\"http://exslt.org/dates-and-times\", \"month-abbreviation\"), 1)
        return if (exists($f)) then $f(\"2012-02-28\") else \"not-available\"
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
           not-available
           Feb
           
      ",
 case (xqerl_test:string_value(Res) == "not-available") orelse (xqerl_test:string_value(Res) == "Feb") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-function-lookup-615'(_Config) ->
   Qry = "
        let $f := function-lookup(QName(\"http://exist-db.org/xquery/datetime\", \"days-in-month\"), 1)
        return if (exists($f)) then $f(xs:date(\"2012-02-28\")) else \"not-available\"
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
           not-available
           29
           
      ",
 case (xqerl_test:string_value(Res) == "not-available") orelse (xqerl_test:string_value(Res) == "29") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'fn-function-lookup-701'(_Config) ->
   Qry = "fn:function-lookup()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-function-lookup-702'(_Config) ->
   Qry = "fn:function-lookup#0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-function-lookup-703'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-function-lookup-704'(_Config) ->
   Qry = "fn:function-lookup#1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-function-lookup-705'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1, ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-function-lookup-706'(_Config) ->
   Qry = "fn:function-lookup#3",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-function-lookup-707'(_Config) ->
   Qry = "fn:function-lookup( (), 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-708'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-709'(_Config) ->
   Qry = "function-lookup((fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-710'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), (1, 2))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-711'(_Config) ->
   Qry = "fn:function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'),
                               if ( fn:current-dateTime() eq
                                    fn:dateTime( fn:current-date(),
                                                 fn:current-time() ))
                               then ()
                               else 1 )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-712'(_Config) ->
   Qry = "( fn:function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'),
                                 if (current-date() eq xs:date('1900-01-01'))
                                 then ()
                                 else 1 ),
              fn:function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'),
                                 if (current-date() eq xs:date('1900-01-01'))
                                 then 1
                                 else () ) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
	  
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-713'(_Config) ->
   Qry = "fn:function-lookup((if ( fn:current-dateTime() eq
                                    fn:dateTime( fn:current-date(),
                                                 fn:current-time() ))
                                then fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')
                                else ()),
                               1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-714'(_Config) ->
   Qry = "( fn:function-lookup((if (current-date() eq xs:date('1900-01-01'))
                                  then fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')
                                  else ()), 1),
              fn:function-lookup((if (current-date() eq xs:date('1900-01-01'))
                                  then ()
                                  else fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')), 1))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
	  
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-function-lookup-715'(_Config) ->
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',xqerl_seq2:from_list(Res)}],
   Exp = "
         function(*)
      ",
   case xqerl_types:type(Res) of
           'function(*)' -> {comment, "assert-type"};
           _ -> ct:fail({Res,Exp}) end.
