declare namespace _ = "http://xqerl.org/xquery/test_cases";

declare default element namespace 'http://www.w3.org/2012/08/qt-fots-results';

declare option output:method 'html';

declare variable $_:VERSION := 0.8;
declare variable $_:NAME := 'Zachary Dean';
declare variable $_:EMAIL := 'contact@zadean.com';
declare variable $_:OUTPUT := 
  '/git/zadean/qt3tests/results/result-submissions-31/results_xqerl_'||$_:VERSION||'.xml';

declare variable $_:catalog := doc("/git/zadean/qt3tests/catalog.xml");
declare variable $_:test-sets := $_:catalog/*:catalog/*:test-set/@name/string();

declare variable $_:test-map := 
  ($_:test-sets ! map:entry(_:mask-name(.), .)) => map:merge();

declare variable $_:supported := 
  (: map of what is or is not supported :)
  map{
    'calendar' : map{
      'CB' : false()
    },
    'default-language' : map{
      'en' : true(),
      'fr-CA' : false()      
    },
    'feature' : map{
      'advanced-uca-fallback' : false(),
      'arbitraryPrecisionDecimal' : true(),
      'collection-stability' : true(),
      'directory-as-collection-uri' : false(),
      'fn-format-integer-CLDR' : true(),
      'fn-load-xquery-module' : false(),
      'fn-transform-XSLT' : false(),
      'fn-transform-XSLT30' : false(),
      'higherOrderFunctions' : true(),
      'infoset-dtd' : true(),
      'moduleImport' : true(),
      'namespace-axis' : false(),
      'non_empty_sequence_collection' : true(),
      'non_unicode_codepoint_collation' : true(),
      'olson-timezone' : false(),
      'remote_http' : false(),
      'schema-location-hint' : false(),
      'schemaImport' : false(),
      'schemaValidation' : false(),
      'serialization' : true(),
      'simple-uca-fallback' : true(),
      'staticTyping' : false(),
      'typedData' : false(),
      'xpath-1.0-compatibility' : false()
    },
    'format-integer-sequence' : map{
      '&#x391;' : false(),
      '&#x3B1;' : false(),
      '&#x661;' : true(),
      '&#x2460;' : true(),
      '&#x2474;' : true(),
      '&#x2488;' : true(),
      '&#x4E00;' : false(),
      '&#xFBF4;' : false()
    },
    'language' : map{
      'de' : false(),
      'en' : true(),
      'fr' : false(),
      'it' : false(),
      'xib' : false()      
    },
    'limits' : map{
      'year_lt_0' : true()      
    },
    'spec' : map{
      'XP20' : false(),
      'XP20 XP30 XQ10 XQ30' : false(),
      'XP20 XQ10' : false(),
      'XP20 XQ10 XP30 XQ30' : false(),
      'XP20+'       : false(),
      'XP20+ XQ10+' : true(),
      'XP30 XQ30'   : false(),
      'XP30+'       : false(),
      'XP30+ XQ10+' : true(),
      'XP30+ XQ30+' : true(),
      'XP31 XQ31'   : true(),
      'XP31+'       : false(),
      'XP31+ XQ31'  : true(),
      'XP31+ XQ31+' : true(),
      'XP31+ XQ31+ XT30+' : true(),
      'XQ10'        : false(),
      'XQ10 XP20' : false(),
      'XQ10 XP20 XQ30 XP30' : false(),
      'XQ10 XQ30' : false(),
      'XQ10+' : true(),
      'XQ10+ XP20+' : true(),
      'XQ10+ XP30+' : true(),
      'XQ30' : false(),
      'XQ30 XP30' : false(),
      'XQ30+' : true(),
      'XQ30+ XP30+' : true(),
      'XQ31' : true(),
      'XQ31+' : true(),
      'XQ31+ XP31+' : true()      
    },
    'unicode-normalization-form' : map{
      'FULLY-NORMALIZED' : false(),
      'NFD' : true(),
      'NFKC' : true(),
      'NFKD' : true()      
    },
    'unicode-version' : map{
      '3.1.1' : false(),
      '5.2' : false(),
      '6.0' : false(),
      '6.2' : false(),
      '7.0' : false()
    },
    'xml-version' : map{
      '1.0' : true(),
      '1.0:4-' : false(),
      '1.0:5+ 1.1' : true(),
      '1.1' : false()      
    },
    'xsd-version' : map{
      '1.0' : true(),
      '1.1' : false()      
    }
  };
  
declare function _:mask-name($text as xs:string) as xs:string
{
  $text => replace('-','_','q')
        => replace(".","_",'q') || '_SUITE'
};

declare function _:submission()
{
  let $subdate := current-date() => fn:adjust-date-to-timezone(())
  return
  <submission anonymous="false">
    <created by="{$_:NAME}" email="{$_:EMAIL}" organization="xqerl" on="{$subdate}"/>
    <test-run test-suite-version="git" date-run="{$subdate}"/>
    <notes/>
  </submission>  
};

declare function _:product()
{
  <product vendor="xqerl"
           name="xqerl"
           version="{$_:VERSION}"
           released="true"
           open-source="true"
           language="XQ31">{
      _:dependencies()
  }</product>
};

declare function _:dependencies()
{
  for $t in map:keys($_:supported)
  where $t != 'spec'
  let $tm := $_:supported($t)
  for $v in map:keys($tm)
  let $s := $tm($v)
  order by $t, $v
  return
    <dependency type="{$t}" value="{$v}" satisfied="{$s}"/>
};

declare function _:suite-results($tableBody, $testname)
{
  <test-set name="{$testname}">
  {
    for $row in $tableBody/*:tr[*:td[1] ne ""]
    let $name := $row/*:td[4] => data()
    (: let $time := $row/*:td[6] => data() :)
    let $stat := $row/*:td[7] => data()
    let $mess := $row/*:td[8] => data()
    return
    _:format-result($name, $stat, $mess)
  }
  </test-set>
};

declare function _:format-result($name0, $stat, $message)
{
  let $name := $name0 => replace("'", "")
  return
  if ($stat eq 'Ok') then
    <test-case name="{$name}" result="pass"/>
  else if ($stat eq 'SKIPPED') then
    <test-case name="{$name}" result="n/a" comment="{$message}"/>
  else (: FAILED :)
    <test-case name="{$name}" result="fail" comment="{$message}"/>
};

declare function _:nvl($value, $default)
{
  if (empty($value)) then
    $default
  else
    $value
};

let $data :=
<test-suite-result>{
  _:submission(),
  _:product(),

  let $base := 'file:///C:/git/zadean/xqerl/test/logs/'
  let $main := html:parse(
    file:read-text($base || 'index.html')
  )
  let $tabBod := $main//*:table[@id = 'SortableTable']/*:tbody
  for $row in $tabBod/*:tr
  let $name := $row/*:td[1] => data() => substring-after('zadean.xqerl.')
  let $testname := $_:test-map($name)
  where not(empty($testname)) (: other tests :)
  let $pass := $row/*:td[4] => data() => xs:integer()
  let $fail := $row/*:td[5] => data() => xs:integer()
  let $skip := $row/*:td[6] => data() => substring-before(' ') => xs:integer()
  let $total := $pass + $fail
  let $link := $base || $row/*:td[1]/*:a/@href
  let $tests := file:read-text($link) => html:parse()
  let $results := $tests//*:table[@id = 'SortableTable']/*:tbody =>  _:suite-results($testname)
  order by $name
  return
  (
    (: comment { 'pass:' || $pass || ' fail:' || $fail || ' skip:' || $skip }, :)
    $results
  )
}</test-suite-result>
return
file:write($_:OUTPUT, $data, map{'method' : 'xml', 'omit-xml-declaration' : 'no'})

