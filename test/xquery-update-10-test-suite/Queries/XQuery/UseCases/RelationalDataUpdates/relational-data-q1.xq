(: Test - relational-data-q1 :)
(: Description - Update Use Case #1  :)

(: insert-start :)
declare variable $users external;
(: insert-end :)

(:state-1-start :)

insert node
  <user_tuple>
    <userid>U07</userid>
    <name>Annabel Lee</name>
  </user_tuple>
into $users/users

(:state-1-end :)