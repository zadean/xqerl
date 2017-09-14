(: declare boundary-space preserve; :)
declare option db:chop 'false';
declare option output:indent "no";
declare option output:cdata-section-elements "Q{http://www.w3.org/2010/09/qt-fots-catalog}test
                                              Q{http://www.w3.org/2010/09/qt-fots-catalog}result
                                              Q{http://www.w3.org/2010/09/qt-fots-catalog}assert-string-value";
(: declare option output:encoding "ASCII"; :)
(: declare option output:method "text"; :)
(: declare option output:normalization-form "none"; :)

declare function local:print-result-as-true($parts)
{
  for $part at $i in $parts
  let $name := local-name($part)
  order by $name
  return
  if ($name = "assert-count") then
    "xqerl_seq2:size(Res) == "||$part/text()
  else if ($name = "assert-empty") then
    "case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> true; _ -> false end"
  else if ($name = "error") then
  (
    if ($part/@code eq "*") then
    "is_tuple(Res) andalso element(1,Res) == 'xqError'"
    else
    "is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == """||$part/@code||""""
  )
  else if ($name = "assert-true") then
    "xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}"
  else if ($name = "assert-false") then
    "xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}"
  else if ($name = "assert-string-value") then
  (
    if ($part/@normalize-space = "true") then
    "xqerl_types:string_value(Res) == "||local:dec(normalize-space($part/text()))
    else
    "xqerl_types:string_value(Res) == "||local:dec($part/text())
  )
  else if ($name = "assert-eq") then
" begin Tst"||$i||" = xqerl:run("||local:dec($part/data())||"),
  ResVal"||$i||" = xqerl_types:value(Res),
  TstVal"||$i||" = xqerl_types:value(Tst"||$i||"),
  ResVal"||$i||" == TstVal"||$i||" end"
  else if ($name = "assert-xml" and $part/@file) then
    "xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> ""deep-equal(<x></x>""; P"||$i||" -> ""deep-equal(<x>""++P"||$i||"++""</x>"" end ++ "" , "" ++ ""<x>"" ++ "||
      local:dec(file:read-text(substring-after(resolve-uri($part/@file, base-uri($part)),"file:///")))
    ||"++ ""</x>)"" )) == ""true"" orelse ResXml == Exp"
  else if ($name = "assert-xml") then
    "xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> ""deep-equal(<x></x>""; P"||$i||" -> ""deep-equal(<x>""++P"||$i||"++""</x>"" end ++ "" , "" ++ ""<x>"" ++ "||
      local:dec($part/data())
    ||"++ ""</x>)"" )) == ""true"" orelse ResXml == Exp"
  else if ($name = "assert-type") then
    "xqerl_types:type(Res) == '"||replace($part/data(),"\(\)","")||"'"

  else if ($name = "assert") then
    "   (xqerl_seq2:singleton_value(xqerl:run(""declare variable $result external;""++"||
    local:dec($part/data())|| ",Options)) == {xqAtomicValue,'xs:boolean',true})"
  else (: TODO :)
    ("   ct:fail(["||local:dec(fn:serialize($part))||", Res])") (: => trace() :)  
};


declare function local:print-result($result)
{
  (: assert-count :)
  if ($result/*:assert-count) then
    "   case xqerl_seq2:size(Res) of "||$result/*:assert-count||" -> {comment, ""Count correct""};
           Q -> ct:fail({Res,Exp,Q}) end"
  else if ($result/*:assert-empty) then
    "   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, ""Is empty""};
           Q -> ct:fail({Res,Exp,Q}) end"
  else if ($result/*:all-of) then (: TODO :)
    " case "||string-join(local:print-result-as-true($result/*:all-of/*)," andalso ")||" of true -> {comment, ""any-of""};
   _ -> ct:fail(['all-of', {Res,Exp}]) end"
  else if ($result/*:any-of) then (: TODO :)
    " case ("||string-join(local:print-result-as-true($result/*:any-of/*),") orelse (")||") of true -> {comment, ""any-of""};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end"
  else if ($result/*:error) then
    (if ($result/*:error/@code eq "*") then
    "   if is_tuple(Res) andalso element(1,Res) == 'xqError'"
    else
    "   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == """||$result/*:error/@code||"""")
    ||" -> {comment, ""Correct error""};
           true -> ct:fail({Res, '"||$result/*:error/@code||"'}) end"
  else if ($result/*:assert-true) then
    "   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, ""assert-true""};
           _ -> ct:fail({Res,Exp}) end"
  else if ($result/*:assert-false) then
    "   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, ""assert-false""};
           _ -> ct:fail({Res,Exp}) end"
  else if ($result/*:assert-string-value) then
    if ($result/*:assert-string-value/@normalize-space="true") then
      "   case xqerl_types:string_value(Res) of
             "||local:dec(normalize-space($result/*:assert-string-value/text()))||
             " -> {comment, ""assert-string-value""};
             _ -> ct:fail({Res,Exp}) end"
    else
     (: trace($result) || :)
      "   case xqerl_types:string_value(Res) of
             "||local:dec($result/*:assert-string-value/text())||
             " -> {comment, ""assert-string-value""};
             _ -> ct:fail({xqerl_types:string_value(Res),Exp}) end"
  else if ($result/*:assert-eq) then
" Tst = xqerl:run("||local:dec($result/*:assert-eq/data())||"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, ""assert-eq""};
    true -> ct:fail({Res,Exp}) end"
  else if ($result/*:assert-deep-eq) then
" Tst = xqerl:run("||local:dec($result/*:assert-deep-eq/data())||"),
  ResVal = xqerl_types:string_value(Res),
  TstVal = xqerl_types:string_value(Tst),
  if ResVal == TstVal -> {comment, ""assert-deep-eq""};
    true -> ct:fail({Res,Exp}) end"
  else if ($result/*:assert-xml and $result/*:assert-xml/@file) then
    "   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> ""deep-equal(<x></x>""; P -> ""deep-equal(<x>""++P++""</x>"" end ++ "" , "" ++ ""<x>""++"
    ||local:dec(file:read-text(substring-after(resolve-uri($result/*:assert-xml/@file, base-uri($result)),"file:///")))||
    "++""</x>)"")) of ""true"" -> {comment, ""assert-xml""};
           _ -> 
              case ResXml == Exp of
                 true -> {comment, ""assert-xml""};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end"
    (: "lists:flatten(xqerl_node:to_xml(Res)) == "||
      local:dec(file:read-text(substring-after(resolve-uri($result/*:assert-xml/@file, base-uri($result)),"file:///")))
    ||"" :)
  else if ($result/*:assert-xml) then
    "   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> ""deep-equal(<x></x>""; P -> ""deep-equal(<x>""++P++""</x>"" end ++ "" , "" ++ ""<x>""++"||
    local:dec($result/*:assert-xml/data())
    ||"++""</x>)"")) == ""true"" of
           true -> {comment, ""assert-xml""};
           _ -> 
              case ResXml == "||local:dec($result/*:assert-xml/data())||" of
                 true -> {comment, ""assert-xml""};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end"
  else if ($result/*:assert-type) then
    "   case xqerl_types:type(Res) of
           '"||replace($result/*:assert-type/data(),"\(\)","")||"' -> {comment, ""assert-type""};
           _ -> ct:fail({Res,Exp}) end"
  else if ($result/*:assert) then
  "   case (xqerl_seq2:singleton_value(xqerl:run(""declare variable $result external;"""||
  local:dec($result/*:assert/data())|| ",Options)) == {xqAtomicValue,'xs:boolean',true}) of
           true -> {comment, ""assert""};
           _ -> ct:fail({Res,Exp}) 
           end"
  else (: TODO :)
    ("   ct:fail(["||local:dec(fn:serialize($result))||", Res])") (: => trace() :)
};

declare function local:print-testcase($test-case)
{
  (: $test-case/../*:environment[*:source[@validation]]/@name :)
  let $inscope-schema-envs := 
    ($test-case/../*:environment[*:source[@validation]]/@name union 
     doc("catalog.xml")/*:catalog/*:environment[*:source[@validation]]/@name)
  let $name := $test-case/@name
  let $deps := $test-case/*:dependency | $test-case/../*:dependency (: < type="feature" value="schemaImport"/> :)
  let $env  := $test-case/*:environment/@ref/string()
  return
  "'"||$name||"'(_Config) ->"||out:nl()||
  (
    (: Collation environments :)
    if ($test-case/*:environment/*:collation) then 
    "   {skip,""Collation Environment""}" (: => trace() :)
    (: validation environments :)
    else if ($env = $inscope-schema-envs) then 
    "   {skip,""Validation Environment""}" (: => trace() :)
    (: features :)
    (: else if ($deps[@type = "feature" and @value = "higherOrderFunctions"]) then 
    "   {skip,""higherOrderFunctions""}" :)
    (: else if ($deps[@type = "feature" and @value = "moduleImport"]) then 
    "   {skip,""moduleImport""}" :)
    else if ($deps[@type = "feature" and @value = "schemaValidation"]) then 
    "   {skip,""schemaValidation""}"
    else if ($deps[@type = "feature" and @value = "schemaImport"]) then
    "   {skip,""schemaImport""}"
    else if ($deps[@type = "feature" and @value = "schemaAware"]) then 
    "   {skip,""schemaAware""}"
    else if ($deps[@type = "feature" and @value = "xpath-1.0-compatibility"]) then 
    "   {skip,""xpath-1.0-compatibility""}"
    (: else if ($deps[@type = "feature" and @value = "namespace-axis"]) then 
    "   {skip,""namespace-axis""}" :)
    else if ($deps[@type = "feature" and @value = "serialization"]) then 
    "   {skip,""serialization""}"
    (: else if ($deps[@type = "feature" and @value = "infoset-dtd"]) then 
    "   {skip,""infoset-dtd""}" :)
    else if ($deps[@type = "feature" and @value = "collection-stability"]) then 
    "   {skip,""collection-stability""}"
    else if ($deps[@type = "feature" and @value = "directory-as-collection-uri"]) then 
    "   {skip,""directory-as-collection-uri""}"
    (: else if ($deps[@type = "feature" and @value = "staticTyping"]) then 
    "   {skip,""staticTyping""}" :)
    else if ($deps[@type = "feature" and @value = "typedData"]) then 
    "   {skip,""typedData""}"
    else if ($deps[@type = "feature" and @value = "schema-location-hint"]) then 
    "   {skip,""schema-location-hint""}"    
    (: older specs :)
    else if ($deps[@type = "spec" and @value = "XP10 XQ10"]) then
    "   {skip,""XP10 XQ10""}"
    else if ($deps[@type = "spec" and @value = "XP20"]) then
    "   {skip,""XP20""}"
    else if ($deps[@type = "spec" and @value = "XP20 XQ10"]) then
    "   {skip,""XP20 XQ10""}"
    else if ($deps[@type = "spec" and @value = "XQ10"]) then
    "   {skip,""XQ10""}"
    else if ($deps[@type = "spec" and @value = "XQ10 XP20"]) then
    "   {skip,""XQ10 XP20""}"
    else if ($deps[@type = "spec" and @value = "XP20+"]) then
    "   {skip,""XP20+""}"
    else if ($deps[@type = "spec" and @value = "XP30+"]) then
    "   {skip,""XP30+""}"
    (: added znd :)
    else if ($deps[@type = "problem"]) then
    "   {skip,"" "||$deps[@type = "problem"]/@value||" ""}"
    (: XSD 1.1 stuff :) 
    (: else if ($deps[@type = "xsd-version" and @value = "1.1"]) then
    "   {skip,""XSD 1.1""}" :)
    else if ($deps[@type = "xsd-version" and @value = "1.0"]) then
    "   {skip,""XSD 1.0""}"
    (: XML 1.1 stuff :) 
    else if ($deps[@type = "xml-version" and @value = "1.1"]) then
    "   {skip,""XML 1.1""}"
    (: else if ($deps[@type = "xml-version" and @value = "1.0"]) then
    "   {skip,""XML 1.0""}" :)
    else
    "   Qry = "||
    (
      if ($test-case/*:test/@file) then
        local:dec(file:read-text(substring-after(resolve-uri($test-case/*:test/@file, base-uri($test-case)),"file:///"),"utf-8",true()))
      else
        local:dec($test-case/*:test/text())
   )
    ||","||out:nl()||
    (
      if ($test-case/*:environment[@name or @ref]) then
        "   Env = xqerl_test:handle_environment(environment('"||$env||"')),"||out:nl()||
        "   Qry1 = lists:flatten(Env ++ Qry),"||out:nl()
      else if ($test-case/*:environment) then
        "   Env = xqerl_test:handle_environment("||
        string-join(local:print-local-environment($test-case))
        ||"),"||out:nl()||
        "   Qry1 = lists:flatten(Env ++ Qry),"||out:nl()
      else
        "   Qry1 = Qry,"||out:nl()
    )||
    "   Res = xqerl:run(Qry1),"||out:nl()||
    "   ResXml = xqerl_node:to_xml(Res),"||out:nl()||
    "   Options = [{'result',Res}],"||out:nl()||
    "   Exp = "||local:dec($test-case/*:result/data())||","||out:nl()||
    local:print-result($test-case/*:result)
  )
};

declare function local:print-environment($env)
{
  let $name            := $env/@name
  let $sources         := $env/*:source
  let $schemas         := $env/*:schema
  let $collections     := $env/*:collection
  let $static-base-uri := $env/*:static-base-uri
  let $params          := $env/*:param
  let $namespaces      := $env/*:namespace
  let $resources       := $env/*:resource
  let $modules         := $env/*:module | $env/../*:module
  
  return 
  "environment('"||$name||"') ->" || out:nl() ||
  "["||
  "{sources, ["||
  (
    for $res in $sources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@role||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{schemas, ["||
  (
    for $res in $schemas
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{collections, ["||
  (
    for $res in $collections
    return
    "{"""||$res/@uri||""",["||(
      for $s in $res/*:source
      return
      """"||resolve-uri($s/@file, base-uri($s)) ||""""
    ) => string-join(","||out:nl())
    ||"]}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{'static-base-uri', ["||
  (
    for $res in $static-base-uri
    return
    "{"""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{params, ["||
  (
    for $res in $params
    return
    "{"""||$res/@name||""","""||$res/@as||""","""||$res/@select||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{namespaces, ["||
  (
    for $res in $namespaces
    return
    "{"""||$res/@uri||""","""||$res/@prefix||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{resources, ["||
  (
    for $res in $resources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]}," || out:nl() ||
  "{modules, ["||
  (
    for $res in $modules
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]}" || out:nl() ||
  "]"
};

declare function local:print-local-environment($env as item()*) as item()*
{
  let $sources         := $env/*:environment/*:source
  let $schemas         := $env/*:environment/*:schema
  let $collections     := $env/*:environment/*:collection 
  let $static-base-uri := $env/*:environment/*:static-base-uri 
  let $params          := $env/*:environment/*:param 
  let $namespaces      := $env/*:environment/*:namespace 
  let $resources       := $env/*:environment/*:resource 
  let $modules         := $env/*:environment/*:module | $env/*:module
  
  return (
  "["||
  "{sources, ["||
  (
    for $res in $sources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@role||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl()) 
  ||"]},"|| out:nl() ||
  "{schemas, ["||
  (
    for $res in $schemas
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{collections, ["||
  (
    for $res in $collections
    return
    "{"""||$res/@uri||""",["||(
      for $s in $res/*:source
      return
      """"||resolve-uri($s/@file, base-uri($s)) ||""""
    ) => string-join(","||out:nl())
    ||"]}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{'static-base-uri', ["||
  (
    for $res in $static-base-uri
    return
    "{"""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{params, ["||
  (
    for $res in $params
    return
    "{"""||$res/@name||""","""||$res/@as||""","""||$res/@select||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{namespaces, ["||
  (
    for $res in $namespaces
    return
    "{"""||$res/@uri||""","""||$res/@prefix||"""}"
  ) => string-join(","||out:nl())
  ||"]},"|| out:nl() ||
  "{resources, ["||
  (
    for $res in $resources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]}," || out:nl() ||
  "{modules, ["||
  (
    for $res in $modules
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||out:nl())
  ||"]}" || out:nl() ||
  "]")
};

declare function local:dec($text)
{
  let $cp := $text => string-to-codepoints()
  return
  if ( some $c in $cp satisfies ($c > 255  ) ) then
    let $list := $text
    let $cp2 := $list => string-to-codepoints()
    return 
    "["||string-join($cp2,",")||"]"
  else
  (
    let $list := replace(replace(replace($text,'\\','\\\\'), """","\\"""),"&#xD;&#xA;","&#xA;")
    return """"||$list||""""
  )
};

(: Erlang SUITE :)
(
let $doc := doc("catalog.xml")
let $globalEnvs := $doc/*:catalog/*:environment
for $ts in$doc/*:catalog/*:test-set(: [@name = "app-FunctxFunctx"] :)
let $file := resolve-uri($ts/@file, base-uri($ts)) 
let $case := doc($file)
let $name := $ts/@name
let $usname := replace(replace($name,'-','_'),'\.','_')
let $mod := "-module('"||$usname||"_SUITE')."||out:nl()
||"-include_lib(""common_test/include/ct.hrl"")."||out:nl()
||"-export([all/0])."||out:nl()
||"-export([suite/0])."||out:nl()
||"-export([init_per_suite/1])."||out:nl()
||"-export([end_per_suite/1])."||out:nl()
(: exports :)
|| string-join(
  (
    for $tc in $case/*:test-set/*:test-case
    return
    "-export(['"||$tc/@name||"'/1])."
  )
  ,out:nl())
||out:nl()
(: suite :)
||"suite() ->[{timetrap,{seconds,5}}]."
||out:nl()
(: end_per_suite(Config) :)
||"end_per_suite(_Config) -> erlang:erase()."
||out:nl()
(: init_per_suite(Config) :)
||"init_per_suite(Config) -> ok"
||out:nl()
||( for $res in $case//*:module
return
", try  xqerl:compile("""||substring-after(resolve-uri($res/@file, base-uri($res)),"file:///") ||""") catch _:_ -> ok end" ) => distinct-values() => string-join(out:nl())
||",Config."
||out:nl()
(: all :)
||"all() -> ["
||out:nl()
|| string-join(
  (
    for $tc in $case/*:test-set/*:test-case
    return
    "   '"||$tc/@name||"'"
  )
  ,","||out:nl())
|| "]."
||out:nl()
(: environments :)
|| string-join(
  for $env in $case/*:test-set/*:environment union $globalEnvs
  return local:print-environment($env)
  ,";"||out:nl())
|| "."
||out:nl()
(: test cases :)
|| string-join(
  for $tc in $case/*:test-set/*:test-case
  return local:print-testcase($tc)
  ,"."||out:nl())
||"."
||out:nl()
return
file:write-text("/git/zadean/xqerl/test/"||$usname||"_SUITE.erl", $mod, "utf-8")
)

