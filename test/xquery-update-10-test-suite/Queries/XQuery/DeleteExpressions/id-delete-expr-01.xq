(: Name: id-delete-expr-01 :)
(: Description: Evaluation of a delete expression that removes an element from a data source :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[3]
return 
  delete node $var/hours[1]