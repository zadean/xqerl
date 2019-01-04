(: Name: stf-transform-02 :)
(: Description: transform: ST of source expression is too vague. :)

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $item as item() := <employee name='John Q Public'/>
return
    copy $i := $item
    modify delete node $i/@name
    return $i
