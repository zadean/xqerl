(: Name: id-delete-expr-08 :)
(: Description: Evaluation of a delete expression where target expression results in a  sequence of zero nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  delete node ($var/hours[2+1])