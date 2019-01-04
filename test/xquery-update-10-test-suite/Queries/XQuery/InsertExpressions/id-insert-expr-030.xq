(: Name: id-insert-expr-030 :)
(: Description: Evaluation of insert expression where the source expression evaluates to a number. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[2]
return 
 insert node xs:integer(1 + 1) into $var