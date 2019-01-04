(: Name: compatibility-015 :)
(: Description: A comment node is replaced more than once. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
let $new1 := comment {"test"}
let $new2 := comment {"otherTest"}
return
   (
   replace node $var/comment()[1] with $new1,
   replace node $var/comment()[1] with $new2
   )
