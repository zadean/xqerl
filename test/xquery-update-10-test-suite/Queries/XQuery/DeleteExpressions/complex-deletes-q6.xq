(: Name: complex-deletes-q6 :)
(: Description: Delete the text node child of element "east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//east/text()
