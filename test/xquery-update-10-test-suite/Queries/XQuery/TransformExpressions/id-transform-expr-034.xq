(: Name: id-transform-expr-033 :)
(: Description: Transform a document. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context
  modify rename node $var1/works[1] as "workers"
  return $var1
