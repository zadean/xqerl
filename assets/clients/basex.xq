module namespace _ = 'http://xqerl.org/xquery/examples/client/basex';

import module namespace u = 'http://xqerl.org/xquery/examples/rest/util';

declare %private function _:html-head()
{
  element head {
    element style {
      text {'body {font-family: Arial, Helvetica, sans-serif;}'}
    }
  }
};

declare %private function _:html-wrap($contents)
{
  element html {
    _:html-head(),
    element body { $contents }
  }
};

(: ~~~~~~~  ~~~~~~~ :)

declare 
  %rest:GET
  %rest:path('/')
  %output:method('html')
  %rest:produces('text/html')
function _:landing()
{
  let $conn := _:new-connection()
  return
    _:people-by-route-summary-table($conn) => _:html-wrap()
};

declare %private function _:people-by-route-summary-table($conn)
{
  let $sum := _:people-by-route-summary($conn)
  return
  <table>
    <tr>
      <th>Route</th>
      <th>Count</th> 
      <th>Age</th>
    </tr>
    {
      for $ent in $sum/entry
      let $r := $ent/@route => string()
      return
      <tr>
        <td><a href='/route/detail?id={$r}'>{ $r }</a></td>
        <td>{ $ent/count => xs:integer() }</td>
        <td>{ $ent/age => xs:double() }</td>
      </tr>
    }
  </table>
};

declare function _:people-by-route-summary($conn)
{
  let $qry := 
  "<summary>{
    for $doc in fn:collection('LISTS/')
    let $id  := $doc/list/@route
      , $cnt := count($doc/list/person)
      , $age := sum($doc/list/person/age)
    order by 
      $id
    group by 
      $r := $id
    return
      element entry {
        attribute route {$r},
        element count {sum($cnt)},
        element age { sum($age) div sum($cnt) }
      }
  }</summary>"
  return
    basex:query($conn, $qry)
};

(: ~~~~~~~  ~~~~~~~ :)

declare 
  %rest:GET
  %rest:path('/route/detail')
  %rest:query-param("id", "{$id}")
  %output:method('html')
  %rest:produces('text/html')
function _:people-by-route-id($id)
{
  let $conn := _:new-connection()
  return
    _:people-by-route-table($conn, $id) => _:html-wrap()
};  

declare function _:people-by-route-table($conn, $id)
{
  let $qry := 
  "<table>
    <tr>
      <th>Id</th>
      <th>Count</th> 
      <th>Age</th>
    </tr>
    {
      for $doc in fn:collection('LISTS')[./list/@route eq '"||$id||"']
      let $h := $doc/list/@id => string()
      return
        <tr>
          <td><a href='/list/detail?id={$h}'>{ $h }</a></td>
          <td>{ count($doc/list/person) }</td>
          <td>{ avg($doc/list/person/age) }</td>
        </tr>
    }
  </table>"
  return
     basex:query($conn, $qry)
};

(: ~~~~~~~  ~~~~~~~ :)

declare 
  %rest:GET
  %rest:path('/list/detail')
  %rest:query-param("id", "{$id}")
  %output:method('html')
  %rest:produces('text/html')
function _:people-by-list($id)
{
  let $conn := _:new-connection()
  return
    _:people-by-list-table($conn, $id) => _:html-wrap()
};  

declare function _:people-by-list-table($conn, $id)
{
  let $qry := 
  "<table>
    <tr>
      <th>Last Name</th>
      <th>First Name</th> 
      <th>Age</th>
    </tr>
    {
      let $doc := fn:doc('LISTS/' || '" || $id || "' )
      for $p in $doc/list/person
      order by 
        $p/name/last, 
        $p/name/first
      return
        <tr>
          <td>{ $p/name/last/text() }</td>
          <td>{ $p/name/first/text() }</td>
          <td>{ $p/age/text() }</td>
        </tr>
    }
  </table>"
  return
    basex:query($conn, $qry)
};

(: ~~~~~~~  ~~~~~~~ :)
  

declare function _:new-connection()
{
  (: local defaults :) 
  basex:connect('localhost', 1984, 'admin', 'admin')
};

declare function _:init($conn)
{
  let $cmd1 := 'check LISTS'           (: Ensure the DB exists and open it :)
    , $cmd2 := 'set AUTOOPTIMIZE true' (: Don't let the stats get stale :)
  return
    (
      basex:execute($conn, $cmd1),
      basex:execute($conn, $cmd2)
    )
};

(: Ensure open, do inserts, close again :)
declare function _:insert-nodes($conn, $inserts)
{
  basex:execute($conn, 'check LISTS'),
  $inserts ! .(),
  basex:execute($conn, 'close')
};

(: Wrap an insert into a fun to run later (lazy) :)
declare function _:insert-fun($conn, $node)
{
  let $id := $node/*/@id
  return
    function()
    {
      basex:execute($conn, 'replace /' || $id || ' ' || serialize($node) )
    }
};

declare 
  %rest:GET
  %rest:path('/insert')
function _:insert-random-stuff()
{
  let $conn := _:new-connection()
  let $init := _:init($conn)
  (: let the lib function make the lazy funs :)
  (: partially evaluate the fun to close the connection into it :)
  let $inserts := u:do-random-stuff(_:insert-fun($conn, ?))
  return
    _:insert-nodes($conn, $inserts)
};

