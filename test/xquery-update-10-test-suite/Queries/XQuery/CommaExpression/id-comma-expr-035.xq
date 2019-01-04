(: Name: id-comma-expr-035 :)
(: Description: Evaluation of a transform expression used with comma expression where the :)
(: first expression is a mathematical expression and the second one is a transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[3]
return
  (xs:integer(1) + xs:integer(2), copy $newVar := $var modify delete node $newVar/salary[1] return $newVar)