(: Name: vallax-ins-007 :)
(: Description: inserting a duplicate xml:id is fine if we get rid of the old one :)

declare construction strip;
declare revalidation lax;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node <garbage xml:id="jff001">rubbish</garbage>/@* as first into ($books/BOOKLIST/BOOKS/ITEM)[1],
replace value of node id('jff001', $books)/@xml:id with "jff002"