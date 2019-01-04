(: Name: complex-deletes-q3 :)
(: Description: Delete all PIs with target "a-pi". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//processing-instruction("a-pi")
