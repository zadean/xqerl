(: Name: id-insert-expr-025 :)
(: Description: Evaluation of simple insert expression where both the source and the target expressions updating  :)
(: expressions. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
  insert node (insert node <salary>50000</salary> into $var) into (insert node <salary>56000</salary> into $var)