(: Name: id-comma-expr-034 :)
(: Description: Evaluation of a transform expression used with comma expression where the :)
(: first expression is an updating expression and the second one is a mathematical expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=  $input-context/employees[1]/employee[2]
return
  (copy $newVar := $var modify delete node $newVar/salary[1] return $newVar, xs:integer(1) + xs:integer(2))