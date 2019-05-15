(: ~~~~~~~ Dummy data stuff ~~~~~~~ :)
module namespace _ = 'http://xqerl.org/xquery/examples/rest/util';

declare %private function _:random-document($r, $u)
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

declare %private function _:random-person()
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
