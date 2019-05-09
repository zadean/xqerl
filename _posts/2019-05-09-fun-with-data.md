---
layout: default
title:  "Enriching CSV with JSON data"
---
{% include navigation.html %}

# {{ page.title }}

## Premise
You have been tasked with joining data from a single CSV file and a file of JSON values.

The CSV file should be enriched with the average hourly temperature in a new column. The CSV should also use "quoted" values.

The original CSV file has three columns, HOUR, ENTRIES, EXITS, and is separated using semicolons:

```
HOUR;ENTRIES;EXITS
0;3;3
1;1;4
2;0;0
3;1;0
4;0;1
5;5;0
6;9;4
...
```

Each line in the JSON dump is a map containing a timestamp in the format 'HH:MI' and the temperature at that time:

```
{"time":  "00:02", "temp": "11.13"}
{"time":  "00:04", "temp": "11.13"}
{"time":  "00:07", "temp": "11.13"}
{"time":  "00:09", "temp": "11.13"}
{"time":  "00:12", "temp": "11.13"}
{"time":  "00:14", "temp": "11.13"}
{"time":  "00:17", "temp": "11.13"}
```


The JSON dump used in this example is [here](/xqerl/assets/temps.json.dmp).
The CSV file for this example is [here](/xqerl/assets/entry_exit.csv).


## Steps

1. Get the average temperature from the JSON dump for each hour.
1. Read the CSV file in.
1. Add the new column.
1. Write data out.


#### Get the average

The temperature data is in a file where each line has the format: `{"time":  "00:02", "temp": "11.13"}`.

Each line of the file can be read in with the function `file:read-text-lines#1` and parsed as JSON with `fn:parse-json#1`.
This will return a `map` with two entries for each line.
These values can then be cast to useful data types and the calculations done. 

The value returned from this can be put in a map for easy retrieval later:

```xquery
(:~ 
 : Read a dump of json maps, one per line.
 : Each map contains the time as 'HH:MI' and temperature.
 :)
declare function local:average-hourly-temp-map($file)
{
  (
    for $line in file:read-text-lines($file)
    let $json := fn:parse-json($line)
      , $time := xs:time($json('time') || ':00')
      , $temp := xs:decimal($json('temp'))
    (: group by hour so all temps are in a sequence :)
    group by 
      $hour := fn:hours-from-time($time)
    return
      (: returning a map entry with the hour as key 
         and the rounded average temperature (precision 1) as value :)
      map{
        $hour : fn:avg($temp) => fn:round(1)
      }
  ) => map:merge() (: merge the map entries to a single map :)
};
```

#### Read the CSV

Now that we have the average temperatures, it's time to get the CSV data to enrich. 
This can be done simply by reading the entire file into memory and sending it through the CSV parser.

The data returned from `csv:parse#2` is an `array` of `array(xs:string)`.

```xquery
(:~ 
 : Parse a csv file that uses semicolon as its separator.
 :)
declare function local:parse-csv($file)
{
  file:read-text($file) 
    => csv:parse(map{'separator' : 'semicolon'}) 
};
```

#### Add the column

With the nested arrays from the CSV and the map of average temperatures, we can now enrich the data.

Here, using `array:for-each#2` to execute a function for each array entry, we can append the new column to the inner arrays.

We simply match the hour value in the array to the map key from the average temperatures.

```xquery
(:~ 
 : Append a value to the end of each array.
 :)
declare function local:enrich($csv, $temps)
{
  let $ffe := function($a){
    if( $a(1) = 'HOUR' ) then (: is header :)
      array:append($a, 'AVG_TEMP')
    else
      (: snag the temp out of the map :)
      array:append($a, $temps($a(1) => xs:integer())) 
  }
  return
    (: transform each value in this array using the function $ffe :)
    array:for-each($csv, $ffe)
};
```

#### Write it out

Now that the data is enriched, it is time to write it someplace. 

