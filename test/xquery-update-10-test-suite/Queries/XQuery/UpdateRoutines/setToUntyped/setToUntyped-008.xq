(: Name: setToUntyped-008 :)
(: Description: Check that all properties are set correctly by upd:setToUntyped. :)

declare construction strip;
declare default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

copy $var1 := document { <test><content/></test> }
modify insert node $input-context/BOOKLIST[1]/BOOKS[1]/ITEM[1]/DIMENSIONS[1]/@UNIT into $var1/test[1]
return (
       $var1/test[1]/@UNIT instance of attribute(*, xs:untypedAtomic),
       $var1/test[1]/@UNIT eq "in"
       )
