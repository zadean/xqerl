declare namespace t = "http://www.w3.org/2010/09/qt-fots-catalog";
declare function local:newFor30($test as element(t:test-case)) as xs:boolean {
let $d := $test/t:dependency[@type='spec']/@value
let $dd := $test/../t:dependency[@type='spec']/@value
return
  if ($d[2] or $dd[2])
  then trace(false(), $test/@name || " in " || $test/../@name)
  else
    contains($d, 'XQ30') or contains($dd, 'XQ30')
    or contains($d, 'XP30') or contains($dd, 'XP30') 
};

let $p := '&#xa;'
let $fots-catalog := doc('../catalog.xml')
let $fots-tests := $fots-catalog//t:test-set/@file/doc(resolve-uri(., base-uri($fots-catalog)))//t:test-case
let $xq30-tests := $fots-tests[local:newFor30(.)]
let $xq30-testsets := ($xq30-tests/..)
return

$p || "State of XQuery 3.0 tests on " || format-date(current-date(), '[D] [MNn] [Y]') ||
$p || "Total number of tests: " || count($fots-tests) ||
$p || "Number of tests specific to XQuery 3.0 or XPath 3.0: " || count($xq30-tests) ||
$p || "Total number of affected test sets: " || count($xq30-testsets) ||
$p || "New tests by category: " || $p ||

string-join( for $s in $xq30-testsets
  return (
    $p || $s/@name || ": " || count($s/* intersect $xq30-tests) || $p || "  (" || $s/t:description || ")"
  )
) 
