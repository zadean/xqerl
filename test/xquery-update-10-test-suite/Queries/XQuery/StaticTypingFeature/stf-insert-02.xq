(: Name: stf-insert-02 :)
(: Description: insert: ST of SourceExpr has non-attribute before attribute. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $source := ( element status {'active'}, attribute type {'PT'} )
for $target in $input-context/works/employee[@nonexistent]
return
    insert nodes $source into $target
