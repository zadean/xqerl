(: Name: complex-deletes-q10 :)
(: Description: Delete the element called "far-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context/far-north/north/near-north/far-east
