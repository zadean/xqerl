(: Name: vallax-ins-003 :)
(: Description: inserting a second AUTHOR is OK :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <AUTHOR xmlns="http://ns.example.com/books">Thursday Next</AUTHOR> after ($books/BOOKLIST/BOOKS/ITEM/AUTHOR)[1]