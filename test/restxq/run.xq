(
  (: get_1 :)
  (
let $resp := 
  http:send-request(
    <http:request method='get' />,
    'http://localhost:8081/test/get/xml'
  )
let $h := $resp[1]
let $s := $h/http:header[@name = 'server']/@value
let $b := $resp[2]
return
$s = 'xqerl' and $h/@status = '200' and $b/root/a = 'text'
  ),
  (: '-------------------------------------------------' , :)
  
  (: get_2 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/csv'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b => starts-with('"headA"')
  ),
  (: '-------------------------------------------------' , :)

  (: get_3 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/html'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  return
  $h/@status = '200' and $b => normalize-space() = 'hello' and $s = 'text/html'
  ),
  (: '-------------------------------------------------' , :)

  (: get_4 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/json'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  return
  $h/@status = '200' and $s = 'application/json'
  (: and $b('map')(1) = true() :)
  ),
  (: '-------------------------------------------------' , :)

  (: get_5 :)
  (
  let $body := ('abc123' cast as xs:hexBinary) cast as xs:base64Binary
  let $resp := 
    http:send-request(
      <http:request method='get' />,
      'http://localhost:8081/test/get/zip'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  
  return
  $h/@status = '200' and $s = 'application/octet-stream' and $b = $body
  ),
  '-------------------------------------------------' ,
  
  (: head_1 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='head' />,
      'http://localhost:8081/test/get/xml'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'server']/@value
  let $b := $resp[2]
  return
  $s = 'xqerl' and $h/@status = '200' and empty($b)
  ),
  (: '-------------------------------------------------' , :)
  
  (: head_2 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='head' />,
      'http://localhost:8081/test/head/xml'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b)
  ),
  (: '-------------------------------------------------' , :)
  
  (: head_3 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='head' />,
      'http://localhost:8081/test/head/redirect'
    )
  let $h := $resp[1]
  let $s := $h/http:header[@name = 'content-type']/@value
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b) and $s = 'text/html'
  ),
  '-------------------------------------------------' ,
  
  (: post_1 :)
  (
  let $body := <root><a>text</a></root>
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type="application/xml"/>
          </http:request>,
      'http://localhost:8081/test/post/xml',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/* = $body
  ),
  (: '-------------------------------------------------' , :)

  (: post_2 :)
  (
  let $body := '"headA","headB","headC"&#10;"A","B",3&#10;"C","D",6'
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='text/csv'/>
          </http:request>,
      'http://localhost:8081/test/post/csv',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and csv:parse($b/got) = csv:parse($body)
  ),
  (: '-------------------------------------------------' , :)

  (: post_3 :)
  (
  let $body := <html><body><p>hello</p></body></html>
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='text/html'/>
          </http:request>,
      'http://localhost:8081/test/post/html',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/* = $body
  ),
  (: '-------------------------------------------------' , :)
  
  (: post_4 :)
  (
  let $body := '{"map":[true, 123, "string"]}'
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/json'/>
          </http:request>,
      'http://localhost:8081/test/post/json',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/text() = ($body => parse-json() => map:keys())
  ),
  (: '-------------------------------------------------' , :)
  
  (: post_5 :)
  (
  let $body := ('abc123' cast as xs:hexBinary) cast as xs:base64Binary
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/octet-stream'/>
          </http:request>,
      'http://localhost:8081/test/post/zip',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b = $body
  ),
  (: '-------------------------------------------------' , :)
  
  (: post_6 :)
  (
  let $body := 'message=m1&amp;message2=m2'
  let $resp := 
    http:send-request(
          <http:request method='post'>
            <http:body media-type='application/x-www-form-urlencoded'/>
          </http:request>,
      'http://localhost:8081/test/post/form',
      $body
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and $b/got/m1 = 'm1' and $b/got/m2 = 'm2'
  ),
  
  '-------------------------------------------------' ,
  
  (: options_1 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='options' />,
      'http://localhost:8081/test/head/xml'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b)
  ),
  (: '-------------------------------------------------' , :)
  
  (: options_2 :)
  (
  let $resp := 
    http:send-request(
      <http:request method='options' />,
      'http://localhost:8081/test/options/xml'
    )
  let $h := $resp[1]
  let $b := $resp[2]
  return
  $h/@status = '200' and empty($b)
  ),
  (: '-------------------------------------------------' , :)
  
  
  
()
)
 (: multipart form, how to do this? test/post/form_multi :)
