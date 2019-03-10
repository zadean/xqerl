xquery version "3.1";

module namespace test = "http://www.w3.org/fots/fn/load-xquery-module/load-self/module";

declare variable $test:b as xs:boolean external;  
declare variable $test:var1 := 
if ($test:b eq true()) then
load-xquery-module("http://www.w3.org/fots/fn/load-xquery-module/load-self/module", 
map {"variables" : map { QName("http://www.w3.org/fots/fn/load-xquery-module/load-self/module", "b") : false()}})
else "end";
