(: Name: valskip-repnode-006-test :)
(: Description: replacing an IDREF attribute with construction=strip drops the old IDREF :)

import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(element(BOOKLIST)) external;
(: insert-end :)


<out><old>{$books/comment()}</old><new>{count(idref("P", $books))}</new></out>        