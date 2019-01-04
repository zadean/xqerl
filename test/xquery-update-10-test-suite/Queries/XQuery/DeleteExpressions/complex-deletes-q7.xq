(: Name: complex-deletes-q7 :)
(: Description: Delete all text nodes that come directly after a comment or PI. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

delete nodes $input-context//text()[preceding-sibling::node()[1]/(self::comment() | self::processing-instruction())]
