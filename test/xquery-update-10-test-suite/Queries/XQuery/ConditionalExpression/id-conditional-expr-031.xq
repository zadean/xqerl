(: Name: id-conditional-expr-031 :)
(: Description: Evaluates a transform expression together with a conditional expression where the if-clause is an non-updating (transform) expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
if (copy $newVar := $var modify delete node $newVar/hours[1] return $newVar) then
    "This test should not fail"
else
   "This test should not fail"