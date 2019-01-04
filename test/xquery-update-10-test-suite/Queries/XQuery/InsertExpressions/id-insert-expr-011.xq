(: Name: id-insert-expr-011 :)
(: Description: Evaluation of simple insert expression that uses "after" clause only for a comment node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]/employee[1]/hours[1]
return 
  insert node <!-- A Comment Node --> after $var