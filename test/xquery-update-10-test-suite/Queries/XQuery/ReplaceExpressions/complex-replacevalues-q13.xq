(: Name: complex-replacevalues-q13 :)
(: Description: Replace the value of the attributes named "west-attr-2", "center-attr-2", and "south-attr-2". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//(@west-attr-2 | @center-attr-2 | @south-attr-2)
return replace value of node $a with ""
