(: Name: id-insert-expr-039 :)
(: Description: Evaluation of insert expression where a sequence of comments is inserted as using "after" clause. Make sure order is mantained. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  insert node (<!-- First Inserted Comment -->,<!-- Second Inserted Comment -->) after $var/empnum[1]