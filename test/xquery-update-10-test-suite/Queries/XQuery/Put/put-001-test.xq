(: put-001-test.xq :)
(: simple test of fn:put function :)

(: insert-start :)
declare variable $input-URI external;
(: insert-end :)

<out>{
  day-from-date(current-date()) = doc($input-URI)/a/b/@c
}</out>