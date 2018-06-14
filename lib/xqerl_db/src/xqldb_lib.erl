%% -------------------------------------------------------------------
%%
%% xqerl_db - XML Database for xqerl XQuery processor
%%
%% Copyright (c) 2018 Zachary N. Dean  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------
-module(xqldb_lib).
-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================
-export([join_uris/2,
         filename_to_uri/1,
         uri_to_filename/1]).

-export([pforeach/3,
         pmap/3]).

-spec join_uris(BaseUri :: string(),
                RefUri  :: string()) -> 
         string() | {error,_}.

join_uris(_, "urn:" ++ _ = Uri) -> Uri;   % known non-heir. scheme
join_uris(_, "mailto:" ++ _ = Uri) -> Uri;% known non-heir. scheme
join_uris(_, "news:" ++ _ = Uri) -> Uri;% known non-heir. scheme
join_uris(_, "rss:" ++ _ = Uri) -> Uri;% known non-heir. scheme
join_uris(_, "tel:" ++ _ = Uri) -> Uri;% known non-heir. scheme
join_uris(_, ":" ++ _) -> {error,invalid_uri};% no scheme garbage
join_uris([], Uri) -> recompose(parse_ref_uri(Uri));
join_uris(_, "http:" ++ _ = Uri) -> simple_parse(Uri);
join_uris(_, "https:" ++ _ = Uri) -> simple_parse(Uri);
join_uris(_, "HTTP:" ++ _ = Uri) -> simple_parse(Uri);
join_uris(_, "HTTPS:" ++ _ = Uri) -> simple_parse(Uri);
join_uris(BaseUri,RefUri) ->
   %?dbg("{BaseUri,RefUri}",{BaseUri,RefUri}),
   B = parse_uri(BaseUri),
   R = parse_ref_uri(RefUri),
   %?dbg("{B,R}",{B,R}),
   J = join(B,R),
   %?dbg("J",J),
   recompose(J).

simple_parse(Uri) ->
   case parse_uri(Uri) of
      {error,_} = E -> E;
      _ -> Uri
   end.

filename_to_uri(Filename) ->
   case http_uri:parse(Filename) of
      {error,_} ->
         case filename:absname(Filename) of
            "/" ++ Rest ->
               "file:///" ++ remove_dot_segments(Rest);
            Other ->
               "file:///" ++ remove_dot_segments(Other)
         end;
      _ ->
         Filename
   end.


uri_to_filename("file:///"++Rest) ->
   case Rest of
      [L,$:|_] when L >= $A, L =< $Z; 
                    L >= $a, L =< $z ->
         filename:absname(Rest);
      _ ->
         filename:absname([$/|Rest])
   end.
   

%% ====================================================================
%% Internal functions
%% ====================================================================

%recompose({Scheme, UserInfo, Host, Port, "/", Query, Fragment}) ->
%   recompose({Scheme, UserInfo, Host, Port, [], Query, Fragment});
recompose({error,Err}) -> {error,Err};
recompose({_Scheme, _UserInfo, _Host, _Port, {error,Err}, _Query, _Fragment}) ->
   {error,Err};
recompose({Scheme, UserInfo, Host, Port, Path, Query, Fragment}) ->
   atom_to_list(Scheme) ++ ":" ++
     get_host_port(Scheme, UserInfo, Host, Port) ++
     Path ++ 
     Query ++
     Fragment.

get_host_port(Scheme, UserInfo, Host, Port) ->
   Stndrd = is_standard(Port, Scheme),
   "//" ++
   if UserInfo == [] -> "";
      true -> UserInfo ++ "@"
   end ++
   Host ++ 
   if Stndrd ->
         "";
      true ->
         ":" ++ integer_to_list(Port)
   end.

is_standard(Port,Scheme) ->
   Stnd = [{file,1},{urn,2}|http_uri:scheme_defaults()],
   case lists:keyfind(Scheme, 1, Stnd) of
      {Scheme,Port} ->
         true;
      _ ->
         false
   end.

join(_,
     {Scheme, UserInfo, Host, Port, Path, Query, Fragment}) 
   when Scheme =/= undefined ->
   %?dbg("Scheme",Scheme),
   {Scheme, UserInfo, Host, Port, 
    valid_path(Scheme,remove_dot_segments(Path)),
    Query, Fragment};
join({Scheme, _, _, _, _, _, _},
     {_, UserInfo, Host, Port, Path, Query, Fragment}) 
   when UserInfo =/= [];
        Host =/= [];
        Port =/= -1 ->
   %?dbg("Scheme",Scheme),
   {Scheme, UserInfo, Host, Port, 
    valid_path(Scheme,remove_dot_segments(Path)), 
    Query, Fragment};
join({BScheme, BUserInfo, BHost, BPort, BPath, BQuery, _} = B,
     {_, _, _, _, Path, Query, Fragment} = R) ->
   {TPath,TQuery} = 
     case Path of
        [] ->
           if Query == [] ->
                 {BPath, BQuery};
              true ->
                 {BPath, Query}
           end;
        "/" ++ _ ->
           {remove_dot_segments(Path),Query};
        _ ->
           Temp = merge_path(B, R),
           {remove_dot_segments(Temp),Query}
     end,
   {BScheme, 
    BUserInfo, 
    BHost, 
    BPort, 
    valid_path(BScheme,TPath), 
    TQuery, 
    Fragment};
join({error,_} = B, _) ->
   B.

