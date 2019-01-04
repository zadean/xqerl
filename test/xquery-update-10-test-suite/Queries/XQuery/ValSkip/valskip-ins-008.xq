(: Name: valskip-ins-008 :)
(: Description: with no validation, adding xml:id has is-ID property but not xs:ID type :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

(: we call the id() function in case the implementation builds ID indexes lazily :)
insert node attribute ids {count($books/id('jff001'))} into $books/BOOKLIST,
insert node attribute xml:id {"unique"} into ($books//AUTHOR)[1]