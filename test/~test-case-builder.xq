declare option db:chop 'false';
declare option output:indent "no";
declare option output:cdata-section-elements "Q{http://www.w3.org/2010/09/qt-fots-catalog}test
                                              Q{http://www.w3.org/2010/09/qt-fots-catalog}result
                                              Q{http://www.w3.org/2010/09/qt-fots-catalog}assert-string-value";

declare variable $git-root as xs:string := "/git/zadean/";

declare function local:print-result($result)
{
  let $name := local-name($result)
  return
  if ($name = "all-of") then 
    "   case lists:all(fun({comment,_}) -> true; (_) -> false end, ["||'&#10;'|| 
    (for $t in $result/*
     return local:print-result($t)) => string-join(',&#10;')||"]) of "||'&#10;'|| 
    "      true -> {comment, ""all-of""};" ||'&#10;'|| 
    "      _ -> false " ||'&#10;'|| 
    "   end"
     
  else if ($name = "any-of") then 
    "   case lists:any(fun({comment,_}) -> true; (_) -> false end, ["||'&#10;'|| 
    (for $t in $result/*
     return local:print-result($t)) => string-join(',&#10;')||"]) of "||'&#10;'|| 
    "      true -> {comment, ""any-of""};" ||'&#10;'|| 
    "      _ -> false " ||'&#10;'|| 
    "   end"

  else if ($name = "assert-empty") then
    "   case xqerl_test:assert_empty(Res) of " ||'&#10;'|| 
    "      true -> {comment, ""Empty""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-true") then
    "   case xqerl_test:assert_true(Res) of " ||'&#10;'|| 
    "      true -> {comment, ""True""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-false") then
    "   case xqerl_test:assert_false(Res) of " ||'&#10;'|| 
    "      true -> {comment, ""False""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-count") then
    let $ec := """"||$result||""""
    return
    "   case xqerl_test:assert_count(Res, "||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Count correct""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-string-value") then
    if ($result/@normalize-space="true") then
      let $ec := local:mask-string(normalize-space($result/text()))
      return
      "   case xqerl_test:assert_norm_string_value(Res, "||$ec||") of " ||'&#10;'|| 
      "      true -> {comment, ""String correct""};" ||'&#10;'|| 
      "      {false, F} -> F " ||'&#10;'|| 
      "   end"
    else
      let $ec := local:mask-string($result/text())
      return
      "   case xqerl_test:assert_string_value(Res, "||$ec||") of " ||'&#10;'|| 
      "      true -> {comment, ""String correct""};" ||'&#10;'|| 
      "      {false, F} -> F " ||'&#10;'|| 
      "   end"
  else if ($name = "assert-serialization-error") then
    let $ec := """"||$result/@code||""""
    return
    "   case xqerl_test:assert_error(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Correct error""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "error") then
    let $ec := """"||$result/@code||""""
    return
    "   case xqerl_test:assert_error(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Correct error""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-eq") then
    let $ec := local:mask-string($result/data())
    return
    "   case xqerl_test:assert_eq(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Equal""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-type") then
    let $ec := local:mask-string($result/data())
    return
    "   case xqerl_test:assert_type(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Correct type""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert") then
    let $ec := local:mask-string($result/data())
    return
    "   case xqerl_test:assert(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Correct results""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-permutation") then
    let $ec := local:mask-string($result/data())
    return
    "   case xqerl_test:assert_permutation(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Correct permutation""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-deep-eq") then
    let $ec := local:mask-string($result/data())
    return
    "   case xqerl_test:assert_deep_eq(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""Deep equal""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else if ($name = "assert-xml") then
    let $ec := if ($result/@file) then
                local:mask-string(
                  file:read-text(
                    substring-after(
                      resolve-uri($result/@file, base-uri($result)),
                      "file:///")))
               else
                 local:mask-string($result/data())
    return
    "   case xqerl_test:assert_xml(Res,"||$ec||") of " ||'&#10;'|| 
    "      true -> {comment, ""XML Deep equal""};" ||'&#10;'|| 
    "      {false, F} -> F " ||'&#10;'|| 
    "   end"
  else (: TODO :)
    ("   ct:fail(["||local:mask-string(fn:serialize($result))||", Res])") (: => trace() :)
};

declare function local:print-testcase($test-case)
{
  (: $test-case/../*:environment[*:source[@validation]]/@name :)
  let $inscope-schema-envs := 
    ($test-case/../*:environment[*:source[@validation]]/@name union 
     doc($git-root||"xquery-3.1/QT3-test-suite/catalog.xml")/*:catalog/*:environment[*:source[@validation]]/@name)
  let $name := $test-case/@name
  let $deps := $test-case/*:dependency | $test-case/../*:dependency (: < type="feature" value="schemaImport"/> :)
  let $env  := $test-case/*:environment/(@ref|@name)/string()
  return
  "'"||$name||"'(_Config) ->"||'&#10;'||
  (
    (: Collation environments :)
    (: if ($test-case/*:environment/*:collation) then 
    "   {skip,""Collation Environment""}" (: => trace() :) :)
    (: validation environments :)
    if ($env = $inscope-schema-envs) then 
    "   {skip,""Validation Environment""}" (: => trace() :)
    else if ($test-case/*:environment/*:schema) then 
    "   {skip,""Validation Environment""}" (: => trace() :)
    
    (: features :)
    (: else if ($deps[@type = "feature" and @value = "higherOrderFunctions"]) then 
    "   {skip,""higherOrderFunctions""}" :)
    (: else if ($deps[@type = "feature" and @value = "moduleImport"]) then 
    "   {skip,""moduleImport""}" :)
    else if ($deps[@type = "feature" and @value = "fn-load-xquery-module" and @satisfied = "true" ]) then
    "   {skip,""load-xquery-module""}"
    else if ($deps[@type = "feature" and @value = "fn-transform-XSLT" and @satisfied = "true" ]) then
    "   {skip,""fn-transform-XSLT""}"
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
    else if (starts-with($test-case/../@name,"method-")) then 
    "   {skip,""serialization feature""}"
    else if ($test-case/../@name = "fn-serialize") then 
    "   {skip,""serialization feature""}"
    (: else if ($deps[@type = "feature" and @value = "infoset-dtd"]) then 
    "   {skip,""infoset-dtd""}" :)
    else if ($deps[@type = "feature" and @value = "collection-stability"]) then 
    "   {skip,""collection-stability""}"
    else if ($deps[@type = "feature" and @value = "directory-as-collection-uri"]) then 
    "   {skip,""directory-as-collection-uri""}"
    else if ($deps[@type = "feature" and @value = "non_unicode_codepoint_collation"]) then 
    "   {skip,""non_unicode_codepoint_collation""}"
    else if ($deps[@type = "feature" and @value = "advanced-uca-fallback"]) then 
    "   {skip,""advanced-uca-fallback""}"
    (: else if ($deps[@type = "feature" and @value = "staticTyping"]) then 
    "   {skip,""staticTyping""}" :)
    else if ($deps[@type = "feature" and @value = "typedData"]) then 
    "   {skip,""typedData""}"
    else if ($deps[@type = "feature" and @value = "schema-location-hint"]) then 
    "   {skip,""schema-location-hint""}"    

    (: older specs :)
    else if ($deps[@type = "spec" and @value = "XP10 XQ10"]) then
    "   {skip,""XP10 XQ10""}"
    else if ($deps[@type = "spec" and @value = "XP20 XP30 XQ10 XQ30"]) then
    "   {skip,""XP20 XP30 XQ10 XQ30""}"
    else if ($deps[@type = "spec" and @value = "XQ10 XP20 XQ30 XP30"]) then
    "   {skip,""XQ10 XP20 XQ30 XP30""}"
    else if ($deps[@type = "spec" and @value = "XP20 XQ10 XP30 XQ30"]) then
    "   {skip,""XP20 XQ10 XP30 XQ30""}"
    else if ($deps[@type = "spec" and @value = "XQ10 XQ30"]) then
    "   {skip,""XQ10 XQ30""}"
    else if ($deps[@type = "spec" and @value = "XQ30"]) then
    "   {skip,""XQ30""}"
    else if ($deps[@type = "spec" and @value = "XQ30 XP30"]) then
    "   {skip,""XQ30 XP30""}"
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

    else if ($deps[@type = "default-language" and @value = "fr-CA"]) then
    "   {skip,""default-language fr-CA""}"
    else if ($deps[@type = "unicode-normalization-form" and @value = "FULLY-NORMALIZED"
                   and not(exists(@satisfied)) ]) then
    "   {skip,""unicode-normalization-form FULLY-NORMALIZED""}"

    (: added znd :)
    else if ($deps[@type = "problem"]) then
    "   {skip,"" "||$deps[@type = "problem"]/@value||" ""}"
    (: XSD 1.1 stuff :) 
    (: fn-matches.re :)
    else if ($deps[@type = "xsd-version" and @value = "1.1"] and 
                   $test-case/../@name != ("fn-matches", "fn-matches.re")) then
    "   {skip,""XSD 1.1""}"
    else if ($deps[@type = "xsd-version" and @value = "1.0"] and 
                   $test-case/../@name = ("fn-matches", "fn-matches.re")) then
    "   {skip,""XSD 1.0 regex""}"
    (: XML 1.1 stuff :) 
    else if ($deps[@type = "xml-version" and @value = "1.1"]) then
    "   {skip,""XML 1.1""}"
    else
    "   Qry = "||
    (
      if ($test-case/*:test/@file) then
        local:mask-string(file:read-text(substring-after(resolve-uri($test-case/*:test/@file, base-uri($test-case)),"file:///"),"utf-8",true()))
      else
        local:mask-string($test-case/*:test/text())
   )
    ||","||'&#10;'||
    (
      if ($test-case/*:environment[@name or @ref]) then
        "   Env = xqerl_test:handle_environment(environment('"||$env||"')),"||'&#10;'||
        "   Qry1 = lists:flatten(Env ++ Qry),"||'&#10;'
      else if ($test-case/*:environment) then
        "   Env = xqerl_test:handle_environment("||
        string-join(local:print-local-environment($test-case))
        ||"),"||'&#10;'||
        "   Qry1 = lists:flatten(Env ++ Qry),"||'&#10;'
      else
        "   Qry1 = Qry,"||'&#10;'
    )||
    "   io:format(""Qry1: ~p~n"",[Qry1]),"||'&#10;'||
    "   Res = try xqerl:run(Qry1) of D -> D catch _:E -> E end,"||'&#10;'||
    "   Out = " || local:print-result($test-case/*:result/*) ||', &#10;'||
    "   case Out of"||'&#10;'||
    "      {comment, C} -> {comment, C};"||'&#10;'||
    "      Err -> ct:fail(Err)"||'&#10;'||
    "   end"
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
  let $dec-formats     := $env/*:decimal-format
  return 
  "environment('"||$name||"') ->" || '&#10;' ||
  "["||
  "{'decimal-formats', ["||
  (
    for $res in $dec-formats
    return
    "{"""||$res/@name ||""",["||
           (for $a in $res/@*[name(.) != "name"]
           return
           "{'"||name($a)||"',"||local:mask-string($a)||"}"
           ) => string-join(","||'&#10;')
              ||"]}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{sources, ["||
  (
    for $res in $sources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@role||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{schemas, ["||
  (
    for $res in $schemas
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{collections, ["||
  (
    for $res in $collections
    return
    "{"""||$res/@uri||""",["||(
      for $s in $res/*:source
      return
      """"||resolve-uri($s/@file, base-uri($s)) ||""""
    ) => string-join(","||'&#10;')
    ||"]}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{'static-base-uri', ["||
  (
    for $res allowing empty in $static-base-uri
    return
    if (not(empty($res))) then
    "{"""||$res/@uri||"""}"
    else
    "{"""||base-uri($env)||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{params, ["||
  (
    for $res in $params
    return
    "{"""||$res/@name||""","""||$res/@as||""","""||$res/@select||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{namespaces, ["||
  (
    for $res in $namespaces
    return
    "{"""||$res/@uri||""","""||$res/@prefix||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{resources, ["||
  (
    for $res in $resources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]}," || '&#10;' ||
  "{modules, ["||
  (
    for $res in $modules
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]}" || '&#10;' ||
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
  let $dec-formats     := $env/*:environment/*:decimal-format

  return (
  "["||
  "{'decimal-formats', ["||
  (
    for $res in $dec-formats
    return
    "{"""|| (let $q := fn:resolve-QName($res/@name,$res)
             return
             if (namespace-uri-from-QName($q) = 'http://www.w3.org/2010/09/qt-fots-catalog') then
               $res/@name
             else if (not(exists($res/@name))) then
               ""
             else
              ("Q{"||namespace-uri-from-QName($q)||"}" || local-name-from-QName($q))
            )              
     ||""",["||
           (for $a in $res/@*[name(.) != "name"]
           return
           "{'"||name($a)||"',"||local:mask-string($a)||"}"
           ) => string-join(","||'&#10;')
              ||"]}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{sources, ["||
  (
    for $res in $sources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@role||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;') 
  ||"]},"|| '&#10;' ||
  "{schemas, ["||
  (
    for $res in $schemas
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{collections, ["||
  (
    for $res in $collections
    return
    "{"""||$res/@uri||""",["||(
      for $s in $res/*:source
      return
      """"||resolve-uri($s/@file, base-uri($s)) ||""""
    ) => string-join(","||'&#10;')
    ||"]}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{'static-base-uri', ["||
  (
    for $res in $static-base-uri
    return
    "{"""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{params, ["||
  (
    for $res in $params
    return
    "{"""||$res/@name||""","""||$res/@as||""","""||$res/@select||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{namespaces, ["||
  (
    for $res in $namespaces
    return
    "{"""||$res/@uri||""","""||$res/@prefix||"""}"
  ) => string-join(","||'&#10;')
  ||"]},"|| '&#10;' ||
  "{resources, ["||
  (
    for $res in $resources
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]}," || '&#10;' ||
  "{modules, ["||
  (
    for $res in $modules
    return
    "{"""||resolve-uri($res/@file, base-uri($res)) ||""","""||$res/@uri||"""}"
  ) => string-join(","||'&#10;')
  ||"]}" || '&#10;' ||
  "]")
};

declare function local:mask-string($text)
{
  (
    let $list := 
      replace(
        replace(
          $text,
          '\\','\\\\'),
        """","\\""")
    return """"||$list||""""
  )
};

(: Erlang SUITE :)
(
let $doc := doc($git-root||"xquery-3.1/QT3-test-suite/catalog.xml")
let $globalEnvs := $doc/*:catalog/*:environment
for $ts in$doc/*:catalog/*:test-set(: [@name = "prod-AxisStep.abbr"] :)
let $file := resolve-uri($ts/@file, base-uri($ts)) 
let $case := doc($file)
let $name := $ts/@name
let $usname := replace(replace($name,'-','_'),'\.','_')
let $mod := "-module('"||$usname||"_SUITE')."||'&#10;'
||"-include_lib(""common_test/include/ct.hrl"")."||'&#10;'
||"-export([all/0])."||'&#10;'
||"-export([suite/0])."||'&#10;'
||"-export([init_per_suite/1])."||'&#10;'
||"-export([end_per_suite/1])."||'&#10;'
(: exports :)
|| string-join(
  (
    for $tc in $case/*:test-set/*:test-case
    return
    "-export(['"||$tc/@name||"'/1])."
  )
  ,'&#10;')
||'&#10;'
(: suite :)
||"suite() ->[{timetrap,{seconds,5}}]."
||'&#10;'
(: end_per_suite(Config) :)
||"end_per_suite(_Config) -> erlang:erase()."
||'&#10;'
(: init_per_suite(Config) :)
||"init_per_suite(Config) -> ok"
||'&#10;'
||( for $res in $case//*:module
return
", try  xqerl:compile("""||substring-after(resolve-uri($res/@file, base-uri($res)),"file:///") ||""") catch _:_ -> ok end" ) => distinct-values() => string-join('&#10;')
||",Config."
||'&#10;'
(: all :)
||"all() -> ["
||'&#10;'
|| string-join(
  (
    for $tc in $case/*:test-set/*:test-case
    return
    "   '"||$tc/@name||"'"
  )
  ,","||'&#10;')
|| "]."
||'&#10;'
(: environments :)
|| string-join(
  for $env in $case/*:test-set/*:environment union $globalEnvs
  return local:print-environment($env)
  ,";"||'&#10;')
|| "."
||'&#10;'
(: test cases :)
|| string-join(
  for $tc in $case/*:test-set/*:test-case
  return local:print-testcase($tc)
  ,"."||'&#10;')
||"."
||'&#10;'
return
file:write-text($git-root||"xqerl/test/"||$usname||"_SUITE.erl", $mod, "utf-8")
)

