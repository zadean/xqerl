(: Name: id-transform-expr-038 :)
(: Description: Transform a PI. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[13]
return
copy $var1 := $var/processing-instruction()
  modify replace value of node $var1 with "testing"
  return <newemp> { $var1 } </newemp>
