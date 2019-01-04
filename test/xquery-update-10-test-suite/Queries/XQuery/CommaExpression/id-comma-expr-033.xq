(: Name: id-comma-expr-033 :)
(: Description: Evaluation of a transform expression used with comma expression where the :)
(: first expression is an invokation to fn:error() and the second one is an updating expression. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=  $input-context/works[1]/employee[3]
return
  (fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')), copy $newVar := $var modify delete node $newVar/hours[1] return $newVar)