(: Name: id-insert-expr-077 :)
(: Description: Insert text nodes as first, as last, before, and after. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   insert nodes text { "test1" } as first into $ot,
   insert nodes text { "test2" } before $ot/day[. eq "Monday"],
   insert nodes text { "test3" } after $ot/day[. eq "Monday"],
   insert nodes text { "test4" } before $ot/day[. eq "Tuesday"],
   insert nodes text { "test5" } after $ot/day[. eq "Tuesday"],
   insert nodes text { "test6" } as last into  $ot
   )
