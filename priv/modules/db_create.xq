declare namespace csv = "http://xqerl.org/modules/csv";
declare variable $data external;
declare variable $uri external;
declare variable $type external;
declare variable $dbIO := QName("ERR", 'dbIO');

(:
@variable type: as Content-Type header
represents supported data formats that 
can be parsed into a XDM representation
Note: we are not handling binary 'application/octet-stream' data
such as images.
: TODO 
urlencoded: application/x-www-form-urlencoded saveas map{*}
yaml: application/yaml saveas map {*}
:)

try {
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

let $toTabularDataMeta := function( $csvData  ){
  map { 
    '@context': 'http://www.w3.org/ns/csvw',
    'url': $uri }
}

let $item := 
  switch ( $type )
    case "application/xml" return $data => parse-xml()
    case "application/json" return $data => parse-json() 
    case "text/csv" return $data => $toTabularDataModel()
    default return error( $dbIO,"Fail: can not handle content type")

return 
  if ( $item instance of document-node() ) then (true(), $item => db:put($uri) )
  else if ( $item instance of map(*) ) then (true(),  $item => db:put($uri))
  else if ( $item instance of array(*) ) then 
    switch ( $type )
      case "text/csv" return ( 
      true(),
      $data => $toTabularDataMeta() => db:put( $uri || '-metadata.json' ), 
      $item =>  db:put($uri))
      default return (true(), $item => db:put($uri))
else false()
} catch * { false() }
