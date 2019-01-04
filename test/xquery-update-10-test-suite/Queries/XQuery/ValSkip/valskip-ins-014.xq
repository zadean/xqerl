(: Name: valskip-ins-014 :)
(: Description: if input is untyped, it remains untyped after update :)

declare construction preserve;
declare revalidation skip;

(: insert-start :)
declare variable $users as document-node(element(users, xs:untyped)) external;
(: insert-end :)

insert node <zzz/> into $users/users/user_tuple[1]/name