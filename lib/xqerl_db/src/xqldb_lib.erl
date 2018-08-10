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
         normalize_uri/1,
         filename_to_uri/1,
         uri_to_filename/1]).

-export([pforeach/3,
         pmap/3]).

-export([valid_http/1]).

-spec join_uris(BaseUri :: binary(),
                RefUri  :: binary()) -> 
         binary() | {error,_}.

%% join_uris(_, "urn:" ++ _ = Uri) -> Uri;   % known non-heir. scheme
%% join_uris(_, "mailto:" ++ _ = Uri) -> Uri;% known non-heir. scheme
%% join_uris(_, "news:" ++ _ = Uri) -> Uri;% known non-heir. scheme
%% join_uris(_, "rss:" ++ _ = Uri) -> Uri;% known non-heir. scheme
%% join_uris(_, "tel:" ++ _ = Uri) -> Uri;% known non-heir. scheme
%% join_uris(_, ":" ++ _) -> {error,invalid_uri};% no scheme garbage
%% join_uris([], Uri) -> recompose(parse_ref_uri(Uri));
%% join_uris(_, "http:" ++ _ = Uri) -> simple_parse(Uri);
%% join_uris(_, "https:" ++ _ = Uri) -> simple_parse(Uri);
%% join_uris(_, "HTTP:" ++ _ = Uri) -> simple_parse(Uri);
%% join_uris(_, "HTTPS:" ++ _ = Uri) -> simple_parse(Uri);
join_uris(BaseUri,RefUri) ->
   %?dbg("{BaseUri,RefUri}",{BaseUri,RefUri}),
   B = parse(BaseUri),
   R = parse(RefUri),
   %?dbg("{B,R}",{B,R}),
   J = join(B,R),
   %?dbg("J",J),
   case J of
      {error,_} = E ->
         E;
      _ ->
         recompose(J)
   end.

%% simple_parse(Uri) ->
%%    case parse_uri(Uri) of
%%       {error,_} = E -> E;
%%       _ -> Uri
%%    end.

filename_to_uri(Filename) ->
   case http_uri:parse(Filename) of
      {error,_} ->
         case filename:absname(Filename) of
            <<"/", Rest/binary>> ->
               uri_string:normalize(<<"file:///", Rest/binary>>);
            "/" ++ Rest ->
               uri_string:normalize("file:///" ++ Rest);
            Other when is_list(Filename) ->
               uri_string:normalize("file:///" ++ Other);
            Other ->
               uri_string:normalize(<<"file:///", Other/binary>>)
         end;
      _ ->
         Filename
   end.

uri_to_filename(<<"file:///",Rest/binary>>) ->
   case Rest of
      <<L,$:,_/binary>> when L >= $A, L =< $Z;
                             L >= $a, L =< $z ->
         filename:absname(Rest);
      _ ->
         filename:absname(<<$/,Rest/binary>>)
   end;
uri_to_filename("file:///"++Rest) ->
   case Rest of
      [L,$:|_] when L >= $A, L =< $Z; 
                    L >= $a, L =< $z ->
         filename:absname(Rest);
      _ ->
         filename:absname([$/|Rest])
   end.

