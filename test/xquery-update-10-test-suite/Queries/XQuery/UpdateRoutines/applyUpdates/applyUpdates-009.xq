(: Name: applyUpdates-009 :)
(: Description: Apply multiple operations to the same node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   insert node attribute overtime { "false" } into $var/hours,
   insert node comment { "punctual" } into $var/hours,
   insert node <employeeOfTheWeek>true</employeeOfTheWeek> before $var/hours/text(),
   replace value of node $var/hours with "50",
   delete node $var/hours
   )
