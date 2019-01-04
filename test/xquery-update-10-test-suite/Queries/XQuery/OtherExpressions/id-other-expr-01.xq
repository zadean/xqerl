(: Name: id-other-expr-01 :)
(: Description: Evaluates usage of an updating expression (delete) in initializing expression for variable declaration. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare variable $x as xs:integer? := delete node $input-context/employees[1]/employee[1];

let $newVar := $x
return
 $newVar