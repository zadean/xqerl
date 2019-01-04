(: Name: complex-deletes-q11 :)
(: Description: Delete all attributes called "mark". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//@mark
