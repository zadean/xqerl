(: Name: valskip-ren-003 :)
(: Description: renaming an xml:id attribute affects result of id() function :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

(: we call the id() function in case the implementation builds ID indexes lazily :)
insert node attribute ids {count($books/id('jff001'))} into $books/BOOKLIST,
for $a in $books//@xml:id 
return rename node $a as "ex-id"