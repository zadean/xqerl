(: Name: id-replace-expr-07 :)
(: Description: Evaluation of a replace expression that replaces a comment node and usage of "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return replace value of node $var/comment() with "A New Comment"