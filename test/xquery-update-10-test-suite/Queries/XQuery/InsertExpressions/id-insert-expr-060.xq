(: Name: id-insert-expr-060 :)
(: Description: Insert an attribute before an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[1]
return
   insert node attribute exempt { "true" } before $emp/@name
