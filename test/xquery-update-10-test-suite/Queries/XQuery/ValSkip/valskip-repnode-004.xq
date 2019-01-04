(: Name: valskip-repnode-004 :)
(: Description: replacing an ID attribute with construction=strip drops the ID :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

let $old := id("P", $books)/@CODE return
replace node ($books//CATEGORY)[1]/@CODE with attribute {"CODE"}{concat($old, "2")}