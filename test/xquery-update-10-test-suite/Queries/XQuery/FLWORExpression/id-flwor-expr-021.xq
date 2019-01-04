(: Name: id-flwor-expr-021 :)
(: Description: Evaluation of a FLWOR expression, where return is a delete expression that deletes a series nodes bounded via let clause. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := ($input-context/works[1]/employee[1], $input-context/works[1]/employee[2], $input-context/works[1]/employee[3])
return 
  delete node $var/empnum[1]