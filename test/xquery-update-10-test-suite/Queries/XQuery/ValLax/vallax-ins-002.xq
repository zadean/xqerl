(: Name: vallax-ins-002 :)
(: Description: inserting a element that exceeds maxOccurs is bad news :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <TITLE xmlns="http://ns.example.com/books">rubbish</TITLE> as first into ($books/BOOKLIST/BOOKS/ITEM)[1]