(: Name: valstrict-repnode-003 :)
(: Description: replace element is OK if the new node is valid :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


replace node ($books//AUTHOR)[1] with <AUTHOR>Thursday Next</AUTHOR>