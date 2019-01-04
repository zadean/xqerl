(: Name: id-insert-expr-017 :)
(: Description: Evaluation of simple insert expression that uses "after" clause to insert element :)
(: into a variable bound to an external source. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[3]
return 
  insert node <hours>15</hours> after $var/hours[1]