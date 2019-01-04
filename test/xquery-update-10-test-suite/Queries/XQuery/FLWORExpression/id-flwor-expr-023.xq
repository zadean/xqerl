(: Name: id-flwor-expr-023 :)
(: Description: For clause that contains a for expression with a simple return clause. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $var in 
   for $var in $input-context/works[1]/employee[1]/hours[1]
   return $var
return 
  $var
