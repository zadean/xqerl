(: Name: id-delete-expr-012 :)
(: Description: Multiple states with multiple deletes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  delete node $var