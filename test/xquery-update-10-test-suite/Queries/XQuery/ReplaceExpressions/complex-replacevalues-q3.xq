(: Name: complex-replacevalues-q3 :)
(: Description: Replace value of all PIs with target "a-pi". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//processing-instruction("a-pi")
return replace value of node $a with concat($a, " (postfix)")
