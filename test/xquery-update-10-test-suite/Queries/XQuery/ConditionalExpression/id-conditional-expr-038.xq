(: Name: id-conditional-expr-038 :)
(: Description: Simple conditional expression in a conditional expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   if ($var/hours eq 45) then
      if ($var/@gender eq "female") then
         $var/@gender
      else
         $var/@name
   else
      replace value of node $var/hours with 43
