(: Name: id-insert-expr-038 :)
(: Description: Evaluation of insert expression where a sequence of comments is inserted as using "before" clause. Make sure order is mantained. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
 insert node (<!-- First Inserted Comment -->,<!-- Second Inserted Comment -->) before $var/empnum[1]