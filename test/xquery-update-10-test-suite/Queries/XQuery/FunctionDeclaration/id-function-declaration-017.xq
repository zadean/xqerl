(: Name: id-function-declaration-017 :)
(: Description: Recursive updating function. :)


declare updating function local:increase($e as element(b)?, $amount as xs:integer) 
   {
     if ($e) then (
        replace value of node $e with ($e + $amount),
        local:increase($e/../b[.>>$e][1], $amount+1)
        (: i.e. $e/following-sibling::b[1], but we're not allowed to use the following-sibling axis: see bug 8251 :)
     ) else ()
   };
   
let $a1 :=
   <a>{for $i in 1 to 100 return <b>{$i}</b>}</a>
let $a2 := 
   copy $a3 := $a1
   modify local:increase($a3/b[1], 1)
   return $a3
return <totals>{sum($a1/b/xs:integer(.)), sum($a2/b/xs:integer(.))}</totals>