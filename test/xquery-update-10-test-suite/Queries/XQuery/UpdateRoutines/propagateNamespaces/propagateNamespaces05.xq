declare copy-namespaces preserve, inherit;
declare boundary-space preserve;

declare default element namespace "http://example.org";

copy $x := <x xmlns="foo" xmlns:a="a-ns"/>
modify 
  insert node <y/> into $x
return
<result>
  <x>{namespace-uri-for-prefix("", $x), namespace-uri-for-prefix("a", $x)}</x>
  <y>{namespace-uri-for-prefix("", $x/y), namespace-uri-for-prefix("a", $x/y)}</y>
</result>