(: Name: complex-replacevalues-q5 :)
(: Description: Replace value of all text node children of element "south". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//south/text()
return replace value of node $a with " south "
