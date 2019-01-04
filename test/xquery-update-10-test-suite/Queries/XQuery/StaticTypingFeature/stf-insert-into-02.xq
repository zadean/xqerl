(: Name: stf-insert-into-02 :)
(: Description: insert-into: ST of TargetExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source := <status>active</status>
for $target in $input-context/works/node()[not(self::text())]
return
    insert node $source into $target
