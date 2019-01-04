(: Name: id-delete-expr-05 :)
(: Description: Evaluation of a delete expression that remove a sequence of element nodes from a data source :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := ($input-context/works[1]/employee[1],$input-context/works[1]/employee[2],$input-context/works[1]/employee[3],$input-context/works[1]/employee[4])
return 
  delete node $var