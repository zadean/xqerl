(: Name: id-transform-expr-053 :)
(: Description: The copy clause sometimes changes the in-scope-namespaces. :)

declare copy-namespaces no-preserve, inherit;

(: insert-start :)
declare variable $input-context external;
(: insert-end :)

let $a := <x:a xmlns:x="http://www.example.com/a"><b/></x:a>
let $copyb := copy $b := $a/b
              modify ()
              return $b
return empty(in-scope-prefixes($copyb)[.="x"])
