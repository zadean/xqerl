(: Name: id-replace-expr-04 :)
(: Description: Evaluation of a replace expression that replaces a Processing Instruction node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return replace node $var/processing-instruction() with  processing-instruction {"target1"} {"content"}