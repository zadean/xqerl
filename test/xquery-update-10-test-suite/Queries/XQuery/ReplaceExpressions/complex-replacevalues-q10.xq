(: Name: complex-replacevalues-q10 :)
(: Description: Replace value of the element called "south". :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace value of node $input-context/far-north/north/near-north/center/near-south/south with ""
