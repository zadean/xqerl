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

(: Wrap an insert into a fun to run later :)
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
  let $inserts := u:do-random-stuff(_:insert-fun($conn, ?))
  return
    _:insert-nodes($conn, $inserts)
};
```

Notice the partially implemented function? This is a **really** helpful feature in XQuery that simplifies closures and function passing.

#### Offloading some work

The functions that used to 

Before making a bunch of HTML pages, we'll save some typing and make a few simple wrapper functions. 
We could add whatever CSS stuff later if need be but for this example it is left out.

```xquery
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
```

So, now on to the real stuff.

First, we'll need a function that does the summarizing. We might as well create a REST endpoint for that function since we may not always need HTML.

```xquery
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
        attribute route {$r},
        element count {sum($cnt)},
        element age { sum($age) div sum($cnt) }
      }
  }</summary>
};
```

Now a function to build the table and another as the REST endoint that wraps the table with our html function. 

Notice the "href" in the anchor tag. That will be the endpoint we need next.

```xquery
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
```

#### The Route Detail, or was that a Summarized List?

When the user clicks the link from the last page they want to see each "list" summarized with the count of people and their average age.

This can be accomplished almost exactly as with the last function.

Notice here the use of a query parameter in the URL for the "route" ID and also the "href" for the next step, the details.

```xquery
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
```

#### Details, details, details

Here, we're pretty much just transforming the original XML file to an HTML table:

```xquery
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
```

### XQuery

The XQuery for this example is in one file [here](/xqerl/assets/rest/rest.xq).

### Deploying

Assuming:

* the XQuery module is in the directory /tmp/data/xqerl/
* xqerl is running
* you have an Erlang shell open on the node where xqerl is running
* port 8081 was open when xqerl was started, or a different port was specified in ./xqerl/config/xqerl.config

1. Compile the XQuery
   * `xqerl:compile("/tmp/data/xqerl/rest.xq").`
1. Actually, that was it... you are already up and running. 
1. But, we need some data, so call up http://localhost:8081/insert
   * This may take a moment, 500 documents are being inserted.
1. Go to http://localhost:8081/ in a browser
   * You should see the summary table and be able to click through it

Mission accomplished :-)
