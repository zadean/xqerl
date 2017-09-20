-module('misc_Serialization_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['K2-Serialization-1'/1]).
-export(['K2-Serialization-2'/1]).
-export(['K2-Serialization-3'/1]).
-export(['K2-Serialization-4'/1]).
-export(['K2-Serialization-5'/1]).
-export(['K2-Serialization-6'/1]).
-export(['K2-Serialization-7'/1]).
-export(['K2-Serialization-7a'/1]).
-export(['K2-Serialization-8'/1]).
-export(['K2-Serialization-8a'/1]).
-export(['K2-Serialization-9'/1]).
-export(['K2-Serialization-10'/1]).
-export(['K2-Serialization-11'/1]).
-export(['K2-Serialization-12'/1]).
-export(['Serialization-html-1'/1]).
-export(['Serialization-html-2'/1]).
-export(['Serialization-html-3'/1]).
-export(['Serialization-html-4'/1]).
-export(['Serialization-html-5'/1]).
-export(['Serialization-html-6'/1]).
-export(['Serialization-html-7'/1]).
-export(['Serialization-html-8'/1]).
-export(['Serialization-html-9'/1]).
-export(['Serialization-html-10'/1]).
-export(['Serialization-html-11'/1]).
-export(['Serialization-html-12'/1]).
-export(['Serialization-html-13'/1]).
-export(['Serialization-html-14'/1]).
-export(['Serialization-html-15'/1]).
-export(['Serialization-html-16'/1]).
-export(['Serialization-html-17'/1]).
-export(['Serialization-html-18'/1]).
-export(['Serialization-html-19a'/1]).
-export(['Serialization-html-19b'/1]).
-export(['Serialization-html-19c'/1]).
-export(['Serialization-html-20'/1]).
-export(['Serialization-html-21'/1]).
-export(['Serialization-html-22'/1]).
-export(['Serialization-html-23'/1]).
-export(['Serialization-html-24'/1]).
-export(['Serialization-html-25'/1]).
-export(['Serialization-html-26'/1]).
-export(['Serialization-html-27'/1]).
-export(['Serialization-html-28'/1]).
-export(['Serialization-html-29'/1]).
-export(['Serialization-html-30'/1]).
-export(['Serialization-html-31'/1]).
-export(['Serialization-html-32'/1]).
-export(['Serialization-html-33'/1]).
-export(['Serialization-html-34'/1]).
-export(['Serialization-html-35'/1]).
-export(['Serialization-html-36'/1]).
-export(['Serialization-html-37'/1]).
-export(['Serialization-html-38'/1]).
-export(['Serialization-html-39'/1]).
-export(['Serialization-html-40'/1]).
-export(['Serialization-html-41'/1]).
-export(['Serialization-html-42'/1]).
-export(['Serialization-html-43'/1]).
-export(['Serialization-html-44'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'K2-Serialization-1',
   'K2-Serialization-2',
   'K2-Serialization-3',
   'K2-Serialization-4',
   'K2-Serialization-5',
   'K2-Serialization-6',
   'K2-Serialization-7',
   'K2-Serialization-7a',
   'K2-Serialization-8',
   'K2-Serialization-8a',
   'K2-Serialization-9',
   'K2-Serialization-10',
   'K2-Serialization-11',
   'K2-Serialization-12',
   'Serialization-html-1',
   'Serialization-html-2',
   'Serialization-html-3',
   'Serialization-html-4',
   'Serialization-html-5',
   'Serialization-html-6',
   'Serialization-html-7',
   'Serialization-html-8',
   'Serialization-html-9',
   'Serialization-html-10',
   'Serialization-html-11',
   'Serialization-html-12',
   'Serialization-html-13',
   'Serialization-html-14',
   'Serialization-html-15',
   'Serialization-html-16',
   'Serialization-html-17',
   'Serialization-html-18',
   'Serialization-html-19a',
   'Serialization-html-19b',
   'Serialization-html-19c',
   'Serialization-html-20',
   'Serialization-html-21',
   'Serialization-html-22',
   'Serialization-html-23',
   'Serialization-html-24',
   'Serialization-html-25',
   'Serialization-html-26',
   'Serialization-html-27',
   'Serialization-html-28',
   'Serialization-html-29',
   'Serialization-html-30',
   'Serialization-html-31',
   'Serialization-html-32',
   'Serialization-html-33',
   'Serialization-html-34',
   'Serialization-html-35',
   'Serialization-html-36',
   'Serialization-html-37',
   'Serialization-html-38',
   'Serialization-html-39',
   'Serialization-html-40',
   'Serialization-html-41',
   'Serialization-html-42',
   'Serialization-html-43',
   'Serialization-html-44'].
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
'K2-Serialization-1'(_Config) ->
   Qry = "attribute name {<anElement/>}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SENR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SENR0001'}) end.
'K2-Serialization-2'(_Config) ->
   Qry = "<e/>, attribute name {<anElement/>}",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SENR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SENR0001'}) end.
'K2-Serialization-3'(_Config) ->
   Qry = "attribute name {<anElement/>}, <e/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SENR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SENR0001'}) end.
'K2-Serialization-4'(_Config) ->
   Qry = "<e/>, attribute name {<anElement/>}, <e/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "SENR0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'SENR0001'}) end.
