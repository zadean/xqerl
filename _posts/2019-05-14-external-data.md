---
layout: default
title:  "Using an external XML DB as a data source"
---
{% include navigation.html %}

# {{ page.title }}

## Premise

After the success of the last [website](/xqerl/2019/05/10/getting-some-rest.html), it has been decided that the data should not be saved locally, but rather in an external database.

Since the client knows of another cool XML database and wants to use it for other stuff, it's been decided that the data should live in a BaseX instance.
xqerl will handle the forward-facing parts just as before.

The idea here will be to change as little code as possible while fulfilling the wishes of the client.

## Steps

1. Save all random data externally.
1. Alter functions that accesses the data to use the external DB.

#### Making names - again

The functions to create random data worked well and will now be put into a library of their [own](/xqerl/assets/rest/util.xq).

Also, because we want to use the functions elsewhere, we'll add a callback function as a parameter to the function creating random documents. 
We don't really know all the ways the function will be used in the future, so a callback is a good way to be ready for anything.

The altered function is shown here (notice the callback function parameter):

```xquery
declare function _:do-random-stuff($callback)
{
  (
    for $r in ('a','b','c','d','e')
      , $j in 1 to 100
    let $u := random:uuid()
    let $doc := _:random-document($r, $u)
    return
      $callback($doc)
  )
};
```

So, now to insert the data into the external DB. Here we'll need some helper functions and rewrite the "/insert" endpoint.

```xquery
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
```

Notice the partially implemented function? This is a **really** helpful feature in XQuery that simplifies closures and function passing.

#### Offloading some work

The functions that used to access the collections in xqerl now need to be pointed at the external DB.

The easiest way to do that is to just make the original function body into a string. Both xqerl and BaseX speak the same language, so that's a breeze! We'll also need the connection to use as a parameter.

```xquery
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
```

Now here we'll also need to inject the <code>$id</code> parameter into the string.

```xquery

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
```

... just like here ...

```xquery
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
```

And as a last step, we'll need to change the calling functions to make the client connection and pass it on:

```xquery
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
...
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
...
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
```

### XQuery

The XQuery for this example for is in two files.
* The "util" module [here](/xqerl/assets/rest/util.xq)
* The changed front-facing module [here](/xqerl/assets/clients/basex.xq)

### Deploying

Assuming:

* the XQuery module is in the directory /tmp/data/xqerl/
* xqerl is running
* BaseX is running as a server locally using the default user settings
* you have an Erlang shell open on the node where xqerl is running
* port 8081 was open when xqerl was started, or a different port was specified in ./xqerl/config/xqerl.config


1. Compile the XQueries
   * `xqerl:compile("/tmp/data/xqerl/util.xq").`
   * `xqerl:compile("/tmp/data/xqerl/basex.xq").`
1. Load the data, so call up http://localhost:8081/insert
   * This may take a moment, 500 documents are being inserted.
1. Go to http://localhost:8081/ in a browser
   * You should see the summary table and be able to click through it

You're now using an external XML database as the source for a xqerl front-end! :-)
