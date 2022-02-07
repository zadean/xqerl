declare variable $uri external;
declare variable $type external;
try {
  switch ( $type )
    case "xml"
      return  $uri => doc() => serialize(map{'omit-xml-declaration': true()})
    case "json" 
    return $uri => db:get() => serialize( map { "method": "json", "indent": true() })
    default return false()
} catch * { false() } 
