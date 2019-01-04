(: Name: id-insert-expr-07 :)
(: Description: Evaluation of simple insert expression that uses "before" clause only for an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[3]
return 
  insert node attribute type {"Part Time"} before $var