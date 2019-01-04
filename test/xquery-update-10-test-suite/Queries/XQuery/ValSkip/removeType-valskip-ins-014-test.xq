(: Name: valskip-ins-014-test :)
(: Description: if input is untyped, it remains untyped after update :)

declare revalidation skip;

(: insert-start :)
declare variable $users as document-node(element(users)) external;
(: insert-end :)


<out>
  <a>{$users/users instance of element(*, xs:untyped)}</a>
  <b>{$users/users/user_tuple[1] instance of element(*, xs:untyped)}</b>
  <c>{$users/users/user_tuple[1]/name instance of element(*, xs:untyped)}</c> 
</out>