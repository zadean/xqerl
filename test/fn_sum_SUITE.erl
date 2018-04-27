-module('fn_sum_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['fn-sumint1args-1'/1]).
-export(['fn-sumint1args-2'/1]).
-export(['fn-sumint1args-3'/1]).
-export(['fn-sumintg1args-1'/1]).
-export(['fn-sumintg1args-2'/1]).
-export(['fn-sumintg1args-3'/1]).
-export(['fn-sumdec1args-1'/1]).
-export(['fn-sumdec1args-2'/1]).
-export(['fn-sumdec1args-3'/1]).
-export(['fn-sumdbl1args-1'/1]).
-export(['fn-sumdbl1args-2'/1]).
-export(['fn-sumdbl1args-3'/1]).
-export(['fn-sumflt1args-1'/1]).
-export(['fn-sumflt1args-2'/1]).
-export(['fn-sumflt1args-3'/1]).
-export(['fn-sumlng1args-1'/1]).
-export(['fn-sumlng1args-2'/1]).
-export(['fn-sumlng1args-3'/1]).
-export(['fn-sumusht1args-1'/1]).
-export(['fn-sumusht1args-2'/1]).
-export(['fn-sumusht1args-3'/1]).
-export(['fn-sumnint1args-1'/1]).
-export(['fn-sumnint1args-2'/1]).
-export(['fn-sumnint1args-3'/1]).
-export(['fn-sumpint1args-1'/1]).
-export(['fn-sumpint1args-2'/1]).
-export(['fn-sumpint1args-3'/1]).
-export(['fn-sumulng1args-1'/1]).
-export(['fn-sumulng1args-2'/1]).
-export(['fn-sumulng1args-3'/1]).
-export(['fn-sumnpi1args-1'/1]).
-export(['fn-sumnpi1args-2'/1]).
-export(['fn-sumnpi1args-3'/1]).
-export(['fn-sumnni1args-1'/1]).
-export(['fn-sumnni1args-2'/1]).
-export(['fn-sumnni1args-3'/1]).
-export(['fn-sumsht1args-1'/1]).
-export(['fn-sumsht1args-2'/1]).
-export(['fn-sumsht1args-3'/1]).
-export(['fn-sumint2args-1'/1]).
-export(['fn-sumint2args-2'/1]).
-export(['fn-sumint2args-3'/1]).
-export(['fn-sumint2args-4'/1]).
-export(['fn-sumintg2args-1'/1]).
-export(['fn-sumintg2args-2'/1]).
-export(['fn-sumintg2args-3'/1]).
-export(['fn-sumintg2args-4'/1]).
-export(['fn-sumdec2args-1'/1]).
-export(['fn-sumdec2args-2'/1]).
-export(['fn-sumdec2args-3'/1]).
-export(['fn-sumdec2args-4'/1]).
-export(['fn-sumdbl2args-1'/1]).
-export(['fn-sumdbl2args-2'/1]).
-export(['fn-sumdbl2args-3'/1]).
-export(['fn-sumdbl2args-4'/1]).
-export(['fn-sumflt2args-1'/1]).
-export(['fn-sumflt2args-2'/1]).
-export(['fn-sumflt2args-3'/1]).
-export(['fn-sumflt2args-4'/1]).
-export(['fn-sumlng2args-1'/1]).
-export(['fn-sumlng2args-2'/1]).
-export(['fn-sumlng2args-3'/1]).
-export(['fn-sumlng2args-4'/1]).
-export(['fn-sumusht2args-1'/1]).
-export(['fn-sumusht2args-2'/1]).
-export(['fn-sumusht2args-3'/1]).
-export(['fn-sumusht2args-4'/1]).
-export(['fn-sumusht2args-5'/1]).
-export(['fn-sumnint2args-1'/1]).
-export(['fn-sumnint2args-2'/1]).
-export(['fn-sumnint2args-3'/1]).
-export(['fn-sumnint2args-4'/1]).
-export(['fn-sumpint2args-1'/1]).
-export(['fn-sumpint2args-2'/1]).
-export(['fn-sumpint2args-3'/1]).
-export(['fn-sumpint2args-4'/1]).
-export(['fn-sumpint2args-5'/1]).
-export(['fn-sumulng2args-1'/1]).
-export(['fn-sumulng2args-2'/1]).
-export(['fn-sumulng2args-3'/1]).
-export(['fn-sumulng2args-4'/1]).
-export(['fn-sumulng2args-5'/1]).
-export(['fn-sumnpi2args-1'/1]).
-export(['fn-sumnpi2args-2'/1]).
-export(['fn-sumnpi2args-3'/1]).
-export(['fn-sumnpi2args-4'/1]).
-export(['fn-sumnni2args-1'/1]).
-export(['fn-sumnni2args-2'/1]).
-export(['fn-sumnni2args-3'/1]).
-export(['fn-sumnni2args-4'/1]).
-export(['fn-sumnni2args-5'/1]).
-export(['fn-sumsht2args-1'/1]).
-export(['fn-sumsht2args-2'/1]).
-export(['fn-sumsht2args-3'/1]).
-export(['fn-sumsht2args-4'/1]).
-export(['fn-sumint3args-1'/1]).
-export(['fn-sumint3args-2'/1]).
-export(['fn-sumint3args-3'/1]).
-export(['fn-sumint3args-4'/1]).
-export(['fn-sumintg3args-1'/1]).
-export(['fn-sumintg3args-2'/1]).
-export(['fn-sumintg3args-3'/1]).
-export(['fn-sumintg3args-4'/1]).
-export(['fn-sumdec3args-1'/1]).
-export(['fn-sumdec3args-2'/1]).
-export(['fn-sumdec3args-3'/1]).
-export(['fn-sumdec3args-4'/1]).
-export(['fn-sumdbl3args-1'/1]).
-export(['fn-sumdbl3args-2'/1]).
-export(['fn-sumdbl3args-3'/1]).
-export(['fn-sumdbl3args-4'/1]).
-export(['fn-sumdbl3args-5'/1]).
-export(['fn-sumdbl3args-6'/1]).
-export(['fn-sumflt3args-1'/1]).
-export(['fn-sumflt3args-2'/1]).
-export(['fn-sumflt3args-3'/1]).
-export(['fn-sumflt3args-4'/1]).
-export(['fn-sumflt3args-5'/1]).
-export(['fn-sumflt3args-6'/1]).
-export(['fn-sumlng3args-1'/1]).
-export(['fn-sumlng3args-2'/1]).
-export(['fn-sumlng3args-3'/1]).
-export(['fn-sumlng3args-4'/1]).
-export(['fn-sumlng3args-5'/1]).
-export(['fn-sumlng3args-6'/1]).
-export(['fn-sumusht3args-1'/1]).
-export(['fn-sumusht3args-2'/1]).
-export(['fn-sumusht3args-3'/1]).
-export(['fn-sumusht3args-4'/1]).
-export(['fn-sumusht3args-5'/1]).
-export(['fn-sumusht3args-6'/1]).
-export(['fn-sumusht3args-7'/1]).
-export(['fn-sumnint3args-1'/1]).
-export(['fn-sumnint3args-2'/1]).
-export(['fn-sumpint3args-1'/1]).
-export(['fn-sumpint3args-2'/1]).
-export(['fn-sumpint3args-3'/1]).
-export(['fn-sumpint3args-4'/1]).
-export(['fn-sumpint3args-5'/1]).
-export(['fn-sumpint3args-6'/1]).
-export(['fn-sumpint3args-7'/1]).
-export(['fn-sumulng3args-1'/1]).
-export(['fn-sumulng3args-2'/1]).
-export(['fn-sumulng3args-3'/1]).
-export(['fn-sumulng3args-4'/1]).
-export(['fn-sumulng3args-5'/1]).
-export(['fn-sumulng3args-6'/1]).
-export(['fn-sumulng3args-7'/1]).
-export(['fn-sumnpi3args-1'/1]).
-export(['fn-sumnpi3args-2'/1]).
-export(['fn-sumnpi3args-3'/1]).
-export(['fn-sumnpi3args-4'/1]).
-export(['fn-sumnpi3args-5'/1]).
-export(['fn-sumnpi3args-6'/1]).
-export(['fn-sumnni3args-1'/1]).
-export(['fn-sumnni3args-2'/1]).
-export(['fn-sumnni3args-3'/1]).
-export(['fn-sumnni3args-4'/1]).
-export(['fn-sumnni3args-5'/1]).
-export(['fn-sumnni3args-6'/1]).
-export(['fn-sumnni3args-7'/1]).
-export(['fn-sumsht3args-1'/1]).
-export(['fn-sumsht3args-2'/1]).
-export(['fn-sumsht3args-3'/1]).
-export(['fn-sumsht3args-4'/1]).
-export(['K-SeqSUMFunc-1'/1]).
-export(['K-SeqSUMFunc-2'/1]).
-export(['K-SeqSUMFunc-3'/1]).
-export(['K-SeqSUMFunc-4'/1]).
-export(['K-SeqSUMFunc-5'/1]).
-export(['K-SeqSUMFunc-6'/1]).
-export(['K-SeqSUMFunc-7'/1]).
-export(['K-SeqSUMFunc-8'/1]).
-export(['K-SeqSUMFunc-9'/1]).
-export(['K-SeqSUMFunc-10'/1]).
-export(['K-SeqSUMFunc-11'/1]).
-export(['K-SeqSUMFunc-12'/1]).
-export(['K-SeqSUMFunc-13'/1]).
-export(['K-SeqSUMFunc-14'/1]).
-export(['K-SeqSUMFunc-15'/1]).
-export(['K-SeqSUMFunc-16'/1]).
-export(['K-SeqSUMFunc-17'/1]).
-export(['K-SeqSUMFunc-18'/1]).
-export(['K-SeqSUMFunc-19'/1]).
-export(['K-SeqSUMFunc-20'/1]).
-export(['K-SeqSUMFunc-21'/1]).
-export(['K-SeqSUMFunc-22'/1]).
-export(['K-SeqSUMFunc-23'/1]).
-export(['K-SeqSUMFunc-24'/1]).
-export(['K-SeqSUMFunc-25'/1]).
-export(['K-SeqSUMFunc-26'/1]).
-export(['K-SeqSUMFunc-27'/1]).
-export(['K-SeqSUMFunc-28'/1]).
-export(['K-SeqSUMFunc-29'/1]).
-export(['K-SeqSUMFunc-30'/1]).
-export(['K-SeqSUMFunc-31'/1]).
-export(['K-SeqSUMFunc-32'/1]).
-export(['K-SeqSUMFunc-33'/1]).
-export(['K2-SeqSUMFunc-1'/1]).
-export(['K2-SeqSUMFunc-2'/1]).
-export(['K2-SeqSUMFunc-3'/1]).
-export(['K2-SeqSUMFunc-4'/1]).
-export(['fn-sum-1'/1]).
-export(['fn-sum-2'/1]).
-export(['fn-sum-3'/1]).
-export(['fn-sum-4'/1]).
-export(['fn-sum-5'/1]).
-export(['fn-sum-6'/1]).
-export(['fn-sum-7'/1]).
-export(['fn-sum-8'/1]).
-export(['fn-sum-9'/1]).
-export(['fn-sum-10'/1]).
-export(['fn-sum-11'/1]).
-export(['fn-sum-12'/1]).
-export(['fn-sum-13'/1]).
-export(['fn-sum-14'/1]).
-export(['cbcl-sum-func-001'/1]).
-export(['cbcl-sum-func-002'/1]).
-export(['cbcl-sum-func-003'/1]).
-export(['cbcl-sum-func-004'/1]).
-export(['cbcl-sum-func-005'/1]).
-export(['cbcl-sum-func-006'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   ok = application:ensure_started(mnesia),
   ok = application:ensure_started(xqerl_db),
   xqerl_module:one_time_init(), 
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'fn-sumint1args-1', 
'fn-sumint1args-2', 
'fn-sumint1args-3', 
'fn-sumintg1args-1', 
'fn-sumintg1args-2', 
'fn-sumintg1args-3', 
'fn-sumdec1args-1', 
'fn-sumdec1args-2', 
'fn-sumdec1args-3', 
'fn-sumdbl1args-1', 
'fn-sumdbl1args-2', 
'fn-sumdbl1args-3', 
'fn-sumflt1args-1', 
'fn-sumflt1args-2', 
'fn-sumflt1args-3', 
'fn-sumlng1args-1', 
'fn-sumlng1args-2', 
'fn-sumlng1args-3', 
'fn-sumusht1args-1', 
'fn-sumusht1args-2', 
'fn-sumusht1args-3', 
'fn-sumnint1args-1', 
'fn-sumnint1args-2', 
'fn-sumnint1args-3', 
'fn-sumpint1args-1', 
'fn-sumpint1args-2', 
'fn-sumpint1args-3', 
'fn-sumulng1args-1', 
'fn-sumulng1args-2', 
'fn-sumulng1args-3', 
'fn-sumnpi1args-1', 
'fn-sumnpi1args-2', 
'fn-sumnpi1args-3', 
'fn-sumnni1args-1', 
'fn-sumnni1args-2', 
'fn-sumnni1args-3', 
'fn-sumsht1args-1', 
'fn-sumsht1args-2', 
'fn-sumsht1args-3', 
'fn-sumint2args-1', 
'fn-sumint2args-2', 
'fn-sumint2args-3', 
'fn-sumint2args-4', 
'fn-sumintg2args-1', 
'fn-sumintg2args-2', 
'fn-sumintg2args-3', 
'fn-sumintg2args-4', 
'fn-sumdec2args-1', 
'fn-sumdec2args-2', 
'fn-sumdec2args-3', 
'fn-sumdec2args-4', 
'fn-sumdbl2args-1', 
'fn-sumdbl2args-2', 
'fn-sumdbl2args-3', 
'fn-sumdbl2args-4', 
'fn-sumflt2args-1', 
'fn-sumflt2args-2', 
'fn-sumflt2args-3', 
'fn-sumflt2args-4', 
'fn-sumlng2args-1', 
'fn-sumlng2args-2', 
'fn-sumlng2args-3', 
'fn-sumlng2args-4', 
'fn-sumusht2args-1', 
'fn-sumusht2args-2', 
'fn-sumusht2args-3', 
'fn-sumusht2args-4', 
'fn-sumusht2args-5', 
'fn-sumnint2args-1', 
'fn-sumnint2args-2', 
'fn-sumnint2args-3', 
'fn-sumnint2args-4', 
'fn-sumpint2args-1', 
'fn-sumpint2args-2', 
'fn-sumpint2args-3', 
'fn-sumpint2args-4', 
'fn-sumpint2args-5', 
'fn-sumulng2args-1', 
'fn-sumulng2args-2', 
'fn-sumulng2args-3', 
'fn-sumulng2args-4', 
'fn-sumulng2args-5', 
'fn-sumnpi2args-1', 
'fn-sumnpi2args-2', 
'fn-sumnpi2args-3', 
'fn-sumnpi2args-4', 
'fn-sumnni2args-1', 
'fn-sumnni2args-2', 
'fn-sumnni2args-3', 
'fn-sumnni2args-4', 
'fn-sumnni2args-5', 
'fn-sumsht2args-1', 
'fn-sumsht2args-2', 
'fn-sumsht2args-3', 
'fn-sumsht2args-4', 
'fn-sumint3args-1', 
'fn-sumint3args-2', 
'fn-sumint3args-3', 
'fn-sumint3args-4', 
'fn-sumintg3args-1', 
'fn-sumintg3args-2', 
'fn-sumintg3args-3', 
'fn-sumintg3args-4', 
'fn-sumdec3args-1', 
'fn-sumdec3args-2', 
'fn-sumdec3args-3', 
'fn-sumdec3args-4', 
'fn-sumdbl3args-1', 
'fn-sumdbl3args-2', 
'fn-sumdbl3args-3', 
'fn-sumdbl3args-4', 
'fn-sumdbl3args-5', 
'fn-sumdbl3args-6', 
'fn-sumflt3args-1', 
'fn-sumflt3args-2', 
'fn-sumflt3args-3', 
'fn-sumflt3args-4', 
'fn-sumflt3args-5', 
'fn-sumflt3args-6', 
'fn-sumlng3args-1', 
'fn-sumlng3args-2', 
'fn-sumlng3args-3', 
'fn-sumlng3args-4', 
'fn-sumlng3args-5', 
'fn-sumlng3args-6', 
'fn-sumusht3args-1', 
'fn-sumusht3args-2', 
'fn-sumusht3args-3', 
'fn-sumusht3args-4', 
'fn-sumusht3args-5', 
'fn-sumusht3args-6', 
'fn-sumusht3args-7', 
'fn-sumnint3args-1', 
'fn-sumnint3args-2', 
'fn-sumpint3args-1', 
'fn-sumpint3args-2', 
'fn-sumpint3args-3', 
'fn-sumpint3args-4', 
'fn-sumpint3args-5', 
'fn-sumpint3args-6', 
'fn-sumpint3args-7', 
'fn-sumulng3args-1', 
'fn-sumulng3args-2', 
'fn-sumulng3args-3', 
'fn-sumulng3args-4', 
'fn-sumulng3args-5', 
'fn-sumulng3args-6', 
'fn-sumulng3args-7', 
'fn-sumnpi3args-1', 
'fn-sumnpi3args-2', 
'fn-sumnpi3args-3', 
'fn-sumnpi3args-4', 
'fn-sumnpi3args-5', 
'fn-sumnpi3args-6', 
'fn-sumnni3args-1', 
'fn-sumnni3args-2', 
'fn-sumnni3args-3', 
'fn-sumnni3args-4', 
'fn-sumnni3args-5', 
'fn-sumnni3args-6', 
'fn-sumnni3args-7', 
'fn-sumsht3args-1', 
'fn-sumsht3args-2', 
'fn-sumsht3args-3', 
'fn-sumsht3args-4', 
'K-SeqSUMFunc-1', 
'K-SeqSUMFunc-2', 
'K-SeqSUMFunc-3', 
'K-SeqSUMFunc-4', 
'K-SeqSUMFunc-5', 
'K-SeqSUMFunc-6', 
'K-SeqSUMFunc-7', 
'K-SeqSUMFunc-8', 
'K-SeqSUMFunc-9', 
'K-SeqSUMFunc-10', 
'K-SeqSUMFunc-11', 
'K-SeqSUMFunc-12', 
'K-SeqSUMFunc-13', 
'K-SeqSUMFunc-14', 
'K-SeqSUMFunc-15', 
'K-SeqSUMFunc-16', 
'K-SeqSUMFunc-17', 
'K-SeqSUMFunc-18', 
'K-SeqSUMFunc-19', 
'K-SeqSUMFunc-20', 
'K-SeqSUMFunc-21', 
'K-SeqSUMFunc-22', 
'K-SeqSUMFunc-23', 
'K-SeqSUMFunc-24', 
'K-SeqSUMFunc-25', 
'K-SeqSUMFunc-26', 
'K-SeqSUMFunc-27', 
'K-SeqSUMFunc-28', 
'K-SeqSUMFunc-29', 
'K-SeqSUMFunc-30', 
'K-SeqSUMFunc-31', 
'K-SeqSUMFunc-32', 
'K-SeqSUMFunc-33', 
'K2-SeqSUMFunc-1', 
'K2-SeqSUMFunc-2', 
'K2-SeqSUMFunc-3', 
'K2-SeqSUMFunc-4', 
'fn-sum-1', 
'fn-sum-2', 
'fn-sum-3', 
'fn-sum-4', 
'fn-sum-5', 
'fn-sum-6', 
'fn-sum-7', 
'fn-sum-8', 
'fn-sum-9', 
'fn-sum-10', 
'fn-sum-11', 
'fn-sum-12', 
'fn-sum-13', 
'fn-sum-14', 
'cbcl-sum-func-001', 
'cbcl-sum-func-002', 
'cbcl-sum-func-003', 
'cbcl-sum-func-004', 
'cbcl-sum-func-005', 
'cbcl-sum-func-006'
].
environment('empty',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('atomic-xq',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/atomic.xml"), ".","http://www.w3.org/fots/docs/atomic.xml"}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/atomic.xsd"),"http://www.w3.org/XQueryTest"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/staff.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('works-and-staff',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works.xml"), "$works",[]}, 
{filename:join(__BaseDir, "../docs/staff.xml"), "$staff",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('auction',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".",[]}]}, 
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
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('qname',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/QName-source.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{schemas, [{filename:join(__BaseDir, "../docs/QName-schema.xsd"),"http://www.example.com/QNameXSD"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('math',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('array-and-map',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'fn-sumint1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-2147483648\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-1873914410\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"2147483647\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"830993497117024304\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"617375191608514839\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"-3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-47175562203048468\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"44633\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"65535\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-297014075999096793\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-297014075999096793") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"52704602390610033\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610033") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"130747108607674654\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"184467440737095516\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-475688437271870490\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"303884545991464527\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht1args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-32768\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht1args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht1args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-5324\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht1args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht1args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"32767\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht1args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-1873914410\"),xs:int(\"-273569238\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"2147483647\"),xs:int(\"-2147483648\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-273569238\"),xs:int(\"-1873914410\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-2147483648\"),xs:int(\"2147483647\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"830993497117024304\"),xs:integer(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-169006502882975695") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"830993497117024304\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-169006502882975695") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"617375191608514839\"),xs:decimal(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-382624808391485160") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"617375191608514839\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-382624808391485160") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"0\"),xs:float(\"-3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-47175562203048468\"),xs:long(\"-45058158165499290\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-45058158165499290\"),xs:long(\"-47175562203048468\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-702985924000903206\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-702985924000903206\"),xs:negativeInteger(\"-297014075999096793\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610034") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"999999999999999998\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610034") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999998\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-524311562728129509\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-524311562728129509\"),xs:nonPositiveInteger(\"-475688437271870490\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni2args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni2args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht2args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-5324\"),xs:short(\"-27444\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht2args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht2args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"32767\"),xs:short(\"-32768\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht2args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht2args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-27444\"),xs:short(\"-5324\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht2args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht2args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-32768\"),xs:short(\"32767\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht2args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-1873914410\"),xs:int(\"-273569238\"),xs:int(\"-273569238\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2421052886") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"-273569238\"),xs:int(\"-1873914410\"),xs:int(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-2147483648") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"0\"),xs:int(\"0\"),xs:int(\"-1873914410\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1873914410") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumint3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:int(\"0\"),xs:int(\"0\"),xs:int(\"2147483647\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumint3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"2147483647") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\"),xs:integer(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"0\"),xs:integer(\"0\"),xs:integer(\"830993497117024304\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"830993497117024304") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumintg3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:integer(\"-999999999999999999\"),xs:integer(\"-999999999999999999\"),xs:integer(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumintg3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\"),xs:decimal(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"0\"),xs:decimal(\"0\"),xs:decimal(\"617375191608514839\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"617375191608514839") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdec3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:decimal(\"-999999999999999999\"),xs:decimal(\"-999999999999999999\"),xs:decimal(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdec3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"0\"),xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'fn-sumdbl3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"0\"),xs:double(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"0\"),xs:double(\"0\"),xs:double(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumdbl3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:double(\"-1.7976931348623157E308\"),xs:double(\"-1.7976931348623157E308\"),xs:double(\"1.7976931348623157E308\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumdbl3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"-1.7976931348623157E308") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'fn-sumflt3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"0\"),xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'fn-sumflt3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"0\"),xs:float(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\"),xs:float(\"-3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"0\"),xs:float(\"0\"),xs:float(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumflt3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:float(\"-3.4028235E38\"),xs:float(\"-3.4028235E38\"),xs:float(\"3.4028235E38\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumflt3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "-INF") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_eq(Res,"xs:float(\"-3.4028235E38\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"FOAR0002") of 
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
'fn-sumlng3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-47175562203048468\"),xs:long(\"-45058158165499290\"),xs:long(\"-45058158165499290\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-137291878534047048") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-45058158165499290\"),xs:long(\"-47175562203048468\"),xs:long(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\"),xs:long(\"-92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"0\"),xs:long(\"0\"),xs:long(\"-47175562203048468\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-47175562203048468") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumlng3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:long(\"-92233720368547758\"),xs:long(\"-92233720368547758\"),xs:long(\"92233720368547758\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumlng3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-92233720368547758") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\"),xs:unsignedShort(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"44633\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"44633") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumusht3args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedShort(\"0\"),xs:unsignedShort(\"0\"),xs:unsignedShort(\"65535\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumusht3args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"65535") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-297014075999096793\"),xs:negativeInteger(\"-702985924000903206\"),xs:negativeInteger(\"-702985924000903206\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1702985924000903205") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnint3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:negativeInteger(\"-1\"),xs:negativeInteger(\"-999999999999999999\"),xs:negativeInteger(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnint3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"3") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610035") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"999999999999999998\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610035") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999998\"),xs:positiveInteger(\"1\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"52704602390610033\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"52704602390610035") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumpint3args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:positiveInteger(\"1\"),xs:positiveInteger(\"1\"),xs:positiveInteger(\"999999999999999998\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumpint3args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"1000000000000000000") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\"),xs:unsignedLong(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"130747108607674654\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"130747108607674654") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumulng3args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:unsignedLong(\"0\"),xs:unsignedLong(\"0\"),xs:unsignedLong(\"184467440737095516\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumulng3args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"184467440737095516") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"-524311562728129509\"),xs:nonPositiveInteger(\"-524311562728129509\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1524311562728129508") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"-999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-1999999999999999998") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-524311562728129509\"),xs:nonPositiveInteger(\"-475688437271870490\"),xs:nonPositiveInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"-999999999999999999\"),xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"-475688437271870490\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-475688437271870490") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnpi3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\"),xs:nonPositiveInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnpi3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\"),xs:nonNegativeInteger(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"303884545991464527\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"303884545991464527") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumnni3args-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"0\"),xs:nonNegativeInteger(\"999999999999999999\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumnni3args-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"999999999999999999") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht3args-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-5324\"),xs:short(\"-27444\"),xs:short(\"-27444\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht3args-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-60212") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht3args-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"-27444\"),xs:short(\"-5324\"),xs:short(\"0\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht3args-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-32768") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht3args-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"0\"),xs:short(\"0\"),xs:short(\"-5324\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht3args-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"-5324") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sumsht3args-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:sum((xs:short(\"0\"),xs:short(\"0\"),xs:short(\"32767\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sumsht3args-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"32767") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(1, 1, \"wrong param\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), 3) eq 3", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), 3) instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "empty(sum((), ()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), 0.0) instance of xs:decimal", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), 0.0) eq 0.0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(()) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(()) instance of xs:integer", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((-5, -0, -3, -6)) eq -14", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(sum((1, 2, 3, xs:float(\"NaN\")))) eq \"NaN\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(sum((1, 2, 3, xs:double(\"NaN\")))) eq \"NaN\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(sum((xs:double(\"NaN\"), 1, 2, 3))) eq \"NaN\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(sum((xs:float(\"NaN\"), 1, 2, 3))) eq \"NaN\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(sum((1, 2, xs:double(\"NaN\"), 1, 2, 3))) eq \"NaN\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "string(sum((1, 2, xs:float(\"NaN\"), 1, 2, 3))) eq \"NaN\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(xs:untypedAtomic(\"3\")) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1, 2, xs:untypedAtomic(\"3\"))) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1, 2, xs:untypedAtomic(\"3\"))) eq 6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:float(1), 2, xs:untypedAtomic(\"3\"))) eq 6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:float(1), 2, xs:untypedAtomic(\"3\"))) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(remove((1.0, xs:float(1), 2, xs:untypedAtomic(\"3\")), 1)) eq 6", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(\"a string\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(xs:anyURI(\"a string\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1, 2, 3, xs:anyURI(\"a string\"), xs:double(\"NaN\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1, 2, 3, xs:anyURI(\"a string\"), xs:double(\"NaN\")), 3)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(((),())) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(()) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((3, 4, 5)) eq 12", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:yearMonthDuration(\"P20Y\"), xs:yearMonthDuration(\"P10M\"))) eq xs:yearMonthDuration(\"P250M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:yearMonthDuration(\"P20Y\"), xs:yearMonthDuration(\"P10M\")) [. < xs:yearMonthDuration(\"P3M\")], xs:yearMonthDuration(\"P0M\")) eq xs:yearMonthDuration(\"P0M\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1 to 100)[. < 0], 0) eq 0", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-SeqSUMFunc-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:yearMonthDuration(\"P20Y\"), (3, 4, 5)))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K-SeqSUMFunc-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSUMFunc-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), ())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqSUMFunc-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSUMFunc-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:float('NaN'), 2, 3, 4, xs:double('NaN'))) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqSUMFunc-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSUMFunc-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:float('NaN'), 2, 3.3, 4, xs:double('NaN'))) instance of xs:double", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqSUMFunc-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-SeqSUMFunc-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(xs:unsignedShort(\"1\")) instance of xs:unsignedShort", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "K2-SeqSUMFunc-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:dayTimeDuration(\"P1D\"), xs:dayTimeDuration(\"PT1H\"))) instance of xs:dayTimeDuration", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), xs:dayTimeDuration(\"PT0S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(for $x in 1 to 10 return xs:dayTimeDuration(concat(\"PT\",$x,\"H\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P2DT7H") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:yearMonthDuration(\"P1Y\"), xs:yearMonthDuration(\"P1M\"))) instance of xs:yearMonthDuration", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), xs:yearMonthDuration(\"P0M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P0M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(for $x in 1 to 10 return xs:yearMonthDuration(concat(\"P\",$x,\"M\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "P4Y7M") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((xs:yearMonthDuration(\"P1Y\"), xs:dayTimeDuration(\"P1D\")))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'fn-sum-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((), xs:duration(\"P0M\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "PT0S") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(xs:duration(\"P1Y1M1D\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'fn-sum-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(xs:duration(\"P1Y1M1D\"), xs:duration(\"PT0S\"))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_error(Res,"FORG0006") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_error(Res,"XPTY0004") of 
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
'fn-sum-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum([1,2,3,4,5])", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1 to 5)[. lt year-from-date(current-date())], 17)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1 to 5)[. lt year-from-date(current-date())], \"bonkers\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"15") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'fn-sum-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1 to 5)[. gt year-from-date(current-date())], \"No data\")", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "fn-sum-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_eq(Res,"\"No data\"") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end,
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-sum-func-001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(1 to 10)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-sum-func-001.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "55") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-sum-func-002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(for $x in 1 to 10 return 5)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-sum-func-002.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "50") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-sum-func-003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        for $x in 1 to 10, $y in 1 to 10 return concat('sum(',$x,' to ',$y,') = ',sum($x to $y))
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-sum-func-003.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "sum(1 to 1) = 1 sum(1 to 2) = 3 sum(1 to 3) = 6 sum(1 to 4) = 10 sum(1 to 5) = 15 sum(1 to 6) = 21 sum(1 to 7) = 28 sum(1 to 8) = 36 sum(1 to 9) = 45 sum(1 to 10) = 55 sum(2 to 1) = 0 sum(2 to 2) = 2 sum(2 to 3) = 5 sum(2 to 4) = 9 sum(2 to 5) = 14 sum(2 to 6) = 20 sum(2 to 7) = 27 sum(2 to 8) = 35 sum(2 to 9) = 44 sum(2 to 10) = 54 sum(3 to 1) = 0 sum(3 to 2) = 0 sum(3 to 3) = 3 sum(3 to 4) = 7 sum(3 to 5) = 12 sum(3 to 6) = 18 sum(3 to 7) = 25 sum(3 to 8) = 33 sum(3 to 9) = 42 sum(3 to 10) = 52 sum(4 to 1) = 0 sum(4 to 2) = 0 sum(4 to 3) = 0 sum(4 to 4) = 4 sum(4 to 5) = 9 sum(4 to 6) = 15 sum(4 to 7) = 22 sum(4 to 8) = 30 sum(4 to 9) = 39 sum(4 to 10) = 49 sum(5 to 1) = 0 sum(5 to 2) = 0 sum(5 to 3) = 0 sum(5 to 4) = 0 sum(5 to 5) = 5 sum(5 to 6) = 11 sum(5 to 7) = 18 sum(5 to 8) = 26 sum(5 to 9) = 35 sum(5 to 10) = 45 sum(6 to 1) = 0 sum(6 to 2) = 0 sum(6 to 3) = 0 sum(6 to 4) = 0 sum(6 to 5) = 0 sum(6 to 6) = 6 sum(6 to 7) = 13 sum(6 to 8) = 21 sum(6 to 9) = 30 sum(6 to 10) = 40 sum(7 to 1) = 0 sum(7 to 2) = 0 sum(7 to 3) = 0 sum(7 to 4) = 0 sum(7 to 5) = 0 sum(7 to 6) = 0 sum(7 to 7) = 7 sum(7 to 8) = 15 sum(7 to 9) = 24 sum(7 to 10) = 34 sum(8 to 1) = 0 sum(8 to 2) = 0 sum(8 to 3) = 0 sum(8 to 4) = 0 sum(8 to 5) = 0 sum(8 to 6) = 0 sum(8 to 7) = 0 sum(8 to 8) = 8 sum(8 to 9) = 17 sum(8 to 10) = 27 sum(9 to 1) = 0 sum(9 to 2) = 0 sum(9 to 3) = 0 sum(9 to 4) = 0 sum(9 to 5) = 0 sum(9 to 6) = 0 sum(9 to 7) = 0 sum(9 to 8) = 0 sum(9 to 9) = 9 sum(9 to 10) = 19 sum(10 to 1) = 0 sum(10 to 2) = 0 sum(10 to 3) = 0 sum(10 to 4) = 0 sum(10 to 5) = 0 sum(10 to 6) = 0 sum(10 to 7) = 0 sum(10 to 8) = 0 sum(10 to 9) = 0 sum(10 to 10) = 10") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-sum-func-004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "boolean(sum((1 to 10)[. mod 2 = 0]))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-sum-func-004.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-sum-func-005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum(sum((1 to 10)[. mod 2 = 0],()))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-sum-func-005.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "30") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-sum-func-006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sum((1,exactly-one((1 to 10)[. div 2 = 2])))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, "cbcl-sum-func-006.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_string_value(Res, "5") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.