(: Name: id-comma-expr-015 :)
(: Description: Evaluation of a replace expression used with comma expression where both :)
(: expressions are updating (replace) expressions.  :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[1]
let $var2 := $input-context/works[1]/employee[2]
return
(replace value of node $var1/hours[1] with $var2/hours[1], replace value of node $var2/hours[2] with $var1/hours[1])