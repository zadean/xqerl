(: Name: id-delete-expr-04 :)
(: Description: Evaluation of a delete expression that remove multiple elements from an xml file :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)


let $var := $input-context/works[1]
return 
  delete node $var/employee[position() <= 12]