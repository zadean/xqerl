(: Name: id-comma-expr-036 :)
(: Description: Updating comma expression in a conditional expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   if ($var/hours = 41) then
      (
      replace value of node $var/hours with 41,
      replace value of node $var/hours with 42
      )
   else
      replace value of node $var/hours with 43