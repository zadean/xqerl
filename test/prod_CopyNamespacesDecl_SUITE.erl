-module('prod_CopyNamespacesDecl_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['copynamespace-1'/1]).
-export(['copynamespace-2'/1]).
-export(['copynamespace-3'/1]).
-export(['copynamespace-4'/1]).
-export(['copynamespace-5'/1]).
-export(['copynamespace-6'/1]).
-export(['copynamespace-7'/1]).
-export(['copynamespace-8'/1]).
-export(['copynamespace-9'/1]).
-export(['copynamespace-10'/1]).
-export(['copynamespace-11'/1]).
-export(['copynamespace-12'/1]).
-export(['copynamespace-13'/1]).
-export(['copynamespace-14'/1]).
-export(['copynamespace-15'/1]).
-export(['copynamespace-16'/1]).
-export(['copynamespace-17'/1]).
-export(['copynamespace-18'/1]).
-export(['copynamespace-19'/1]).
-export(['copynamespace-20'/1]).
-export(['copynamespace-21'/1]).
-export(['copynamespace-22'/1]).
-export(['K-CopyNamespacesProlog-1'/1]).
-export(['K-CopyNamespacesProlog-2'/1]).
-export(['K-CopyNamespacesProlog-3'/1]).
-export(['K-CopyNamespacesProlog-4'/1]).
-export(['K-CopyNamespacesProlog-5'/1]).
-export(['K2-CopyNamespacesProlog-1'/1]).
-export(['K2-CopyNamespacesProlog-2'/1]).
-export(['K2-CopyNamespacesProlog-3'/1]).
-export(['K2-CopyNamespacesProlog-4'/1]).
-export(['K2-CopyNamespacesProlog-5'/1]).
-export(['K2-CopyNamespacesProlog-6'/1]).
-export(['K2-CopyNamespacesProlog-7'/1]).
-export(['K2-CopyNamespacesProlog-8'/1]).
-export(['K2-CopyNamespacesProlog-9'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'copynamespace-1',
   'copynamespace-2',
   'copynamespace-3',
   'copynamespace-4',
   'copynamespace-5',
   'copynamespace-6',
   'copynamespace-7',
   'copynamespace-8',
   'copynamespace-9',
   'copynamespace-10',
   'copynamespace-11',
   'copynamespace-12',
   'copynamespace-13',
   'copynamespace-14',
   'copynamespace-15',
   'copynamespace-16',
   'copynamespace-17',
   'copynamespace-18',
   'copynamespace-19',
   'copynamespace-20',
   'copynamespace-21',
   'copynamespace-22',
   'K-CopyNamespacesProlog-1',
   'K-CopyNamespacesProlog-2',
   'K-CopyNamespacesProlog-3',
   'K-CopyNamespacesProlog-4',
   'K-CopyNamespacesProlog-5',
   'K2-CopyNamespacesProlog-1',
   'K2-CopyNamespacesProlog-2',
   'K2-CopyNamespacesProlog-3',
   'K2-CopyNamespacesProlog-4',
   'K2-CopyNamespacesProlog-5',
   'K2-CopyNamespacesProlog-6',
   'K2-CopyNamespacesProlog-7',
   'K2-CopyNamespacesProlog-8',
   'K2-CopyNamespacesProlog-9'].
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
'copynamespace-1'(_Config) ->
   Qry = "declare copy-namespaces preserve, no-inherit; declare copy-namespaces no-preserve, no-inherit; declare variable $input-context1 external; \"aaa\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0055" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0055'}) end.
'copynamespace-2'(_Config) ->
   Qry = "declare copy-namespaces preserve,no-inherit; declare default element namespace \"http://example.org/names\"; declare variable $input-context1 external; let $new := <newElement xmlns = \"http://www.example.com/mynamespace\">{element original {\"Original Content\"}}</newElement> return $new//*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <original xmlns=\"http://www.example.com/mynamespace\">Original Content</original>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<original xmlns=\"http://www.example.com/mynamespace\">Original Content</original>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<original xmlns=\"http://www.example.com/mynamespace\">Original Content</original>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'copynamespace-3'(_Config) ->
   Qry = "
        declare namespace foo = \"http://example.org\"; 
        declare copy-namespaces preserve,no-inherit; 
        let $existingElement := <existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement> 
        let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> 
        return in-scope-prefixes(exactly-one($new/child::node()))
      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         \"\", \"xml\"
      ",
   ct:fail(["<result xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
         <assert-permutation>\"\", \"xml\"</assert-permutation>
      </result>", Res]).
'copynamespace-4'(_Config) ->
   Qry = "declare namespace foo = \"http://example.org\"; declare copy-namespaces preserve,inherit; declare variable $input-context1 external; let $existingElement := <existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement> let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> for $var in (in-scope-prefixes($new//child::*)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          foo xml
      ",
   case xqerl_types:string_value(Res) of
             " foo xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-5'(_Config) ->
   Qry = "declare namespace foo = \"http://example.org\"; declare copy-namespaces preserve,no-inherit; declare variable $input-context1 external; let $existingElement := <foo:existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</foo:existingElement> let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> for $var in (in-scope-prefixes($new//child::*)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          foo xml
      ",
   case xqerl_types:string_value(Res) of
             " foo xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-6'(_Config) ->
   Qry = "declare namespace foo = \"http://example.org\"; declare copy-namespaces preserve,inherit; declare variable $input-context1 external; let $existingElement := <foo:existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</foo:existingElement> let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> for $var in (in-scope-prefixes($new//child::*)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
          foo xml
      ",
   case xqerl_types:string_value(Res) of
             " foo xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-7'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,no-inherit; declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var )ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml
      ",
   case xqerl_types:string_value(Res) of
             "xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-8'(_Config) ->
   Qry = "declare copy-namespaces preserve,no-inherit; declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         existingNamespace xml
      ",
   case xqerl_types:string_value(Res) of
             "existingNamespace xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-9'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,inherit; declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns:newNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         newNamespace xml
      ",
   case xqerl_types:string_value(Res) of
             "newNamespace xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-10'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns:newNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         existingNamespace newNamespace xml
      ",
   case xqerl_types:string_value(Res) of
             "existingNamespace newNamespace xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-11'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns:existingNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         existingNamespace xml
      ",
   case xqerl_types:string_value(Res) of
             "existingNamespace xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-12'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns:newNamespace = \"http://www.existingnamespace.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         existingNamespace newNamespace xml
      ",
   case xqerl_types:string_value(Res) of
             "existingNamespace newNamespace xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-13'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $existingElement := <existingElement>{\"Existing Content\"}</existingElement>; declare variable $new := <newElement>{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes(exactly-one($new/existingElement))) return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml
      ",
   case xqerl_types:string_value(Res) of
             "xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-14'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $existingElement := <existingElement xmlns:somespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; declare variable $new := <newElement xmlns:SOMESPACE=\"http://www.another.com\">{$existingElement}</newElement>; declare variable $input-context1 external; for $var in (in-scope-prefixes($new/existingElement)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         SOMESPACE somespace xml
      ",
   case xqerl_types:string_value(Res) of
             "SOMESPACE somespace xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-15'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2/element1)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace1 namespace2 namespace3 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace1 namespace2 namespace3 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-16'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2/element1)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace3 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace3 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-17'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,no-inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2/element1)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml
      ",
   case xqerl_types:string_value(Res) of
             "xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-18'(_Config) ->
   Qry = "declare copy-namespaces preserve,no-inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2/element1)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace1 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace1 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-19'(_Config) ->
   Qry = "declare copy-namespaces preserve,inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace2 namespace3 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace2 namespace3 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-20'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace3 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace3 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-21'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,no-inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         xml
      ",
   case xqerl_types:string_value(Res) of
             "xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'copynamespace-22'(_Config) ->
   Qry = "declare copy-namespaces preserve,no-inherit; declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; declare variable $input-context1 external; for $var in (in-scope-prefixes($element3/element2)) order by exactly-one($var) ascending return $var",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace2 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace2 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K-CopyNamespacesProlog-1'(_Config) ->
   Qry = "declare copy-namespaces preserve, no-inherit; declare copy-namespaces no-preserve, no-inherit; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQST0055" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQST0055'}) end.
'K-CopyNamespacesProlog-2'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, no-inherit; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CopyNamespacesProlog-3'(_Config) ->
   Qry = "declare copy-namespaces preserve, inherit; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-CopyNamespacesProlog-4'(_Config) ->
   Qry = "declare copy-namespaces no-inherit, no-preserve; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K-CopyNamespacesProlog-5'(_Config) ->
   Qry = "declare copy-namespaces inherit, preserve; 1 eq 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0003'}) end.
'K2-CopyNamespacesProlog-1'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, inherit; <doc> <a>{<b xmlns:p=\"http://example.com/\"/>}</a> <a><b xmlns:p=\"http://example.com/\"/></a> </doc>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <doc><a><b/></a><a><b xmlns:p=\"http://example.com/\"/></a></doc>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<doc><a><b/></a><a><b xmlns:p=\"http://example.com/\"/></a></doc>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<doc><a><b/></a><a><b xmlns:p=\"http://example.com/\"/></a></doc>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-CopyNamespacesProlog-2'(_Config) ->
   Qry = "copy-namespaces lt copy-namespaces",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-CopyNamespacesProlog-3'(_Config) ->
   Qry = "namespace lt namespace",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'K2-CopyNamespacesProlog-4'(_Config) ->
   Qry = "declare copy-namespaces preserve, no-inherit; <e xmlns=\"http://example.com/\"> { <b/> } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e xmlns=\"http://example.com/\"><b/></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns=\"http://example.com/\"><b/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns=\"http://example.com/\"><b/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-CopyNamespacesProlog-5'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, no-inherit; <e xmlns:appearsUnused=\"http://example.com/\"> { <b> <appearsUnused:c/> </b> } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e xmlns:appearsUnused=\"http://example.com/\"><b><appearsUnused:c xmlns:appearsUnused=\"http://example.com/\"/></b></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e xmlns:appearsUnused=\"http://example.com/\"><b><appearsUnused:c xmlns:appearsUnused=\"http://example.com/\"/></b></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e xmlns:appearsUnused=\"http://example.com/\"><b><appearsUnused:c xmlns:appearsUnused=\"http://example.com/\"/></b></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-CopyNamespacesProlog-6'(_Config) ->
   Qry = "declare namespace ns = \"http://example.com/\"; <e xmlns:appearsUnused=\"http://example.com/\"> { <b> <appearsUnused:c/> </b> } </e>/(for $n in (., b, b/ns:c), $i in in-scope-prefixes($n) order by $i return ($i, '|'))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         appearsUnused | appearsUnused | appearsUnused | xml | xml | xml |
      ",
   case xqerl_types:string_value(Res) of
             "appearsUnused | appearsUnused | appearsUnused | xml | xml | xml |" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
'K2-CopyNamespacesProlog-7'(_Config) ->
   Qry = "declare copy-namespaces no-preserve, no-inherit; <e> { <b> <c xmlns:unused=\"http://example.com\"/> </b> } </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e><b><c/></b></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><b><c/></b></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><b><c/></b></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-CopyNamespacesProlog-8'(_Config) ->
   Qry = "declare copy-namespaces no-preserve,inherit; <a> { <b>{()}</b> } </a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <a><b/></a>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "deep-equal(<x></x>"; P -> "deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<a><b/></a>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<a><b/></a>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'K2-CopyNamespacesProlog-9'(_Config) ->
   Qry = "declare copy-namespaces preserve, no-inherit; declare variable $e1 := <e1 xmlns:namespace1=\"http://www.namespace1.com\"/>; declare variable $e2 := <e2 xmlns:namespace2=\"http://www.namespace2.com\">{$e1}</e2>; for $n in <e3 xmlns:namespace3=\"http://www.namespace3.com\">{$e2}</e3>/e2/e1, $ps in in-scope-prefixes($n) order by $ps return $ps, '|', for $n in <e3 xmlns:namespace3=\"http://www.namespace3.com\">{<e2 xmlns:namespace2=\"http://www.namespace2.com\">{<e1 xmlns:namespace1=\"http://www.namespace1.com\"/>}</e2>}</e3>/e2/e1, $ps in in-scope-prefixes($n) order by $ps return $ps",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         namespace1 xml | namespace1 namespace2 namespace3 xml
      ",
   case xqerl_types:string_value(Res) of
             "namespace1 xml | namespace1 namespace2 namespace3 xml" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end.
