-module('op_NOTATION_equal_SUITE').
-include_lib("common_test/include/ct.hrl").
-compile({nowarn_unused_function,[environment/2]}).
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Comp-notation-1'/1]).
-export(['Comp-notation-2'/1]).
-export(['Comp-notation-3'/1]).
-export(['Comp-notation-4'/1]).
-export(['Comp-notation-5'/1]).
-export(['Comp-notation-6'/1]).
-export(['Comp-notation-7'/1]).
-export(['Comp-notation-8'/1]).
-export(['Comp-notation-9'/1]).
-export(['Comp-notation-10'/1]).
-export(['Comp-notation-11'/1]).
-export(['Comp-notation-12'/1]).
-export(['Comp-notation-13'/1]).
-export(['Comp-notation-14'/1]).
-export(['Comp-notation-15'/1]).
-export(['Comp-notation-16'/1]).
-export(['Comp-notation-17'/1]).
-export(['Comp-notation-18'/1]).
-export(['Comp-notation-19'/1]).
-export(['Comp-notation-20'/1]).
-export(['Comp-notation-21'/1]).
-export(['Comp-notation-22'/1]).
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
   __BaseDir = filename:join(TD, "op"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Comp-notation-1', 
'Comp-notation-2', 
'Comp-notation-3', 
'Comp-notation-4', 
'Comp-notation-5', 
'Comp-notation-6', 
'Comp-notation-7', 
'Comp-notation-8', 
'Comp-notation-9', 
'Comp-notation-10', 
'Comp-notation-11', 
'Comp-notation-12', 
'Comp-notation-13', 
'Comp-notation-14', 
'Comp-notation-15', 
'Comp-notation-16', 
'Comp-notation-17', 
'Comp-notation-18', 
'Comp-notation-19', 
'Comp-notation-20', 
'Comp-notation-21', 
'Comp-notation-22'
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
]; 
environment('notation',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "NOTATION-equal/notation.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "NOTATION-equal/notationschema.xsd"),"http://www.example.com/notation"}]}, 
{resources, []}, 
{modules, []}
].
'Comp-notation-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}. 
'Comp-notation-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"Validation Environment"}.