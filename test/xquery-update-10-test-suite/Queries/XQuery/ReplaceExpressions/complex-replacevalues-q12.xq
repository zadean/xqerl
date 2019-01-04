(: Name: complex-replacevalues-q12 :)
(: Description: Replace value of all attributes on the "west" element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//west/@*
return replace value of node $a with "west coast"
