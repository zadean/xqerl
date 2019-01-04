(: Name: id-flwor-expr-022 :)
(: Description: Evaluation of a FLWOR expression, where return is a delete expression that deletes a series nodes bounded via for clause. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $var in $input-context/works[1]/employee
return 
  delete node $var/empnum[1]