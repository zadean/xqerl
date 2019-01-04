(: Name: complex-replacevalues-q7 :)
(: Description: Replace the value of all text nodes that come directly after a comment or PI. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $a in $input-context//text()[preceding-sibling::node()[1]/(self::comment() | self::processing-instruction())]
return replace value of node $a with ""
