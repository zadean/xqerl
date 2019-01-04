(: Name: complex-deletes-q12 :)
(: Description: Delete all attributes on the "west" element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//west/@*
