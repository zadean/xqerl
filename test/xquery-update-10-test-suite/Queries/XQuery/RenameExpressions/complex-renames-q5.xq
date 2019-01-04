(: Name: complex-renames-q5 :)
(: Description: Rename the element called "far-east". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

rename node $input-context/far-north/north/near-north/far-east as "new-far-east"
