(: Name: complex-replacevalues-q6 :)
(: Description: Replace value of the text node child of element "east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace value of node $input-context//east/text() with "very east"
