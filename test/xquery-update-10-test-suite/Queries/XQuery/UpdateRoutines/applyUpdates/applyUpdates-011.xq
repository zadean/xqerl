(: Name: applyUpdates-011 :)
(: Description: Delete elements and merge text nodes. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[2]
return
   delete node $var/*
