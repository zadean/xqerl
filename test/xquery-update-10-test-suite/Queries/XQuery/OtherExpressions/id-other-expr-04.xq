(: Name: id-other-expr-04 :)
(: Description: Evaluates usage of an updating expression (replace) in initializing expression for variable declaration. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

declare variable $x as xs:integer := replace node $input-context/employees[1]/employee[1]/salary[1] with <salary>34600</salary>;

let $newVar := $x
return
 $newVar