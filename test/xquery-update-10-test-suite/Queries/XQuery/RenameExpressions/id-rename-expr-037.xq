(: Name: id-rename-expr-037 :)
(: Description: Rename attribute nodes to be in a namespace. :)
(: (Saxon bug report from Roger Costello - Feb 2010) :)

declare copy-namespaces preserve, inherit;

declare namespace myco="http://www.example.com/myco";
declare namespace hisco="http://www.example.com/hisco";

(: insert-start :)
(: insert-end :)

let $in :=  
        <FitnessCenter>
            <Member level="platinum">
                <Name>Jeff</Name>
                <FavoriteColor>lightgrey</FavoriteColor>
            </Member>
            <Member level="gold">
                <Name>David</Name>
                <FavoriteColor>lightblue</FavoriteColor>
            </Member>
            <Member level="platinum">
                <Name>Roger</Name>
                <FavoriteColor>lightyellow</FavoriteColor>
            </Member>
        </FitnessCenter>
let $newelement :=
   copy $copy := $in
   modify 
       for $i in $copy//@*
       return rename node $i as QName('http://www.gym.com', concat('gym:', local-name($i)))
   return $copy
return
   $newelement/*[1]

