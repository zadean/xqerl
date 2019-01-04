(: Name: id-insert-expr-079 :)
(: Description: Insert a document as first. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $ot := $input-context/works[1]/employee[@name="John Doe 12"]/overtime
return
   insert node $input-context as first into $ot
