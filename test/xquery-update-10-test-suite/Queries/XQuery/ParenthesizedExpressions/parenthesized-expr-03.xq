(: Name: parenthesized-expr-03 :)
(: Description: Parenthesized vacuous expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $var in 
   (
   for $var in $input-context/works[1]/employee[1]/hours[1]
   return ()
   )
return 
  $var
