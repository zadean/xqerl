(: rest.xq :)
module namespace _ = 'http://xqerl.org/xquery/examples/rest';

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
  _:people-by-route-summary-table() => _:html-wrap()
};

declare %private function _:people-by-route-summary-table()
{
  let $sum := _:people-by-route-summary()
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

declare 
  %rest:GET
  %rest:path('/route/summary')
function _:people-by-route-summary()
{
  <summary>{
    for $doc in fn:collection('http://xqerl.org/lists')
    let $id  := $doc/list/@route
      , $cnt := count($doc/list/person)
      , $age := sum($doc/list/person/age)
    order by 
      $id
    group by 
      $r := $id
    return
      element entry {
        attribute route {$r => trace()},
        element count {sum($cnt)},
        element age { sum($age) div sum($cnt) }
      }
  }</summary>
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
  _:people-by-route-table($id) => _:html-wrap()
};  

declare function _:people-by-route-table($id)
{
  <table>
    <tr>
      <th>Id</th>
      <th>Count</th> 
      <th>Age</th>
    </tr>
    {
      for $doc in fn:collection('http://xqerl.org/lists')[./list/@route eq $id]
      let $h := $doc/list/@id => string()
      return
        <tr>
          <td><a href='/list/detail?id={$h}'>{ $h }</a></td>
          <td>{ count($doc/list/person) }</td>
          <td>{ avg($doc/list/person/age) }</td>
        </tr>
    }
  </table>
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
  _:people-by-list-table($id) => _:html-wrap()
};  

declare function _:people-by-list-table($id)
{
  <table>
    <tr>
      <th>Last Name</th>
      <th>First Name</th> 
      <th>Age</th>
    </tr>
    {
      let $doc := fn:doc('http://xqerl.org/lists/' || $id)
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
  </table>
};

(: ~~~~~~~  ~~~~~~~ :)

declare 
  %rest:GET
  %rest:path('/summary')
function _:people-summary()
{
  <summary>{
    let $docs := fn:collection('http://xqerl.org/lists')
      , $cnt  := count($docs/list/person)
      , $age  := sum($docs/list/person/age)
    return
      element entry {
        element count { $cnt },
        element age { $age div $cnt }
      }
  }</summary>
};

declare 
  %rest:GET
  %rest:path('/summary/json')
  %rest:produces('application/json')
  %output:method('json')
function _:people-summary-json()
{
  let $sum := _:people-summary()
  return
  map{
    'count' : $sum/entry/count => xs:integer(),
    'age'   : $sum/entry/age => xs:double()
  }
};

(: ~~~~~~~  ~~~~~~~ :)
  

declare 
  %rest:GET
  %rest:path('/route/summary/json')
  %rest:produces('application/json')
  %output:method('json')
function _:people-by-route-summary-json()
{
  array {
    let $sum := _:people-by-route-summary()
    for $ent in $sum/entry
    return
      map{
        'route' : $ent/@route => string(),
        'count' : $ent/count => xs:integer(),
        'age'   : $ent/age => xs:double()
      }
  }
};

(: ~~~~~~~ Dummy data stuff ~~~~~~~ :)


declare function _:random-document($r, $u)
{
  document {
    element list {
      attribute route { $r },
      attribute id { $u },
      (1 to (random:integer(40) + 10) ) ! _:random-person()
    }
  }
};

(: top-20 given names in the USA :)
declare variable $_:FNAMES := ('James','Mary','John','Patricia','Robert',
                               'Linda','Michael','Barbara','William',
                               'Elizabeth','David','Jennifer','Richard',
                               'Maria','Charles','Susan','Joseph',
                               'Margaret','Thomas','Dorothy');
declare variable $_:FSIZE  := 20;

(: top-40 surnames in the USA :)
declare variable $_:LNAMES := ('Smith','Johnson','Williams','Brown','Jones',
                               'Miller','Davis','Garcia','Rodriguez','Wilson',
                               'Martinez','Anderson','Taylor','Thomas',
                               'Hernandez','Moore','Martin','Jackson',
                               'Thompson','White','Lopez','Lee','Gonzalez',
                               'Harris','Clark','Lewis','Robinson','Walker',
                               'Perez','Hall','Young','Allen','Sanchez',
                               'Wright','King','Scott','Green','Baker',
                               'Adams','Nelson');
declare variable $_:LSIZE  := 40;

declare function _:random-person()
{
  let $f := random:integer($_:FSIZE) + 1 (: random name index :)
  let $l := random:integer($_:LSIZE) + 1
  let $a := random:integer(87) + 13      (: random age between 13 and 99 :)
  return
  element person {
    element name {
      element first { $_:FNAMES[$f] },
      element last { $_:LNAMES[$l] }
    },
    element age { $a }
  }
};

declare 
  %updating
  %rest:GET
  %rest:path('/insert')
function _:insert-random-stuff()
{
  (
    for $r in ('a','b','c','d','e')
      , $j in 1 to 100
    let $u := random:uuid()
    let $doc := _:random-document($r, $u)
    return
      fn:put($doc,'http://xqerl.org/lists/' || $doc/*/@id)
  )
};
