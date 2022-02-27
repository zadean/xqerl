declare variable $uri external;
try {
let $isItem := function( $uri ) {
    try {
      let $col := remove($uri => tokenize('/'), $uri => tokenize('/') => count()) => string-join('/')
      let $uriCollection := $col => uri-collection()
      return $uri = ($uriCollection)
    } catch * {false()}
  }
return 
  if ( $uri => $isItem() ) then (true(), db:delete($uri)) 
  else false()
} catch * { false() }

(:
  for $item in ( $uri => uri-collection() )
    return ( $item => db:delete(), ' - deleted:' ||  $item ) 
:) 
