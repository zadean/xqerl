(: Name: mergeUpdates-002 :)
(: Description: Multiple operations that add conflicting namespace bindings to a node. :)

declare namespace co1="http://www.example.com/company1";
declare namespace co2="http://www.example.com/company2";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute co1:age {30} into $var, 
   replace node $var/@gender with attribute co2:gender {"f"},
   rename node $var as QName("http://www.example.com/company3", "co2:employee")
   )
