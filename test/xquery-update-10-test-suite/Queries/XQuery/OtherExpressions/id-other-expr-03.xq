(: Name: id-other-expr-03 :)
(: Description: Evaluates usage of an updating expression (rename) in initializing expression for variable declaration. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare variable $x as xs:integer? := rename node $input-context/employees[1]/employee[1]/salary[1] as "salary";

let $newVar := $x
return
 $newVar