(: Name: id-other-expr-031 :)
(: Description: Evaluates usage of an non updating expression (transform) as part of a sequence expression (except operator). :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[1]
let $var2 := $input-context/works[1]/employee[2]
return
(copy $newVar := $var1 modify delete node $newVar/hours[1] return $newVar) except (copy $newVar := $var2 modify delete node $newVar/hours[1] return $newVar)