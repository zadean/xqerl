(: Name: id-rename-expr-02 :)
(: Description: Evaluation of a rename expression that renames an attribute from an XML source. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/@name as "name1"