(: Name: valskip-ins-007 :)
(: Description: with no validation, adding xsi:nil is not an error :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


insert node attribute xsi:nil {"true"} into ($books//AUTHOR)[1]