(: Name: id-delete-expr-017 :)
(: Description: Delete an element node, making sure that it is remains visible in this snapshot. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete node $input-context/works[1]/employee[@name="John Doe 12"]/overtime/day[1],
delete node $input-context/works[1]/employee
   [count($input-context/works[1]/employee[@name="John Doe 12"]/overtime/day)]
