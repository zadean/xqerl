declare variable $uri external;
declare variable $accept external;
declare variable $base external;
declare variable $dbIO := QName("ERR", 'dbIO');
try {
let $nodeKind := function( $node as node() ) as xs:string {
 if ($node instance of element()) then 'element'
 else if ($node instance of attribute()) then 'attribute'
 else if ($node instance of text()) then 'text'
 else if ($node instance of document-node()) then 'document-node'
 else if ($node instance of comment()) then 'comment'
 else if ($node instance of processing-instruction()) then 'processing-instruction'
 (: should include namespace? :)
 else ( 'unknown node')
}

let $funcType := function( $item as item()) as xs:string {
  if ($item instance of map(*)) then 'map'
  else if ($item instance of array(*)) then 'array'
  else 'function'
}

let $itemType := function( $item as item() ) as xs:string {
 if ( $item instance of node() ) then $item => $nodeKind()
 else if ( $item instance of function(*) ) then $item => $funcType()
 else if ( $item instance of xs:anyAtomicType )  then 'atomic'
 else ( 'unknown instance' )
}

let $isItem := function( $uri ) {
  try {
    let $col := remove($uri => tokenize('/'), $uri => tokenize('/') => count()) => string-join('/')
    let $uriCollection := $col => uri-collection()
    return $uri = ($uriCollection)
  } catch * {false()}
}

return ( 
    if ( $uri => $isItem())
    then 
      let $dbItem := $uri => db:get()
      let $dbItemType := $dbItem => $itemType()
      return
        switch ( $dbItemType ) 
        case 'document-node' return  
          switch ( $accept )
          case "application/xml" return $dbItem  => serialize(map{'method': 'xml','omit-xml-declaration': true() })
          case "application/json" return $dbItem => serialize(map{'method': 'json'})
          default return  error( $dbIO, ``[ [ `{ $accept }` ] can not serialize  ]``)  
        case 'array' return  
          switch ( $accept )
          case "application/json" return $dbItem => serialize(map{'method': 'json'})
          default return  error( $dbIO, ``[ [ `{ $accept }` ] can not serialize  ]``) 
        case 'map' return  
          switch ( $accept )
          case "application/json" return $dbItem => serialize(map{'method': 'json'})
          default return  error( $dbIO, ``[ [ `{ $accept }` ] can not serialize  ]``) 
        default return error( $dbIO, ``[ [ `{ $dbItemType }` ] can not handle this db item type  ]``) 
    else (
       let $resources := ($uri => uri-collection()) ! replace( . , 'http://', $base )
       return
        switch ( $accept )
          case "application/xml" return (element resource {$resources ! element resource {.}}) => serialize() 
          case "application/json" return (array{ for $res in $resources return $res }) => serialize(map{'method': 'json'})
          default return $resources => string-join('&#10;') 
    )
  )
} catch * {
``[
  ERROR! 
  module: `{ $err:module => substring-after('/modules/')}`
 `{$err:code}`: `{$err:description}`
]``
}
