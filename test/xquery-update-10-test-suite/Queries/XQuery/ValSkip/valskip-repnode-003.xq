(: Name: valskip-repnode-003 :)
(: Description: replace attribute retains type of attribute with construction preserve :)

declare construction preserve;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

let $d := validate strict {<DIMENSIONS UNIT="cm">12.3 1.0 2.0</DIMENSIONS>}
return 
  replace node ($books//@UNIT)[1] with $d/@UNIT