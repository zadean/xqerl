(: Name: complex-deletes-q8 :)
(: Description: Delete all elements called "south-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//south-east
