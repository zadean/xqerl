(: Name: id-insert-expr-044 :)
(: Description: Evaluation of insert expression, where the spource expression is a transform expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
insert node (copy $newVar := $var modify delete node $newVar/hours[1] return $newVar)
    after $var