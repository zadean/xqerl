(: Name: complex-replacevalues-q2 :)
(: Description: Replace values of trailing comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context/comment()[. >> $input-context/*]
return replace value of node $a with "Some comment"
