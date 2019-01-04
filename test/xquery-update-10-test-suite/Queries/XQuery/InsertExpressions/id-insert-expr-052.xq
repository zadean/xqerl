(: Name: id-insert-expr-052 :)
(: Description: Insert into respects as first, as last, before, and after. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   insert nodes <test1/> as first into $ot,
   insert nodes <test2/> before $ot/day[. eq "Monday"],
   insert nodes <test3/> after $ot/day[. eq "Monday"],
   insert nodes <test4/> before $ot/day[. eq "Tuesday"],
   insert nodes <test5/> after $ot/day[. eq "Tuesday"],
   insert nodes <test6/> as last into  $ot,
   insert nodes <test7/> into  $ot
   )
