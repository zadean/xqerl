(: Name: id-insert-expr-031 :)
(: Description: Evaluation of insert expression where the target expression is a complex expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  insert node <hours>20</hours> after $var/hours[xs:integer(9-3) idiv 6]