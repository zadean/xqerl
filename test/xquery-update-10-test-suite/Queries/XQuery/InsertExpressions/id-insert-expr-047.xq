(: Name: id-insert-expr-047 :)
(: Description: Evaluation of insert expression, where the target is a comment node and usage of "after" clause. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[4]/comment()
return 
insert node <hours>10</hours> after $var