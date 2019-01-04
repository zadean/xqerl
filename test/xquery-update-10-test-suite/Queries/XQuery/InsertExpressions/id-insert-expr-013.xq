(: Name: id-insert-expr-013 :)
(: Description: Evaluation of simple insert expression that uses "as first" and "into" clauses for a comment node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[1]/hours[1]
return 
  insert node <!-- A Comment Node --> as first into $var