parse_uri(Uri) ->
   case http_uri:parse(Uri,opts()) of
      {error,_} -> {error,malformed_uri};
      {ok,{_, _, _, _, _, _, []} = P} -> P;
      {ok,_} -> {error,base_with_fragment}
   end.

parse_ref_uri(MaybeUri) ->
   case http_uri:parse(MaybeUri,opts()) of
      {error,_} ->
         case http_uri:parse("http://x/" ++ MaybeUri,opts()) of
            {error,_} ->
               case lists:member($:, MaybeUri) of
                  true ->
                     {error,malformed_uri};
                  false ->
                     {undefined, [], [], -1, MaybeUri, [], []}
               end;
            {ok,{_, _, _, _, Path, Query, Fragment}} ->
               NPath = case Path of
                          "/" ++ X ->
                             X;
                          _ ->
                             Path
                       end,
               {undefined, [], [], -1, NPath, Query, Fragment}
         end;
      {ok,{_, _, _, _, "/", _, _} = P} -> 
         case lists:last(MaybeUri) of
            $/ ->
               P;
            _ ->
               setelement(5, P, [])
         end;
      {ok, P} -> P
   end.

merge_path({_, BUserInfo, _, _, BPath, _, _},
           {_, _, _, _, RPath, _, _}) ->
   if BUserInfo =/= [], BPath == [] ->
         "/" ++ RPath;
      true ->
         append_last_slash(BPath, RPath)
   end.


append_last_slash(BPath, RPath) ->
   {Head,_} = string:take(BPath,"/",true,trailing),
   Head ++ RPath.


remove_dot_segments([]) -> [];
remove_dot_segments(Path) ->
   Split = string:split(Path,"/",all),
   Fun = fun(".",Acc) ->
               Acc;
            ("..",[]) ->
               [];
            ("..",Acc) ->
               tl(Acc);
            (S,Acc) ->
               [S|Acc]
         end,
   Sim = lists:foldl(Fun, [], Split),
   Sim1 = case lists:last(Path) of
             $. ->
                [[]|Sim];
             _ ->
                Sim
          end,
   B = build_path(lists:reverse(Sim1)),
   case hd(Path) of
      $/ when hd(B) =/= $/ ->
         [$/|B];
      _ ->
         B
   end.

build_path([]) -> [];
build_path([H]) ->
   H;
build_path([[C,$:,$/] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
   H ++ build_path(T);
build_path([[C,$:,$\\] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
   H ++ build_path(T);
build_path([H|T]) ->
   H ++ "/" ++ build_path(T).


opts() ->
   [{scheme_defaults,
     [{file,1},{urn,2}|http_uri:scheme_defaults()]},
    {ipv6_host_with_brackets, true},
    {fragment,true}].

 
%{Scheme, UserInfo, Host, Port, Path, Query, Fragment}

valid_path(Scheme,Path) when Scheme =:= http;
                             Scheme =:= https ->
   case valid_http(Path) of
      true ->
         Path;
      _ ->
         {error,invalid_uri}
   end;
valid_path(_Scheme,Path) -> Path.

-define(HEX(V), V >= $0, V =< $9; V >= $A, V =< $F; V >= $a, V =< $f).

valid_http([]) -> true;
valid_http([$:|_]) -> false;
valid_http([$%,A,B|T]) when ?HEX(A) andalso ?HEX(B) -> 
   valid_http(T);
valid_http([$%,A|_]) when ?HEX(A) -> 
   false;
valid_http([$%|_]) -> 
   false;
valid_http([_|T]) -> 
   valid_http(T).


pforeach(List,Limit,Fun) ->
   pforeach(self(),List,Fun,Limit,Limit),
   receive
      done ->
         ok
     end.

pforeach(From,[],Fun,Limit,Left) when Left < Limit ->
   receive
      X ->
         From ! X,
         pforeach(From,[],Fun,Limit,Left + 1)
   end;
pforeach(From,[],_,_,_) ->
   From ! done;
pforeach(From,List,Fun,Limit,0) ->
   receive
      _ ->
         pforeach(From,List,Fun,Limit,1)
   end;
pforeach(From,[H|T],Fun,Limit,Left) ->
   Self = self(),
   _Pid = erlang:spawn_link(fun() -> Self ! Fun(H) end),
   pforeach(From,T,Fun,Limit,Left - 1).

  
pmap(List,Limit,Fun) -> 
   pmap(self(),List,Fun,Limit,Limit,[],[]),
   receive
      {done,Acc2} ->
         lists:reverse(Acc2)
   after 15000 -> error
   end.

pmap(From,[],Fun,Limit,Left,[P|Ps],Acc) when Left < Limit ->
   receive
      {P,{'EXIT',Ex}} ->
         throw(Ex);
      {P,X} -> 
         pmap(From,[],Fun,Limit,Left + 1,Ps, [X|Acc])
   after 10000 -> error
   end;
pmap(From,[],Fun,Limit,Left,[],Acc) ->
   From ! {done,Acc};

pmap(From,List,Fun,Limit,0,[P|Ps],Acc) ->
   receive
      {P,X} ->
         pmap(From,List,Fun,Limit,1,Ps,[X|Acc])
   after 10000 -> error
   end;
pmap(From,[H|T],Fun,Limit,Left,Pids,Acc) ->
   Self = self(),
   Pid = erlang:spawn_link(
           fun() -> 
                 Self ! {self(), catch Fun(H)} 
           end),
   pmap(From,T,Fun,Limit,Left - 1,Pids ++ [Pid], Acc).

  
