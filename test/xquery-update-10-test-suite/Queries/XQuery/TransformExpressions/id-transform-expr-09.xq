(: Name: id-transform-expr-09 :)
(: Description: Evaluation of a transform expression where the transform clause contains an invokation :)
(: to fn:error() :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $var := $input-context/works[1]/employee[3]
return 
  copy $newVar := $var
  modify fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))
  return $newVar