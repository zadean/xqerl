(: Name: valstrict-del-004 :)
(: Description: deleting an optional attribute is fine :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


delete node ($books//ITEM/@TAX)[1]