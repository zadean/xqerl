declare copy-namespaces no-preserve, no-inherit;
declare boundary-space preserve;

copy $data := <v xmlns:a="a-one" xmlns:b="b-one"/>
modify 
  insert node 
      <w>
        <x xmlns:a="a-two">
          <y xmlns:b="b-two"><z/></y>
        </x>
      </w>
  into $data
return 
   let $w := $data/w
   let $x := $w/x
   let $y := $x/y
   let $z := $y/z
   return
<result>
  <w>{namespace-uri-for-prefix("a", $w), namespace-uri-for-prefix("b",$w)}</w>
  <x>{namespace-uri-for-prefix("a", $x), namespace-uri-for-prefix("b",$x)}</x>
  <y>{namespace-uri-for-prefix("a", $y), namespace-uri-for-prefix("b",$y)}</y>
  <z>{namespace-uri-for-prefix("a", $z), namespace-uri-for-prefix("b",$z)}</z>
</result>

