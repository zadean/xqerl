(: Name: id-insert-expr-03 :)
(: Description: Evaluation of simple insert expression that uses "as first and "into"" clauses of element bound to a :)
(: variable. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[3]
return 
  insert node <hours>15</hours> as first into $var/hours