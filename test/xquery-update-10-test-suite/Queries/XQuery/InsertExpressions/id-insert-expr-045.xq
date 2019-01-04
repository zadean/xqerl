(: Name: id-insert-expr-045 :)
(: Description: Evaluation of insert expression, where the before clause is used and the result is a document node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context
return 
insert node <hours>10</hours> before $var