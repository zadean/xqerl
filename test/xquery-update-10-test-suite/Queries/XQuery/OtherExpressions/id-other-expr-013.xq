(: Name: id-other-expr-013 :)
(: Description: Evaluates usage of an non updating expression (transform) as part of a logical (and) expression and usage of fn:true() function. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
 fn:true() and (copy $newVar := $var modify delete node $newVar/hours[1] return $newVar)