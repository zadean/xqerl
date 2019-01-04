(: Name: id-insert-expr-058 :)
(: Description: Insert an element before an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[1]
return
   insert node <test/> before $emp/@name
