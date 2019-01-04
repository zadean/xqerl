(: Name: id-insert-expr-040 :)
(: Description: Evaluation of insert expression where a two groups of element nodes is inserted as using "after" clause. Make sure order is mantained within groups. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return (
  insert node (<type>Part Time</type>,<age>26</age>) after $var/empnum[1],
  insert node (<type>Full Time</type>,<age>30</age>) after $var/empnum[1]
)