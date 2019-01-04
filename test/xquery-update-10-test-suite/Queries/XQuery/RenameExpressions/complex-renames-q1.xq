(: Name: complex-renames-q1 :)
(: Description: Rename all PIs with target "a-pi". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//processing-instruction("a-pi")
return rename node $a as "new-a"
