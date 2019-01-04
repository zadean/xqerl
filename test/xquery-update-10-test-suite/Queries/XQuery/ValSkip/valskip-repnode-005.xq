(: Name: valskip-repnode-005 :)
(: Description: replacing an ID attribute with construction=preserve drops the old ID and creates a new one :)

declare construction preserve;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


let $old := id("P", $books)/@CODE 
let $p2 := validate strict {<CATEGORY CODE="{$old}2" DESC=""/>}
return replace node ($books//CATEGORY)[1]/@CODE with $p2/@CODE