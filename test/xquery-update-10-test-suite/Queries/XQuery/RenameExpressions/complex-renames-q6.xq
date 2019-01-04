(: Name: complex-renames-q6 :)
(: Description: Rename all attributes called "mark". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//@mark
return rename node $a as "matthew"
