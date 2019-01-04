(: Name: id-insert-expr-016 :)
(: Description: Evaluation of simple insert expression that uses "before" clause to insert element :)
(: into a variable bound to an external source. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  insert node <hours>15</hours> before $var/hours[1]