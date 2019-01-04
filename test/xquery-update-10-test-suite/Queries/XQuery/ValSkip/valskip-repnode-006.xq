(: Name: valskip-repnode-006 :)
(: Description: replacing an IDREF attribute with construction=strip drops the old IDREF :)

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)


let $old := count(idref("P", $books))
let $pref := validate strict {<DUMMYREF CATREF="P"/>}
return (replace node ($books//ITEM)[2]/@CAT with $pref/@CATREF,
        insert node comment{ $old } as first into $books)