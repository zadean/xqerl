(: Name: id-insert-expr-010 :)
(: Description: Evaluation of simple insert expression that uses "into" clause only for an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[4]
return 
  insert node attribute type {"Part Time"} into $var