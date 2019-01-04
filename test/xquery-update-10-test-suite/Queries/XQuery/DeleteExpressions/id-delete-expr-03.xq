(: Name: id-delete-expr-03 :)
(: Description: Evaluation of a delete expression that removes a comment from a data source :)
(: element node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return 
  delete node $var/child::comment()