(: Name: complex-deletes-q1 :)
(: Description: Delete leading comments of document element. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context/comment()[. << $input-context/*]
