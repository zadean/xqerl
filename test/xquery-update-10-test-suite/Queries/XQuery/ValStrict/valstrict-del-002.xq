(: Name: valstrict-del-002 :)
(: Description: deleting an optional element is perfectly OK :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete node ($books//PRICE)[1]