(: Name: applyUpdates-008 :)
(: Description: Apply replaceNode then delete. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   (
   delete node $var/hours,
   replace node $var/hours with comment { "vacation" }
   )
