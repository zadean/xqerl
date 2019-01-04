(: Name: complex-replacevalues-q4 :)
(: Description: Replace value of last text node child of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

replace value of node $input-context/far-north/text()[last()] with "The End"
