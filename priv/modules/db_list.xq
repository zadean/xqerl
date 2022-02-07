declare variable $host external;
declare variable $uri external;
declare variable $type external;
try {
let $seq :=
 for $item in  uri-collection($uri) 
 return replace($item, 'http://', concat('http://', $host,':8081/db/' ))
return 
 if( empty( $seq )) 
 then ()
 else $seq =>  string-join('&#10;') 
} catch * { () } 

