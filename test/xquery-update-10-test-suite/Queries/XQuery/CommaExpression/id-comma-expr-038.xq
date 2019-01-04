(: Name: id-comma-expr-038 :)
(: Description: Simple comma expression in a conditional expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   if ($var/hours eq 41) then
      ( "Test", 123 )
   else
      replace value of node $var/hours with 43
