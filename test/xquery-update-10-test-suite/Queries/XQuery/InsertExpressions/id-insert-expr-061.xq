(: Name: id-insert-expr-061 :)
(: Description: Insert an attribute after an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[1]
return
   insert node attribute exempt { "true" } after $emp/@name
