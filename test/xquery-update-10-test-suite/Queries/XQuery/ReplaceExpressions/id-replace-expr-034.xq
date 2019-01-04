(: Name: id-replace-expr-034 :)
(: Description: Replace an attribute node with a sequence of attribute nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var/@name with (attribute fname {"D.C."}, attribute lname {"Fontana"})