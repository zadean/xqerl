declare namespace _ = "http://xqerl.org/xquery/test_cases";
declare namespace x = "http://xqerl.org/xquery";

declare variable $catalog := doc("./QT3-test-suite/catalog.xml");

declare variable $_:n := '&#10;';
declare variable $_:cn := ', &#10;';
declare variable $_:dn := '. &#10;';
declare variable $_:scn := '; &#10;';

declare function _:join-nl($strs as xs:string*) as xs:string
{ fn:string-join($strs, $_:n) };

declare function _:join-cnl($strs as xs:string*) as xs:string
{ fn:string-join($strs, $_:cn) };

declare function _:join-dnl($strs as xs:string*) as xs:string
{ fn:string-join($strs, $_:dn) };

declare function _:join-scnl($strs as xs:string*) as xs:string
{ fn:string-join($strs, $_:scn) };

declare function _:all-of($result) as xs:string
{
  "   case lists:all(fun({comment,_}) -> true; (_) -> false end, ["||$_:n|| 
  (for $t in $result/*
   return _:print-result($t)) => string-join(',&#10;')||"]) of "||$_:n|| 
  "      true -> {comment, ""all-of""};" ||$_:n|| 
  "      _ -> false " ||$_:n|| 
  "   end"
};
declare function _:any-of($result) as xs:string
{
  "   case lists:any(fun({comment,_}) -> true; (_) -> false end, ["||$_:n|| 
  (for $t in $result/*
   return _:print-result($t)) => string-join(',&#10;')||"]) of "||$_:n|| 
  "      true -> {comment, ""any-of""};" ||$_:n|| 
  "      _ -> false " ||$_:n|| 
  "   end"
};
declare function _:not($result) as xs:string
{
  "   case ("||_:print-result($result/*[1])||") of "||$_:n|| 
  "      {comment,C6} -> C6; _ -> {comment,ok}"||$_:n|| 
  "   end"
};
declare function _:assert-empty($result) as xs:string
{
  "   case xqerl_test:assert_empty(Res) of " ||$_:n|| 
  "      true -> {comment, ""Empty""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-true($result) as xs:string
{
  "   case xqerl_test:assert_true(Res) of " ||$_:n|| 
  "      true -> {comment, ""Empty""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-false($result) as xs:string
{
  "   case xqerl_test:assert_false(Res) of " ||$_:n|| 
  "      true -> {comment, ""Empty""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-count($result) as xs:string
{
  let $ec := """"||$result||""""
  return
  "   case xqerl_test:assert_count(Res, "||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Count correct""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-string-value($result) as xs:string
{
  if ($result/@normalize-space="true") then
    let $ec := _:mask-string(normalize-space($result/text()))
    return
    "   case xqerl_test:assert_norm_string_value(Res, "||$ec||") of " ||$_:n|| 
    "      true -> {comment, ""String correct""};" ||$_:n|| 
    "      {false, F} -> F " ||$_:n|| 
    "   end"
  else
    let $ec := _:mask-string($result/text())
    return
    "   case xqerl_test:assert_string_value(Res, "||$ec||") of " ||$_:n|| 
    "      true -> {comment, ""String correct""};" ||$_:n|| 
    "      {false, F} -> F " ||$_:n|| 
    "   end"
};
declare function _:error($result) as xs:string
{
  let $ec := """"||$result/@code||""""
  return
  "   case xqerl_test:assert_error(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Correct error""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-eq($result) as xs:string
{
  let $ec := _:mask-string($result/data())
  return
  "   case xqerl_test:assert_eq(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Equal""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-type($result) as xs:string
{
  let $ec := _:mask-string($result/data())
  return
  "   case xqerl_test:assert_type(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Correct type""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert($result) as xs:string
{
  let $ec := _:mask-string($result/data())
  return
  "   case xqerl_test:assert(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Correct results""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-permutation($result) as xs:string
{
  let $ec := _:mask-string($result/data())
  return
  "   case xqerl_test:assert_permutation(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Correct permutation""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-deep-eq($result) as xs:string
{
  let $ec := _:mask-string($result/data())
  return
  "   case xqerl_test:assert_deep_eq(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""Deep equal""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-xml($result) as xs:string
{
  let $ec := if ($result/@file) then
              "{file, filename:join(__BaseDir, """||string($result/@file)||""")}"
             else
               _:mask-string($result/data())
  return
  "   case xqerl_test:assert_xml(Res,"||$ec||") of " ||$_:n|| 
  "      true -> {comment, ""XML Deep equal""};" ||$_:n|| 
  "      {false, F} -> F " ||$_:n|| 
  "   end"
};
declare function _:assert-unknown($result) as xs:string
{
  "   case (catch ct:fail([" ||
  _:mask-string(fn:string($result)) ||
  ", Res])) of _ -> false end"
};

declare function _:print-result($result) as xs:string
{
  let $name := local-name($result)
  let $f := 
    if ($name = "all-of") then _:all-of#1 else
    if ($name = "any-of") then _:any-of#1 else
    if ($name = "not") then _:not#1 else
    if ($name = "assert-empty") then _:assert-empty#1 else
    if ($name = "assert-true") then _:assert-true#1 else
    if ($name = "assert-false") then _:assert-false#1 else
    if ($name = "assert-count") then _:assert-count#1 else
    if ($name = "assert-string-value") then _:assert-string-value#1 else
    if ($name = ("error","assert-serialization-error")) then _:error#1 else
    if ($name = "assert-eq") then _:assert-eq#1 else
    if ($name = "assert-type") then _:assert-type#1 else
    if ($name = "assert") then _:assert#1 else
    if ($name = "assert-permutation") then _:assert-permutation#1 else
    if ($name = "assert-deep-eq") then _:assert-deep-eq#1 else
    if ($name = "assert-xml") then _:assert-xml#1 else
    _:assert-unknown#1
  return
  $f($result)
};

declare function _:print-testcase($test-case)
{
  let $inscope-schema-envs := 
    ($test-case/../*:environment[*:source[@validation]]/@name union 
     $catalog/*:catalog/*:environment[*:source[@validation]]/@name)
    , $name := $test-case/@name
    , $deps := $test-case//*:dependency  | 
               $test-case/parent::*/*:dependency 
    , $env  := $test-case/*:environment/(@ref|@name)/string()
    , $f    := function(){ _:print-testcase2($test-case, $name, $env) }
  return
  "'"||$name||"'(Config) ->"||$_:n||
  "   __BaseDir = ?config(base_dir, Config),"||$_:n||
  (
    (: validation environments :)
    if ($env = $inscope-schema-envs) then 
    "   {skip,""Validation Environment""}"
    else if ($test-case/*:environment/*:schema) then 
    "   {skip,""Validation Environment""}"
    
    (: serialization feature :)
    else if (starts-with($test-case/../@name,"method-")) then 
    "   {skip,""serialization feature""}"
    else if ($test-case/../@name = "fn-serialize") then 
    "   {skip,""serialization feature""}"

    (: default-language :)
    else if ($deps[@type = "default-language" and @value != "en"]) then 
    "   {skip,""default-language "||$deps[@type = "default-language"]/@value||" ""}" 
    
    (: language :)
    else if ($deps[@type = "language" and @value != "en"]) then 
      "   {skip,""language "||$deps[@type = "language"]/@value||" ""}" 
    
    (: format-integer-sequence :)
    else if ($deps[@type = "format-integer-sequence" and 
                   @value = ("&#x4e00;","&#x03b1;","&#x0391;")]) then 
      "   {skip,""format-integer-sequence""}" 

    (: XSD 1.1 stuff :) 
    else if ($deps[@type = "xsd-version" and @value = "1.1"] and 
                   not($test-case/../@name = ("fn-matches", "fn-matches.re")) ) then
      "   {skip,""XSD 1.1""}"
    else if ($deps[@type = "xsd-version" and @value = "1.0"] and 
                   ($test-case/../@name = ("fn-matches", "fn-matches.re")) ) then
      "   {skip,""XSD 1.0 regex""}"

    (: unicode FULLY-NORMALIZED :) 
    else if ($deps[@type = "unicode-normalization-form" and @value = "FULLY-NORMALIZED"
                   and not(exists(@satisfied)) ]) then
      "   {skip,""unicode-normalization-form FULLY-NORMALIZED""}"

    (: added znd :)
    else if ($deps[@type = "problem"]) then
    "   {skip,"" "||$deps[@type = "problem"]/@value||" ""}"
    
    
    (: spec examples with dependencies :)
    else if ($test-case/../@name = "app-spec-examples" and 
                $test-case/@name = ('fo-test-fn-serialize-002','fo-test-fn-serialize-001')
            ) then
    "   {skip,""serialization feature""}"
    else if ($test-case/../@name = "app-spec-examples" and 
                $test-case/@name = ('fo-test-fn-id-001','fo-test-fn-id-002',
                                    'fo-test-fn-element-with-id-001','fo-test-fn-element-with-id-002',
                                    'fo-test-fn-idref-001','fo-test-fn-idref-002')
            ) then
    "   {skip,""schemaAware""}"

    (: XML version :) 
    else if ($deps[@type = "xml-version" and @value = "1.1"]) then
      "   {skip,""XML version 1.1""}"
    else if ($deps[@type = "xml-version" and @value = "1.0:4-"]) then
      "   {skip,""XML version 1.0:4-""}"
    
    (: spec :)
    else if (exists($deps[@type = "spec"])) then
      (
      let $d := $deps[@type = "spec"]
      let $v := $d/@value
      return
      if ($v = ("XQ10",
                "XQ10 XP20",
                "XP10 XQ10",
                "XP20 XP30 XQ10 XQ30",
                "XQ10 XP20 XQ30 XP30",
                "XP20 XQ10 XP30 XQ30",
                "XQ10 XQ30",
                "XQ30",
                "XQ30 XP30",
                "XP30 XQ30",
                "XP20",
                "XP20 XQ10",
                "XP20+",
                "XP30+")) then
        "   {skip,"""||$v[1]||"""}"
    
      (: features :)
      else if (exists($deps[@type = "feature"])) then 
        let $d := $deps[@type = "feature"]
        let $v := $d/@value
        return
        if ($v = ("advanced-uca-fallback",
                  "staticTyping",
                  "schemaValidation",
                  "schemaImport",
                  "schemaAware",
                  "xpath-1.0-compatibility",
                  "serialization",
                  "namespace-axis",
                  "directory-as-collection-uri",
                  "typedData",
                  "schema-location-hint",
                  "olson-timezone")) then 
          "   {skip,"""||$v[1]||"""}"
        else 
          let $s := $d/@satisfied
          return
          if ($s = "true" and 
              $v = ("fn-load-xquery-module",
                    "fn-transform-XSLT",
                    "fn-transform-XSLT30")) then
            "   {skip,"""||$v[1]||"""}"
          else
            $f()
      else
        $f()
    )
    (: features :)
    else if (exists($deps[@type = "feature"])) then 
      let $d := $deps[@type = "feature"]
      let $v := $d/@value
      return
      if ($v = ("advanced-uca-fallback",
                "staticTyping",
                "schemaValidation",
                "schemaImport",
                "schemaAware",
                "xpath-1.0-compatibility",
                "serialization",
                "namespace-axis",
                "directory-as-collection-uri",
                "typedData",
                "schema-location-hint",
                "olson-timezone")) then 
        "   {skip,"""||$v[1]||"""}"
      else 
        let $s := $d/@satisfied
        return
        if ($s = "true" and 
            $v = ("fn-load-xquery-module",
                  "fn-transform-XSLT",
                  "fn-transform-XSLT30")) then
          "   {skip,"""||$v[1]||"""}"
        else
          $f()
    else
      $f()
  )
};

declare function _:get-query($test-case) as xs:string
{
  let $test := $test-case/*:test
  return
  "   Qry = "||
  (
    if ($test/@file) then
      resolve-uri($test/@file, base-uri($test-case)) =>
      (: BaseX fallback true for invalid XML characters :)
      (: file:read-text("utf-8",true())  => :)
      file:read-text("utf-8")                        =>
      _:mask-string()
    else
      _:mask-string($test/text())
  )
};

declare function _:print-testcase2($test-case, $name, $env)
{
  _:get-query($test-case) ||$_:cn||
  (: clear the default collection for fn:collection tests :)
  (
    if ($test-case/../@name = ("fn-uri-collection",
                               "fn-collection",
                               "misc-CombinedErrorCodes")) then
      "   _ = xqldb_docstore:delete_collection([]),"||$_:n
    else
      ""
  ) ||
  (: compile any imported modules, local imports will unload these :)
  (
    if ($test-case/*:module) then
      let $f := function($a)
                {
                  "   try xqerl_module:compile(filename:join(__BaseDir, """||
                  string($a/@file)||""")) catch _:_ -> ok end" 
                }
      return
      ( reverse($test-case/*:module) ! $f(.) ) => _:join-cnl() || ', &#10;'
    else
      ""
  ) ||
  (: handle any environment :)
  (
    if ($test-case/*:environment[@name or @ref]) then
      "   {Env,Opts} = xqerl_test:handle_environment(environment('"||$env||"',__BaseDir)),"||$_:n||
      "   Qry1 = lists:flatten(Env ++ Qry),"||$_:n
    else if ($test-case/*:environment) then
      "   {Env,Opts} = xqerl_test:handle_environment("||
      string-join(_:print-local-environment($test-case))
      ||"),"||$_:n||
      "   Qry1 = lists:flatten(Env ++ Qry),"||$_:n
    else
      "   Qry1 = Qry,"||$_:n
  ) ||
  (: print final query :)
  "   io:format(""Qry1: ~p~n"",[Qry1]),"||$_:n||
  (: add options if there is an environment :)
  (
    if ($test-case/*:environment) then
      "   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, """||$name||".xq""), Qry1),&#10;"||
      "             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,"||$_:n
    else
      "   Res = try Mod = xqerl_module:compile(filename:join(__BaseDir, """||$name||".xq""), Qry1),&#10;"||
      "             xqerl:run(Mod) of D -> D catch _:E -> E end,"||$_:n
  ) ||
  "   Out = " || _:print-result($test-case/*:result/*) ||', &#10;'||
  "   case Out of"||$_:n||
  "      {comment, C} -> {comment, C};"||$_:n||
  "      Err -> ct:fail(Err)"||$_:n||
  "   end"
};

declare function _:print-environment($env,$is-local) as xs:string?
{
  let $name            := $env/@name
  let $sources         := $env/*:source
  let $schemas         := $env/*:schema
  let $collections     := $env/*:collection
  let $static-base-uri := $env/*:static-base-uri
  let $params          := $env/*:param[@declared = "true"]
  let $vars            := $env/*:param[@declared = "false" or not(exists(@declared))]
  let $namespaces      := $env/*:namespace
  let $resources       := $env/*:resource
  let $modules         := $env/*:module | $env/../*:module
  let $dec-formats     := $env/*:decimal-format
  let $def-collation   := $env/*:collation[@default = 'true']
  return 
  "environment('"||$name||"',__BaseDir) ->" || $_:n ||
  "["||
  _:do-default-collation($def-collation) ||
  "{'decimal-formats', ["|| _:do-decimal-formats($dec-formats) ||"]}"|| $_:cn ||
  "{sources, ["|| _:do-sources($sources, $is-local) ||"]}"|| $_:cn ||
  "{collections, [" || _:do-collections($collections, $is-local) ||"]}"|| $_:cn ||
  "{'static-base-uri', ["||_:do-static-base-uri($static-base-uri)||"]}"|| $_:cn ||
  "{params, ["|| _:do-name-as-select($params) ||"]}"|| $_:cn ||
  "{vars, ["|| _:do-name-as-select($vars) ||"]}"|| $_:cn ||
  "{namespaces, ["|| _:do-uri-prefix($namespaces) ||"]},"|| $_:n ||
  "{schemas, ["|| _:do-file-uri($schemas, $is-local) || "]}" || $_:cn ||
  "{resources, ["|| _:do-file-uri($resources, $is-local) || "]}" || $_:cn ||
  "{modules, ["|| _:do-file-uri($modules, $is-local) || "]}" || $_:n ||
  "]"
};

declare function _:print-local-environment($env as item()*) as item()*
{
  let $sources         := $env/*:environment/*:source
  let $schemas         := $env/*:environment/*:schema
  let $collections     := $env/*:environment/*:collection 
  let $static-base-uri := $env/*:environment/*:static-base-uri 
  let $params          := $env/*:environment/*:param[@declared = "true"]
  let $vars            := $env/*:environment/*:param[@declared = "false" or not(exists(@declared))]
  let $namespaces      := $env/*:environment/*:namespace 
  let $resources       := $env/*:environment/*:resource 
  let $modules         := $env/*:environment/*:module | $env/*:module
  let $dec-formats     := $env/*:environment/*:decimal-format
  let $def-collation   := $env/*:environment/*:collation[@default = 'true']
  let $context-item    := $env/*:environment/*:context-item

  return (
  "["||
  _:do-default-collation($def-collation) ||
  "{'decimal-formats', ["|| _:do-decimal-formats($dec-formats) ||"]}"|| $_:cn ||
  "{sources, ["|| _:do-sources($sources, true()) ||"]}"|| $_:cn ||
  "{collections, [" || _:do-collections($collections, true()) ||"]}"|| $_:cn ||
  "{'static-base-uri', ["||_:do-static-base-uri($static-base-uri)||"]}"|| $_:cn ||
  "{'context-item', ["||_:mask-string($context-item/@select)||"]}"|| $_:cn ||
  "{vars, ["  || _:do-name-as-select($vars) ||"]}"|| $_:cn ||
  "{params, ["|| _:do-name-as-select($params) ||"]}"|| $_:cn ||
  "{namespaces, ["|| _:do-uri-prefix($namespaces) ||"]}"|| $_:cn ||
  "{schemas, ["   || _:do-file-uri($schemas,true()) || "]}" || $_:cn ||
  "{resources, [" || _:do-file-uri($resources,true()) || "]}" || $_:cn ||
  "{modules, ["   || _:do-file-uri($modules,true()) || "]}" || $_:n ||
  "]")
};

declare function _:do-decimal-formats($dec-formats) as xs:string?
{
  (
    for $res in $dec-formats
    let $name := 
      (let $q := fn:resolve-QName($res/@name,$res)
       return
       if (namespace-uri-from-QName($q) = 'http://www.w3.org/2010/09/qt-fots-catalog') then
         $res/@name
       else if (not(exists($res/@name))) then
         ""
       else
         ("Q{"||namespace-uri-from-QName($q)||"}" || local-name-from-QName($q))
      )
    return
    "{"""|| $name ||""",["||
    (for $a in $res/@*[name(.) != "name"]
     return
     "{'"||name($a)||"',"||_:mask-string($a)||"}"
    ) => _:join-cnl() ||"]}"
  ) => _:join-cnl()
};

declare function _:do-default-collation($def-collation) as xs:string?
{
  if (exists($def-collation)) then
    "{'default-collation', """||$def-collation/@uri||"""}"|| $_:cn
  else ()
};

declare function _:do-sources($sources, $is-local) as xs:string?
{
  (
    for $res in $sources
    let $head := if ($is-local) then 
                   "{filename:join(__BaseDir, """||string($res/@file)||"""), """||$res/@role||""","
                 else 
                   "{filename:join(__BaseDir, ""../"||string($res/@file)||"""), """||$res/@role||""","
    let $uri := $res/@uri
    let $tail := if (exists($uri)) then
                   (: special case for fn:doc tests with relative uris :)
                   if (resolve-uri($uri, base-uri($res)) eq $uri) then
                     """"||$uri||"""}"
                   else
                     "filename:join(__BaseDir, """||string($uri)||""")}"
                 else
                   "[]}"
    return
    $head || $tail
  ) => _:join-cnl()
};

declare function _:do-collections($collections, $is-local) as xs:string?
{
  (
    for $res in $collections
    return
    "{"""||$res/@uri||""",["||
    (
      for $s in $res/*:source
      return
      if ($is-local) then
      "{src,filename:join(__BaseDir, """||string($s/@file)||""")}"
      else
      "{src,filename:join(__BaseDir, ""../"||string($s/@file)||""")}" ,
      for $s in $res/*:query
      return
      "{query,__BaseDir,"||_:mask-string($s)||"}"
    ) => _:join-cnl()
    ||"]}"
  ) => _:join-cnl()
};

declare function _:do-static-base-uri($static-base-uri) as xs:string?
{
  let $uri := $static-base-uri/@uri
  return
  if ($uri eq '#UNDEFINED') then
    "{[]}"
  else if (empty($uri)) then
    ""
  else
    "{"""||$uri||"""}"
};

declare function _:do-name-as-select($vars) as xs:string?
{
  let $f := function($a)
            {
              "{"""||$a/@name||""","""||
              $a/@as||""","||
              _:mask-string($a/@select)||"}"
            }
  return
  ( $vars ! $f(.) ) => _:join-cnl()
};

declare function _:do-uri-prefix($namespaces) as xs:string?
{
  let $f := function($a)
            {
              "{"""||$a/@uri||""","""||$a/@prefix||"""}"
            }
  return
  ( $namespaces ! $f(.) ) => _:join-cnl()
};

declare function _:do-file-uri($modules, $is-local) as xs:string?
{
  let $f := function($a)
          {
            (
              if ($is-local) then
                "{filename:join(__BaseDir, """
              else
                "{filename:join(__BaseDir, ""../" 
            ) ||
            string($a/@file) ||
            """),""" ||
            $a/@uri||"""}"
          }
  return
  ( reverse($modules) ! $f(.) ) => _:join-cnl()  
};

(:~ Mask a string for Erlang :)
declare function _:mask-string($text as xs:string*) as xs:string
{
  """" || (
    $text => string-join()
          => replace('\','\\','q')
          => replace("""","\""",'q')
  ) || """"
};

declare function _:mask-name($text as xs:string) as xs:string
{
  $text => replace('-','_','q')
        => replace(".","_",'q')
};

declare function _:mod_exports($testCases)
{
  let $f := function($a){"-export(['"||$a/@name||"'/1])."}
  return _:join-nl(($testCases ! $f(.)))
};

declare function _:mod_all($testCases)
{
  let $f := function($a){"'"||$a/@name||"'"}
  return
    "all() -> ["||$_:n||
    _:join-cnl(($testCases ! $f(.))) ||$_:n||
    "]."
};

declare function _:mod_environments($globals, $locals)
{
  let $g := ($globals ! _:print-environment(.,false()))
  let $l := ($locals ! _:print-environment(.,true()))
  return
  _:join-scnl(($g,$l)) || "."
};

(: Erlang SUITE :)

(: All test case sets from catalog :)
let $globalEnvs         := $catalog/*:catalog/*:environment
  , $globalBaseUri      := base-uri($catalog)
(: Each test case set from catalog :)
for $catalogTestSet     in 
    (# x:parallel unordered #)
    {$catalog/*:catalog/*:test-set
      (: [@name = ("prod-AxisStep.static-typing")] :)
    }
let $catalogTestSetFile := $catalogTestSet/@file
  , $catalogTestSetName := _:mask-name($catalogTestSet/@name) => trace()
  , $testSetFile        := resolve-uri($catalogTestSetFile, $globalBaseUri) 
  , $testSetDir         := substring-before($catalogTestSetFile,"/")
  , $testSetDoc         := doc($testSetFile)
  , $localEnvs          := $testSetDoc/*:test-set/*:environment
  , $SUITE              := $catalogTestSetName||"_SUITE"
  , $suiteFile          := resolve-uri($catalogTestSetName)||"_SUITE.erl"
  , $testCases          := $testSetDoc/*:test-set/*:test-case
let $header             :=
  "-module('"||$SUITE||"')."                           ||$_:n||
  "-include_lib(""common_test/include/ct.hrl"")."      ||$_:n||
  "-compile({nowarn_unused_function,[environment/2]})."||$_:n||
  "-export([all/0,"                                    ||$_:n||
  "         suite/0])."                                ||$_:n||
  "-export([init_per_suite/1,"                         ||$_:n||
  "         end_per_suite/1])."                        ||$_:n||
  (: exports for each test case :)
  _:mod_exports($testCases)
let $standardFuns       :=
  (if ($catalogTestSetName = ("app_XMark",
                              "app_Demos")) then 
     (: time consuming tests :)
     "suite() -> [{timetrap,{seconds,30}}]."
   else 
     "suite() -> [{timetrap,{seconds,5}}]."
  )||$_:n||
  "end_per_suite(_Config) -> "                   ||$_:n||
  "   ct:timetrap({seconds,60}), "               ||$_:n||
  "   xqerl_module:unload(all)."                 ||$_:n||
  "init_per_suite(Config) -> "                   ||$_:n||
  "   xqerl_db:install([node()]),"               ||$_:n||
  "   xqerl_module:one_time_init(), "            ||$_:n||
  "   {ok,_} = application:ensure_all_started(xqerl)," ||$_:n||
  "   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),"||$_:n||
  "   TD = filename:join(DD, ""QT3-test-suite""),"||$_:n||
  "   __BaseDir = filename:join(TD, """||$testSetDir||"""),"||$_:n||
  "   [{base_dir, __BaseDir}|Config]."||$_:n||
  (: the all() function :)
  _:mod_all($testCases)
let $environments       := _:mod_environments($globalEnvs, $localEnvs)
let $testCasesStr       := _:join-dnl(($testCases ! _:print-testcase(.))) || "."
let $mod                := 
  $header       ||$_:n||
  $standardFuns ||$_:n||
  $environments ||$_:n||
  $testCasesStr
return
  file:write-text($suiteFile, $mod, "utf-8")


