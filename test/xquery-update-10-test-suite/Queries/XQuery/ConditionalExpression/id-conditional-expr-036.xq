(: Name: id-conditional-expr-036 :)
(: Description: Updating conditional expression in a conditional expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   if ($var/hours = 40) then
      if ($var/@gender = "female") then
         replace value of node $var/hours with 41
      else
         replace value of node $var/hours with 42
   else
      replace value of node $var/hours with 43