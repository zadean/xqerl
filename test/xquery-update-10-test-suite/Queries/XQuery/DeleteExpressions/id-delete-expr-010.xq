(: Name: id-delete-expr-010 :)
(: Description: Evaluation of a delete expression where target expression is a complex one:)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  delete node $var/hours[(10 idiv 5) - 1]