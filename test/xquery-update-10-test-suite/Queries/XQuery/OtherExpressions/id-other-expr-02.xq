(: Name: id-other-expr-02 :)
(: Description: Evaluates usage of an updating expression (insert) in initializing expression for variable declaration. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare variable $x as xs:integer? := insert node <salary>25600</salary> after $input-context/employees[1]/employee[1]/salary[1];

let $newVar := $x
return
 $newVar