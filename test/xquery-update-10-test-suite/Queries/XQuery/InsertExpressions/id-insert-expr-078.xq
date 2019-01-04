(: Name: id-insert-expr-078 :)
(: Description: Insert PI as first, as last, before, and after. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   insert nodes processing-instruction audio-output { "beep1" } as first into $ot,
   insert nodes processing-instruction audio-output { "beep2" } before $ot/day[. eq "Monday"],
   insert nodes processing-instruction audio-output { "beep3" } after $ot/day[. eq "Monday"],
   insert nodes processing-instruction audio-output { "beep4" } before $ot/day[. eq "Tuesday"],
   insert nodes processing-instruction audio-output { "beep5" } after $ot/day[. eq "Tuesday"],
   insert nodes processing-instruction audio-output { "beep6" } as last into  $ot
   )
