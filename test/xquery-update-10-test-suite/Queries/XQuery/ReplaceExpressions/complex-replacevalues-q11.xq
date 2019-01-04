(: Name: complex-replacevalues-q11 :)
(: Description: Replace value of all attributes called "mark". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a at $pos in $input-context//@mark
return replace value of node $a with concat($a, " (", $pos, ")")
