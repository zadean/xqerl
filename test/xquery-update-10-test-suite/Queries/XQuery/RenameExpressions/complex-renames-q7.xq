(: Name: complex-renames-q7 :)
(: Description: Rename all attributes on the "west" element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a at $pos in $input-context//west/@*
return rename node $a as concat("at", $pos)
