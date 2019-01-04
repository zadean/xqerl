(: Name: complex-replacevalues-q8 :)
(: Description: Replace value of all elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//south-east
return replace value of node $a with "very south east"