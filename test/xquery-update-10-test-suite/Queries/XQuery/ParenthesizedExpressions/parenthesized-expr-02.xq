(: Name: parenthesized-expr-02 :)
(: Description: Parenthesized updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $var in 
   (
   for $var in $input-context/works[1]/employee[1]/hours[1]
   return delete node $var
   )
return 
  $var
