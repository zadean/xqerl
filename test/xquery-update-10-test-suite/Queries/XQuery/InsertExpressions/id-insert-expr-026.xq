(: Name: id-insert-expr-026 :)
(: Description: Evaluation of insert expression where the source expression have a sequence of an attribute following :)
(: an element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  insert node (<salary>10000</salary>, attribute myAttr {"my Value"} ) into $var