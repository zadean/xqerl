(: Name: id-insert-expr-059 :)
(: Description: Insert an element after an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $emp := $input-context/works[1]/employee[1]
return
   insert node <test/> after $emp/@name
