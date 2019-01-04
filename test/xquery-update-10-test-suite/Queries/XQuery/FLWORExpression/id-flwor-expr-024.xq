(: Name: id-flwor-expr-024 :)
(: Description: For clause that contains a for expression with a updating return clause. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $var in 
   for $var in $input-context/works[1]/employee[1]/hours[1]
   return delete node $var
return 
  $var
