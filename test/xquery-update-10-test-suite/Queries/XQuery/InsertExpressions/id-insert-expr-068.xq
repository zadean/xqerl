(: Name: id-insert-expr-068 :)
(: Description: Insert an attribute into an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $n := $input-context/works[1]/employee[1]
return
   insert node attribute day { "good" } into $n/@name
