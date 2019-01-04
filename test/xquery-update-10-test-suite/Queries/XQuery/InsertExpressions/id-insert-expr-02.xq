(: Name: id-insert-expr-02 :)
(: Description: Evaluation of simple insert expression that uses "before" clause only of element bound to a :)
(: variable. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[1]
return 
  insert node <hours>15</hours> before $var/hours[1]