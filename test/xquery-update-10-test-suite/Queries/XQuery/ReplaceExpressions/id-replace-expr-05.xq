(: Name: id-replace-expr-05 :)
(: Description: Evaluation of a replace expression that replaces an element and usage of "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace value of node $var/hours[1] with 26