First, get the string to write by serializing the nested arrays to a CSV string.

```xquery
(:~ 
 : Serialize an array of arrays to csv string using semicolon as the separator
 : and wrapping each value in double-quotes.
 :)
declare function local:serialize-csv($array)
{
  $array 
    => csv:serialize(map{'separator' : 'semicolon', 'quotes' : true()})
};
```

Then it can be written to file with `file:write-text#3`.

### XQuery

```xquery
(:~ 
 : External variable for the directory containing the files to read/write.
 : Must have trailing slash!
 :)
declare variable $root external;

(:~ 
 : Read a dump of json maps, one per line.
 : Each map contains the time as 'HH:MI' and temperature.
 :)
declare function local:average-hourly-temp-map($file)
{
  (
    for $line in file:read-text-lines($file)
    let $json := fn:parse-json($line)
      , $time := xs:time($json('time') || ':00')
      , $temp := xs:decimal($json('temp'))
    (: group by hour so all temps are in a sequence :)
    group by 
      $hour := fn:hours-from-time($time)
    return
      (: returning a map entry with the hour as key 
         and the rounded average temperature (precision 1) as value :)
      map{
        $hour : fn:avg($temp) => fn:round(1)
      }
  ) => map:merge() (: merge the map entries to a single map :)
};

(:~ 
 : Parse a csv file that uses semicolon as its separator.
 :)
declare function local:parse-csv($file)
{
  file:read-text($file) 
    => csv:parse(map{'separator' : 'semicolon'}) 
};

(:~ 
 : Serialize an array of arrays to csv string using semicolon as the separator
 : and wrapping each value in double-quotes.
 :)
declare function local:serialize-csv($array)
{
  $array 
    => csv:serialize(map{'separator' : 'semicolon', 'quotes' : true()})
};

(:~ 
 : Append a value to the end of each array.
 :)
declare function local:enrich($csv, $temps)
{
  let $ffe := function($a){
    if( $a(1) = 'HOUR' ) then (: is header :)
      array:append($a, 'AVG_TEMP')
    else
      (: snag the temp out of the map :)
      array:append($a, $temps($a(1) => xs:integer())) 
  }
  return
    (: transform each value in this array using the function $ffe :)
    array:for-each($csv, $ffe)
};


let $csv-file := $root || 'entry_exit.csv'
  , $out-file := $root || 'entry_exit_temp.csv'
  , $json-dmp := $root || 'temps.json.dmp'
  , $entries  := local:parse-csv($csv-file)
  , $temps    := local:average-hourly-temp-map($json-dmp)
  , $enriched := local:enrich($entries, $temps)
  , $csv-out  := local:serialize-csv($enriched)
return
  file:write-text($out-file, $csv-out, 'UTF-8')
```

### Putting it all together

The XQuery above is a main module and uses an external variable to point to the directory where the files are saved. The next few lines explain how to run this with xqerl.

Assuming:

* the data files are in the directory /tmp/data/xqerl/
* the XQuery above is saved as join.xq in the same directory as the data files
* xqerl is running
* you have an Erlang shell open on the node where xqerl is running

1. Compile the XQuery
   * `J = xqerl:compile("/tmp/data/xqerl/join.xq").`
1. Execute the XQuery
   * Set the value of the external variable in the context map: `C = #{<<"root">> => <<"/tmp/data/xqerl/">>}.`
   * `J:main(C).`

This should return the value `[]`. That is because the last call returns the empty sequence.

There should now be a file `entry_exit_temp.csv` in the directory /tmp/data/xqerl/. 
It should look like:
```
"HOUR";"ENTRIES";"EXITS";"AVG_TEMP"
"0";"3";"3";"11.2"
"1";"1";"4";"11.3"
"2";"0";"0";"11.4"
"3";"1";"0";"11.9"
"4";"0";"1";"12.2"
"5";"5";"0";"13.2"
"6";"9";"4";"13.9"
...
```

