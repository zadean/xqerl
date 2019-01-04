(: Name: id-replace-expr-06 :)
(: Description: Evaluation of a replace expression that replaces an attribute node and usage of "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace value of node $var/attribute::name with "Jane Doe 1-1"