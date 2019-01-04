(: Name: id-insert-expr-093 :)
(: Description: Insert an attribute that requires creation of a new namespace node. :)

declare namespace b="http://ns.example.com/id-insert-expr-093";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   (
   insert node attribute { 'b:newAtt' } {"newValue"} into $ot
   )
