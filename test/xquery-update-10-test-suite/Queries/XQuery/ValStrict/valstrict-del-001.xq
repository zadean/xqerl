(: Name: valstrict-del-001 :)
(: Description: deleting a mandatory element is bad news :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete node ($books//AUTHOR)[1]