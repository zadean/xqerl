(: Name: id-replace-expr-03 :)
(: Description: Evaluation of a replace expression that replaces a comment node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return replace node $var/comment() with  <!-- A new Comment -->