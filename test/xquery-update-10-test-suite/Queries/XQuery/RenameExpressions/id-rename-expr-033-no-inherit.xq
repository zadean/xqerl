
declare copy-namespaces preserve, no-inherit;

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
   modify rename node $e as xs:QName("hisco:employees")
   return $e
return
    namespace-uri-for-prefix("hisco",
                             $newemps/myco:employee[1])