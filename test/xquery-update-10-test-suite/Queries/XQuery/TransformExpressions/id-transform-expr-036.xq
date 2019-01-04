(: Name: id-transform-expr-036 :)
(: Description: Transform a text node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
copy $var1 := $var/empnum[1]/text()
  modify replace value of node $var1 with "E43"
  return <newemp><empnum>{ $var1 }</empnum></newemp>
