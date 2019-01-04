(: Name: valstrict-ins-001 :)
(: Description: inserting a disallowed element is bad news :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <garbage>rubbish</garbage> as first into ($books/BOOKLIST/BOOKS/ITEM)[1]