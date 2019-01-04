(: Name: valstrict-ins-005 :)
(: Description: inserting an allowed attribute is fine :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <garbage xml:id="waste">rubbish</garbage>/@* as first into ($books/BOOKLIST/BOOKS/ITEM)[1]