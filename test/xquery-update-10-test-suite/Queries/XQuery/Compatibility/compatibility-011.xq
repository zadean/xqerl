(: Name: compatibility-011 :)
(: Description: An text node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
let $new1 := text {"test"}
let $new2 := text {"otherTest"}
return
   (
   replace node $var/text()[1] with $new1,
   replace node $var/text()[1] with $new2
   )
