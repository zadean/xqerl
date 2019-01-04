(: Name: id-replace-expr-045 :)
(: Description: Check namepsace propogation when replacing an attribute. :)

declare copy-namespaces preserve, inherit;

declare namespace myco="http://www.example.com/myco";
declare namespace hisco="http://www.example.com/hisco";

(: insert-start :)
(: insert-end :)

let $myemps :=       <myco:employees salaried="false">
                       <myco:employee id='100'>
                          <myco:name>Samuel</myco:name>
                       </myco:employee>
                     </myco:employees>
let $newemps :=
   copy $e := $myemps
   modify replace node $e/@salaried with attribute hisco:salaried {"true"}
   return $e
return
    namespace-uri-for-prefix("hisco",
                             $newemps/myco:employee[1])
