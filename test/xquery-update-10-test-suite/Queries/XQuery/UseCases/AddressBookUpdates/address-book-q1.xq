(: Test - address-book-q1 :)
(: Description - Update Use Case Address book   :)

(: insert-start :)
declare variable $archive external;
declare variable $copy1 external;
declare variable $copy2 external;
declare variable $log external;
(: insert-end :)

(:state-1-start :)

for $a in $archive/archived-agenda/entry, 
    $v1 in $copy1/agenda-version/entry, 
    $v2 in $copy2/agenda-version/entry
where $a/name = $v1/name
  and $v1/name = $v2/name
return 
  if ($a/contact = $v1/contact and $v1/contact=$v2/contact)
  then ()
  else 
    if ($v1/contact = $v2/contact)
    then ( replace value of node $a/contact with $v1/contact,
           replace value of node
              $archive/*/last-synch-time 
           with "2006-04-23T12:00"
         )
    else 
      if ($a/contact = $v1/contact)
      then (
            replace value of node $a/contact with $v2/contact,
            replace value of node $v1/contact with $v2/contact,
            replace value of node 
               $archive/*/last-synch-time
            with "2006-04-23T12:00"
            )
      else 
        if ($a/contact = $v2/contact)
        then (
              replace value of node $a/contact with $v1/contact,
              replace value of node $v2/contact with $v1/contact,
              replace value of node 
                 $archive/*/last-synch-time
              with "2006-04-23T12:00"
             )
        else (
           insert node 
            <fail>
               <arch>{ $a }</arch>
               <v1>{ $v1 }</v1>
               <v2>{ $v2 }</v2>
            </fail>
          into $log/log
        )
(:state-1-end :)