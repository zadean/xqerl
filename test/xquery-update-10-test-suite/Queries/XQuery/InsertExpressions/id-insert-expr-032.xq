(: Name: id-insert-expr-032 :)
(: Description: Evaluation of insert expression where a sequence of attributes is inserted as first. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  insert node (attribute type  {"Part Time"}, attribute age {"26"}) as first into $var