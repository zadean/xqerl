declare variable $data external;
declare variable $uri external;
declare variable $type external;

let $item := 
  switch ( $type )
    case "application/xml" return ( $data => parse-xml()  )
    case "application/json" return( $data => parse-json() )
    default return ()
return 
if ( $item instance of document-node() ) then (true(), $item => db:put($uri) )
else if ( $item instance of map(*) ) then (true(), $item => db:put($uri))
else if ( $item instance of array(*) ) then (true(), $item => db:put($uri))
else false()




 


