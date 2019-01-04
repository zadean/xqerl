(: Name: fn-put-014 :)
(: Description: Multiple invocations of fn:put on the same URI. :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

let $d := document { <test/> }
return
  (
  fn:put($d, $input-URI),
  fn:put($d, $input-URI)
  )
