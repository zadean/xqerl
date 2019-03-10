xquery version "3.1";

module namespace evm = "http://www.w3.org/fots/fn/load-xquery-module/load/module";

declare variable $evm:var1 as xs:string := "this";
declare variable $evm:var2 as xs:integer := 11;
declare variable $evm:var3 as map(*) := 
load-xquery-module("http://www.w3.org/fots/fn/load-xquery-module/valid/module");

declare function evm:get-var1() as xs:string {
    $evm:var1
};
declare function evm:get-var2() as xs:integer {
    $evm:var2
};