---
layout: default
title:  "Getting some REST"
---
{% include navigation.html %}

# {{ page.title }}

## Premise

You have been tasked with creating a clickable, web-based view of (non-GDPR compliant) customer data. 
The data available consists of XML documents, each containing a list of people and a specific "route" they are all taking (imagine walking tour in a city, or bus, or whatever).

The data views should be:

1. A summary by "route" with the count of people on that route and their average age.
1. A summary for each route, that shows a unique list ID, count of people in that list and their average age. Each route can have multiple lists of people.
1. A detail view containing the first and last names of each person on a list as well as their individual age.

The user should be able to use their web browser to see this data, and should be able to drill-down through the data at each level.

The XML documents look like:

```
<list route="a" id="5d398e22-0dc4-4242-89d2-092a8350a1ce">
  <person>
    <name>
      <first>Margaret</first>
      <last>Brown</last>
    </name>
    <age>46</age>
  </person>
  <person>
    <name>
      <first>Mary</first>
      <last>Rodriguez</last>
    </name>
    <age>74</age>
  </person>
  ...
</list>
```

## Steps

1. Since we don't want any real data we'll need to make some up and put it in the database.
1. Make the summary.
1. Make the route summary.
1. Make the detail view.
1. Deploy the site.

#### Making names

To make a bunch of fake names and ages we'll use the top 40 surnames and the top 20 given names in the USA as per wiki. The ages will be random integers between 13 and 99.

The trigger for this process will also be exposed as a REST endpoint.

```xquery
declare 
  %updating
  %rest:GET
  %rest:path('/insert')
function _:insert-random-stuff()
{
  (
    for $r in ('a','b','c','d','e')
      , $j in 1 to 100
    let $doc := _:random-document($r)
    return
      fn:put($doc,'http://xqerl.org/lists/' || $doc/*/@id)
  )
};

declare function _:random-document($r)
{
  document {
    element list {
      attribute route { $r },
      attribute id { random:uuid() },
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
```

#### The Summary Page

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
