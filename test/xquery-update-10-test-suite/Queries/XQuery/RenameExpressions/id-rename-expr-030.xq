(: Name: id-rename-expr-030 :)
(: Description: Rename an element using an invalid QName. :)

declare namespace example = "http://www.example.com/xquery";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[1]
return 
  rename node $var/@name as "example:fullname"
