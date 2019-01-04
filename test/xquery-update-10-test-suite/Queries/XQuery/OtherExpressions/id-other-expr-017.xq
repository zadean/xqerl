(: Name: id-other-expr-017 :)
(: Description: Evaluates usage of an non updating expression (transform) as part of a node comparison (is) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
 ($var) is (copy $newVar := $var modify delete node $newVar/hours[1] return $newVar)