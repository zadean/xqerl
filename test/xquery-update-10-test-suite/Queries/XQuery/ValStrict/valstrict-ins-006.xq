(: Name: valstrict-ins-006 :)
(: Description: inserting an xml:id doesn't work unless it's unique :)

declare construction strip;
declare revalidation strict;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <garbage xml:id="jff001">rubbish</garbage>/@* as first into ($books/BOOKLIST/BOOKS/ITEM)[1]