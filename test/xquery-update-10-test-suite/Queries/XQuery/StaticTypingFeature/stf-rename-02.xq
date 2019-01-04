(: Name: stf-rename-02 :)
(: Description: rename: ST of TargetExpr is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

for $target in $input-context/works/node()[not(self::text())]
return
    rename node $target as "emp"
