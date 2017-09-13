xquery version "3.0";

(: This query lists all the values found in "dependencies" elements in the test suite.   :)
(: Michael Kay, Saxonica 18 July 2011                                                    :)

import schema namespace fots = "http://www.w3.org/2010/09/qt-fots-catalog"
       at "../catalog-schema.xsd";

declare function local:dependencies($t as element(fots:test-case)) as element(fots:dependency)* {
    $t/fots:dependency | $t/../fots:dependency
};

let $test-sets := 
  for $s in doc('../catalog.xml')/fots:catalog/fots:test-set
  let $uri := resolve-uri($s/@file, base-uri($s))
  return doc($uri)/*
for $d in distinct-values($test-sets//fots:dependency/@type)
return 
  <dependency type="{$d}"> {
    let $de := $test-sets//fots:dependency[@type = $d]
    for $v in distinct-values($de/@value)
    return 
       <value number-of-tests="{count($test-sets/fots:test-case[local:dependencies(.)[@type = $d and @value = $v]])}">
         {$v}
       </value>
 }</dependency>
   
       