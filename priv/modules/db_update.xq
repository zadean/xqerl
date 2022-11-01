declare variable $data external;
declare variable $uri external;
declare variable $type external;

let $toTabularDataModel := function( $csvData  ){
  let $data := $csvData=> csv:parse()
  let $names :=  $data => array:head()
  let $records :=  $data => array:tail()
  return
  $records => array:for-each( function($record){
   array {
     for $field at $i in $record?*
     let $key := array:get($names,$i)
     return map:entry( $key , $field)}})
}

let $item := 
  switch ( $type )
    case "application/xml" return ( $data => parse-xml()  )
    case "application/json" return( $data => parse-json() )
    case "text/csv" return $data => $toTabularDataModel()
    default return ( false() )
return 
if ( $item instance of document-node() ) then (true(), $item => db:put($uri) )
else if ( $item instance of map(*) ) then (true(), $item => db:put($uri))
else if ( $item instance of array(*) ) then (true(), $item => db:put($uri))
else false()
