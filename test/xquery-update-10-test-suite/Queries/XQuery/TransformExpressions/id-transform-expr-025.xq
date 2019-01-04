(: Name: id-transform-expr-025 :)
(: Description: Evaluates a transform expression, where an Element is modified by a "replace" expression and :)
(: of its children is also updated by a "replace with value of" expression :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  copy $newVar := $var
  modify 
   (replace node $newVar/hours[1] with <hours>35</hours>, replace value of node $newVar with <newEmployee>New Employee</newEmployee>)
    return $newVar