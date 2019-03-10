(: Bind the prefix 'svg' to the SVG namespace :)
declare namespace svg="http://www.w3.org/2000/svg";

(: Import a schema for the iTunes Music Library :)
import schema default element namespace "";

(: Validate the iTunes Music Library against the schema :)
declare variable $input-context := .;

(: Get a list of all tracks with release dates :)
declare variable $allTracks := $input-context/plist/dict[1]/key[. = "Tracks"]/following-sibling::schema-element(dict)[1]/dict;
declare variable $tracks := $allTracks[key = "Year"];

(: Distinct artists :)
declare variable $artistString := "Artist";
declare variable $artists := distinct-values($tracks/local:find-key-string(.,$artistString))
                             [not(local:one-hit-wonder(.))]
                             [. != "Various Artists"];

(: First/last dates :)
declare variable $dates := one-or-more($tracks/local:find-release-year(.));
declare variable $firstYear := min($dates);
declare variable $lastYear := max($dates);

(: Graph size :)
declare variable $width := 1600;
declare variable $height := 1200;

(: Calculates the position on the timeline of the track :)
declare function local:get-position($year as xs:integer) as xs:decimal {
    ($year - $firstYear) div ($lastYear - $firstYear) * $width
};

declare function local:tracks-by-artist($artist as xs:string) as schema-element(dict)* {
	$tracks[local:find-key-string(.,$artistString) = $artist]
};

declare function local:years-by-artist($artist as xs:string) as xs:integer* {
    local:tracks-by-artist($artist)/local:find-release-year(.)
};

declare function local:make-line($currentLine as xs:integer+,
                                 $orderedArtists as xs:string+,
                                 $orderedMinYears as xs:integer+,
                                 $orderedMaxYears as xs:integer+) as xs:integer+ {
  let $laterArtists := for $year at $pos in $orderedMinYears
                       where $year > $orderedMaxYears[exactly-one($currentLine[last()])]
                       return $pos
  return
    if(empty($laterArtists))
    then $currentLine
    else 
      local:make-line(($currentLine,$laterArtists[1]),
                       $orderedArtists,
                       $orderedMinYears,
                       $orderedMaxYears)
};

declare function local:draw-lines($pos as xs:integer,
                                  $orderedArtists as xs:string+,
                                  $orderedMinYears as xs:integer+,
                                  $orderedMaxYears as xs:integer+) as element()* {
  let $linePos := local:make-line(1,
                               $orderedArtists,
                               $orderedMinYears,
                               $orderedMaxYears
                               ),
      $remainingArtists := $orderedArtists[not(position() = $linePos)],
      $remainingMinYears := $orderedMinYears[not(position() = $linePos)],
      $remainingMaxYears := $orderedMaxYears[not(position() = $linePos)]
  return
    (
      for $p in $linePos
      let $artist := exactly-one($orderedArtists[$p])
      let $artistStart := local:get-position(exactly-one($orderedMinYears[$p]))
      let $artistEnd := local:get-position(exactly-one($orderedMaxYears[$p]))
      let $y := round-half-to-even(($pos - 1) div 45 * $height, 4)
      return
      (
        <svg:text x="{round-half-to-even(avg(($artistStart,$artistEnd)), 4)}"
                  y="{$y - 5}"
                  text-anchor="middle"
                  fill="blue"
                  title="{string-join(local:tracks-by-artist($artist)/local:find-key-string(.,"Name"),' - ')}">{$artist}</svg:text>,
        <svg:path stroke="blue"
                  fill="none"
                  stroke-width="2"
                  d="M{round-half-to-even($artistStart, 4)},{$y + 5}l0,-10m0,5L{round-half-to-even($artistEnd, 4)},{$y}m0,5l0,-10"/>
      ),
      if(exists($remainingArtists) and $pos <= 45)
      then local:draw-lines($pos + 1,
                            one-or-more($remainingArtists),
                            one-or-more($remainingMinYears),
                            one-or-more($remainingMaxYears))
      else ()
    )
};

declare function local:label-artists() as element()* {
  let $orderedInfo := for $artist in $artists
                      let $artistYears := local:years-by-artist($artist)
                      let $minYear := min($artistYears)
                      let $maxYear := max($artistYears)
                      stable order by $minYear
                      return ($artist,$minYear,$maxYear),
      $orderedArtists := $orderedInfo[position() mod 3 = 1] treat as xs:string+,
      $orderedMinYears := $orderedInfo[position() mod 3 = 2] treat as xs:integer+,
      $orderedMaxYears := $orderedInfo[position() mod 3 = 0] treat as xs:integer+
  return local:draw-lines(1,$orderedArtists,$orderedMinYears,$orderedMaxYears)
};

declare function local:one-hit-wonder($artist as xs:string) as xs:boolean {
   let $artistYears := local:years-by-artist($artist)
   return min($artistYears) >= max($artistYears) - 1
};

(: Looks up a key returning a string element :)
declare function local:find-key-string($node as schema-element(dict),
                                       $key as xs:string) as xs:string {
   $node/key[. = $key]/following-sibling::schema-element(string)[1]
};

(: Looks up a track returning the release date :)
declare function local:find-release-year($node as schema-element(dict)) as xs:integer {
  $node/key[. = "Year"]/following-sibling::schema-element(integer)[1]
};

(: Marks the years on the timeline :)
declare function local:mark-years() as element()* {
  for $year in ($firstYear to $lastYear)
  let $x := local:get-position($year)
  return
    (
      <svg:text x="{round-half-to-even($x,4)}"
                y="{round-half-to-even($height * 1.02, 4)}"
                text-anchor="middle">{$year}</svg:text>,
      <svg:path stroke="#cccccc"
                fill="none"
                stroke-width="1"
                d="M{round-half-to-even($x, 4)},{$height + 5}l0,{-5 - $height}"/>
    )
};


<svg:svg viewBox="-50,-20,{$width * 1.05},{$height * 1.05}">
  <!-- Border -->
  <svg:path stroke="black"
            fill="none"
            stroke-width="1"
            d="M0,{$height}L{$width},{$height}"/>

  <!-- Title -->
  <svg:text x="{round-half-to-even($width div 4, 4)}"
            y="{round-half-to-even($height div 2 - 20, 4)}"
            text-anchor="middle">Tracks in iTunes Library</svg:text>

  <!-- Generator -->
  <svg:text x="{round-half-to-even($width div 4, 4)}"
            y="{round-half-to-even($height div 2, 4)}"
            text-anchor="middle">Generated by XQSharp</svg:text>

  <!-- Ranges -->
  {
    local:mark-years(),
    local:label-artists()
  }

</svg:svg>
