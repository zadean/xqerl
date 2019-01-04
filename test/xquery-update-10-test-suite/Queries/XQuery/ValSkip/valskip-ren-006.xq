(: valskip-ren-006 - two updates create conflicting namespace bindings, not detected until
   upd:insert is executed, at which point it causes XUDY0024 :)
   
(: original test from Jan Cuypers, DataDirect, integrated by Michael Kay :)   

declare construction strip;
declare revalidation skip;
import schema default element namespace "http://ns.example.com/books";

(: insert-start :)
declare variable $books as document-node(schema-element(BOOKLIST)) external;
(: insert-end :)
 
let $a := <ns1:a xmlns:ns1="http://ns1"><b/></ns1:a>
return
(
 
  rename node $a as node-name(<ns2:a xmlns:ns2="http://ns2"/>),
 
  insert node  
     <a xmlns:ns2="http://ns3" ns2:b="b"/>/@*:b
  after $a/b
)

