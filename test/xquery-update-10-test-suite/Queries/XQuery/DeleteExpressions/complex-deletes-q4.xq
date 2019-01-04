(: Name: complex-deletes-q4 :)
(: Description: Delete last text node child of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context/far-north/text()[last()]
