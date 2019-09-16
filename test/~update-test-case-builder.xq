declare namespace _ = 'http://www.w3.org/2005/02/query-test-update';


declare variable $d := doc('xquery-update-10-test-suite/XQUTSCatalog.xml');

declare variable $base := base-uri($d/*);

declare variable $RootPath              := 'xquery-update-10-test-suite';
declare variable $SourceOffsetPath      := $d/*/@SourceOffsetPath/string();
declare variable $ResultOffsetPath      := $d/*/@ResultOffsetPath/string();
declare variable $XQueryQueryOffsetPath := $d/*/@XQueryQueryOffsetPath/string();
declare variable $XQueryFileExtension   := $d/*/@XQueryFileExtension/string();

declare variable $base-uri := 'http://xqerl.org/tests/XQUTS/1.0/';
declare variable $n := '&#10;';

(: Tests that are incompatible with XQuery Update 3.0 :)
declare variable $SKIP_CATALOG :=
  map{
    'id-other-expr-032' : 'throws FORG0001 instead of throwing XUST0001',
    'id-function-declaration-016' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-conditional-expr-038' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-comma-expr-038' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-function-call-01' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-function-call-02' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-function-call-03' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-function-call-04' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-function-call-06' : 'throws XPTY0004 instead of throwing XUST0001',
    'id-function-declaration-05' : 'throws XPTY0004 instead of throwing XUST0002',
    'function-declaration-02' : 'throws XPTY0004 instead of throwing XUST0028',
    'id-flwor-expr-04' : 'throws XQST0076 instead of throwing XUST0001',
    'id-flwor-expr-08' : 'throws XQST0076 instead of throwing XUST0001',
    'id-flwor-expr-012' : 'throws XQST0076 instead of throwing XUST0001',
    'id-flwor-expr-016' : 'throws XQST0076 instead of throwing XUST0001',
    'namespace-errors-q1' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q2' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q3' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q4' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q5' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q6' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q7' : 'throws XUDY0024 instead of throwing XUDY0023',
    'namespace-errors-q8' : 'throws XUDY0024 instead of throwing XUDY0023',
    'id-insert-expr-024' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-insert-expr-025' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-replace-expr-012' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-replace-expr-018' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-rename-expr-06' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-typeswitch-expr-027' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-typeswitch-expr-028' : 'throws XUDY0027 instead of throwing XUST0001',
    'id-conditional-expr-024' : 'throws XUDY0027 instead of throwing XUST0001',
    'fn-put-008' : 'returns \f instead of throwing XUST0001',
    'id-function-declaration-012' : 'returns XML instead of throwing  XUST0002',
    'id-function-declaration-014' : 'returns XML instead of throwing  XUST0002',
    'id-transform-expr-013' : 'returns XML instead of throwing  XUST0002',
    'id-transform-expr-018' : 'returns XML instead of throwing  XUST0002',
    'id-other-expr-26' : 'returns XML instead of throwing  XUST0001',
    'id-other-expr-028' : 'returns XML instead of throwing  XUST0001',
    'attribute-errors-q17' : 'returns [] instead of throwing XUDY0021',
    'applyUpdates-023' : 'returns [] instead of throwing XUDY0021',
    'applyUpdates-024' : 'returns [] instead of throwing XUDY0021',
    'id-insert-expr-023' : 'returns [] instead of throwing XUST0001',
    'id-delete-expr-06' : 'returns [] instead of throwing XUST0001',
    'id-replace-expr-011' : 'returns [] instead of throwing XUST0001',
    'id-replace-expr-017' : 'returns [] instead of throwing XUST0001',
    'id-transform-expr-014' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-06' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-07' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-013' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-014' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-020' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-021' : 'returns [] instead of throwing XUST0001',
    'id-typeswitch-expr-038' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-05' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-06' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-011' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-012' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-017' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-018' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-023' : 'returns [] instead of throwing XUST0001',
    'id-conditional-expr-034' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-014' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-015' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-016' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-019' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-020' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-021' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-022' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-023' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-024' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-025' : 'returns [] instead of throwing XUST0001',
    'id-other-expr-027' : 'returns [] instead of throwing XUST0001',
    'id-insert-expr-026' : 'returns [] instead of throwing XUTY0004',
    'id-comma-expr-027' : 'returns [4] instead of throwing XUST0001',
    'function-declaration-03' : 'returns 12 instead of throwing XUST0002',
    'id-comma-expr-06' : 'returns 4 instead of throwing XUST0001',
    'id-comma-expr-07' : 'returns 4 instead of throwing XUST0001',
    'id-comma-expr-013' : 'returns 4 instead of throwing XUST0001',
    'id-comma-expr-014' : 'returns 4 instead of throwing XUST0001',
    'id-comma-expr-020' : 'returns 4 instead of throwing XUST0001',
    'id-comma-expr-021' : 'returns 4 instead of throwing XUST0001',
    'id-comma-expr-028' : 'returns 4 instead of throwing XUST0001',
    'id-other-expr-06' : 'returns FALSE instead of throwing XUST0001',
    'id-other-expr-08' : 'returns FALSE instead of throwing XUST0001',
    'id-other-expr-09' : 'returns FALSE instead of throwing XUST0001',
    'id-other-expr-010' : 'returns FALSE instead of throwing XUST0001',
    'id-other-expr-011' : 'returns FALSE instead of throwing XUST0001',
    'id-other-expr-012' : 'returns FALSE instead of throwing XUST0001',
    'id-other-expr-07' : 'returns TRUE instead of throwing XUST0001'
  };

(:~ 
  XML      : The XML InfoSets should be canonicalized and compared.
  Fragment : A 'fragment' refers to an XML based instance which has multiple 
             top-level elements and NO XML declaration. The comparator for this 
             should simply wrap the entire fragment in a container element and 
             perform XML comparison.
  Text     : Each line of non-whitespace text should match. New-line sequences 
             may vary and should be neutralized. Due to issues with the XML 
             serialization of certain characters (e.g. '<'), it is not possible 
             to simply compare the actual and expected results. Rather (as is 
             the case with the 'Fragment' comparator) the test harness should 
             convert the results into valid XML (by adding a container element) 
             and perform comparison on the XML canonicalized versions of the 
             results.
 :)  
declare function _:get_comparison($name)
{
  'ok'
};

(:~ 
  principal-data    : This is the source that is handed in to the processor as 
                      the initial input sequence, setting the "evaluation 
                      context" as described in XQuery chapter 2. 
                      (input-file, input-URI)
  principal         : This is an output (either text or XML) that will contain 
                      the query results. If the processor invocation sequence 
                      accepts a filename for results, this name may be passed, 
                      possibly prefixed by a partial directory path to allow 
                      storage of the results in a separate directory tree.
                      (output-file)
 :)
declare function _:get_role($name)
{
  'ok'
};

(:~ 
  standard      : A query this is expected to produce valid results. Principal 
                  input should always be specified, even if the query doesn't 
                  have any PathExpr.
  runtime-error : A query this is expected to raise a runtime error at query 
                  parse time. Runtime errors in this case include those raised 
                  by static typing rules. Principal input should always be 
                  specified, even if the query doesn't have any PathExpr.
 :)
declare function _:get_scenario($name) 
{
  'ok'
};

declare function _:is_supported($testGroup as element(_:test-group)) as xs:boolean
{
  let $feature := $testGroup/_:GroupInfo/_:depends-on/_:feature
    , $supported := if (empty($feature)) then 
                      true() 
                    else
                      xs:boolean($feature[1]/@supported)
    , $feature   := $feature/text()
  return
    if ($feature = 'revalidation:strict' and $supported) then false() else 
    if ($feature eq 'revalidation:strict') then true() else 
    
    if ($feature eq 'revalidation:lax' and $supported) then false() else 
    if ($feature eq 'revalidation:lax') then true() else 
    
    if ($feature eq 'revalidation:skip' and $supported) then true() else 
    if ($feature eq 'revalidation:skip') then false() else 
    
    if ($feature eq 'static-typing' and $supported) then false() else 
    if ($feature eq 'static-typing') then true() else 
    
    if ($feature eq 'put:attribute' and $supported) then false() else 
    if ($feature eq 'put:attribute') then true() else 
    
    if ($feature eq 'put:text' and $supported) then false() else 
    if ($feature eq 'put:text') then true() else 
    
    if ($feature eq 'put:comment' and $supported) then false() else 
    if ($feature eq 'put:comment') then true() else 
    
    if ($feature eq 'put:processing-instruction' and $supported) then false() else 
    if ($feature eq 'put:processing-instruction') then true() else 
    
    if ($supported) then true() else 
    
    false()
  (: full-axis :)
};

declare function _:get_supported_cases($grp as element(_:test-group))
{
  if (_:is_supported($grp)) then
    (
      $grp/_:test-case,
      $grp/_:test-group ! _:get_supported_cases(.)
    )
  else
  ()
};

declare function _:print-test-case($case as element(_:test-case),
                                   $pos  as xs:integer) as xs:string
{
  let $name := $case/@name
    , $path := $case/@FilePath
    , $scen := $case/@scenario
    , $desc := $case/_:description/text()
    , $inputs := ($case/_:state/_:input-file/text()) => distinct-values()
    , $states := $case/_:state
    , $skip := $SKIP_CATALOG($name)
  return
  '%% ' || $desc => normalize-space() || $n ||
  (
  if (empty($skip)) then
  "'" || $name || "'(Config) -> " || $n ||
  "   __BaseDir = ?config(base_dir, Config)," || $n ||
  (
    (: docs to copy :)
    (
      for $in in $inputs
      let $uri := $base-uri || $in || "-" || $pos || ".xml"
      return
      "   xqldb_dml:delete_doc(""" || $uri || """)," || $n ||
      "   ok = xqldb_dml:insert_doc(""" || $uri || """, source(__BaseDir, '" || $in || "'))"
    )
    ,
    (: Input to delete :)
    (
      for $t in $states/_:input-URI/text()
      group by $t
      let $uri := $base-uri || $t || "-" || $pos || ".xml"
      return
      "   xqldb_dml:delete_doc(""" || $uri || """)"
    )
    ,
    (: states :)
    (
      for $state at $spos in $states
      let $query := $state/_:query
        , $qryname := $query/@name
      return
      "   _ = begin" || $n ||
      "      F"||$spos||" = filename:join(__BaseDir, """ || 
                 _:xquery_file($path, $qryname) || """)," || $n ||
      "      Ctx"||$spos||" = #{"||
      (
        for $i in $state/_:input-file
        let $v := $i/@variable/string()
        let $t := $i/text()
        return
        "<<"""||$v||""">> => xqerl:run(""doc('"|| $base-uri || $t || "-" || $pos || ".xml"
        ||"')"")"
        ,
        for $i in $state/_:input-URI
        let $v := $i/@variable/string()
        let $t := $i/text()
        return
        "<<"""||$v||""">> => {xqAtomicValue, 'xs:anyURI', <<""" ||
                            $base-uri || $t || "-" || $pos || ".xml" || """>>}"
      ) => string-join("," || $n || "              ")
      ||"}," || $n ||
      "      Res"||$spos||" = try" || $n ||
      "                Q"||$spos||" = xqerl_code_server:compile(F"||$spos||")," || $n ||
      "                xqerl:run(Q"||$spos||", Ctx"||$spos||")" || $n ||
      "             catch _:E"||$spos||" -> E"||$spos||" end," || $n ||
      (
        if ($scen eq 'runtime-error' and count($state/_:expected-error) eq 1) then
          "      case xqerl_test:assert_error(Res"||$spos||","""||
                 $state/_:expected-error||""") of " || $n ||
          "         true -> {comment, ""Correct error""};" || $n ||
          '         {true, F} -> {comment, "WE: '||$state/_:expected-error||' " ++ binary_to_list(F)};' || $n ||
          "         {false, Err"||$spos||"} -> ct:fail(Err"||$spos||") " || $n ||
          "      end"
        else if ($scen eq 'runtime-error' and count($state/_:expected-error) eq 2) then
          "      case xqerl_test:assert_error(Res"||$spos||","""||
                 $state/_:expected-error[1]||""") of " || $n ||
          "         true -> {comment, ""Correct error""};" || $n ||
          '         {true, F} -> {comment, "WE: '||$state/_:expected-error[1]||' " ++ binary_to_list(F)};' || $n ||
          "         {false, _} -> " || $n ||
          "            case xqerl_test:assert_error(Res"||$spos||","""||
                       $state/_:expected-error[2]||""") of " || $n ||
          "               true -> {comment, ""Correct error""};" || $n ||
          '               {true, F} -> {comment, "WE: '||$state/_:expected-error[2]||' " ++ binary_to_list(F)};' || $n ||
          "               {false, Err"||$spos||"} ->  ct:fail(Err"||$spos||") " || $n ||
          "            end" ||
          "      end"
        else if (count($state/_:output-file) eq 1) then
        let $c := if ($state/_:output-file/@compare eq 'XML') then 'doc_file' else 'file'
        return
          "      case xqerl_test:assert_xml(Res"||$spos||","||
                 "{"||$c||", filename:join(__BaseDir, """||
                 _:result_file($path, $state/_:output-file)||""")}) of" || $n ||
          "         true -> {comment, ""Correct""};" || $n ||
          "         {false, Err"||$spos||"} -> ct:fail(Err"||$spos||") " || $n ||
          "      end"
        else if (count($state/_:output-file) > 1) then
        "      case lists:any(fun(true) -> true; (_) -> false end, [" || $n ||
        (
          for $of in $state/_:output-file
          let $c := if ($of/@compare eq 'XML') then 'doc_file' else 'file'
          return
          "         xqerl_test:assert_xml(Res"||$spos||","||
                 "{"||$c||", filename:join(__BaseDir, """||
                 _:result_file($path, $of)||""")})"
        ) => string-join(","||$n)
        || "]) of " || $n ||
        "         true -> {comment, ""Correct""};" || $n ||
        "         false -> ct:fail(Res"||$spos||")" || $n ||
        "      end"
        else
          "      Res"||$spos
      ) || $n ||
      "   end"
    ) => string-join("," || $n)
    
  ) => string-join("," || $n) ||
  "."
  else
  "'" || $name || "'(_Config) -> " || $n ||
  '   {skip, "'||$skip||'"}.'
 ) || $n
};

(: Children of test-case @name, @FilePath, @scenario
description - child
spec-citation - child
state - child - @time
   Children of state
query - @name
input-file - @role, @variable
output-file - @role, @compare
expected-error
input-URI - @role, @variable = used with newly created documents
:)

declare function _:sources() as xs:string
{
  "source(BaseDir, Name) -> " || $n ||
  "   Src = source(Name)," || $n ||
  "   filename:join(BaseDir, Src)." || $n || $n ||
  (
    $d/_:test-suite/_:sources/_:source ! 
    ("source('"||./@ID||"') -> """||$SourceOffsetPath || ./@FileName||"""")
  ) => string-join(";" || $n)
  || "." || $n || $n
};

declare function _:xquery_file($path, $name) 
{
  $XQueryQueryOffsetPath || $path || $name || $XQueryFileExtension
};

declare function _:result_file($path, $name) 
{
  $ResultOffsetPath || $path || $name
};

declare function _:exports($funs) as xs:string
{
  "-export([" || 
  (
    for $fun in $funs
    return
    "'" || $fun || "'/1"
  ) => string-join(',' || $n || '         ' )
  || "])."
};

declare function _:mod_all($funs)
{
  let $max :=  24
  let $f  := function($a){"'"||$a||"'"}
  let $grpd := 
      for $tc at $y in $funs
      group by $z := $y idiv $max
      return
      [$z, $tc]
  return
  "all() -> ["||$n||
  ($grpd ! ("   {group, group_" || .?1 || "}" ) ) => string-join("," || $n) ||$n||
  "   ]." ||$n||
  "groups() -> ["||$n||
  ($grpd ! ("   {group_" || .?1 || ", [parallel], [" ||$n||
  (.?2 !   ("    " || $f(.)) ) => string-join("," || $n)
  ||
  "]}" ) ) => string-join("," || $n)
  ||"]."
};

declare function _:header($funs)
{
"-module('xquts_SUITE').
-include_lib(""common_test/include/ct.hrl"").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
         
" || _:exports($funs) || "

suite() -> [{timetrap,{seconds, 60}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   __BaseDir = filename:join(DD, """ || $RootPath || """),
   [{base_dir, __BaseDir}|Config].
" || _:mod_all($funs) || "

"
};
let $mod := 
(
  let $tests := (  
    let $root := $d/_:test-suite/_:test-group
    for $grp in $root
    return
      _:get_supported_cases($grp)
    )
  return
  _:header($tests/@name) ||
  _:sources() ||
  (
  for $test at $pos in $tests
  return
    (: _:header() || :) 
    _:print-test-case($test, $pos)
  
  ) => string-join($n)
) 
return 
  file:write-text(resolve-uri('xquts/xquts_SUITE.erl'), $mod, "utf-8")