'K2-Serialization-5'(_Config) ->
   Qry = "<a>&#xD;&#x85;&#x2028;</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           &#xD;&#x85;&#x2028;
           &#13;&#133;&#8232;
         
      ",
 case (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#xD;&amp;#x85;&amp;#x2028;</serialization-matches>", Res])) orelse (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#13;&amp;#133;&amp;#8232;</serialization-matches>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Serialization-6'(_Config) ->
   Qry = "<a attr=\"&#xD;&#xA;&#x9;&#x85;&#x2028;\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           &#xD;&#xA;&#x9;&#x85;&#x2028;
           &#13;&#10;&#9;&#133;&#8232;
           
      ",
 case (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#xD;&amp;#xA;&amp;#x9;&amp;#x85;&amp;#x2028;</serialization-matches>", Res])) orelse (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#13;&amp;#10;&amp;#9;&amp;#133;&amp;#8232;</serialization-matches>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Serialization-7'(_Config) ->
   {skip,"XML 1.1"}.
'K2-Serialization-7a'(_Config) ->
   Qry = "<a>{codepoints-to-string(1 to 31)}</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
         
      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Serialization-8'(_Config) ->
   {skip,"XML 1.1"}.
'K2-Serialization-8a'(_Config) ->
   Qry = "<a attr=\"{codepoints-to-string(1 to 31)}\"></a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCH0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCH0001'}) end.
'K2-Serialization-9'(_Config) ->
   Qry = "<a attr=\"{codepoints-to-string(127 to 159)}\"/>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           &#x7f;&#x80;&#x81;&#x82;&#x83;&#x84;&#x85;&#x86;&#x87;&#x88;&#x89;&#x8a;&#x8b;&#x8c;&#x8d;&#x8e;&#x8f;&#x90;&#x91;&#x92;&#x93;&#x94;&#x95;&#x96;&#x97;&#x98;&#x99;&#x9a;&#x9b;&#x9c;&#x9d;&#x9e;&#x9f;         
           &#127;&#128;&#129;&#130;&#131;&#132;&#133;&#134;&#135;&#136;&#137;&#138;&#139;&#140;&#141;&#142;&#143;&#144;&#145;&#146;&#147;&#148;&#149;&#150;&#151;&#152;&#153;&#154;&#155;&#156;&#157;&#158;&#159;
         
      ",
 case (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#x7f;&amp;#x80;&amp;#x81;&amp;#x82;&amp;#x83;&amp;#x84;&amp;#x85;&amp;#x86;&amp;#x87;&amp;#x88;&amp;#x89;&amp;#x8a;&amp;#x8b;&amp;#x8c;&amp;#x8d;&amp;#x8e;&amp;#x8f;&amp;#x90;&amp;#x91;&amp;#x92;&amp;#x93;&amp;#x94;&amp;#x95;&amp;#x96;&amp;#x97;&amp;#x98;&amp;#x99;&amp;#x9a;&amp;#x9b;&amp;#x9c;&amp;#x9d;&amp;#x9e;&amp;#x9f;</serialization-matches>", Res])) orelse (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#127;&amp;#128;&amp;#129;&amp;#130;&amp;#131;&amp;#132;&amp;#133;&amp;#134;&amp;#135;&amp;#136;&amp;#137;&amp;#138;&amp;#139;&amp;#140;&amp;#141;&amp;#142;&amp;#143;&amp;#144;&amp;#145;&amp;#146;&amp;#147;&amp;#148;&amp;#149;&amp;#150;&amp;#151;&amp;#152;&amp;#153;&amp;#154;&amp;#155;&amp;#156;&amp;#157;&amp;#158;&amp;#159;</serialization-matches>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Serialization-10'(_Config) ->
   Qry = "<a>{codepoints-to-string(127 to 159)}</a>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
           &#x7f;&#x80;&#x81;&#x82;&#x83;&#x84;&#x85;&#x86;&#x87;&#x88;&#x89;&#x8a;&#x8b;&#x8c;&#x8d;&#x8e;&#x8f;&#x90;&#x91;&#x92;&#x93;&#x94;&#x95;&#x96;&#x97;&#x98;&#x99;&#x9a;&#x9b;&#x9c;&#x9d;&#x9e;&#x9f;         
           &#127;&#128;&#129;&#130;&#131;&#132;&#133;&#134;&#135;&#136;&#137;&#138;&#139;&#140;&#141;&#142;&#143;&#144;&#145;&#146;&#147;&#148;&#149;&#150;&#151;&#152;&#153;&#154;&#155;&#156;&#157;&#158;&#159;
         
      ",
 case (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\" flags=\"i\">&amp;#x7f;&amp;#x80;&amp;#x81;&amp;#x82;&amp;#x83;&amp;#x84;&amp;#x85;&amp;#x86;&amp;#x87;&amp;#x88;&amp;#x89;&amp;#x8a;&amp;#x8b;&amp;#x8c;&amp;#x8d;&amp;#x8e;&amp;#x8f;&amp;#x90;&amp;#x91;&amp;#x92;&amp;#x93;&amp;#x94;&amp;#x95;&amp;#x96;&amp;#x97;&amp;#x98;&amp;#x99;&amp;#x9a;&amp;#x9b;&amp;#x9c;&amp;#x9d;&amp;#x9e;&amp;#x9f;</serialization-matches>", Res])) orelse (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&amp;#127;&amp;#128;&amp;#129;&amp;#130;&amp;#131;&amp;#132;&amp;#133;&amp;#134;&amp;#135;&amp;#136;&amp;#137;&amp;#138;&amp;#139;&amp;#140;&amp;#141;&amp;#142;&amp;#143;&amp;#144;&amp;#145;&amp;#146;&amp;#147;&amp;#148;&amp;#149;&amp;#150;&amp;#151;&amp;#152;&amp;#153;&amp;#154;&amp;#155;&amp;#156;&amp;#157;&amp;#158;&amp;#159;</serialization-matches>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K2-Serialization-11'(_Config) ->
   Qry = "\"a&#xD;aa&#xD;&#xA;a&#xD;&#xA;\"",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         
            
              a&#xD;aa&#xD;
              a&#13;aa&#13;
            
            \\r?\\n.*\\r?\\n
            
         
      ",
 case    ct:fail(["<any-of xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">
              <serialization-matches flags=\"i\">a&amp;#xD;aa&amp;#xD;</serialization-matches>
              <serialization-matches>a&amp;#13;aa&amp;#13;</serialization-matches>
            </any-of>", Res]) andalso    ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">\\r?\\n.*\\r?\\n</serialization-matches>", Res]) of true -> {comment, "any-of"};
   _ -> ct:fail(['all-of', {Res,Exp}]) end.
'K2-Serialization-12'(_Config) ->
   Qry = "<e> <a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/> <b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/> </e>",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
         <e><a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/><b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/></e>
      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<e><a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/><b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/></e>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<e><a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/><b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/></e>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'Serialization-html-1'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-2'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-3'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-4'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-5'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-6'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-7'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-8'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-9'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-10'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-11'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-12'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-13'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-14'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-15'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-16'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-17'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-18'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-19a'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-19b'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-19c'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-20'(_Config) ->
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"html\";
declare option output:indent  \"no\";
declare option output:version  \"4.0\";

<html/>
",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
          <html/>
          <html></html>
        
      ",
 case (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&lt;html/&gt;</serialization-matches>", Res])) orelse (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&lt;html&gt;&lt;/html&gt;</serialization-matches>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Serialization-html-21'(_Config) ->
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"html\";
declare option output:indent  \"no\";
declare option output:version  \"5.0\";

<html/>
",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
          <html/>
          <html></html>
        
      ",
 case (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&lt;html/&gt;</serialization-matches>", Res])) orelse (   ct:fail(["<serialization-matches xmlns=\"http://www.w3.org/2010/09/qt-fots-catalog\">&lt;html&gt;&lt;/html&gt;</serialization-matches>", Res])) of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'Serialization-html-22'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-23'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-24'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-25'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-26'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-27'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-28'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-29'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-30'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-31'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-32'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-33'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-34'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-35'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-36'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-37'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-38'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-39'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-40'(_Config) ->
   {skip,"serialization"}.
'Serialization-html-41'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-42'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-43'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'Serialization-html-44'(_Config) ->
   Qry = " () ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "
        
      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
