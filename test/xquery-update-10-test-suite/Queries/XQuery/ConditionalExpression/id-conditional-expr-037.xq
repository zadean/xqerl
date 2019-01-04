(: Name: id-conditional-expr-037 :)
(: Description: Vacuous conditional expression in a conditional expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   if ($var/hours = 45) then
      if ($var/@gender = "female") then
         ()
      else
         ()
   else
      replace value of node $var/hours with 43
