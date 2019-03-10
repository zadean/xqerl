xquery version "3.1";

module namespace evm = "http://www.w3.org/fots/fn/load-xquery-module/external-vars/module";

declare variable $evm:var1 as xs:string external := "this";
declare variable $evm:var2 as xs:integer external := 11;
declare variable $evm:var3 as map(*) external;
declare variable $evm:var4 as xs:string := "that";

declare function evm:get-var1() as xs:string {
    $evm:var1
};
declare function evm:get-var2() as xs:integer {
    $evm:var2
};