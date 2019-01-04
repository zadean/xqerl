(: Name: id-insert-expr-053 :)
(: Description: Insert empty sequences into, as first, as last, before, and after. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   insert nodes () as first into $ot,
   insert nodes () before $ot/day[. eq "Monday"],
   insert nodes () after $ot/day[. eq "Monday"],
   insert nodes () before $ot/day[. eq "Tuesday"],
   insert nodes () after $ot/day[. eq "Tuesday"],
   insert nodes () as last into  $ot,
   insert nodes () into  $ot
   )
