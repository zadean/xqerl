(: Name: id-transform-expr-037 :)
(: Description: Transform a comment. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return
copy $var1 := $var/comment()[1]
  modify replace value of node $var1 with "testing"
  return <newemp> { $var1 } </newemp>
