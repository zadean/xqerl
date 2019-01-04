(: Name: id-other-expr-030 :)
(: Description: Evaluates usage of an non updating expression (transform) as part of a sequence expression (intersect operator). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[1]
return
fn:count((copy $newVar := $var1 modify delete node $newVar/hours[1] return $newVar) intersect (copy $newVar := $var1 modify delete node $newVar/hours[1] return $newVar))