normalize_uri(Uri) ->
   case parse(Uri) of
      #{path := <<F,_/binary>> = P} = M ->
         case valid_http(P) of
            true ->
               case uri_string:normalize(P) of
                  <<F,_/binary>> = N -> % absolute/relative unchanged
                     uri_string:recompose(M#{path := N});
                  _ ->
                     uri_string:recompose(M)
               end;
            false ->
               {error,invalid_uri,Uri}
         end;
      #{path := <<>>} = M ->
         uri_string:recompose(M);
      {error,_,_} = Err ->
         case has_for_high_codepoint_or_space(Uri) of
            true ->
               Uri;
            false ->
               Err
         end
   end.

%% ====================================================================
%% Internal functions
%% ====================================================================

%% uri_string:parse doesn`t like high codepoints or the space character
%% check for existence . of course this lets crap come through...
has_for_high_codepoint_or_space(Bin) ->
   [C || <<C/utf8>> <= Bin, C == $ orelse C > 128] =/= [].


%recompose({Scheme, UserInfo, Host, Port, "/", Query, Fragment}) ->
%   recompose({Scheme, UserInfo, Host, Port, [], Query, Fragment});
%% recompose({error,Err}) -> {error,Err};
%% recompose({_Scheme, _UserInfo, _Host, _Port, {error,Err}, _Query, _Fragment}) ->
%%    {error,Err};
%% recompose({Scheme, UserInfo, Host, Port, Path, Query, Fragment}) ->
%%    atom_to_list(Scheme) ++ ":" ++
%%      get_host_port(Scheme, UserInfo, Host, Port) ++
%%      Path ++ 
%%      Query ++
%%      Fragment.
%% 
%% get_host_port(Scheme, UserInfo, Host, Port) ->
%%    Stndrd = is_standard(Port, Scheme),
%%    "//" ++
%%    if UserInfo == [] -> "";
%%       true -> UserInfo ++ "@"
%%    end ++
%%    Host ++ 
%%    if Stndrd ->
%%          "";
%%       true ->
%%          ":" ++ integer_to_list(Port)
%%    end.
%% 
%% is_standard(Port,Scheme) ->
%%    Stnd = [{file,1},{urn,2}|http_uri:scheme_defaults()],
%%    case lists:keyfind(Scheme, 1, Stnd) of
%%       {Scheme,Port} ->
%%          true;
%%       _ ->
%%          false
%%    end.

join(_, Rel) when is_map_key(scheme, Rel) -> 
   % relative with scheme is absolute
   Rel;
join(Base, Rel) when not is_map_key(scheme, Base),
                     not is_map_key(scheme, Rel) -> 
   {error, relative};
join(Base, _) when is_map_key(fragment, Base) -> 
   % Fragment in base is not okay
   {error, fragment};

join(#{scheme := Scheme,
       path   := Path}, Rel) 
   when is_map_key(userinfo, Rel); 
        is_map_key(host, Rel); 
        is_map_key(port, Rel) ->
   % no relative scheme, but has user info, host, or port.
   Rel#{scheme => Scheme,
        path   => maybe_normalize(Path)};

join(#{scheme := BScheme} = Base, Rel) ->
   BUserInfo = maps:get(userinfo, Base, <<>>),
   BHost     = maps:get(host, Base, <<>>),
   BPort     = maps:get(port, Base, -1),
   BPath     = maps:get(path, Base, <<>>),
   BQuery    = maps:get(query, Base, <<>>),

   Path      = maps:get(path, Rel, <<>>),
   Query     = maps:get(query, Rel, <<>>),
   Fragment  = maps:get(fragment, Rel, <<>>),
   
   {TPath,TQuery} = 
     case Path of
        <<>> ->
           if Query == <<>> ->
                 {BPath, BQuery};
              true ->
                 {BPath, Query}
           end;
        <<"/", _/binary>> ->
           {maybe_normalize(Path),Query};
        _ ->
           Temp = merge_path(BUserInfo, BPath, Path),
           {maybe_normalize(Temp),Query}
     end,
   M = #{scheme => BScheme,
         host => BHost
        },
   M0 = add_to_map_if_not(M, path,TPath,9999999999),
   M1 = add_to_map_if_not(M0,userinfo,BUserInfo,<<>>),
   M2 = add_to_map_if_not(M1,query,TQuery,<<>>),
   M3 = add_to_map_if_not(M2,fragment,Fragment,<<>>),
   M4 = add_to_map_if_not(M3,port,BPort,-1),
   %?dbg("M4",M4),
   M4;

join({error,E,_}, _) -> {error,E};
join(_, {error,E,_}) -> {error,E}.

add_to_map_if_not(Map,_Key,Value,Value) ->
   Map;
add_to_map_if_not(Map,Key,Value,_Not) ->
   Map#{Key => Value}.

maybe_normalize(Path) ->
   case uri_string:normalize(Path) of
      {error,_,_} ->
         Path;
      Norm ->
         Norm
   end.

%% parse_uri(Uri) ->
%%    case http_uri:parse(Uri,opts()) of
%%       {error,_} -> {error,malformed_uri};
%%       {ok,{_, _, _, _, _, _, []} = P} -> P;
%%       {ok,_} -> {error,base_with_fragment}
%%    end.
%% 
%% parse_ref_uri(MaybeUri) ->
%%    case http_uri:parse(MaybeUri,opts()) of
%%       {error,_} ->
%%          case http_uri:parse("http://x/" ++ MaybeUri,opts()) of
%%             {error,_} ->
%%                case lists:member($:, MaybeUri) of
%%                   true ->
%%                      {error,malformed_uri};
%%                   false ->
%%                      {undefined, [], [], -1, MaybeUri, [], []}
%%                end;
%%             {ok,{_, _, _, _, Path, Query, Fragment}} ->
%%                NPath = case Path of
%%                           "/" ++ X ->
%%                              X;
%%                           _ ->
%%                              Path
%%                        end,
%%                {undefined, [], [], -1, NPath, Query, Fragment}
%%          end;
%%       {ok,{_, _, _, _, "/", _, _} = P} -> 
%%          case lists:last(MaybeUri) of
%%             $/ ->
%%                P;
%%             _ ->
%%                setelement(5, P, [])
%%          end;
%%       {ok, P} -> P
%%    end.

merge_path(BUserInfo, BPath, RPath) ->
   if BUserInfo =/= <<>>, BPath == <<>> ->
         <<"/", RPath/binary>>;
      BPath == <<>>, RPath =/= <<>> ->
         F = binary:first(RPath),
         if F == $/ ->
               RPath;
            true ->
               <<"/", RPath/binary>>
         end;
      true ->
         append_last_slash(BPath, RPath)
   end.

parse(Uri) ->
   case uri_string:parse(Uri) of
      {error,_,_} ->
         fallback_parse(Uri);
      Map ->
         Map
   end.

fallback_parse(Uri) ->
   case http_uri:parse(Uri, opts()) of
      {error, no_scheme} ->
         NewUri = <<"http://x/",Uri/binary>>,
         case http_uri:parse(NewUri, opts()) of
            {error,_} = E1 ->
               E1;
            {ok,{_, UserInfo1, _, _, Path1, Query1, Fragment1}} ->
               build_map({none, UserInfo1, <<>>, -1, Path1, Query1, Fragment1})
         end;
      {error,E} ->
         ?dbg("E",{E,Uri}),
         {error, invalid_uri, Uri};
      {ok,{SchemeAtom, UserInfo, Host, Port, Path, Query, Fragment}} ->
         build_map({SchemeAtom, UserInfo, Host, Port, Path, Query, Fragment})
   end.

build_map({SchemeAtom, UserInfo, Host, Port, Path, Query, Fragment}) ->
   Port1 = case is_default_port(SchemeAtom, Port) of
              true ->
                 -1;
              _ ->
                 Port
           end,
   M1 = add_to_map_if_not(#{}, scheme, atom_to_binary(SchemeAtom, utf8), <<"none">>),
   M2 = add_to_map_if_not(M1, userinfo, UserInfo, <<>>),
   M3 = add_to_map_if_not(M2, host, Host, <<>>),
   M4 = add_to_map_if_not(M3, port, Port1, -1),
   M5 = add_to_map_if_not(M4, path, Path, 99999999999),
   M6 = add_to_map_if_not(M5, query, Query, <<>>),
   M7 = add_to_map_if_not(M6, fragment, Fragment, <<>>),
   ?dbg("M7",M7),
   M7.

   

append_last_slash(BPath, RPath) ->
   {Head,_} = string:take(BPath,"/",true,trailing),
   <<Head/binary, RPath/binary>>.


%% remove_dot_segments([]) -> [];
%% remove_dot_segments(Path) ->
%%    Split = string:split(Path,"/",all),
%%    Fun = fun(".",Acc) ->
%%                Acc;
%%             ("..",[]) ->
%%                [];
%%             ("..",Acc) ->
%%                tl(Acc);
%%             (S,Acc) ->
%%                [S|Acc]
%%          end,
%%    Sim = lists:foldl(Fun, [], Split),
%%    Sim1 = case lists:last(Path) of
%%              $. ->
%%                 [[]|Sim];
%%              _ ->
%%                 Sim
%%           end,
%%    B = build_path(lists:reverse(Sim1)),
%%    case hd(Path) of
%%       $/ when hd(B) =/= $/ ->
%%          [$/|B];
%%       _ ->
%%          B
%%    end.

%% build_path([]) -> [];
%% build_path([H]) ->
%%    H;
%% build_path([[C,$:,$/] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
%%    H ++ build_path(T);
%% build_path([[C,$:,$\\] = H|T]) when C >= $A, C =< $Z; C >= $a, C =< $z ->
%%    H ++ build_path(T);
%% build_path([H|T]) ->
%%    H ++ "/" ++ build_path(T).
%% 

is_default_port(Scheme,Port) ->
   case lists:keyfind(Scheme, 1, [{file,1},{urn,2}|http_uri:scheme_defaults()]) of
      {Scheme, Port} ->
         true;
      _ ->
         false
   end.


opts() ->
   [{scheme_defaults,
     [{file,1},{urn,2}|http_uri:scheme_defaults()]},
    {ipv6_host_with_brackets, true},
    {fragment,true}].

 
%{Scheme, UserInfo, Host, Port, Path, Query, Fragment}

%% valid_path(Scheme,Path) when Scheme =:= http;
%%                              Scheme =:= https ->
%%    case valid_http(Path) of
%%       true ->
%%          Path;
%%       _ ->
%%          {error,invalid_uri}
%%    end;
%% valid_path(_Scheme,Path) -> Path.

-define(HEX(V), V >= $0, V =< $9; V >= $A, V =< $F; V >= $a, V =< $f).
%-define(I(A,B), io:format("~p:~p~n",[A,B])).

valid_http(<<>>) -> true;
valid_http(<<$/,C,$:,$/,Rest/binary>>) when C >= $A, C =< $Z; C >= $a, C =< $z -> 
   valid_http(Rest);
valid_http(<<$:,_/binary>>) -> false;
valid_http(<<$%,A,B,T/binary>>) when ?HEX(A) -> 
   if ?HEX(B) ->
         valid_http(T);
      true ->
         false
   end;
valid_http(<<$%,_/binary>>) -> false;
valid_http(<<_,T/binary>>) -> valid_http(T).


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
pmap(From,[],_Fun,_Limit,_Left,[],Acc) ->
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

recompose(URIMap) ->
   uri_string:recompose(URIMap).
