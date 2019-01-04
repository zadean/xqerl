(: Name: id-insert-expr-018 :)
(: Description: Evaluation of simple insert expression that uses "as first" and "into" clauses to insert element :)
(: into a variable bound to an xml source. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]/hours[1]
return 
 insert node <hours>15</hours> as first into $var