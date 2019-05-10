
%% http://xqerl.org/modules/random

-module(xqerl_rand).

-include("xqerl.hrl").

-define(MAXINT, (1 bsl 64) - 1).

-define(NS,<<"http://xqerl.org/modules/random">>).
-define(PX,<<"random">>).

-functions([
{{qname, ?NS, ?PX, <<"double">>}, 
 {xqSeqType, 'xs:double', one}, [], 
 {'double', 1}, 0, 
 []},
{{qname, ?NS, ?PX, <<"integer">>},
 {xqSeqType, 'xs:integer',one},[], 
 {'integer', 1}, 0,
 []},
{{qname, ?NS, ?PX, <<"integer">>},
 {xqSeqType, 'xs:integer',one},[], 
 {'integer', 2}, 1,
 [{xqSeqType, 'xs:integer',one}]},
{{qname, ?NS, ?PX, <<"seeded-double">>},
 {xqSeqType, 'xs:double',zero_or_many},[], 
 {'seeded_double', 3}, 2,
 [{xqSeqType, 'xs:integer',one},
  {xqSeqType, 'xs:integer',one}]},
{{qname, ?NS, ?PX, <<"seeded-integer">>},
 {xqSeqType, 'xs:integer',zero_or_many},[], 
 {'seeded_integer', 3}, 2,
 [{xqSeqType, 'xs:integer',one},
  {xqSeqType, 'xs:integer',one}]},
{{qname, ?NS, ?PX, <<"seeded-integer">>},
 {xqSeqType, 'xs:integer',zero_or_many},[], 
 {'seeded_integer', 4}, 3,
 [{xqSeqType, 'xs:integer',one},
  {xqSeqType, 'xs:integer',one},
  {xqSeqType, 'xs:integer',one}]},
{{qname, ?NS, ?PX, <<"gaussian">>},
 {xqSeqType, 'xs:double',zero_or_many},[], 
 {'gaussian', 2}, 1,
 [{xqSeqType, 'xs:integer',one}]},
{{qname, ?NS, ?PX, <<"seeded-permutation">>},
 {xqSeqType, item, zero_or_many},[], 
 {'seeded_permutation', 3}, 2,
 [{xqSeqType, 'xs:integer',one},
  {xqSeqType, item, zero_or_many}]},
{{qname, ?NS, ?PX, <<"uuid">>},
 {xqSeqType, 'xs:string',one},[], 
 {'uuid', 1}, 0,
 []}]).


%% ====================================================================
%% API functions
%% ====================================================================
-export([double/1,
         integer/1,
         integer/2,
         seeded_double/3,
         seeded_integer/3,
         seeded_integer/4,
         gaussian/2,
         seeded_permutation/3,
         uuid/1]).

uuid(_) ->
   quickrand:seed(),
   uuid:uuid_to_string(uuid:get_v4_urandom(), binary_standard).

double(_) ->
   rand:uniform().

integer(_) ->
   rand:uniform(?MAXINT).

integer(_, 1) -> 0;
integer(_, Max) when is_integer(Max), Max >= 2 ->
   rand:uniform(Max - 1);
integer(_, Max) when is_integer(Max), Max < 2 ->
   throw({error, negative});
integer(Ctx, Max) ->
   case xqerl_types:cast_as(Max, 'xs:integer') of
      Nm when is_integer(Nm), Max > 0 ->
         integer(Ctx, Nm);
      _ ->
         ?err('XPTY0004')
   end.

seeded_double(_, _, 0) -> [];
seeded_double(_, SeedInt, CntInt) when is_integer(SeedInt), 
                                       is_integer(CntInt),
                                       CntInt > 0 ->
   State = rand:seed(exsp, {SeedInt, SeedInt, SeedInt}),
   seeded_double_1(State, CntInt);
seeded_double(_, _, CntInt) when is_integer(CntInt),
                                 CntInt < 0 ->
   throw({error, negative});
seeded_double(Ctx, SeedInt, CntInt) ->
   case xqerl_types:cast_as(SeedInt, 'xs:integer') of
      Ns when is_integer(Ns) ->
         case xqerl_types:cast_as(CntInt, 'xs:integer') of
            Nc when is_integer(Nc) ->
               seeded_double(Ctx, Ns, Nc);
            _ ->
               ?err('XPTY0004')
         end;
      _ ->
         ?err('XPTY0004')
   end.

seeded_double_1(_, 0) -> [];
seeded_double_1(State, Cnt) ->
   {Dbl, NewState} = rand:uniform_s(State),
   [Dbl|seeded_double_1(NewState, Cnt - 1)].


seeded_integer(Ctx, SeedInt, CntInt) -> 
   seeded_integer(Ctx, SeedInt, CntInt, ?MAXINT).

seeded_integer(_, _, 0, _) -> [];
seeded_integer(_, SeedInt, CntInt, MaxInt) when is_integer(SeedInt),
                                                is_integer(CntInt),
                                                is_integer(MaxInt),
                                                CntInt > 0,
                                                MaxInt >= 1 ->
   State = rand:seed(exsp, {SeedInt, SeedInt, SeedInt}),
   seeded_integer_1(State, MaxInt, CntInt);
seeded_integer(_, _, CntInt, _) when is_integer(CntInt),
                                     CntInt < 0 ->
   throw({error, negative});
seeded_integer(_, _, _, MaxInt) when is_integer(MaxInt),
                                     MaxInt < 1 ->
   throw({error, negative});
seeded_integer(Ctx, SeedInt, CntInt, MaxInt) ->
   case xqerl_types:cast_as(SeedInt, 'xs:integer') of
      Ns when is_integer(Ns) ->
         case xqerl_types:cast_as(CntInt, 'xs:integer') of
            Nc when is_integer(Nc) ->
               case xqerl_types:cast_as(MaxInt, 'xs:integer') of
                  Nm when is_integer(Nm) ->
                     seeded_integer(Ctx, Ns, Nc, Nm);
                  _ ->
                     ?err('XPTY0004')
               end;
            _ ->
               ?err('XPTY0004')
         end;
      _ ->
         ?err('XPTY0004')
   end.

seeded_integer_1(_, _, 0) -> [];
seeded_integer_1(State, Max, Cnt) ->
   {Dbl, NewState} = rand:uniform_s(Max, State),
   [Dbl|seeded_integer_1(NewState, Max, Cnt - 1)].


gaussian(_, CntInt) when is_integer(CntInt), CntInt > 0 ->
   gaussian_1(CntInt).


gaussian_1(0) -> [];
gaussian_1(Cnt) -> 
   [rand:normal()|gaussian_1(Cnt - 1)].

seeded_permutation(_, _, List) when not is_list(List) -> [List];
seeded_permutation(_, SeedInt, List) when is_integer(SeedInt) ->
   State = rand:seed(exsp, {SeedInt, SeedInt, SeedInt}),
   Ints = seeded_integer_1(State, ?MAXINT, length(List)),
   Zipped = lists:zip(Ints, List),
   [V || {_, V} <- lists:sort(Zipped)].
   

%% ?err('XPTY0004')
%% 

%% ====================================================================
%% Internal functions
%% ====================================================================

