(: Name: id-delete-expr-02 :)
(: Description: Evaluation of a delete expression that removes an attribute from an element in a data source :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[4]
return 
  delete node $var/attribute::name