---
layout: default
title:  "Crawling the Web in 50 Lines of XQuery"
---
{% include navigation.html %}

# {{ page.title }}

## Introduction

When the HTTP Client module in xqerl is used to consume web-sites, the HTML (which is 
quite often not valid XML) will be parsed by an HTML parser that corrects its 
format and transforms it into valid XHTML. This XML can then be handled by XQuery. 
This, along with the Actor module seemed like a good opportunity to make a 
parallel processing web-crawler. Why not, right?!

The code mostly speaks for itself, so here it is.

#### Code

```xquery
declare function local:trim-fragment($uri)
{
  if (contains($uri, '#')) then
    substring-before($uri, '#')
  else
    $uri
};

declare function local:get-links($uri)
{
  try
  {
    (
      let $doc := http:send-request(<http:request href='{$uri}' method='get' />)[2] 
      for $h in $doc//*:a/@href/string()
      where not(starts-with($h, '#'))
      let $u := resolve-uri($h, $uri)
      where starts-with($u, 'http')
      return 
      $u => local:trim-fragment()
    ) => distinct-values() => sort()
  }
  catch * {
    ()
  }
};

declare function local:rec($a)
{
  try { actor:receive($a, 5000) } catch * {()}
};

let $base := 'http://xqerl.org/'
let $self := actor:self()
let $as := (
  for $l in local:get-links($base)
  let $a := actor:spawn(function() { actor:send($self, local:get-links($l) ) })
  return
  [$l, $a]
)
return
(
  $base || '&#10;' ||
  (
    for $a in $as
    return
      '   ' || $a?1 || '&#10;' ||
      (local:rec($a?2) ! ('      ' || .))  => string-join('&#10;')
  ) => string-join('&#10;')
) => string-join('&#10;&#10;')
```

#### Running It

Assuming:

* the XQuery module is saved as /tmp/data/xqerl/web-crawler.xq
* xqerl is running
* you have an Erlang shell open on the node where xqerl is running

1. Compile the main XQuery
   * `Crawler = xqerl:compile("/tmp/data/xqerl/web-crawler.xq").`
1. Run the XQuery
   * `io:format(xqerl:run(Crawler)).`

The `io:format/1` call is just there to get a better looking return value 
in the shell.

You should see something like this:

```
http://xqerl.org/
...
   https://zadean.github.io/xqerl/modules.html
      https://github.com/zadean
      https://github.com/zadean/xqerl
      https://pages.github.com
      https://zadean.github.io/xqerl/
      https://zadean.github.io/xqerl/examples.html
      https://zadean.github.io/xqerl/modules.html
      https://zadean.github.io/xqerl/modules/actor.html
      https://zadean.github.io/xqerl/modules/array.html
      https://zadean.github.io/xqerl/modules/basex.html
      https://zadean.github.io/xqerl/modules/binary.html
      https://zadean.github.io/xqerl/modules/csv.html
      https://zadean.github.io/xqerl/modules/event.html
      https://zadean.github.io/xqerl/modules/file.html
      https://zadean.github.io/xqerl/modules/fn.html
      https://zadean.github.io/xqerl/modules/http.html
      https://zadean.github.io/xqerl/modules/map.html
      https://zadean.github.io/xqerl/modules/math.html
      https://zadean.github.io/xqerl/modules/random.html
```

Boom!! A simple web-crawler that handles each request in parallel!

It could of course be expanded upon... Saving previously visited pages... 
recursively running forever... Analyzing the page data... Whatever.

I'll leave that as an exercise for the reader. :-)

