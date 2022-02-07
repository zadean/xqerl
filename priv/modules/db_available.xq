declare variable $uri external;
declare variable $type external;
try {
  switch ( $type )
  case "item" return
    let $col :=
      (remove($uri => tokenize('/'), $uri => tokenize('/') => count())) =>
      string-join('/') => string() => uri-collection()
      return $uri = $col
  case "collection" return 
      not( empty( $uri => uri-collection() ))
  default return false()
} catch * { false() }

