(: Name: id-insert-expr-048 :)
(: Description: Evaluation of insert expression, where the target is a comment node and usage of "before" clause. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/employees[1]/employee[4]/comment()
return 
insert node <hours>10</hours> before $var