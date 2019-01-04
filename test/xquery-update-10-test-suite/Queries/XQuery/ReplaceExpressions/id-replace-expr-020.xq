(: Name: id-replace-expr-020 :)
(: Description: Evaluation of a replace expression where the target is a document node and usage of the "value of" keyword. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var1 := $input-context
let $var2 := <salaries><salary>2</salary></salaries>
return replace value of node $var1 with $var2