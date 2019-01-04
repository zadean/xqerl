(: Name: id-replace-expr-015 :)
(: Description: Evaluation of a replace expression where the target is a document node. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context
let $var2 := <salaries><salary>2</salary></salaries>
return replace node $var1 with $var2