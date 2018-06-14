-module('method_text_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-text-1'/1]).
-export(['Serialization-text-2'/1]).
-export(['Serialization-text-3'/1]).
-export(['Serialization-text-4'/1]).
-export(['Serialization-text-5'/1]).
-export(['Serialization-text-6'/1]).
-export(['Serialization-text-7'/1]).
-export(['Serialization-text-7a'/1]).
-export(['Serialization-text-8'/1]).
-export(['Serialization-text-8a'/1]).
-export(['Serialization-text-9'/1]).
-export(['Serialization-text-10'/1]).
-export(['Serialization-text-11'/1]).
-export(['Serialization-text-13'/1]).
-export(['Serialization-text-14'/1]).
-export(['Serialization-text-15'/1]).
-export(['Serialization-text-16'/1]).
-export(['Serialization-text-17'/1]).
-export(['Serialization-text-18'/1]).
-export(['Serialization-text-19'/1]).
-export(['Serialization-text-20'/1]).
suite() -> [{timetrap,{seconds,5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_module:unload(all).
init_per_suite(Config) -> 
   xqerl_db:install([node()]),
   xqerl_module:one_time_init(), 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "ser"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Serialization-text-1', 
'Serialization-text-2', 
'Serialization-text-3', 
'Serialization-text-4', 
'Serialization-text-5', 
'Serialization-text-6', 
'Serialization-text-7', 
'Serialization-text-7a', 
'Serialization-text-8', 
'Serialization-text-8a', 
'Serialization-text-9', 
'Serialization-text-10', 
'Serialization-text-11', 
'Serialization-text-13', 
'Serialization-text-14', 
'Serialization-text-15', 
'Serialization-text-16', 
'Serialization-text-17', 
'Serialization-text-18', 
'Serialization-text-19', 
'Serialization-text-20'
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
'Serialization-text-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-7a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-8a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}. 
'Serialization-text-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"serialization feature"}.