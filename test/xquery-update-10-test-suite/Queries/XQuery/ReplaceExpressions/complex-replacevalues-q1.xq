(: Name: complex-replacevalues-q1 :)
(: Description: Replace the value of the leading comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context/comment()[. << $input-context/*]
return replace value of node $a with substring($a, 1, 5)
