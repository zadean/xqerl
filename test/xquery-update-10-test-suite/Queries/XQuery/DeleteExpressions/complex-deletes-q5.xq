(: Name: complex-deletes-q5 :)
(: Description: Delete all text node children of element "south". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//south/text()
