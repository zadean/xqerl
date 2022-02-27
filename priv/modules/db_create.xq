declare variable $data external;
declare variable $uri external;
declare variable $type external;
declare variable $dbIO := QName("ERR", 'dbIO');
try {
let $item := 
  switch ( $type )
    case "application/xml" return ( $data => parse-xml()  )
    case "application/json" return( $data => parse-json() )
    default return error( $dbIO,"Fail: can not handle content type")

let $looksLikeDomain :=  function($uri){ 
  ($uri => tokenize('/'))[3] => contains('.')
  }

return 
if ( $looksLikeDomain($uri) ) then
  if ( $item instance of document-node() ) then (true(), $item => db:put($uri) )
  else if ( $item instance of map(*) ) then (true(), $item => db:put($uri))
  else if ( $item instance of array(*) ) then (true(), $item => db:put($uri))
  else false()
else false()
} catch * { false() }
