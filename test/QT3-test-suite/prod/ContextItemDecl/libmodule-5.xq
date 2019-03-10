
module namespace mod5="http://www.w3.org/TestModules/libmodule5";
declare context item as function(xs:integer) as xs:string external;
declare variable $mod5:v := .(2);