(: Name: id-replace-expr-09 :)
(: Description: Evaluation of a replace expression that replaces an element node and usage of an :)
(: arithmetic expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var/hours[1] with (xs:integer($var/hours[1]) + 10)