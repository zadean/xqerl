(: Name: id-transform-expr-035 :)
(: Description: Transform an attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
copy $var1 := $var/@name
  modify replace value of node $var1 with "Ursla LeGuin"
  return <newemp> { $var1 } </newemp>
