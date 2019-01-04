(: Name: complex-renames-q2 :)
(: Description: Rename all elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//south-east
return rename node $a as "se"
