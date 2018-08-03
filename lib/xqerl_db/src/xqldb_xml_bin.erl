%% @author Zack
%% @doc @todo Add description to xqldb_xml_bin.


-module(xqldb_xml_bin).

-include("xqerl_db.hrl").


%% ====================================================================
%% API functions
%% ====================================================================
-export([
         test/0,
         get_attributes/3
         ]).

test() ->
   M = #{offset => 0,
         values => <<>>},
   S = lists:seq(1, 1000000),
   F = fun(P1,{Atts, Vals}) ->
             P = P1 div 10000,
             Ns = P1 div 96,
             Px = P1 div 62,
             Ln = P1 div 31,
             bin_attributes([{P,Ns,Px,Ln,rand_bin()}], Atts, Vals)
       end,
   {AttBin,#{values := AttValBin} = Nm} = lists:foldl(F, {<<>>,M}, S),
   %map_get(values, Nm).
   %{AttBin,AttValBin}.
   {ok,Serv} = 
     case erlang:whereis(merge_index_att) of
        undefined ->
           {ok,P} = merge_index:start_link("attributes"),
           erlang:register(merge_index_att, P),
           {ok,P};
        Pid ->
           {ok,Pid}
     end,
   Tmst = erlang:system_time(),
   DocId = 987654321,
   ?dbg("Pre iter1",true),
   Iter = attribute_value_index_postings(Nm, Tmst, DocId),
   ?dbg("Pre iter2",true),
   Iter2 = attribute_value_index_postings_3(AttBin, AttValBin, Tmst, DocId),
   ?dbg("Pre iter1",true),
   insert(Serv, Iter),
   ?dbg("Pre iter2",true),
   insert(Serv, Iter2),
   ?dbg("Post iter2",true).
   %merge_index:stop(Serv).
   %map_get(offset, Nm).
   %lists:keysort(2, maps:to_list(Nm))

insert(Serv,Vals) when is_list(Vals) ->
   merge_index:index(Serv, Vals);
insert(Serv,{Vals,none}) ->
   merge_index:index(Serv, Vals);
insert(Serv,{Vals,Iter}) ->
   merge_index:index(Serv, Vals),
   insert(Serv,Iter()).

%% ====================================================================
%% Internal functions
%% ====================================================================

%-define(nxt(A),A:32/integer).
%
%-define(ln(A),A:24/integer).
%-define(px(A),A:24/integer).
%-define(ns(A),A:16/integer).
%-define(att(A),A:32/integer).
%-define(plen(A),A:40/integer).

bin_attributes([], Atts, Vals) ->
   {Atts, Vals};
bin_attributes([H|T], Atts, Vals) ->
   {NewAtts,NewVals} = bin_attribute(H, Atts, Vals),
   bin_attributes(T, NewAtts, NewVals).

bin_attribute({Par,Ns,Px,Ln,Val}, Atts, Vals) ->
   {{Offset,Size}, NewVals} = get_val(Val,Vals),
   NewAtts = 
     <<Atts/binary,
      Par:32/integer,
      Ns:16/integer,
      Px:24/integer,
      Ln:24/integer,
      Offset:32/integer,
      Size:24/integer>>,
   {NewAtts,NewVals}.

get_attributes(Parent, Atts, AttValBin) ->
   [{Ns,Px,Ln,binary_part(AttValBin, Offset, Size)} ||
   <<Par:32/integer,
     Ns:16/integer,
     Px:24/integer,
     Ln:24/integer,
     Offset:32/integer,
     Size:24/integer>> <= Atts,
   Parent == Par].

split_bin(<<Head:76000/bytes,Tail/binary>>) ->
   [Head|split_bin(Tail)];
split_bin(<<Head/binary>>) ->
   [Head].

attribute_value_index_postings_3([H], AttValBin, Tmst, DocId) ->
   {attribute_value_index_postings_2(H, AttValBin, Tmst, DocId),
    none};
attribute_value_index_postings_3([H|T], AttValBin, Tmst, DocId) ->
   {attribute_value_index_postings_2(H, AttValBin, Tmst, DocId),
    fun() ->
          attribute_value_index_postings_3(T, AttValBin, Tmst, DocId)
    end};
attribute_value_index_postings_3(Atts, AttValBin, Tmst, DocId) ->
   case split_bin(Atts) of
      [H] ->
         attribute_value_index_postings_2(H, AttValBin, Tmst, DocId);
      [H|T] ->
         {attribute_value_index_postings_2(H, AttValBin, Tmst, DocId),
          fun() ->
                attribute_value_index_postings_3(T, AttValBin, Tmst, DocId)
          end}
   end.

   

attribute_value_index_postings_2(Atts, AttValBin, Tmst, DocId) ->
   [{document_value, DocId, binary_part(AttValBin, Offset, Size),
    <<Par:32/integer,
      Ns:16/integer,
      Px:24/integer,
      Ln:24/integer>>, [], Tmst} ||
   <<Par:32/integer,
     Ns:16/integer,
     Px:24/integer,
     Ln:24/integer,
     Offset:32/integer,
     Size:24/integer>> <= Atts].

attribute_value_index_postings(ValMap, Tmst, DocId) ->
   Iter = maps:iterator(ValMap),
   attribute_value_index_postings_(maps:next(Iter), Tmst, DocId, []).

attribute_value_index_postings_({values,_,I}, Tmst, DocId, Acc) ->
   attribute_value_index_postings_(maps:next(I), Tmst, DocId, Acc);
attribute_value_index_postings_({offset,_,I}, Tmst, DocId, Acc) ->
   attribute_value_index_postings_(maps:next(I), Tmst, DocId, Acc);
attribute_value_index_postings_(none, _Tmst, _DocId, Acc) ->
   {Acc, none};
attribute_value_index_postings_(Next, Tmst, DocId, Acc) when length(Acc) > 1000 ->
   {Acc, 
    fun() ->
          attribute_value_index_postings_(Next, Tmst, DocId, [])
    end};
attribute_value_index_postings_({K,_,I}, Tmst, DocId, Acc) ->
   Key = {database_value, att, K, DocId, [], Tmst},
   attribute_value_index_postings_(maps:next(I), Tmst, DocId, [Key|Acc]).


get_val(Val,Vals) when is_map_key(Val, Vals) ->
   #{Val := {Offset,Size,Cnt}} = Vals,
   {{Offset,Size}, Vals#{Val := {Offset,Size,Cnt + 1}}};
get_val(Val,#{offset := Offset,
              values := Values} = Vals) ->
   Size = byte_size(Val),
   RetVal = {Offset,Size}, 
   {RetVal, Vals#{offset := Offset + Size,
                  values := <<Values/binary, Val/binary>>,
                  Val    => {Offset,Size,1}}}.


   
rand_int() ->
   erlang:phash2(erlang:unique_integer(), 1 bsl 16).
rand_bin() ->
   integer_to_binary(rand_int()).


