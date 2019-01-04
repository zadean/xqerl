(: Name: id-insert-expr-036 :)
(: Description: Evaluation of insert expression where a sequence of elements is inserted as using "before" clause. Make sure order is mantained. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  insert node (<type>Part Time</type>,<age>26</age>) before $var/empnum[1]