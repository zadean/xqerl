(: Name: id-transform-expr-040 :)
(: Description: Transform a document by changing the namespaces of its elements. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := $input-context
modify
   for $e in $var1//*
   return rename node $e as fn:QName("http://www.example.com/xquery", concat("example:", local-name($e)))
return $var1
