(: Name: id-rename-expr-022 :)
(: Description: Rename a text node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/text()[1] as "text"