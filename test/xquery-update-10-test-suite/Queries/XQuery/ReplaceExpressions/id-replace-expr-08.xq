(: Name: id-replace-expr-08 :)
(: Description: Evaluation of a replace expression that replaces a PI node and usage of "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context/works[1]/employee[13]/processing-instruction()
let $var2 := processing-instruction {"target1"} {"content1"}
return replace value of node $var1 with $var2