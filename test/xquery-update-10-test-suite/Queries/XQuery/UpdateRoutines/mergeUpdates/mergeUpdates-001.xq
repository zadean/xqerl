(: Name: mergeUpdates-001 :)
(: Description: Multiple operations that add non-conflicting namespace bindings to a node. :)

declare namespace co1="http://www.example.com/company1";
declare namespace co2="http://www.example.com/company2";
declare namespace co3="http://www.example.com/company3";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute co1:age {30} into $var, 
   replace node $var/@gender with attribute co2:gender {"f"},
   rename node $var as "co3:employee"
   )
