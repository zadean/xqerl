(: Name: complex-renames-q8 :)
(: Description: Rename the attributes names "west-attr-2", "center-attr-2", and "south-attr-2". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//(@west-attr-2 | @center-attr-2 | @south-attr-2)
return rename node $a as "luke"
