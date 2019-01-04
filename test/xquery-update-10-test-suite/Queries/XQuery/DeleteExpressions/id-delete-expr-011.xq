(: Name: id-delete-expr-011 :)
(: Description: A delete expression where the target expression results in a sequence of integers. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[1]
return 
  delete node (xs:integer($var/salary[1]), xs:integer($var/salary[1]))