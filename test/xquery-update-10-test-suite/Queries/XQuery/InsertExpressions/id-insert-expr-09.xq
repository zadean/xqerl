(: Name: id-insert-expr-09 :)
(: Description: Evaluation of simple insert expression that uses "as last" and "into" clause only for an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[4]
return 
  insert node attribute type {"Part Time"} as last into $var