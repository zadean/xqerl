(: Name: id-insert-expr-04 :)
(: Description: Evaluation of simple insert expression that uses "as last" and "into"" clauses of element bound to a :)
(: variable. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[3]
return 
  insert node <hours>15</hours> as last into $var/hours