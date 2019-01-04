(: Name: id-comma-expr-032 :)
(: Description: Evaluation of a transform expression used with comma expression where the :)
(: first expression is an updating expression.  The second one is an invokation to fn:error() :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var :=  $input-context/works[1]/employee[1]
return
  (copy $newVar := $var modify delete node $newVar/hours[1] return $newVar, fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000')))