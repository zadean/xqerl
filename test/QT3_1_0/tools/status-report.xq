let $xqts-catalog := doc('file:///e:/xqts/2006/xquery-test-suite/TestSuiteStagingArea/XQTSCatalog.xml')
let $fots-catalog := doc('file:///e:/repo/tests/fots/catalog.xml')
let $xqts-tests := $xqts-catalog//*:test-case/@name
let $fots-tests := $fots-catalog//*:test-set/@file/doc(resolve-uri(., base-uri($fots-catalog)))//*:test-case/@name
let $unconverted := $xqts-tests[not(.=$fots-tests)]
let $unconvertedFiles := distinct-values($unconverted/base-uri(..))
return
  <status>
    <xqts-tests total="{count($xqts-tests)}"/>
    <fots-tests total="{count($fots-tests)}"/>
    <common total="{count($xqts-tests[.=$fots-tests])}"/>
    <unconverted> {
       for $f in $unconvertedFiles return <file count="{count($unconverted[base-uri(..)=$f])}">{$f}</file>,
       for $t in $unconverted return <test>{$t}</test>
    }</unconverted>
  </status>