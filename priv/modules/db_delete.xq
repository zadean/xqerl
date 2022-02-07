declare variable $uri external;
declare variable $type external;

switch ( $type )
  case "item" return ( 
    true(), 
    db:delete($uri) 
    )
  case "collection" return( 
    true(), 
    for $item in ( $uri => uri-collection() )
    return (db:delete( $item )))
  default return false()
