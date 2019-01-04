(: Name: valtrans-ins-003 :)
(: Description: inserting a disallowed element is bad news; detected by revalidation defined
   in prolog of library module :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";
import module namespace m1 = "http://www.w3.org/xqupd/tests/ns/valtrans-ins-003" at "valtrans-ins-003-mod1.xq";   

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)

m1:update($books)


      