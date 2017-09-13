xquery version "3.0";

(: This query validates that all the catalog files are valid against the catalog schema. :)
(: It outputs a list of those that are *invalid*                                         :)
(: Michael Kay, Saxonica 30 March 2011                                                   :)

import schema namespace fots = "http://www.w3.org/2010/09/qt-fots-catalog"
       at "../catalog-schema.xsd";

try {
  validate { doc('../catalog.xml') } //nothing
} catch * {
  <error uri="catalog.xml" />
},    
       
for $testset in doc('../catalog.xml')/fots:catalog/fots:test-set
let $uri := resolve-uri($testset/@file, base-uri($testset))
return
   try {
      validate { doc($uri) } //nothing
   } catch * {
      <error uri="{$uri}" />
   }       