(: Name: id-insert-expr-05 :)
(: Description: Evaluation of simple insert expression that uses "into" clause only for element bound to a :)
(: variable. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[3]
return 
  insert node <hours>15</hours> into $var/hours