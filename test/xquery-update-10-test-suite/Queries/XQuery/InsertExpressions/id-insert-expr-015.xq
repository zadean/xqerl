(: Name: id-insert-expr-015 :)
(: Description: Evaluation of simple insert expression that uses "into" clause only for a comment node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[1]/hours[1]
return 
  insert node <!-- A Comment Node --> into $var