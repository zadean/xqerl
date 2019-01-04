(: Name: id-insert-expr-020 :)
(: Description: Evaluation of simple insert expression that uses "into" clause only to insert element :)
(: into a variable bound to an xml source. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return 
  insert node <hours>15</hours> into $var