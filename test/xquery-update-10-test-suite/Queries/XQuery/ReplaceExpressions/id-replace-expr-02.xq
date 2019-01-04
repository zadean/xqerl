(: Name: id-replace-expr-02 :)
(: Description: Evaluation of a replace expression that replaces an attribute node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return replace node $var/attribute::name with attribute name1 {"new name"}