(: Name: id-insert-expr-086 :)
(: Description: Check namepsace propogation when inserting an attribute. :)

declare copy-namespaces preserve, no-inherit;

declare namespace myco="http://www.example.com/myco";
declare namespace hisco="http://www.example.com/hisco";

(: insert-start :)
(: insert-end :)

let $myemps :=       <myco:employees>
                       <myco:employee id='100'>
                          <myco:name>Samuel</myco:name>
                       </myco:employee>
                     </myco:employees>
let $newemps :=
   copy $e := $myemps
   modify insert node attribute hisco:salaried {"true"} into $e
   return $e
return
    namespace-uri-for-prefix("hisco",
                             $newemps/myco:employee[1])
