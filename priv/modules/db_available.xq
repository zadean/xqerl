declare variable $uri external;
declare variable $type external;
(: return true only
 if a db item item is in a collection'
 or a collection contains items 
 :)
try {

  let $isItem := function( $uri ) {
   let $col := remove($uri => tokenize('/'), $uri => tokenize('/') => count()) => string-join('/')
   let $uriCollection := $col => uri-collection()
   return $uri = ($uriCollection)
  }

  let $isCollection := function( $uri ) {
    ($uri => uri-collection() => count()) gt 0
  }

  return
  switch ( $type )
    case "collection" return $isCollection($uri)
    case "item" return $isItem($uri)
    case "any" return (
      if ( $isItem($uri) ) 
      then ( true() ) 
      else ($isCollection($uri))
    )
    default return ( false() )
} catch * {false()}

