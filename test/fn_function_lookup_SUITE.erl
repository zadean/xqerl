-module('fn_function_lookup_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
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
-export(['fn-function-lookup-716'/1]).
-export(['fn-function-lookup-717'/1]).
-export(['fn-function-lookup-718'/1]).
-export(['fn-function-lookup-719'/1]).
-export(['fn-function-lookup-720'/1]).
-export(['fn-function-lookup-721'/1]).
-export(['fn-function-lookup-724'/1]).
-export(['fn-function-lookup-725'/1]).
-export(['fn-function-lookup-726'/1]).
-export(['fn-function-lookup-727'/1]).
-export(['fn-function-lookup-728'/1]).
-export(['fn-function-lookup-729'/1]).
-export(['fn-function-lookup-730'/1]).
-export(['fn-function-lookup-731'/1]).
-export(['fn-function-lookup-732'/1]).
-export(['fn-function-lookup-733'/1]).
-export(['fn-function-lookup-734'/1]).
-export(['fn-function-lookup-735'/1]).
-export(['fn-function-lookup-736'/1]).
-export(['fn-function-lookup-737'/1]).
-export(['fn-function-lookup-738'/1]).
-export(['fn-function-lookup-739'/1]).
-export(['fn-function-lookup-740'/1]).
-export(['fn-function-lookup-741'/1]).
-export(['fn-function-lookup-742'/1]).
-export(['fn-function-lookup-743'/1]).
-export(['fn-function-lookup-744'/1]).
-export(['fn-function-lookup-745'/1]).
-export(['fn-function-lookup-746'/1]).
-export(['fn-function-lookup-747'/1]).
-export(['fn-function-lookup-748'/1]).
-export(['fn-function-lookup-749'/1]).
-export(['fn-function-lookup-750'/1]).
-export(['fn-function-lookup-751'/1]).
-export(['fn-function-lookup-752'/1]).
-export(['fn-function-lookup-753'/1]).
-export(['fn-function-lookup-754'/1]).
-export(['fn-function-lookup-755'/1]).
-export(['fn-function-lookup-756'/1]).
-export(['fn-function-lookup-757'/1]).
-export(['fn-function-lookup-758'/1]).
-export(['fn-function-lookup-759'/1]).
-export(['fn-function-lookup-760'/1]).
-export(['fn-function-lookup-761'/1]).
-export(['fn-function-lookup-762'/1]).
-export(['fn-function-lookup-763'/1]).
-export(['fn-function-lookup-764'/1]).
-export(['fn-function-lookup-765'/1]).
-export(['fn-function-lookup-766a'/1]).
-export(['fn-function-lookup-766b'/1]).
-export(['fn-function-lookup-767'/1]).
-export(['fn-function-lookup-768'/1]).
-export(['fn-function-lookup-769'/1]).
-export(['fn-function-lookup-770'/1]).
-export(['fn-function-lookup-771'/1]).
-export(['fn-function-lookup-772'/1]).
-export(['fn-function-lookup-773'/1]).
-export(['fn-function-lookup-774'/1]).
-export(['fn-function-lookup-775'/1]).
-export(['fn-function-lookup-776'/1]).
-export(['fn-function-lookup-777'/1]).
-export(['fn-function-lookup-778'/1]).
-export(['fn-function-lookup-779'/1]).
-export(['fn-function-lookup-780'/1]).
-export(['fn-function-lookup-781'/1]).
-export(['fn-function-lookup-782'/1]).
-export(['fn-function-lookup-783'/1]).
-export(['fn-function-lookup-784'/1]).
-export(['fn-function-lookup-785'/1]).
-export(['fn-function-lookup-786'/1]).
-export(['fn-function-lookup-787'/1]).
-export(['fn-function-lookup-788'/1]).
-export(['fn-function-lookup-789'/1]).
-export(['fn-function-lookup-790'/1]).
-export(['fn-function-lookup-791'/1]).
-export(['fn-function-lookup-792'/1]).
-export(['fn-function-lookup-793'/1]).
-export(['fn-function-lookup-794'/1]).
-export(['fn-function-lookup-795'/1]).
-export(['fn-function-lookup-796'/1]).
-export(['fn-function-lookup-797'/1]).
-export(['fn-function-lookup-798'/1]).
-export(['fn-function-lookup-799'/1]).
-export(['fn-function-lookup-800'/1]).
-export(['fn-function-lookup-801'/1]).
-export(['fn-function-lookup-802'/1]).
-export(['fn-function-lookup-803'/1]).
-export(['fn-function-lookup-804'/1]).
-export(['fn-function-lookup-805'/1]).
-export(['fn-function-lookup-806'/1]).
-export(['fn-function-lookup-807'/1]).
-export(['fn-function-lookup-808'/1]).
-export(['fn-function-lookup-809'/1]).
-export(['fn-function-lookup-810'/1]).
-export(['fn-function-lookup-811'/1]).
-export(['fn-function-lookup-812'/1]).
-export(['fn-function-lookup-813'/1]).
-export(['fn-function-lookup-814'/1]).
-export(['fn-function-lookup-815'/1]).
-export(['fn-function-lookup-816'/1]).
-export(['fn-function-lookup-817'/1]).
-export(['fn-function-lookup-818'/1]).
-export(['fn-function-lookup-819'/1]).
-export(['fn-function-lookup-820'/1]).
-export(['fn-function-lookup-821'/1]).
-export(['fn-function-lookup-822'/1]).
-export(['fn-function-lookup-823'/1]).
-export(['fn-function-lookup-824'/1]).
-export(['fn-function-lookup-825'/1]).
-export(['fn-function-lookup-826'/1]).
-export(['fn-function-lookup-827'/1]).
-export(['fn-function-lookup-828'/1]).
-export(['fn-function-lookup-829'/1]).
-export(['fn-function-lookup-830'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
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
'fn-function-lookup-715', 
'fn-function-lookup-716', 
'fn-function-lookup-717', 
'fn-function-lookup-718', 
'fn-function-lookup-719', 
'fn-function-lookup-720', 
'fn-function-lookup-721', 
'fn-function-lookup-724', 
'fn-function-lookup-725', 
'fn-function-lookup-726', 
'fn-function-lookup-727', 
'fn-function-lookup-728', 
'fn-function-lookup-729', 
'fn-function-lookup-730', 
'fn-function-lookup-731', 
'fn-function-lookup-732', 
'fn-function-lookup-733', 
'fn-function-lookup-734', 
'fn-function-lookup-735', 
'fn-function-lookup-736', 
'fn-function-lookup-737', 
'fn-function-lookup-738', 
'fn-function-lookup-739', 
'fn-function-lookup-740', 
'fn-function-lookup-741', 
'fn-function-lookup-742', 
'fn-function-lookup-743', 
'fn-function-lookup-744', 
'fn-function-lookup-745', 
'fn-function-lookup-746', 
'fn-function-lookup-747', 
'fn-function-lookup-748', 
'fn-function-lookup-749', 
'fn-function-lookup-750', 
'fn-function-lookup-751', 
'fn-function-lookup-752', 
'fn-function-lookup-753', 
'fn-function-lookup-754', 
'fn-function-lookup-755', 
'fn-function-lookup-756', 
'fn-function-lookup-757', 
'fn-function-lookup-758', 
'fn-function-lookup-759', 
'fn-function-lookup-760', 
'fn-function-lookup-761', 
'fn-function-lookup-762', 
'fn-function-lookup-763', 
'fn-function-lookup-764', 
'fn-function-lookup-765', 
'fn-function-lookup-766a', 
'fn-function-lookup-766b', 
'fn-function-lookup-767', 
'fn-function-lookup-768', 
'fn-function-lookup-769', 
'fn-function-lookup-770', 
'fn-function-lookup-771', 
'fn-function-lookup-772', 
'fn-function-lookup-773', 
'fn-function-lookup-774', 
'fn-function-lookup-775', 
'fn-function-lookup-776', 
'fn-function-lookup-777', 
'fn-function-lookup-778', 
'fn-function-lookup-779', 
'fn-function-lookup-780', 
'fn-function-lookup-781', 
'fn-function-lookup-782', 
'fn-function-lookup-783', 
'fn-function-lookup-784', 
'fn-function-lookup-785', 
'fn-function-lookup-786', 
'fn-function-lookup-787', 
'fn-function-lookup-788', 
'fn-function-lookup-789', 
'fn-function-lookup-790', 
'fn-function-lookup-791', 
'fn-function-lookup-792', 
'fn-function-lookup-793', 
'fn-function-lookup-794', 
'fn-function-lookup-795', 
'fn-function-lookup-796', 
'fn-function-lookup-797', 
'fn-function-lookup-798', 
'fn-function-lookup-799', 
'fn-function-lookup-800', 
'fn-function-lookup-801', 
'fn-function-lookup-802', 
'fn-function-lookup-803', 
'fn-function-lookup-804', 
'fn-function-lookup-805', 
'fn-function-lookup-806', 
'fn-function-lookup-807', 
'fn-function-lookup-808', 
'fn-function-lookup-809', 
'fn-function-lookup-810', 
'fn-function-lookup-811', 
'fn-function-lookup-812', 
'fn-function-lookup-813', 
'fn-function-lookup-814', 
'fn-function-lookup-815', 
'fn-function-lookup-816', 
'fn-function-lookup-817', 
'fn-function-lookup-818', 
'fn-function-lookup-819', 
'fn-function-lookup-820', 
'fn-function-lookup-821', 
'fn-function-lookup-822', 
'fn-function-lookup-823', 
'fn-function-lookup-824', 
'fn-function-lookup-825', 
'fn-function-lookup-826', 
'fn-function-lookup-827', 
'fn-function-lookup-828', 
'fn-function-lookup-829', 
'fn-function-lookup-830'
].
environment('function-lookup',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "function-lookup/function-lookup.xml"), ".","http://www.w3.org/fots/fn/function-lookup/function-lookup.xml"}]}, 
{collections, [{"",[{src,filename:join(__BaseDir, "function-lookup/collection-1.xml")}, 
{src,filename:join(__BaseDir, "function-lookup/collection-2.xml")}]}]}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json-to-xml/data001.json"),"http://www.w3.org/qt3/json/data001-json"}, 
{"text/plain", filename:join(__BaseDir, "unparsed-text/text-plain-utf-8.txt"),"http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt"}]}, 
{modules, []}
].
'fn-function-lookup-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1)(/root)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-007.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'nilled'), 1)(/root)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "false") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-009.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-011.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string'), 1)(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-012.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-013.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-014.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-015.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'data'), 1)(/root/child[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-016.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-018.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'base-uri'), 1)(/)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-021'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-021.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-022'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-022.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-023'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-023.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-024'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'document-uri'), 1)(/)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-024.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/fots/fn/function-lookup/function-lookup.xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-025'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-025.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-026.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOER0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-027'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-027.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-028'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 1)(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-028.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XXXX0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-029.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 2)(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'), 'string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-030.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XXXX0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-031'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-031.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-032'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'error'), 3)(fn:QName('http://www.w3.org/2005/xqt-errors', 'foo:XXXX0000'), 'string', (1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-032.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XXXX0000") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-033'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'trace'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-033.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'trace'), 2)(1, 'label')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-034.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-035'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'abs'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-035.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-036'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'abs'), 1)(-1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-036.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ceiling'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-037.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-038'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ceiling'), 1)(0.9)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-038.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-039'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'floor'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-039.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-040'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'floor'), 1)(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-040.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-041.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-042'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 1)(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-042.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-043'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-043.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-044'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round'), 2)(1.1, 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-044.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-045.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-046'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 1)(1.1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-046.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-047'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-047.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'round-half-to-even'), 2)(1.1, 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-048.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-049'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-049.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-050'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-050.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-051'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-051.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-052'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'number'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-052.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-053'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-053.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 2)(1, '0')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-054.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-055'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-055.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-integer'), 3)(1, '0', 'en')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-056.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-057'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-057.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-058'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 2)(1, '0')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-058.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-059'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-059.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-060'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-number'), 3)(1, '0', ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-060.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-061'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pi'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-061.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-062'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pi'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-062.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3.141592653589793") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-063'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-063.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-064'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-064.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"abs($result - 2.71828182845) lt 1e-10") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-065'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp10'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-065.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-066'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'exp10'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-066.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-067'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-067.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-068'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-068.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-069'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log10'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-069.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-070'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'log10'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-070.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-071'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pow'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-071.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-072'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'pow'), 2)(1e0, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-072.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-073'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sqrt'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-073.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-074'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sqrt'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-074.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-075'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sin'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-075.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-076'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'sin'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-076.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.8414709848078965") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-077'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'cos'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-077.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-078'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'cos'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-078.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.5403023058681398") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-079'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'tan'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-079.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-080'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'tan'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-080.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5574077246549023") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-081'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'asin'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-081.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-082'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'asin'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-082.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.5707963267948966") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-083'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'acos'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-083.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-084'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'acos'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-084.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-085'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-085.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-086'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan'), 1)(1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-086.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.7853981633974483") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-087'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan2'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-087.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-088'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/math', 'atan2'), 2)(1e0, 1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-088.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0.7853981633974483") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-089'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoints-to-string'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-089.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-090'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoints-to-string'), 1)((65, 66))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-090.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "AB") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-091'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-to-codepoints'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-091.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-092'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-to-codepoints'), 1)('A')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-092.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "65") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-093'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-093.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-094'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 2)('string', 'string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-094.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-095'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-095.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-096'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'compare'), 3)('string', 'string', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-096.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-097'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoint-equal'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-097.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-098'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'codepoint-equal'), 2)('string', 'string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-098.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-099'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'concat'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-099.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-100'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'concat'), 3)('a', 'bc', 'def')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-100.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcdef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-101.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-102'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 1)(('abc', 'def'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-102.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abcdef") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-103.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-join'), 2)(('abc', 'def'), '-')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-104.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc-def") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-105'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-105.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-106'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 2)('string', 2e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-106.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "tring") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-107'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-107.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-108'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring'), 3)('string', 1e0, 1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-108.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "s") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-109'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-109.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-110'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-110.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-111'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-111.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-112'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'string-length'), 1)('string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-112.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "6") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-113'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-113.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-114'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/child/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-114.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-115'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-115.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-116'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-space'), 1)(' string ')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-116.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-117'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-117.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-118'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 1)('string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-118.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-119'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-119.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-120'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'normalize-unicode'), 2)('string', 'NFC')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-120.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-121'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'upper-case'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-121.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-122'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'upper-case'), 1)('string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-122.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "STRING") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-123'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lower-case'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-123.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-124'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lower-case'), 1)('STRING')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-124.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-125'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'translate'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-125.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-126'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'translate'), 3)('string', 'i', 'o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-126.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "strong") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-127'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-127.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-128'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 2)('string', 'rin')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-128.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-129'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-129.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-130'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains'), 3)('string', 'RIN', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-130.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-131'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-131.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-132'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 2)('string', 'str')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-132.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-133'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-133.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-134'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'starts-with'), 3)('string', 'ing', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-134.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-135'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-135.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-136'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 2)('string', 'ing')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-136.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-137'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-137.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-138'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'ends-with'), 3)('string', 'str', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-138.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-139'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-139.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-140'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 2)('string', 'ing')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-140.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-141'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-141.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-142'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-before'), 3)('string', 'ing', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-142.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-143'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-143.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-144'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 2)('string', 'str')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-144.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ing") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-145'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-145.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-146'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'substring-after'), 3)('string', 'str', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-146.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ing") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-147'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-147.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-148'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 2)('string', 'string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-148.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-149'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-149.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-150'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'matches'), 3)('string', 'STRING', 'i')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-150.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-151'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-151.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-152'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 3)('string', 'i', 'o')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-152.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "strong") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-153'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 4))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-153.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-154'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'replace'), 4)('string', 'I', 'o', 'i')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-154.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "strong") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-155'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-155.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-156'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 2)('string', 'i')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-156.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str ng") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-157'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-157.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-158'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 3)('string', 'i', 'i')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-158.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "str ng") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-159'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-159.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-160'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 2)('', 'abc')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-160.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-161'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-161.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-162'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'analyze-string'), 3)('', 'abc', 'i')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-162.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<fn:analyze-string-result xmlns:fn=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-163'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-163.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-164'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 1)('http://www.w3.org/2005/xpath-functions')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-164.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-165'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-165.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-166'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-uri'), 2)('/2005/xpath-functions', 'http://www.w3.org/')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-166.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xpath-functions") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-167'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'encode-for-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-167.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-168'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'encode-for-uri'), 1)(' ')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-168.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "%20") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-169'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'iri-to-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-169.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-170'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'iri-to-uri'), 1)('http://www.example.com/')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-170.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-171'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'escape-html-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-171.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-172'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'escape-html-uri'), 1)('http://www.example.com/')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-172.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.com/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-173'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'true'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-173.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-174'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'true'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-174.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-175'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'false'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-175.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-176'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'false'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-176.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-177'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'boolean'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-177.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-178'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'boolean'), 1)(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-178.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-179'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'not'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-179.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-180'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'not'), 1)(\"string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-180.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-181'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'years-from-duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-181.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-182'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'years-from-duration'), 1)(xs:yearMonthDuration(\"P20Y15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-182.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "21") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-183'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'months-from-duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-183.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-184'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'months-from-duration'), 1)(xs:yearMonthDuration(\"P20Y15M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-184.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-185'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'days-from-duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-185.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-186'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'days-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-186.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-187'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-187.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-188'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-188.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-189'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-189.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-190'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-190.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-191'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-191.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-192'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-duration'), 1)(xs:dayTimeDuration(\"P3DT10H12.5S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-192.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "12.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-193'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'dateTime'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-193.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-194'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'dateTime'), 2)(xs:date('2012-01-01Z'), xs:time('00:00:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-194.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012-01-01T00:00:00Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-195'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-195.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-196'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-196.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-197'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-197.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-198'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-198.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-199'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-199.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-200'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-200.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-201'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-201.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-202'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-202.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-203'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-203.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-204'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-204.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-205'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-205.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-206'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-dateTime'), 1)(xs:dateTime('2012-04-03T02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-206.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-207'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-207.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-208'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-dateTime'), 1)(xs:dateTime('2012-01-01T00:00:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-208.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-209'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-date'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-209.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-210'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'year-from-date'), 1)(xs:date('2012-02-01Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-210.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-211'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-date'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-211.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-212'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'month-from-date'), 1)(xs:date('2012-02-01Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-212.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-213'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-date'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-213.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-214'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'day-from-date'), 1)(xs:date('2012-02-01Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-214.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-215'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-date'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-215.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-216'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-date'), 1)(xs:date('2012-01-01Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-216.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-217'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-time'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-217.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-218'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'hours-from-time'), 1)(xs:time('02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-218.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-219'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-time'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-219.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-220'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'minutes-from-time'), 1)(xs:time('02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-220.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-221'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-time'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-221.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-222'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'seconds-from-time'), 1)(xs:time('02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-222.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-223'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-time'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-223.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-224'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'timezone-from-time'), 1)(xs:time('02:01:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-224.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-225'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-225.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-226'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 1)(xs:dateTime('2012-01-01T00:00:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-226.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-227'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-227.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-228'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-dateTime-to-timezone'), 2)(xs:dateTime(\"1970-01-01T00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-228.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-31T14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-229'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-229.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-230'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 1)(xs:date('2012-01-01Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-230.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:date") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-231'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-231.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-232'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-date-to-timezone'), 2)(xs:date(\"1970-01-01Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-232.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1969-12-31-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-233'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-233.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-234'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 1)(xs:time('00:00:00Z'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-234.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:time") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-235'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-235.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-236'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'adjust-time-to-timezone'), 2)(xs:time(\"00:00:00Z\"),xs:dayTimeDuration(\"-PT10H\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-236.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "14:00:00-10:00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-237'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-237.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-238'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 2)(xs:dateTime('2012-01-01T00:00:00Z'), '[Y]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-238.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-239'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-239.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-240'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-dateTime'), 5)(xs:dateTime('2012-01-01T00:00:00Z'), '[Y]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-240.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-241'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-241.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-242'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 2)(xs:date('2012-01-01Z'), '[Y]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-242.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-243'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-243.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-244'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-date'), 5)(xs:date('2012-01-01Z'), '[Y]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-244.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-245'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-245.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-246'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 2)(xs:time('00:00:00Z'), '[H01]')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-246.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-247'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 5))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-247.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-248'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'format-time'), 5)(xs:time('00:00:00Z'), '[H01]', 'en', (), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-248.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "00") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-249'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-QName'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-249.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-250'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'resolve-QName'), 2)('ns:local', /root/*[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-250.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ns:local") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-251'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'QName'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-251.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-252'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'QName'), 2)('http://www.example.org/', 'ns:local')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-252.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ns:local") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-253'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'prefix-from-QName'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-253.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-254'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'prefix-from-QName'), 1)(fn:QName('http://www.example.org', 'foo:bar'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-254.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "foo") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-255'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name-from-QName'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-255.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-256'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name-from-QName'), 1)(fn:QName('http://www.example.org', 'foo:bar'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-256.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "bar") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-257'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-from-QName'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-257.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-258'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-from-QName'), 1)(fn:QName('http://www.example.org', 'foo:bar'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-258.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-259'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-for-prefix'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-259.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-260'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri-for-prefix'), 2)('ns', /root/*[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-260.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-261'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'in-scope-prefixes'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-261.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-262'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'in-scope-prefixes'), 1)(/root)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-262.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "xml") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-263'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-263.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-264'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-264.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-265'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-265.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-266'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 1)(/root)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-266.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-267'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-267.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-268'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-268.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-269'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-269.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-270'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'local-name'), 1)(/root)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-270.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "root") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-271'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-271.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-272'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/*[2]/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-272.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-273'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-273.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-274'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'namespace-uri'), 1)(/root/*[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-274.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-275'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-275.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-276'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 1)('en')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-276.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-277'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-277.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-278'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'lang'), 2)('en', /root)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-278.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-279'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-279.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-280'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/root/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-280.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-281'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-281.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-282'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'root'), 1)(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-282.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-283'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-283.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-284'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-284.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-285'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-285.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-286'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'path'), 1)(/)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-286.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-287'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-287.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-288'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-288.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-289'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-289.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-290'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'has-children'), 1)(/)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-290.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-291'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'innermost'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-291.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-292'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'innermost'), 1)(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-292.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-293'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'outermost'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-293.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-294'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'outermost'), 1)(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-294.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-295'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'empty'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-295.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-296'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'empty'), 1)((1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-296.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-297'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exists'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-297.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-298'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exists'), 1)((1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-298.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-299'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'head'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-299.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-300'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'head'), 1)((1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-300.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-301'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tail'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-301.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-302'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tail'), 1)((1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-302.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-303'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'insert-before'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-303.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-304'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'insert-before'), 3)((1, 2, 3), 2, ('a', 'b', 'c'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-304.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 a b c 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-305'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'remove'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-305.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-306'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'remove'), 2)(('a', 'b', 'c'), 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-306.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "a c") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-307'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'reverse'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-307.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-308'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'reverse'), 1)(1 to 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-308.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 2 1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-309'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-309.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-310'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 2)((1, true()), 2e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-310.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-311'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-311.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-312'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'subsequence'), 3)((1, true()), 1e0, 1e0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-312.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-313'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unordered'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-313.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-314'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unordered'), 1)(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-314.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-315'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-315.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-316'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 1)((1, 1, 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-316.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-317'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-317.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-318'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'distinct-values'), 2)((1, 1, 1), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-318.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-319'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-319.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-320'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 2)((1, 'string'), 'string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-320.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-321'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-321.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-322'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'index-of'), 3)((1, 'string'), 'string', 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-322.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-323'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-323.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-324'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 2)((1, true()), (1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-324.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-325'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-325.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-326'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'deep-equal'), 3)((1, true()), (1, true()), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-326.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-327'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'zero-or-one'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-327.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-328'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'zero-or-one'), 1)(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-328.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-329'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'one-or-more'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-329.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-330'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'one-or-more'), 1)(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-330.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-331'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exactly-one'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-331.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-332'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'exactly-one'), 1)(1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-332.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-333'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'count'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-333.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-334'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'count'), 1)((1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-334.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-335'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'avg'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-335.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-336'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'avg'), 1)((1, 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-336.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-337'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-337.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-338'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 1)((1, 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-338.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-339'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-339.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-340'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'max'), 2)((1, 3), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-340.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-341'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-341.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-342'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 1)((1, 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-342.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-343'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-343.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-344'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'min'), 2)((1, 3), 'http://www.w3.org/2005/xpath-functions/collation/codepoint')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-344.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-345'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-345.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-346'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 1)((1, 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-346.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-347'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-347.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-348'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sum'), 2)((1, 2), 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-348.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-349'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-349.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-350'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 1)(('id1', 'id2'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-350.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-351'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-351.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-352'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'id'), 2)(('id1', 'id2'), /)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-352.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-353'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-353.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-354'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 1)(('id1', 'id2'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-354.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-355'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-355.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-356'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'element-with-id'), 2)(('id1', 'id2'), /)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-356.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-357'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-357.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-358'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 1)(('id1', 'id2'))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-358.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-359'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-359.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-360'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'idref'), 2)(('id1', 'id2'), /)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-360.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-361'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-361.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-362'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "/function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-362.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-363'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-363.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-364'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'generate-id'), 1)(())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-364.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"\"\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-365'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-365.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-366'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc'), 1)('http://www.w3.org/fots/fn/function-lookup/function-lookup.xml')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-366.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-367'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc-available'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-367.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-368'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'doc-available'), 1)('http://www.example.org/unknown-document')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-368.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-369'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-369.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-370'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-370.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-371'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-371.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-372'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collection'), 1)(())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-372.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-373'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-373.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-374'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-374.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-375'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-375.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-376'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'uri-collection'), 1)(())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-376.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-377'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-377.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-378'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 1)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-378.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-379'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-379.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-380'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text'), 2)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-380.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-381'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-381.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-382'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 1)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-382.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-383'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-383.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-384'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-lines'), 2)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-384.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-385'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-385.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-386'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 1)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-386.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-387'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-387.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-388'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'unparsed-text-available'), 2)('http://www.w3.org/fots/unparsed-text/text-plain-utf-8.txt', 'utf-8')", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-388.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-389'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'environment-variable'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-389.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-390'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'environment-variable'), 1)('should-not-exist')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-390.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-391'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'available-environment-variables'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-391.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-392'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'available-environment-variables'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-392.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:string*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-393'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-393.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-394'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml'), 1)('<doc />')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-394.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-395'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml-fragment'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-395.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-396'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-xml-fragment'), 1)('<doc />')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-396.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-397'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-397.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-398'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 1)((1, true()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-398.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result, \"1 true\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-399'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-399.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-400'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'serialize'), 2)((1, false()), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-400.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"contains($result, \"1 false\")") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-401'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'position'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-401.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-402'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(2, 4, 6)!function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'position'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-402.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1 2 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-403'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'last'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-403.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-404'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(2, 4, 6)!function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'last'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-404.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "3 3 3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-405'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-dateTime'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-405.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-406'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-dateTime'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-406.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:dateTime") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-407'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-date'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-407.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-408'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-date'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-408.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:date") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-409'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-time'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-409.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-410'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'current-time'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-410.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:time") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-411'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'implicit-timezone'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-411.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-412'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'implicit-timezone'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-412.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:dayTimeDuration") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-413'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'default-collation'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-413.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-414'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'default-collation'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-414.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xpath-functions/collation/codepoint") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-415'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'static-base-uri'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-415.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-416'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'static-base-uri'), 0)()", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.example.com"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-416.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:anyURI?") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-417'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-lookup'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-417.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-418'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-lookup'), 2)(fn:QName('http://www.example.org', 'foo:bar'), 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-418.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-419'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-name'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-419.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-420'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-name'), 1)(fn:abs#1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-420.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"fn:QName('http://www.w3.org/2005/xpath-functions', 'fn:abs')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-421'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-arity'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-421.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-422'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'function-arity'), 1)(fn:abs#1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-422.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-423'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-423.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-424'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each'), 2)((\"23\", \"29\"), xs:int#1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-424.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(23, 29)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-425'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'filter'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-425.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-426'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'filter'), 2)(1 to 10, function($a) {$a mod 2 = 0})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-426.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2, 4, 6, 8, 10)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-427'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-left'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-427.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-428'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-left'), 3)(1 to 5, \"\", fn:concat(?, \".\", ?))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-428.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, ".1.2.3.4.5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-429'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-right'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-429.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-430'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'fold-right'), 3)(1 to 5, \"\", fn:concat(?, \".\", ?))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-430.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.2.3.4.5.") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-431'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each-pair'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-431.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-432'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'for-each-pair'), 3)((\"a\", \"b\", \"c\"), (\"x\", \"y\", \"z\"), concat#2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-432.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"ax\", \"by\", \"cz\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-433'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'untypedAtomic'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-433.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-434'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'untypedAtomic'), 1)('string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-434.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-435'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTime'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-435.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-436'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTime'), 1)('1970-01-02T04:05:06Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-436.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-02T04:05:06Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-437'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'date'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-437.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-438'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'date'), 1)('1970-01-02Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-438.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1970-01-02Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-439'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'time'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-439.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-440'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'time'), 1)('01:02:03Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-440.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "01:02:03Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-441'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'duration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-441.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-442'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'duration'), 1)('P5Y2M10DT15H')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-442.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P5Y2M10DT15H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-443'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'yearMonthDuration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-443.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-444'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'yearMonthDuration'), 1)('P1Y')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-444.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P1Y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-445'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dayTimeDuration'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-445.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-446'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dayTimeDuration'), 1)('PT15H')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-446.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT15H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-447'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'float'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-447.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-448'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'float'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-448.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-449'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'double'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-449.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-450'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'double'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-450.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-451'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'decimal'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-451.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-452'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'decimal'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-452.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-453'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'integer'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-453.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-454'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'integer'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-454.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-455'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonPositiveInteger'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-455.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-456'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonPositiveInteger'), 1)('-1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-456.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-457'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'negativeInteger'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-457.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-458'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'negativeInteger'), 1)('-1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-458.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "-1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-459'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'long'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-459.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-460'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'long'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-460.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-461'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'int'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-461.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-462'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'int'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-462.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-463'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'short'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-463.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-464'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'short'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-464.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-465'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'byte'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-465.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-466'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'byte'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-466.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-467'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-467.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-468'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-468.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-469'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedLong'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-469.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-470'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedLong'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-470.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-471'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedInt'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-471.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-472'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedInt'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-472.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-473'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedShort'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-473.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-474'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedShort'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-474.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-475'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedByte'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-475.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-476'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'unsignedByte'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-476.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-477'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-477.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-478'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'nonNegativeInteger'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-478.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-479'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'positiveInteger'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-479.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-480'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'positiveInteger'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-480.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-481'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYearMonth'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-481.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-482'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYearMonth'), 1)('2001-10Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-482.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2001-10Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-483'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYear'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-483.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-484'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gYear'), 1)('2012Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-484.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "2012Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-485'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonthDay'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-485.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-486'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonthDay'), 1)('--11-01Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-486.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "--11-01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-487'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gDay'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-487.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-488'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gDay'), 1)('---01Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-488.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "---01Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-489'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonth'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-489.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-490'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'gMonth'), 1)('--11Z')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-490.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "--11Z") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-491'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'string'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-491.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-492'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'string'), 1)('string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-492.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-493'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'normalizedString'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-493.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-494'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'normalizedString'), 1)('normalized
string')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-494.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "normalized string") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-495'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'token'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-495.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-496'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'token'), 1)('token')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-496.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "token") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-497'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'language'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-497.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-498'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'language'), 1)('en')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-498.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "en") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-499'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKEN'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-499.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-500'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKEN'), 1)('NMTOKEN')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-500.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NMTOKEN") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-501'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'Name'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-501.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-502'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'Name'), 1)('Name')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-502.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "Name") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-503'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NCName'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-503.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-504'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NCName'), 1)('NCName')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-504.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NCName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-505'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ID'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-505.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-506'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ID'), 1)('ID')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-506.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ID") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-507'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREF'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-507.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-508'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREF'), 1)('IDREF')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-508.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "IDREF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-509'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITY'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-509.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-510'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITY'), 1)('ENTITY')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-510.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ENTITY") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-511'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'boolean'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-511.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-512'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'boolean'), 1)('1')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-512.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "true") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-513'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'base64Binary'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-513.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-514'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'base64Binary'), 1)('D74D35D35D35')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-514.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "D74D35D35D35") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-515'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'hexBinary'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-515.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-516'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'hexBinary'), 1)('0fb7')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-516.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "0FB7") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-517'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'anyURI'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-517.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-518'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'anyURI'), 1)('http://www.example.org/')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-518.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-519'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'QName'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-519.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-520'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'QName'), 1)('fn:QName')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-520.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "fn:QName") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-521'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTimeStamp'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-521.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:boolean") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-522'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      let $f := function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'dateTimeStamp'), 1)
      return if (exists($f)) then year-from-dateTime($f('2012-05-25T11:42:00+01:00')) else 2012", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-522.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2012") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-523'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREFS'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-523.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-524'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'IDREFS'), 1)('ID1 ID2 ID3')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-524.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ID1 ID2 ID3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-525'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKENS'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-525.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-526'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'NMTOKENS'), 1)('NMTOKEN1 NMTOKEN2 NMTOKEN3')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-526.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "NMTOKEN1 NMTOKEN2 NMTOKEN3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-527'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITIES'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-527.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-528'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'ENTITIES'), 1)('ENTITY1 ENTITY2 ENTITY3')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-528.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "ENTITY1 ENTITY2 ENTITY3") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-529'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(function-lookup(fn:QName('http://www.w3.org/2005/xquery-local-functions', 'missing'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-529.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-530'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xquery-local-functions', 'missing'), 1)(\"arg\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-530.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-601'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"abs\"), 1)(-3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-601.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-602'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"concat\"), 3)(\"a\", \"b\", \"c\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-602.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "abc") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-603'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions/math\", \"pi\"), 0)() idiv 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-603.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-604'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(QName(\"http://www.w3.org/2001/XMLSchema\", \"time\"), 1)(\"12:30:00Z\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-604.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:time(\"12:30:00Z\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-605'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xquery version \"3.0\";
      	declare function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(13)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-605.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"169") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-606'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xquery version \"3.0\";
      	declare %private function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(13)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-606.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"169") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-607'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"cube\"), 1)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-607.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-608'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        function-lookup(QName(\"\", \"round\"), 2)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-608.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-609'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"round\"), 2) ! 
                   (function-name(.) ! (namespace-uri-from-QName(.), local-name-from-QName(.)), function-arity(.))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-609.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xpath-functions round 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-610'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xquery version \"3.0\";
      	declare %private function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(13, 12)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-610.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-611'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        xquery version \"3.0\";
      	declare %private function local:square($i as xs:integer) as xs:integer { $i*$i };
        function-lookup(QName(\"http://www.w3.org/2005/xquery-local-functions\", \"square\"), 1)(\"banana\")
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-611.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-612'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(QName(\"http://www.w3.org/2005/xpath-functions\", \"round\"), 2)(?, 3)(1.2345678)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-612.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "1.235") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-613'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare variable $n external := xs:QName('local:return-v');
        declare variable $v := function-lookup($n, 0)();
        declare function local:return-v() {$v + 1};
        $v
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-613.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-614'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $f := function-lookup(QName(\"http://exslt.org/dates-and-times\", \"month-abbreviation\"), 1)
        return if (exists($f)) then $f(\"2012-02-28\") else \"not-available\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-614.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "not-available") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "Feb") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-615'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        let $f := function-lookup(QName(\"http://exist-db.org/xquery/datetime\", \"days-in-month\"), 1)
        return if (exists($f)) then $f(xs:date(\"2012-02-28\")) else \"not-available\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-615.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "not-available") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_string_value(Res, "29") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-701'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:function-lookup()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-701.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-702'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:function-lookup#0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-702.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-703'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-703.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-704'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:function-lookup#1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-704.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-705'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1, ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-705.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-706'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:function-lookup#3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-706.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-707'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:function-lookup( (), 1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-707.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-708'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-708.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-709'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup((fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')), 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-709.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-710'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), (1, 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-710.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-711'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'fn-function-lookup-712'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'),
                                 if (current-date() eq xs:date('1900-01-01'))
                                 then ()
                                 else 1 ),
              fn:function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'),
                                 if (current-date() eq xs:date('1900-01-01'))
                                 then 1
                                 else () ) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-712.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-713'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'fn-function-lookup-714'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "( fn:function-lookup((if (current-date() eq xs:date('1900-01-01'))
                                  then fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')
                                  else ()), 1),
              fn:function-lookup((if (current-date() eq xs:date('1900-01-01'))
                                  then ()
                                  else fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name')), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-714.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPTY0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-715'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'node-name'), 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-715.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"function(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-716'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'banana'), 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-716.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-717'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'name'), 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-717.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-718'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'banana'), 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-718.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-719'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2001/XMLSchema', 'integer'), 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-719.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-720'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-ietf-date'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-720.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-721'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-ietf-date'), 1)('Wed, 20 Aug 2014 19:36:01 GMT')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-721.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:dateTime('2014-08-20T19:36:01Z')") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-724'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'apply'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-724.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-725'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'apply'), 2)( abs#1, [-2] )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-725.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-726'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sort'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-726.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-727'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sort'), 1)( (3, 2, 1) )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-727.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1, 2, 3)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-728'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sort'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-728.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-729'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sort'), 2)( (3, 2, 1), () )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-729.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1,2,3)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-730'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sort'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-730.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-731'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'sort'), 3)( (3, 2, 1), (), fn:data#1 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-731.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(1,2,3)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-732'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains-token'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-732.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-733'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'contains-token'), 2)( \"abc\", \"abc\" )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-733.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-734'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'default-language'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-734.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-735'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'default-language'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-735.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_type(Res,"xs:language") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-736'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-doc'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-736.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-737'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-doc'), 1)( 'does-not-exist.txt' )", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-737.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-738'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-doc'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-738.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-739'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-doc'), 2)( 'does-not-exist.txt', map {} )", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-739.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOUT1170") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-740'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-to-xml'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-740.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-741'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-to-xml'), 1)( '{}' )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-741.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-742'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-to-xml'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-742.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-743'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'json-to-xml'), 2)( '{}', map {} )", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/fots/unparsed-text/"}]}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, []}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-743.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"document-node()") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_xml(Res,"<map xmlns=\"http://www.w3.org/2005/xpath-functions\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-744'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-json'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-744.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-745'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-json'), 1)( 'true' )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-745.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-746'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-json'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-746.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-747'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'parse-json'), 2)( 'true', map {} )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-747.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-748'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collation-key'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-748.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-749'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collation-key'), 1)( 'abc' ) eq fn:collation-key('abc')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-749.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-750'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collation-key'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-750.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-751'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collation-key'), 2)( 'abc', 'http://www.w3.org/2005/xpath-functions/collation/codepoint') eq fn:collation-key('abc')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-751.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-752'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-752.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-753'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'tokenize'), 1)('a b')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-753.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"('a', 'b')") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-754'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collation-key'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-754.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-755'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'collation-key'), 1)( 'abc' ) eq fn:collation-key('abc')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-755.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-756'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'random-number-generator'), 0))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-756.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-757'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'random-number-generator'), 0)()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-757.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:string, item())") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-758'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'random-number-generator'), 1)( 0 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-758.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:string, item())") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-759'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'load-xquery-module'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-759.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-760'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'fn-function-lookup-761'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'load-xquery-module'), 1)( 0 )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-761.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-762'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'load-xquery-module'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-762.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-763'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'fn-function-lookup-764'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'load-xquery-module'), 2)( \"\", map{} )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-764.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOQM0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-765'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'transform'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-765.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-766a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"higherOrderFunctions"}. 
'fn-function-lookup-766b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions', 'transform'), 1)( map{} )", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-766b.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOXT0004") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-767'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'append'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-767.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-768'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'append'), 2)([], 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-768.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[3]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-769'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'filter'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-769.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-770'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'filter'), 2)([\"A\", \"B\", 1, 2], function($z) {$z instance of xs:integer})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-770.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 2") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[1, 2]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-771'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'flatten'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-771.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-772'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'flatten'), 1)([1, 4, 6, 5, 3])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-772.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"1, 4, 6, 5, 3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-773'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'fold-left'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-773.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-774'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'fold-left'), 3)([1,2,3,4,5,6], 0, function($z,$a){$z + $a})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-774.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-775'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'fold-right'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-775.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-776'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'fold-right'), 3)([1,2,3,4,5,6], 0, function($a,$z){$a + $z})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-776.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-777'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'for-each-pair'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-777.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-778'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'for-each-pair'), 3)([\"A\", \"B\", \"C\"], [1, 2, 3], function($x, $y) {[$x, $y]})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-778.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[[\"A\", 1], [\"B\", 2], [\"C\", 3]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-779'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'for-each'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-779.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-780'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'for-each'), 2)([\"A\", \"B\", 1, 2], function($z) {$z instance of xs:integer})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-780.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[false(), false(), true(), true()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-781'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'get'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-781.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-782'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'get'), 2)([5,6,7], 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-782.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-783'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'head'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-783.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-784'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'head'), 1)([5,6,7,8])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-784.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"item()*") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_eq(Res,"5") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-785'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'insert-before'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-785.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-786'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'insert-before'), 3)([\"a\", \"b\", \"c\", \"d\"], 3, (\"x\", \"y\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-786.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", (\"x\", \"y\"), \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-787'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'join'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-787.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-788'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'join'), 1)(([1,2],[3,4]))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-788.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[1,2,3,4]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-789'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'put'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-789.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-790'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'put'), 3)([\"a\", \"b\", \"c\", \"d\"], 3, (\"x\", \"y\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-790.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", (\"x\", \"y\"), \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-791'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'remove'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-791.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-792'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'remove'), 2)([\"a\",\"b\",\"c\",\"d\"], 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-792.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-793'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'reverse'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-793.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-794'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'reverse'), 1)([\"a\", \"b\", \"c\", \"d\"])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-794.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 4") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"d\", \"c\", \"b\", \"a\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-795'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'size'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-795.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-796'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'size'), 1)([1])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-796.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-797'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'sort'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-797.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-798'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'sort'), 1)([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-798.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-799'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'sort'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-799.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-800'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'sort'), 2)([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('function-lookup',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-800.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-801'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'sort'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-801.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-802'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'sort'), 3)([\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"], \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", fn:string#1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-802.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-803'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'subarray'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-803.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-804'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'subarray'), 2)([\"a\", \"b\", \"c\", \"d\"], 2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-804.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[\"b\", \"c\", \"d\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-805'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'subarray'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-805.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-806'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'subarray'), 3)([1, (2,2), 3], 3, 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-806.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-807'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'tail'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-807.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-808'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/array', 'tail'), 1)([5,6,7,8])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-808.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"array(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_deep_eq(Res,"[6,7,8]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-809'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'contains'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-809.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-810'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'contains'), 2)(map{}, 0)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-810.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-811'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'entry'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-811.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-812'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'entry'), 2)(3, 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-812.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:integer, xs:integer)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"function(xs:anyAtomicType) as xs:integer?") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result(3) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size($result) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size(map:remove($result, 3)) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"map:size(map:remove($result, 1)) eq 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-813'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'find'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-813.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-814'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'find'), 2)((), 17)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-814.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-815'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'for-each'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-815.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-816'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'for-each'), 2)(map{}, concat#2)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-816.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-817'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'get'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-817.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-818'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'get'), 2)(map{}, 1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-818.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-819'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'keys'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-819.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-820'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'keys'), 1)(map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-820.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-821'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'merge'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-821.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-822'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'merge'), 1)(())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-822.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:date, element()+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-823'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'merge'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-823.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-824'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'merge'), 2)((), map{\"duplicates\":\"use-last\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-824.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:date, element()+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-825'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'put'), 3))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-825.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-826'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'put'), 3)(map{}, \"foo\", 1 to 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-826.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_count(Res, "1") of 
      true -> {comment, "Count correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(*)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"map(xs:string, xs:integer+)") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-827'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'remove'), 2))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-827.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-828'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'remove'), 2)(map{},1)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-828.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"map:size($result) eq 0") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-829'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "exists(function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'size'), 1))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-829.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-function-lookup-830'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "function-lookup(fn:QName('http://www.w3.org/2005/xpath-functions/map', 'size'), 1)(map{})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-function-lookup-830.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:integer") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.