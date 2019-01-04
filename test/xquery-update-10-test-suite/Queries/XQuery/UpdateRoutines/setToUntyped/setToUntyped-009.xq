(: Name: setToUntyped-009 :)
(: Description: Check that all properties are set correctly by upd:setToUntyped. :)

declare construction strip;
declare default element namespace "http://ns.example.com/books2";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := document { <test oldattr="abc"><content/></test> }
modify replace node $var1/test[1]/@oldattr with $input-context/BOOKLIST[1]/BOOKS[1]/ITEM[1]/@CAT
return
    (
    $var1/test[1]/@CAT instance of attribute(*, xs:untypedAtomic),
    $var1/test[1]/@CAT instance of attribute(*, xs:string)
    )
