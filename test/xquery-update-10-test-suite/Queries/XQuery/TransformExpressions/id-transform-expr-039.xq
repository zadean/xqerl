(: Name: id-transform-expr-039 :)
(: Description: Transform two elements copied from the same element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return
   copy $var1 := $var, $var2 := $var
   modify
      (
      replace value of node $var1/@name with "Pamela Seargent",
      replace value of node $var2/@gender with "male"
      )
   return <result> { $var1, $var2 } </result>
