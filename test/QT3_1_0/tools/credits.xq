(: Query to find out who wrote the tests :)

declare namespace t = "http://www.w3.org/2010/09/qt-fots-catalog";


let $p := '&#xa;'
let $fots-catalog := doc('../catalog.xml')
for $fots-test in $fots-catalog//t:test-set/@file/doc(resolve-uri(., base-uri($fots-catalog)))//t:test-case
group by $author := $fots-test/t:created[1]/@by
order by count($fots-test) descending
return 
  <author name="{$author}" count="{count($fots-test)}"/>
