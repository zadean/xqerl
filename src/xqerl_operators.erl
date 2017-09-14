%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017 Zachary N. Dean  All Rights Reserved.
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

%% @doc XQuery operator functions. the "op" functions in the spec.

-module(xqerl_operators).

-define(MINFLOAT, -3.4028235e38).
-define(MAXFLOAT,  3.4028235e38).

-define(string(I),  (I=='xs:string' orelse 
                    I=='xs:normalizedString' orelse 
                    I=='xs:token' orelse 
                    I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
                    I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(numeric(I), (I=='xs:numeric' orelse 
                     I=='xs:float' orelse I=='xs:double' orelse 
                     I=='xs:decimal' orelse 
                     I=='xs:integer' orelse 
                     I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
                     I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
                     I=='xs:nonNegativeInteger' orelse 
                     I=='xs:positiveInteger' orelse 
                     I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte')
                     ).
-define( num(Type),
         if Type =:= 'xs:double' -> 16;
            Type =:= 'xs:float' -> 15;
            Type =:= 'xs:decimal' -> 14;
            Type =:= 'xs:integer' -> 13;
            Type =:= 'xs:nonNegativeInteger' -> 12;
            Type =:= 'xs:positiveInteger' -> 11;
            Type =:= 'xs:nonPositiveInteger' -> 10;
            Type =:= 'xs:negativeInteger' -> 9;
            Type =:= 'xs:int' -> 8;
            Type =:= 'xs:unsignedInt' -> 7;
            Type =:= 'xs:long' -> 6;
            Type =:= 'xs:unsignedLong' -> 5;
            Type =:= 'xs:short' -> 4;
            Type =:= 'xs:unsignedShort' -> 3;
            Type =:= 'xs:byte' -> 2;
            Type =:= 'xs:unsignedByte' -> 1;
            Type =:= 'xs:integer' -> 0;
            true -> 99
         end).
-define( numtype(Num),
         if Num =:= 16    -> 'xs:double'            ;
            Num =:= 15    -> 'xs:float'             ;
            Num =:= 14    -> 'xs:decimal'           ;
            Num =:= 13    -> 'xs:integer'           ;
            Num =:= 12    -> 'xs:nonNegativeInteger';
            Num =:= 11    -> 'xs:positiveInteger'   ;
            Num =:= 10    -> 'xs:nonPositiveInteger';
            Num =:= 9     -> 'xs:negativeInteger'   ;
            Num =:= 8     -> 'xs:int'               ;
            Num =:= 7     -> 'xs:unsignedInt'       ;
            Num =:= 6     -> 'xs:long'              ;
            Num =:= 5     -> 'xs:unsignedLong'      ;
            Num =:= 4     -> 'xs:short'             ;
            Num =:= 3     -> 'xs:unsignedShort'     ;
            Num =:= 2     -> 'xs:byte'              ;
            Num =:= 1     -> 'xs:unsignedByte'      ;
            true -> undefined
         end).
-define(is_numeric(Num), (is_integer(Num) or is_float(Num))).

-define(bool(Val), #xqAtomicValue{type = 'xs:boolean', value = Val}).
-define(sing(Val), ?seq:singleton(Val)).

%(xs:integer, xs:decimal, xs:float, xs:double)

-export([is_comparable/1,
         % map
         key_val/1,
         % atomics
         add/2,
         subtract/2,
         multiply/2,
         divide/2,
         idivide/2,
         modulo/2,
         equal/2,
         not_equal/2,
         greater_than/2,
         less_than/2,
         greater_than_eq/2,
         less_than_eq/2,
         unary_plus/1,
         unary_minus/1,
         % nodes
         %union/2,
         %intersect/2,
         %except/2,
         node_before/2,
         node_after/2,
         node_is/2,
         general_compare/3
        ]).



-include("xqerl.hrl").

is_comparable('xs:base64Binary') -> true;
is_comparable('xs:boolean') -> true;
is_comparable('xs:date') -> true;
is_comparable('xs:dateTime') -> true;
is_comparable('xs:dayTimeDuration') -> true;
is_comparable('xs:hexBinary') -> true;
is_comparable('xs:string') -> true;
is_comparable('xs:time') -> true;
is_comparable('xs:yearMonthDuration') -> true;
is_comparable(Type) -> xqerl_types:is_numeric_type(Type).   

add(#xqNode{} = Arg1, Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg1),
   add(Ns, Arg2);
add(Arg1, #xqNode{} = Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg2),
   add(Arg1,Ns);
add(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
   add(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
add(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   add(Arg1,xqerl_types:cast_as(Arg2, 'xs:double'));

add(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(add_yearMonthDuration_to_date(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2, #xqAtomicValue{type = 'xs:date'} = Arg1) ->
   ?sing(add_yearMonthDuration_to_date(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(add_yearMonthDuration_to_dateTime(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2, #xqAtomicValue{type = 'xs:dateTime'} = Arg1) ->
   ?sing(add_yearMonthDuration_to_dateTime(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1) ->
   ?sing(add_yearMonthDurations(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(add_dayTimeDurations(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(add_dayTimeDuration_to_date(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2, #xqAtomicValue{type = 'xs:date'} = Arg1) ->
   ?sing(add_dayTimeDuration_to_date(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(add_dayTimeDuration_to_dateTime(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2, #xqAtomicValue{type = 'xs:dateTime'} = Arg1) ->
   ?sing(add_dayTimeDuration_to_dateTime(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(add_dayTimeDuration_to_time(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2, #xqAtomicValue{type = 'xs:time'} = Arg1) ->
   ?sing(add_dayTimeDuration_to_time(Arg1, Arg2));
add(#xqAtomicValue{type = 'xs:date'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');
add(#xqAtomicValue{type = 'xs:yearMonthDuration'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');
add(#xqAtomicValue{type = 'xs:dateTime'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');
add(#xqAtomicValue{type = 'xs:dayTimeDuration'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');
add(#xqAtomicValue{type = 'xs:duration'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');
add(#xqAtomicValue{type = 'xs:time'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');

add(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               add(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     add(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_add(Arg1, Arg2))
         end
   end.

subtract(#xqNode{} = Arg1, Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg1),
   subtract(Ns, Arg2);
subtract(Arg1, #xqNode{} = Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg2),
   subtract(Arg1,Ns);
subtract(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
   subtract(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
subtract(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   subtract(Arg1,xqerl_types:cast_as(Arg2, 'xs:double'));

subtract(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:date'} = Arg2) ->
   ?sing(subtract_dates(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(subtract_dayTimeDuration_from_date(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(subtract_yearMonthDuration_from_date(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:date'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');

subtract(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   ?sing(subtract_dateTimes(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(subtract_dayTimeDuration_from_dateTime(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(subtract_yearMonthDuration_from_dateTime(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:dateTime'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');

subtract(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(subtract_dayTimeDuration_from_time(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:time'} = Arg2) ->
   ?sing(subtract_times(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:time'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');

subtract(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(subtract_dayTimeDurations(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:dayTimeDuration'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');

subtract(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(subtract_yearMonthDurations(Arg1,Arg2));
subtract(#xqAtomicValue{type = 'xs:yearMonthDuration'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');

subtract(#xqAtomicValue{type = 'xs:duration'}, #xqAtomicValue{type = _}) ->
   xqerl_error:error('XPTY0004');
subtract(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               subtract(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     subtract(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_subtract(Arg1, Arg2))
         end
   end.


multiply(#xqNode{} = Arg1, Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg1),
   multiply(Ns, Arg2);
multiply(Arg1, #xqNode{} = Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg2),
   multiply(Arg1,Ns);
multiply(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
   multiply(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
multiply(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   multiply(Arg1,xqerl_types:cast_as(Arg2, 'xs:double'));

multiply(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{} = Arg2) ->
   ?sing(multiply_dayTimeDuration(Arg1,Arg2));
multiply(#xqAtomicValue{} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(multiply_dayTimeDuration(Arg2,Arg1));
multiply(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{} = Arg2) ->
   ?sing(multiply_yearMonthDuration(Arg1,Arg2));
multiply(#xqAtomicValue{} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(multiply_yearMonthDuration(Arg2,Arg1));
multiply(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               multiply(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     multiply(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_multiply(Arg1, Arg2))
         end
   end.

divide(#xqNode{} = Arg1, Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg1),
   divide(Ns, Arg2);
divide(Arg1, #xqNode{} = Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg2),
   divide(Arg1,Ns);
divide(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
   divide(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
divide(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   divide(Arg1,xqerl_types:cast_as(Arg2, 'xs:double'));

divide(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(divide_dayTimeDuration_by_dayTimeDuration(Arg1,Arg2));
divide(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{} = Arg2) ->
   ?sing(divide_dayTimeDuration(Arg1,Arg2));
divide(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(divide_yearMonthDuration_by_yearMonthDuration(Arg1,Arg2));
divide(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{} = Arg2) ->
   ?sing(divide_yearMonthDuration(Arg1,Arg2));
divide(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               divide(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     divide(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_divide(Arg1, Arg2))
         end
   end.

idivide(#xqNode{} = Arg1, Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg1),
   idivide(Ns, Arg2);
idivide(Arg1, #xqNode{} = Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg2),
   idivide(Arg1,Ns);
idivide(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
   idivide(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
idivide(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   idivide(Arg1,xqerl_types:cast_as(Arg2, 'xs:double'));

idivide(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               idivide(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     idivide(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_integer_divide(Arg1, Arg2))
         end
   end.

modulo(#xqNode{} = Arg1, Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg1),
   modulo(Ns, Arg2);
modulo(Arg1, #xqNode{} = Arg2) ->
   Ns = xqerl_node:atomize_nodes(Arg2),
   modulo(Arg1,Ns);
modulo(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, Arg2) ->
   modulo(xqerl_types:cast_as(Arg1, 'xs:double'), Arg2);
modulo(Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   modulo(Arg1,xqerl_types:cast_as(Arg2, 'xs:double'));

modulo(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               modulo(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     modulo(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_mod(Arg1, Arg2))
         end
   end.

equal([], []) -> ?seq:empty(); %op_numeric_equal_SUITE ?sing(?bool(true));
equal([], _) -> ?seq:empty(); % prod_ValueComp_SUITE
equal(_, []) -> ?seq:empty();
%% equal([], _) -> ?sing(?bool(false));
%% equal(_, []) -> ?sing(?bool(false));
equal(#xqNode{} = Arg1, Arg2) ->
   At = xqerl_node:atomize_nodes([Arg1]),
   equal(At, Arg2);
equal(Arg1, #xqNode{} = Arg2) ->
   At = xqerl_node:atomize_nodes([Arg2]),
   equal(Arg1, At);

equal(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:NCName'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:NCName'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:base64Binary'} = Arg1, #xqAtomicValue{type = 'xs:base64Binary'} = Arg2) ->
   ?sing(base64Binary_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:boolean'} = Arg1, #xqAtomicValue{type = 'xs:boolean'} = Arg2) ->
   ?sing(boolean_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:date'} = Arg2) ->
   ?sing(date_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   ?sing(dateTime_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:dateTimeStamp'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   ?sing(dateTime_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTimeStamp'} = Arg2) ->
   ?sing(dateTime_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:duration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:duration'} = Arg1, #xqAtomicValue{type = 'xs:duration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:duration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:duration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:duration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   ?sing(duration_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:hexBinary'} = Arg1, #xqAtomicValue{type = 'xs:hexBinary'} = Arg2) ->
   ?sing(hexBinary_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:NOTATION'} = Arg1, #xqAtomicValue{type = 'xs:NOTATION'} = Arg2) ->
   ?sing(nOTATION_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:QName'} = Arg1, #xqAtomicValue{type = 'xs:QName'} = Arg2) ->
   ?sing(qName_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:time'} = Arg2) ->
   ?sing(time_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = T1} = Arg1, #xqAtomicValue{type = T2} = Arg2) when ?string(T1),?string(T2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:NCName'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = T1} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) when ?string(T1) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:gYearMonth'} = Arg1, #xqAtomicValue{type = 'xs:gYearMonth'} = Arg2) ->
   ?sing(gYearMonth_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:gYear'} = Arg1, #xqAtomicValue{type = 'xs:gYear'} = Arg2) ->
   ?sing(gYear_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:gMonthDay'} = Arg1, #xqAtomicValue{type = 'xs:gMonthDay'} = Arg2) ->
   ?sing(gMonthDay_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:gMonth'} = Arg1, #xqAtomicValue{type = 'xs:gMonth'} = Arg2) ->
   ?sing(gMonth_equal(Arg1,Arg2));
equal(#xqAtomicValue{type = 'xs:gDay'} = Arg1, #xqAtomicValue{type = 'xs:gDay'} = Arg2) ->
   ?sing(gDay_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:NCName'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = T2} = Arg2) when ?string(T2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   ?sing(string_equal(Arg2,Arg1));
equal(#xqAtomicValue{type = T1} = Arg1, #xqAtomicValue{type = T2} = Arg2) when ?numeric(T1),?numeric(T2) ->
   ?sing(numeric_equal(Arg2,Arg1));

equal(#xqAtomicValue{type = 'xs:boolean'}, #xqAtomicValue{}) ->
   xqerl_error:error('XPTY0004');
equal(#xqAtomicValue{type = 'xs:untypedAtomic'}, #xqAtomicValue{}) ->
   xqerl_error:error('XPTY0004');
equal(#xqAtomicValue{}, #xqAtomicValue{}) ->
   xqerl_error:error('XPTY0004');

equal(Arg1, Arg2) ->
   A1 = case ?seq:is_sequence(Arg1) of
            true ->
               case ?seq:size(Arg1) of
                  0 ->
                     [];
                  1 ->
                     ?seq:singleton_value(Arg1);
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               Arg1
        end,
   A2 = case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     [];
                  1 ->
                     ?seq:singleton_value(Arg2);
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               Arg2
        end,
   equal(A1, A2).

not_equal(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               not_equal(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     not_equal(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(negate(equal(Arg1, Arg2)))
         end
   end.

greater_than([], _) -> ?seq:empty();
greater_than(_, []) -> ?seq:empty();
greater_than(#xqNode{} = Arg1, Arg2) ->
   At = xqerl_node:atomize_nodes([Arg1]),
   greater_than(At, Arg2);
greater_than(Arg1, #xqNode{} = Arg2) ->
   At = xqerl_node:atomize_nodes([Arg2]),
   greater_than(Arg1, At);

greater_than(#xqAtomicValue{type = 'xs:NCName'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   string_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:base64Binary'} = Arg1, #xqAtomicValue{type = 'xs:base64Binary'} = Arg2) ->
   base64Binary_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:boolean'} = Arg1, #xqAtomicValue{type = 'xs:boolean'} = Arg2) ->
   boolean_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:date'} = Arg2) ->
   date_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   dateTime_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   yearMonthDuration_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   dayTimeDuration_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:hexBinary'} = Arg1, #xqAtomicValue{type = 'xs:hexBinary'} = Arg2) ->
   hexBinary_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:time'} = Arg2) ->
   time_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   string_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:NCName'} = Arg2) ->
   string_greater_than(Arg1, Arg2);
greater_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   string_greater_than(Arg1,Arg2);
greater_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:NCName'} = Arg2) ->
   string_greater_than(Arg1,Arg2);
greater_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_greater_than(Arg1,Arg2);
greater_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   string_greater_than(Arg1,Arg2);

greater_than(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               greater_than(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     greater_than(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_greater_than(Arg1, Arg2))
         end
   end.

less_than([], _) -> ?seq:empty();
less_than(_, []) -> ?seq:empty();
less_than(#xqNode{} = Arg1, Arg2) ->
   At = xqerl_node:atomize_nodes([Arg1]),
   less_than(At, Arg2);
less_than(Arg1, #xqNode{} = Arg2) ->
   At = xqerl_node:atomize_nodes([Arg2]),
   less_than(Arg1, At);

less_than(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   string_less_than(Arg1, Arg2);
less_than(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_less_than(Arg1, Arg2);
less_than(#xqAtomicValue{type = 'xs:base64Binary'} = Arg1, #xqAtomicValue{type = 'xs:base64Binary'} = Arg2) ->
   base64Binary_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:boolean'} = Arg1, #xqAtomicValue{type = 'xs:boolean'} = Arg2) ->
   boolean_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:date'} = Arg2) ->
   date_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   dateTime_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   yearMonthDuration_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   dayTimeDuration_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:hexBinary'} = Arg1, #xqAtomicValue{type = 'xs:hexBinary'} = Arg2) ->
   hexBinary_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:time'} = Arg2) ->
   time_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_less_than(Arg1, Arg2);
less_than(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   string_less_than(Arg1, Arg2);
less_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   string_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   string_less_than(Arg1,Arg2);
less_than(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   string_less_than(Arg1,Arg2);

less_than(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               less_than(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     less_than(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               ?sing(numeric_less_than(Arg1, Arg2))
         end
   end.

greater_than_eq([], _) -> ?seq:empty();
greater_than_eq(_, []) -> ?seq:empty();
greater_than_eq(#xqNode{} = Arg1, Arg2) ->
   At = xqerl_node:atomize_nodes([Arg1]),
   greater_than_eq(At, Arg2);
greater_than_eq(Arg1, #xqNode{} = Arg2) ->
   At = xqerl_node:atomize_nodes([Arg2]),
   greater_than_eq(Arg1, At);

greater_than_eq(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   negate(string_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:base64Binary'} = Arg1, #xqAtomicValue{type = 'xs:base64Binary'} = Arg2) ->
   negate(base64Binary_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:boolean'} = Arg1, #xqAtomicValue{type = 'xs:boolean'} = Arg2) ->
   negate(boolean_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:date'} = Arg2) ->
   negate(date_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   negate(dateTime_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   negate(yearMonthDuration_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   negate(dayTimeDuration_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:hexBinary'} = Arg1, #xqAtomicValue{type = 'xs:hexBinary'} = Arg2) ->
   negate(hexBinary_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:time'} = Arg2) ->
   negate(time_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   negate(string_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   negate(string_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   negate(string_less_than(Arg1,Arg2));
greater_than_eq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   negate(string_less_than(Arg1,Arg2));

greater_than_eq(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               greater_than_eq(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     greater_than_eq(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               Res = numeric_greater_than(Arg1,Arg2) == ?bool(true) orelse numeric_equal(Arg1, Arg2) == ?bool(true),
               ?bool(Res)
         end
   end.

less_than_eq([], _) -> ?seq:empty();
less_than_eq(_, []) -> ?seq:empty();
less_than_eq(#xqNode{} = Arg1, Arg2) ->
   At = xqerl_node:atomize_nodes([Arg1]),
   less_than_eq(At, Arg2);
less_than_eq(Arg1, #xqNode{} = Arg2) ->
   At = xqerl_node:atomize_nodes([Arg2]),
   less_than_eq(Arg1, At);

less_than_eq(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:anyURI'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:base64Binary'} = Arg1, #xqAtomicValue{type = 'xs:base64Binary'} = Arg2) ->
   negate(base64Binary_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:boolean'} = Arg1, #xqAtomicValue{type = 'xs:boolean'} = Arg2) ->
   negate(boolean_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:date'} = Arg1, #xqAtomicValue{type = 'xs:date'} = Arg2) ->
   negate(date_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:dateTime'} = Arg1, #xqAtomicValue{type = 'xs:dateTime'} = Arg2) ->
   negate(dateTime_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg1, #xqAtomicValue{type = 'xs:yearMonthDuration'} = Arg2) ->
   negate(yearMonthDuration_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg1, #xqAtomicValue{type = 'xs:dayTimeDuration'} = Arg2) ->
   negate(dayTimeDuration_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:hexBinary'} = Arg1, #xqAtomicValue{type = 'xs:hexBinary'} = Arg2) ->
   negate(hexBinary_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:time'} = Arg1, #xqAtomicValue{type = 'xs:time'} = Arg2) ->
   negate(time_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:string'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:anyURI'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:string'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));
less_than_eq(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Arg2) ->
   negate(string_greater_than(Arg1,Arg2));

less_than_eq(Arg1, Arg2) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               less_than_eq(?seq:singleton_value(Arg1), Arg2);
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         case ?seq:is_sequence(Arg2) of
            true ->
               case ?seq:size(Arg2) of
                  0 ->
                     Arg2;
                  1 ->
                     less_than_eq(Arg1, ?seq:singleton_value(Arg2));
                  _ ->
                     xqerl_error:error('XPTY0004')
               end;
            _ ->
               Res = numeric_less_than(Arg1,Arg2) == ?bool(true) orelse numeric_equal(Arg1, Arg2) == ?bool(true),
               ?bool(Res)
         end
   end.
%% unary returns sequence
unary_plus([Arg1]) ->
   unary_plus(Arg1);
unary_plus(#xqNode{} = Arg1) ->
   unary_plus(atomize_list(Arg1));
unary_plus(#xqAtomicValue{type = T} = Arg1) when ?numeric(T) ->
   ?sing(numeric_unary_plus(Arg1));
unary_plus(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1) ->
   ?sing(numeric_unary_plus(xqerl_types:cast_as(Arg1, 'xs:double') ));
unary_plus(Arg1) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               ?sing(unary_plus(?seq:singleton_value(Arg1)));
               %?sing(numeric_unary_plus(?seq:singleton_value(Arg1)));
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         xqerl_error:error('XPTY0004')
   end.

unary_minus(#xqNode{} = Arg1) ->
   unary_minus(atomize_list(Arg1));
unary_minus(#xqAtomicValue{type = T} = Arg1) when ?numeric(T) ->
   ?sing(numeric_unary_minus(Arg1));
unary_minus(#xqAtomicValue{type = 'xs:untypedAtomic'} = Arg1) ->
   ?sing(numeric_unary_minus(xqerl_types:cast_as(Arg1, 'xs:double') ));
unary_minus(Arg1) ->
   case ?seq:is_sequence(Arg1) of
      true ->
         case ?seq:size(Arg1) of
            0 ->
               Arg1;
            1 ->
               ?sing(unary_minus(?seq:singleton_value(Arg1)));
            _ ->
               xqerl_error:error('XPTY0004')
         end;
      _ ->
         xqerl_error:error('XPTY0004')
   end.

%% union(Arg1, {1,_}) -> 
%%    D1 = node_list_to_dict(?seq:to_list(Arg1)),
%%    ?seq:from_list(dict_to_node_list(D1));
%% union({1,_}, Arg2) ->
%%    D1 = node_list_to_dict(?seq:to_list(Arg2)),
%%    ?seq:from_list(dict_to_node_list(D1));
%% union(Arg1, Arg2) ->
%%    D1 = node_list_to_dict(?seq:to_list(Arg1)),
%%    D2 = node_list_to_dict(?seq:to_list(Arg2)),
%%    M1 = orddict:merge(fun(_K,V1,_V2) ->
%%                             V1
%%                       end, D1, D2),
%%    ?seq:from_list(dict_to_node_list(M1)).
%% 
%% intersect(_, {1,_} = Arg2) -> Arg2;
%% intersect({1,_} = Arg1,_) -> Arg1;
%% intersect(Arg1, Arg2) ->
%%    D1 = node_list_to_dict(?seq:to_list(Arg1)),
%%    Keys = [Node#xqNode.identity||Node<-?seq:to_list(Arg2)],
%%    List = lists:flatmap(fun(K) ->
%%                             case orddict:find(K, D1) of
%%                                {ok,V} ->
%%                                   [V];
%%                                _ ->
%%                                   []
%%                             end
%%                       end, Keys),
%%    ?seq:from_list(List).
%% 
%% except(Arg1, Arg2) ->
%%    D1 = node_list_to_dict(?seq:to_list(Arg1)),
%%    Keys = [Node#xqNode.identity||Node<- ?seq:to_list(Arg2)],
%%    Dict = lists:foldl(fun(K,D) ->
%%                             orddict:erase(K, D)
%%                       end, D1, Keys),
%%    ?seq:from_list(dict_to_node_list(Dict)).

node_before([], _) ->
   ?seq:empty();
node_before(_,[]) ->
   ?seq:empty();
node_before(#xqNode{frag_id = F1,identity = I1}, #xqNode{frag_id = F2,identity = I2}) ->
   ?bool((I1 < I2 andalso F1 == F2) orelse F1 < F2);
node_before(Seq1,#xqNode{} = N2) ->
   node_before(?seq:singleton_value(Seq1),N2);
node_before(#xqNode{} = N1, Seq2) ->
   node_before(N1, ?seq:singleton_value(Seq2));
node_before(Seq1, Seq2) ->
   %?dbg("node_before(Seq1, Seq2)",{Seq1, Seq2}),
   Nd1 = case ?seq:singleton_value(Seq1) of
            #xqNode{} = N1 ->
               N1;
            [] ->
               [];
            _ ->
               xqerl_error:error('XPTY0004')
         end,
   Nd2 = case ?seq:singleton_value(Seq2) of
            #xqNode{} = N2 ->
               N2;
            [] ->
               [];
            _ ->
               xqerl_error:error('XPTY0004')
         end,
   node_before(Nd1,Nd2).

node_after([], _) ->
   ?seq:empty();
node_after(_,[]) ->
   ?seq:empty();
node_after(#xqNode{frag_id = F1,identity = I1}, #xqNode{frag_id = F2,identity = I2}) ->
   ?bool((I1 > I2 andalso F1 == F2) orelse F1 > F2);
node_after(Seq1,#xqNode{} = N2) ->
   node_after(?seq:singleton_value(Seq1),N2);
node_after(#xqNode{} = N1, Seq2) ->
   node_after(N1, ?seq:singleton_value(Seq2));
node_after(Seq1, Seq2) ->
   Nd1 = case ?seq:singleton_value(Seq1) of
            #xqNode{} = N1 ->
               N1;
            [] ->
               [];
            _ ->
               xqerl_error:error('XPTY0004')
         end,
   Nd2 = case ?seq:singleton_value(Seq2) of
            #xqNode{} = N2 ->
               N2;
            [] ->
               [];
            _ ->
               xqerl_error:error('XPTY0004')
         end,
   node_after(Nd1,Nd2).

node_is([], _) -> ?seq:empty();
node_is(_, []) -> ?seq:empty();
node_is(#xqNode{frag_id = F1,identity = I1}, #xqNode{frag_id = F2,identity = I2}) ->
   #xqAtomicValue{type = 'xs:boolean', value = I1 == I2 andalso F1 == F2};
node_is(Seq1,#xqNode{} = N2) ->
   node_is(?seq:singleton_value(Seq1),N2);
node_is(#xqNode{} = N1, Seq2) ->
   node_is(N1, ?seq:singleton_value(Seq2));
node_is(O1, O2) ->
   case ?seq:is_sequence(O1) of
      true ->
         node_is(?seq:singleton_value(O1),O2);
      _ ->
         xqerl_error:error('XPTY0004')
   end.


% returns xs:boolean
% rule 1 if singleton boolean, then both boolean
general_compare(Op,[#xqAtomicValue{type = 'xs:boolean'}= Val],List2) ->
   Ebv = xqerl_fn:boolean([], List2),
   value_compare(Op,Val,Ebv);
general_compare(Op,List2,[#xqAtomicValue{type = 'xs:boolean'}= Val]) ->
   Ebv = xqerl_fn:boolean([], List2),
   value_compare(Op,Val,Ebv);
% rule 2+ 
general_compare(Op,#xqAtomicValue{} = List1,List2) ->
   general_compare(Op,?seq:singleton(List1),List2);
general_compare(Op,List1,#xqAtomicValue{} = List2) ->
   general_compare(Op,List1,?seq:singleton(List2));

general_compare(Op,List1,List2) when is_list(List1) ->
   general_compare(Op,?seq:from_list(List1),List2);
general_compare(Op,List1,List2) when is_list(List2) ->
   general_compare(Op,List1,?seq:from_list(List2));

general_compare(Op,List1,List2) ->
   AList1 = atomize_list(List1),
   %?dbg("general_compare List1", List1),
   %?dbg("general_compare AList1", AList1),
   AList2 = atomize_list(List2),
   %?dbg("general_compare AList2", AList2),
   Bool = lists:any(fun(V1) ->
                          lists:any(fun(V2) ->
                                          ?seq:singleton_value(value_compare(Op,V1,V2)) == 
                                            #xqAtomicValue{type = 'xs:boolean',value = true}
                                    end, ?seq:to_list(AList2))
                    end, ?seq:to_list(AList1)),
   ?seq:singleton(#xqAtomicValue{type = 'xs:boolean', value = Bool}).

%2a both are untyped
value_compare(Op,#xqAtomicValue{type = 'xs:untypedAtomic'} = Val1,#xqAtomicValue{type = 'xs:untypedAtomic'} = Val2) ->
   S1 = xqerl_xs:xs_string([], Val1),
   S2 = xqerl_xs:xs_string([], Val2),
   value_compare(Op,S1,S2);
%2b one is untyped
value_compare(Op,#xqAtomicValue{type = 'xs:untypedAtomic'} = Val1, #xqAtomicValue{type = Type} = Val2) ->
   V1 = case Type of
           'xs:dayTimeDuration' ->
               xqerl_types:cast_as(Val1,'xs:dayTimeDuration');
           'xs:yearMonthDuration' ->
               xqerl_types:cast_as(Val1,'xs:yearMonthDuration');
           Type when ?string(Type) ->
              xqerl_types:cast_as(Val1,'xs:string');
           _ ->
              case xqerl_types:is_numeric_type(Type) of 
                 true ->
                    xqerl_types:cast_as(Val1,'xs:double');
                 _ ->
                     xqerl_types:cast_as(Val1,Type)
              end
        end,
   value_compare(Op,V1,Val2);
value_compare(Op,#xqAtomicValue{type = Type} = Val1, #xqAtomicValue{type = 'xs:untypedAtomic'} = Val2) ->
   V2 = case Type of
           'xs:dayTimeDuration' ->
               xqerl_types:cast_as(Val2,'xs:dayTimeDuration');
           'xs:yearMonthDuration' ->
               xqerl_types:cast_as(Val2,'xs:yearMonthDuration');
           Type when ?string(Type) ->
              xqerl_types:cast_as(Val2,'xs:string');
           _ ->
              case xqerl_types:is_numeric_type(Type) of 
                 true ->
                    xqerl_types:cast_as(Val2,'xs:double');
                 _ ->
                     xqerl_types:cast_as(Val2,Type)
              end
        end,
   value_compare(Op,Val1,V2);
% 2c do the compare
value_compare(Op,Val1,Val2) ->
   case Op of
      '=' ->
         equal(Val1, Val2);
      '!=' ->
         not_equal(Val1, Val2);
      '<' ->
         less_than(Val1, Val2);
      '<=' ->
         less_than_eq(Val1, Val2);
      '>' ->
         greater_than(Val1, Val2);
      '>=' ->
         greater_than_eq(Val1, Val2)
   end.


atomize_list(Seq) ->
   ?seq:val_map(fun(#xqAtomicValue{} = V) ->
                           V;
                        (#xqNode{} = N) ->
                           ?seq:singleton_value(xqerl_node:atomize_nodes(N))
                     end, Seq).



% returns: numeric
numeric_add(A,B) when is_integer(A) -> 
   numeric_add(#xqAtomicValue{type = 'xs:integer', value = A},B);
numeric_add(A,B) when is_integer(B) -> 
   numeric_add(A,#xqAtomicValue{type = 'xs:integer', value = B});
numeric_add(#xqAtomicValue{type = TypeA, value = ValA},
            #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         Prec = max(?num(TypeA), ?num(TypeB)),
         TypeC = ?numtype(Prec),
         ValC = if ValA == "INF", ?is_numeric(ValB) ->
                      "INF";
                   ValB == "INF", ?is_numeric(ValA) ->
                      "INF";
                   ValA == "-INF", ?is_numeric(ValB) ->
                      "-INF";
                   ValB == "-INF", ?is_numeric(ValA) ->
                      "-INF";
                   ValA == "INF", ValB == "INF" ->
                      "INF";
                   ValA == "-INF", ValB == "-INF" ->
                      "-INF";
                   ValA == "INF", ValB == "-INF" ->
                      "NaN";
                   ValA == "-INF", ValB == "INF" ->
                      "NaN";
                   ValA == "NaN" orelse ValB == "NaN" ->
                      "NaN";
                   Prec == 15 -> % float could be overflowed
                      case ValA + ValB of
                         X when X > ?MAXFLOAT ->
                            "INF";
                         X when X < ?MINFLOAT ->
                            "-INF";
                         X ->
                            X
                      end;
                   true ->
                      ValA + ValB
                end,
         
         #xqAtomicValue{type = TypeC, value = ValC};
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: numeric
numeric_subtract(#xqAtomicValue{type = TypeA, value = ValA},
                 #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         Prec = max(?num(TypeA), ?num(TypeB)),
         TypeC = ?numtype(Prec),
         ValC = if ValA == "INF", ?is_numeric(ValB) ->
                      "INF";
                   ValB == "INF", ?is_numeric(ValA) ->
                      "-INF";
                   ValA == "-INF", ?is_numeric(ValB) ->
                      "-INF";
                   ValB == "-INF", ?is_numeric(ValA) ->
                      "INF";
                   ValA == "INF", ValB == "INF" ->
                      "NaN";
                   ValA == "-INF", ValB == "-INF" ->
                      "NaN";
                   ValA == "INF", ValB == "-INF" ->
                      "INF";
                   ValA == "-INF", ValB == "INF" ->
                      "-INF";
                   ValA == "NaN" orelse ValB == "NaN" ->
                      "NaN";
                   (is_integer(ValA) orelse trunc(ValA) == ValA) andalso (is_integer(ValB) orelse trunc(ValB) == ValB) ->
                      ValA - ValB;
                   Prec == 15 -> % float could be overflowed
                      case ((ValA * 100000000) - (ValB * 100000000)) / 100000000 of
                         X when X > ?MAXFLOAT ->
                            "INF";
                         X when X < ?MINFLOAT ->
                            "-INF";
                         X ->
                            X
                      end;
                   true ->
                      ((ValA * 100000000) - (ValB * 100000000)) / 100000000
                end,
         %?dbg("numeric_subtract",{ValA,ValB,ValC}),
         #xqAtomicValue{type = TypeC, value = ValC};
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: numeric
numeric_multiply(#xqAtomicValue{type = TypeA, value = ValA},
                 #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         Prec = max(?num(TypeA), ?num(TypeB)),
         TypeC = ?numtype(Prec),
         ValC = if ValA == "INF" andalso ?is_numeric(ValB) andalso ValB > 0 ->
                      "INF";
                   ValA == "INF" andalso ?is_numeric(ValB) andalso ValB < 0 ->
                      "-INF";
                   ValB == "INF" andalso ?is_numeric(ValA) andalso ValA > 0 ->
                      "INF";
                   ValB == "INF" andalso ?is_numeric(ValA) andalso ValA < 0 ->
                      "-INF";
                   ValA == "INF" andalso ValB == 0 ->
                      "NaN";
                   ValA == "INF" andalso ValB == 0 ->
                      "NaN";
                   ValB == "INF" andalso ValA == 0 ->
                      "NaN";
                   ValB == "INF" andalso ValA == 0 ->
                      "NaN";
                   ValA == "NaN" orelse ValB == "NaN" ->
                      "NaN";
                   is_integer(ValA) andalso is_integer(ValB) ->
                      ValA * ValB;
                   Prec == 15 -> % float could be overflowed
                      case ((ValA * 100000000) * (ValB * 100000000)) / 10000000000000000 of
                         X when X > ?MAXFLOAT ->
                            "INF";
                         X when X < ?MINFLOAT ->
                            "-INF";
                         X ->
                            X
                      end;
                  true ->
                      ValA * ValB
                      %((ValA * 100000000) * (ValB * 100000000)) / 10000000000000000
                end,
         #xqAtomicValue{type = TypeC, value = ValC};
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: numeric; but xs:decimal if both operands are xs:integer
numeric_divide(#xqAtomicValue{type = TypeA, value = ValA},
               #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case catch xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         Prec = max(?num(TypeA), ?num(TypeB)),
         TypeC = case ?numtype(Prec) of
                    'xs:integer' -> 'xs:decimal';
                    P ->
                       case xqerl_types:subtype_of(P, 'xs:integer') of
                          true ->
                             'xs:decimal';
                          _ ->
                             P
                       end
                 end,
         ValC = if ValB == 0, ?is_numeric(ValA), ValA > 0, TypeC =/= 'xs:decimal' ->
                      "INF";
                   ValB == 0, ?is_numeric(ValA), ValA < 0, TypeC =/= 'xs:decimal' ->
                      "-INF";
                   ValA == 0, ValB == 0 ->
                      "NaN";
                   ValB == 0 ->
                      xqerl_error:error('FOAR0001');
                   ValA == "INF", ValB == "INF" ->
                      "NaN";
                   ValA == "INF", ValB == "-INF" ->
                      "NaN";
                   ValA == "-INF", ValB == "INF" ->
                      "NaN";
                   ValA == "-INF", ValB == "-INF" ->
                      "NaN";
                   ValA == "NaN" orelse ValB == "NaN" ->
                      "NaN";
                   Prec == 15 -> % float could be overflowed
                      case ValA / ValB of
                         X when X > ?MAXFLOAT ->
                            "INF";
                         X when X < ?MINFLOAT ->
                            "-INF";
                         X ->
                            X
                      end;
                   true ->
                      ValA / ValB
                end,
         #xqAtomicValue{type = TypeC, value = ValC};
      {'EXIT',_} ->
         xqerl_error:error('FOAR0002');
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:integer
numeric_integer_divide(#xqAtomicValue{type = TypeA, value = ValA},
                       #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         Prec = max(?num(TypeA), ?num(TypeB)),
         ValC = if ValB == "INF", ValA =/= "INF" ->
                      0;
                   ValB == "-INF", ValA =/= "INF" ->
                      0;
                   ValB == "INF", ValA =/= "-INF" ->
                      0;
                   ValB == "-INF", ValA =/= "-INF" ->
                      0;
                   ValB == 0 ->
                      xqerl_error:error('FOAR0001');
                   ValA == "NaN" ->
                      xqerl_error:error('FOAR0002');
                   ValB == "NaN" ->
                      xqerl_error:error('FOAR0002');
                   ValA == "INF" ->
                      xqerl_error:error('FOAR0002');
                   ValA == "-INF" ->
                      xqerl_error:error('FOAR0002');
                   is_integer(ValA) andalso is_integer(ValB) ->
                      ValA div ValB;
                   Prec == 15 -> % float could be overflowed
                      case trunc(float(ValA) / float(ValB)) of
                         X when X > ?MAXFLOAT ->
                            xqerl_error:error('FOAR0002');
                         X when X < ?MINFLOAT ->
                            xqerl_error:error('FOAR0002');
                         X ->
                            X
                      end;
                   true ->
                      trunc(float(ValA) / float(ValB))
                end,
         #xqAtomicValue{type = 'xs:integer', value = ValC};
      _ ->
         xqerl_error:error('XPTY0004')
   end.
      

% returns: numeric
numeric_mod(#xqAtomicValue{type = TypeA, value = ValA} = A,
            #xqAtomicValue{type = TypeB, value = ValB} = B) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         Prec = max(?num(TypeA), ?num(TypeB)),
         TypeC = ?numtype(Prec),
         if (ValB == 0) andalso TypeC =/= 'xs:double' andalso TypeC =/= 'xs:float' ->
               xqerl_error:error('FOAR0001');
            (ValA == "NaN") orelse (ValB == "NaN") ->
               #xqAtomicValue{type = TypeC, value = "NaN"};
            (ValA == "-INF") orelse (ValB == 0) ->
               #xqAtomicValue{type = TypeC, value = "NaN"};
            (ValA == "INF") orelse (ValB == 0) ->
               #xqAtomicValue{type = TypeC, value = "NaN"};
            (ValB == "-INF") ->
               #xqAtomicValue{type = TypeC, value = ValA};
            (ValB == "INF") ->
               #xqAtomicValue{type = TypeC, value = ValA};
            (ValA == 0) ->
               #xqAtomicValue{type = 'xs:integer', value = 0};
            (abs(ValA) == abs(ValB)) ->
               #xqAtomicValue{type = TypeC, value = 0};
            true ->
               %?dbg("numeric_mod(A)",A),
               %?dbg("numeric_mod(B)",B),
               Div = numeric_integer_divide(A, B),
               %?dbg("numeric_mod(Div)",Div),
               Mul = numeric_multiply(Div, B),
               %?dbg("numeric_mod(Mul)",Mul),
               Sub = numeric_subtract(A, Mul),
               %?dbg("numeric_mod(Sub)",Sub),
               Sub
         end;
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:boolean
numeric_equal(#xqAtomicValue{type = TypeA, value = ValA},
              #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         ValC = if (ValA == "NaN") andalso (ValB == "NaN") ->
                      false;
                   (ValA == "NaN") orelse (ValB == "NaN") ->
                      false;
                   (ValA == "INF") andalso (ValB == "INF") ->
                      true;
                   (ValA == "-INF") andalso (ValB == "-INF") ->
                      true;
                   (ValA == ValB) andalso TypeA == 'xs:float' andalso TypeB == 'xs:double' ->
                      false;
                   (ValA == ValB) andalso TypeB == 'xs:float' andalso TypeA == 'xs:double' ->
                      false;
                   true ->
                      ValA == ValB %andalso TypeA == TypeB
                end,
         ?bool(ValC);
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:boolean
numeric_less_than(A,B) when is_integer(A) -> 
   numeric_less_than(#xqAtomicValue{type = 'xs:integer', value = A},B);
numeric_less_than(A,B) when is_integer(B) -> 
   numeric_less_than(A,#xqAtomicValue{type = 'xs:integer', value = B});
numeric_less_than(#xqAtomicValue{type = TypeA, value = ValA},
                  #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         ValC = if (ValA == "NaN") or(ValB == "NaN") ->
                      false;
                   (ValA == "INF") ->
                      false;
                   (ValB == "INF") ->
                      true;
                   (ValA == "-INF") ->
                      true;
                   (ValB == "-INF") ->
                      false;
                   true ->
                      ValA < ValB
                end,
         ?bool(ValC);
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:boolean
%% numeric_greater_than(A,B) when is_integer(A) -> 
%%    numeric_greater_than(#xqAtomicValue{type = 'xs:integer', value = A},B);
%% numeric_greater_than(A,B) when is_integer(B) -> 
%%    numeric_greater_than(A,#xqAtomicValue{type = 'xs:integer', value = B});
numeric_greater_than(#xqAtomicValue{type = TypeA, value = ValA},
                     #xqAtomicValue{type = TypeB, value = ValB}) -> 
   case xqerl_types:is_numeric_type(TypeA) andalso xqerl_types:is_numeric_type(TypeB) of
      true ->
         ValC = if (ValA == "NaN") or(ValB == "NaN") ->
                      false;
                   (ValA == "INF") ->
                      true;
                   (ValB == "INF") ->
                      false;
                   (ValA == "-INF") ->
                      false;
                   (ValB == "-INF") ->
                      true;
                   true ->
                      ValA > ValB
                end,
         ?bool(ValC);
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:boolean
boolean_equal(#xqAtomicValue{type = 'xs:boolean', value = ValA},
              #xqAtomicValue{type = 'xs:boolean', value = ValB}) -> 
   ?bool(ValA =:= ValB).

% returns: xs:boolean
boolean_less_than(#xqAtomicValue{type = 'xs:boolean', value = false},
                  #xqAtomicValue{type = 'xs:boolean', value = true}) ->
   ?bool(true);
boolean_less_than(_A,_B) ->
   ?bool(false).
% returns: xs:boolean
boolean_greater_than(#xqAtomicValue{type = 'xs:boolean', value = true},
                     #xqAtomicValue{type = 'xs:boolean', value = false}) ->
   ?bool(true);
boolean_greater_than(_A,_B) ->
   ?bool(false).

% returns: xs:boolean
yearMonthDuration_less_than(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                           value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                            #xqAtomicValue{type = 'xs:yearMonthDuration',
                                           value = #xsDateTime{sign = SnB, year = YrB, month = MoB}}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonB = (YrB * 12 + MoB) * (if SnB =:= '-' -> -1; true -> 1 end),
   #xqAtomicValue{type = 'xs:boolean', value = MonA < MonB}.

% returns: xs:boolean
yearMonthDuration_greater_than(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                              value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                               #xqAtomicValue{type = 'xs:yearMonthDuration',
                                              value = #xsDateTime{sign = SnB, year = YrB, month = MoB}}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonB = (YrB * 12 + MoB) * (if SnB =:= '-' -> -1; true -> 1 end),
   #xqAtomicValue{type = 'xs:boolean', value = MonA > MonB}.

% returns: xs:boolean
dayTimeDuration_less_than(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                         value = #xsDateTime{sign = SnA, day = DyA, hour = HrA, 
                                                             minute = MiA, second = SdA}},
                          #xqAtomicValue{type = 'xs:dayTimeDuration',
                                         value = #xsDateTime{sign = SnB, day = DyB, hour = HrB, 
                                                             minute = MiB, second = SdB}}) -> 
   SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
   SecB = (SdB + (MiB * 60) + (HrB * 3600) + (DyB * 86400)) * (if SnB =:= '-' -> -1; true -> 1 end),
   #xqAtomicValue{type = 'xs:boolean', value = SecA < SecB}.

% returns: xs:boolean
dayTimeDuration_greater_than(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                            value = #xsDateTime{sign = SnA, day = DyA, hour = HrA, 
                                                                minute = MiA, second = SdA}},
                             #xqAtomicValue{type = 'xs:dayTimeDuration',
                                            value = #xsDateTime{sign = SnB, day = DyB, hour = HrB, 
                                                                minute = MiB, second = SdB}}) -> 
   SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
   SecB = (SdB + (MiB * 60) + (HrB * 3600) + (DyB * 86400)) * (if SnB =:= '-' -> -1; true -> 1 end),
   #xqAtomicValue{type = 'xs:boolean', value = SecA > SecB}.

% returns: xs:boolean
duration_equal(#xqAtomicValue{value = #xsDateTime{sign = SnA, year = YrA, month = MoA, day = DyA, hour = HrA, minute = MiA, second = SdA}},
               #xqAtomicValue{value = #xsDateTime{sign = SnB, year = YrB, month = MoB, day = DyB, hour = HrB, minute = MiB, second = SdB}}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonB = (YrB * 12 + MoB) * (if SnB =:= '-' -> -1; true -> 1 end),
   SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
   SecB = (SdB + (MiB * 60) + (HrB * 3600) + (DyB * 86400)) * (if SnB =:= '-' -> -1; true -> 1 end),
   #xqAtomicValue{type = 'xs:boolean', value = (MonA == MonB andalso SecA == SecB)};
duration_equal(_A,_B) ->
  #xqAtomicValue{type = 'xs:boolean', value = false}.

% returns: xs:yearMonthDuration
add_yearMonthDurations(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                      value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                       #xqAtomicValue{type = 'xs:yearMonthDuration',
                                      value = #xsDateTime{sign = SnB, year = YrB, month = MoB}}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonB = (YrB * 12 + MoB) * (if SnB =:= '-' -> -1; true -> 1 end),
   MonC = MonA + MonB,
   SnC = if MonC < 0 -> '-';
            true -> '+'
         end,  
   {Mon, Year} = {abs(MonC) rem 12, abs(MonC) div 12},
   RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
   Str = xqerl_datetime:to_string(RecDt,'xs:yearMonthDuration'),
   #xqAtomicValue{type = 'xs:yearMonthDuration',
                  value = RecDt#xsDateTime{string_value = Str}}.

% returns: xs:yearMonthDuration
subtract_yearMonthDurations(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                           value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                            #xqAtomicValue{type = 'xs:yearMonthDuration',
                                           value = #xsDateTime{sign = SnB, year = YrB, month = MoB}}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonB = (YrB * 12 + MoB) * (if SnB =:= '-' -> -1; true -> 1 end),
   MonC = MonA - MonB,
   SnC = if MonC < 0 -> '-';
            true -> '+'
         end,  
   {Mon, Year} = {abs(MonC) rem 12, abs(MonC) div 12},
   RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
   Str = xqerl_datetime:to_string(RecDt,'xs:yearMonthDuration'),
   #xqAtomicValue{type = 'xs:yearMonthDuration',
                  value = RecDt#xsDateTime{string_value = Str}}.

% returns: xs:yearMonthDuration
multiply_yearMonthDuration(_A,#xqAtomicValue{value = "NaN"}) ->
   xqerl_error:error('FOCA0005');
multiply_yearMonthDuration(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                          value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                           #xqAtomicValue{value = Dbl}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonC = erlang:round(MonA * Dbl),
   SnC = if MonC < 0 -> '-';
            true -> '+'
         end,  
   {Mon, Year} = {abs(MonC) rem 12, abs(MonC) div 12},
   RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
   Str = xqerl_datetime:to_string(RecDt,'xs:yearMonthDuration'),
   #xqAtomicValue{type = 'xs:yearMonthDuration',
                  value = RecDt#xsDateTime{string_value = Str}}.

% returns: xs:yearMonthDuration
divide_yearMonthDuration(_A,#xqAtomicValue{value = "NaN"}) ->
   xqerl_error:error('FOCA0005');
divide_yearMonthDuration(_A,#xqAtomicValue{value = "INF"}) ->
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = "P0M"}, 'xs:yearMonthDuration' );
divide_yearMonthDuration(_A,#xqAtomicValue{value = "-INF"}) ->
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = "P0M"}, 'xs:yearMonthDuration' );
divide_yearMonthDuration(_A,#xqAtomicValue{value = Val}) when Val == 0 ->
   xqerl_error:error('FODT0002');
%%    RecDt = #xsDateTime{sign = '+', year = 0, month = 0, day = 0},
%%    Str = xqerl_datetime:to_string(RecDt,'xs:yearMonthDuration'),
%%    #xqAtomicValue{type = 'xs:yearMonthDuration',
%%                   value = RecDt#xsDateTime{string_value = Str}};
divide_yearMonthDuration(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                        value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                         #xqAtomicValue{type = Type, value = Dbl}) ->
   case xqerl_types:is_numeric_type(Type) of
      true ->
         MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
         MonC = if (MonA / Dbl) < 0 -> erlang:trunc(MonA / Dbl);
                   true -> erlang:round(MonA / Dbl)
                end,
         SnC = if MonC < 0 -> '-';
                  true -> '+'
               end,  
         {Mon, Year} = {abs(MonC) rem 12, abs(MonC) div 12},
         RecDt = #xsDateTime{sign = SnC, year = Year, month = Mon, day = 0},
         Str = xqerl_datetime:to_string(RecDt,'xs:yearMonthDuration'),
         #xqAtomicValue{type = 'xs:yearMonthDuration',
                        value = RecDt#xsDateTime{string_value = Str}};
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:decimal
divide_yearMonthDuration_by_yearMonthDuration(#xqAtomicValue{type = 'xs:yearMonthDuration',
                                                             value = #xsDateTime{sign = SnA, year = YrA, month = MoA}},
                                              #xqAtomicValue{type = 'xs:yearMonthDuration',
                                                             value = #xsDateTime{sign = SnB, year = YrB, month = MoB}}) -> 
   MonA = (YrA * 12 + MoA) * (if SnA =:= '-' -> -1; true -> 1 end),
   MonB = (YrB * 12 + MoB) * (if SnB =:= '-' -> -1; true -> 1 end),
   if MonB == 0 ->
         xqerl_error:error('FOAR0001');
      true ->
         MonC = MonA / MonB,
         #xqAtomicValue{type = 'xs:decimal', value = MonC}
   end.

% returns: xs:dayTimeDuration
add_dayTimeDurations(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                    value = #xsDateTime{sign = SnA, day = DyA, hour = HrA, 
                                                        minute = MiA, second = SdA}},
                     #xqAtomicValue{type = 'xs:dayTimeDuration',
                                    value = #xsDateTime{sign = SnB, day = DyB, hour = HrB, 
                                                        minute = MiB, second = SdB}}) -> 
   SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
   SecB = (SdB + (MiB * 60) + (HrB * 3600) + (DyB * 86400)) * (if SnB =:= '-' -> -1; true -> 1 end),
   SecC = erlang:float(SecA + SecB),
   ?dbg("SecA,SecB,SecC",{SecA,SecB,SecC,SnA,SnB}),
   Str = if SecC < 0 -> "-";
            true -> ""
         end ++ "PT" ++ erlang:float_to_list(erlang:abs(SecC), [{decimals, 18}]) ++ "S",
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ).

% returns: xs:dayTimeDuration
subtract_dayTimeDurations(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                         value = #xsDateTime{sign = SnA, day = DyA, hour = HrA,
                                                             minute = MiA, second = SdA}},
                          #xqAtomicValue{type = 'xs:dayTimeDuration',
                                         value = #xsDateTime{sign = SnB, day = DyB, hour = HrB,
                                                             minute = MiB, second = SdB}}) -> 
   SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
   SecB = (SdB + (MiB * 60) + (HrB * 3600) + (DyB * 86400)) * (if SnB =:= '-' -> -1; true -> 1 end),
   SecC = erlang:float(SecA - SecB),
   Str = if SecC < 0 -> "-";
            true -> ""
         end ++ "PT" ++ erlang:float_to_list(erlang:abs(SecC), [{decimals, 18}]) ++ "S",
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ).

% returns: xs:dayTimeDuration
multiply_dayTimeDuration(_A,#xqAtomicValue{value = "NaN"}) ->
   xqerl_error:error('FOCA0005');
multiply_dayTimeDuration(_A,#xqAtomicValue{value = "INF"}) ->
   xqerl_error:error('FODT0002');
multiply_dayTimeDuration(_A,#xqAtomicValue{value = "-INF"}) ->
   xqerl_error:error('FODT0002');
multiply_dayTimeDuration(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                        value = #xsDateTime{sign = SnA, day = DyA, hour = HrA,
                                                            minute = MiA, second = SdA}},
                         #xqAtomicValue{value = Dbl}) -> 
   SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
   SecC = SecA * Dbl,
   Str = if SecC < 0 -> "-";
            true -> ""
         end ++ "PT" ++ 
           if is_integer(SecC) ->
                 erlang:integer_to_list(erlang:abs(SecC));
              true ->
                 erlang:float_to_list(erlang:abs(SecC), [{decimals, 18}])
           end ++ "S",
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ).
   
% returns: xs:dayTimeDuration
divide_dayTimeDuration(_A,#xqAtomicValue{value = Val}) when Val == 0 ->
   xqerl_error:error('FODT0002');
divide_dayTimeDuration(_A,#xqAtomicValue{value = "NaN"}) ->
   xqerl_error:error('FOCA0005');
divide_dayTimeDuration(_A,#xqAtomicValue{value = "INF"}) ->
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = "PT0S"}, 'xs:dayTimeDuration' );
divide_dayTimeDuration(_A,#xqAtomicValue{value = "-INF"}) ->
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = "PT0S"}, 'xs:dayTimeDuration' );
divide_dayTimeDuration(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                      value = #xsDateTime{sign = SnA, day = DyA, hour = HrA,
                                                          minute = MiA, second = SdA}},
                       #xqAtomicValue{type = Type, value = Dbl}) ->
   case xqerl_types:is_numeric_type(Type) of
      true ->
         SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
         SecC = SecA / Dbl,
         Str = if SecC < 0 -> "-";
                  true -> ""
               end ++ "PT" ++ erlang:float_to_list(erlang:abs(SecC), [{decimals, 18}]) ++ "S",
         xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' );
      _ ->
         xqerl_error:error('XPTY0004')
   end.

% returns: xs:decimal
divide_dayTimeDuration_by_dayTimeDuration(#xqAtomicValue{type = 'xs:dayTimeDuration',
                                                         value = #xsDateTime{sign = SnA, day = DyA, hour = HrA,
                                                                             minute = MiA, second = SdA}},
                                          #xqAtomicValue{type = 'xs:dayTimeDuration',
                                                         value = #xsDateTime{sign = SnB, day = DyB, hour = HrB,
                                                                             minute = MiB, second = SdB}}) -> 
   try
      SecA = (SdA + (MiA * 60) + (HrA * 3600) + (DyA * 86400)) * (if SnA =:= '-' -> -1; true -> 1 end),
      SecB = (SdB + (MiB * 60) + (HrB * 3600) + (DyB * 86400)) * (if SnB =:= '-' -> -1; true -> 1 end),
      SecC = SecA / SecB,
      #xqAtomicValue{type = 'xs:decimal', value = SecC}
   catch
      _:_ ->
         xqerl_error:error('FODT0002')
   end.

% returns: xs:boolean
dateTime_equal(#xqAtomicValue{%type = 'xs:dateTime',
                              value = #xsDateTime{sign = SnA,
                                                  year = YrA,
                                                  month = MoA,
                                                  day = DyA, 
                                                  hour = HrA,
                                                  minute = MiA, 
                                                  second = SdA,
                                                  offset = OfA}},
               #xqAtomicValue{%type = 'xs:dateTime',
                              value = #xsDateTime{sign = SnB,
                                                  year = YrB,
                                                  month = MoB,
                                                  day = DyB, 
                                                  hour = HrB,
                                                  minute = MiB, 
                                                  second = SdB,
                                                  offset = OfB}}) -> 
   DtA = {{YrA,MoA,DyA},{HrA,MiA,0}},
   DtB = {{YrB,MoB,DyB},{HrB,MiB,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) + SdA - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) + SdB - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA == SecB}.


% returns: xs:boolean
dateTime_less_than(#xqAtomicValue{type = 'xs:dateTime',
                              value = #xsDateTime{sign = SnA,
                                                  year = YrA,
                                                  month = MoA,
                                                  day = DyA, 
                                                  hour = HrA,
                                                  minute = MiA, 
                                                  second = SdA,
                                                  offset = OfA}},
               #xqAtomicValue{type = 'xs:dateTime',
                              value = #xsDateTime{sign = SnB,
                                                  year = YrB,
                                                  month = MoB,
                                                  day = DyB, 
                                                  hour = HrB,
                                                  minute = MiB, 
                                                  second = SdB,
                                                  offset = OfB}}) -> 
   DtA = {{YrA,MoA,DyA},{HrA,MiA,0}},
   DtB = {{YrB,MoB,DyB},{HrB,MiB,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) + SdA - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) + SdB - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA < SecB}.

% returns: xs:boolean
dateTime_greater_than(#xqAtomicValue{type = 'xs:dateTime',
                              value = #xsDateTime{sign = SnA,
                                                  year = YrA,
                                                  month = MoA,
                                                  day = DyA, 
                                                  hour = HrA,
                                                  minute = MiA, 
                                                  second = SdA,
                                                  offset = OfA}},
               #xqAtomicValue{type = 'xs:dateTime',
                              value = #xsDateTime{sign = SnB,
                                                  year = YrB,
                                                  month = MoB,
                                                  day = DyB, 
                                                  hour = HrB,
                                                  minute = MiB, 
                                                  second = SdB,
                                                  offset = OfB}}) -> 
   DtA = {{YrA,MoA,DyA},{HrA,MiA,0}},
   DtB = {{YrB,MoB,DyB},{HrB,MiB,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) + SdA - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) + SdB - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA > SecB}.

% returns: xs:boolean
date_equal(#xqAtomicValue{type = 'xs:date'} = A,#xqAtomicValue{type = 'xs:date'} = B) -> 
   equal(
     xqerl_types:cast_as(A,'xs:dateTime'),
     xqerl_types:cast_as(B,'xs:dateTime')
   ).

% returns: xs:boolean
date_less_than(#xqAtomicValue{type = 'xs:date'} = A,#xqAtomicValue{type = 'xs:date'} = B) -> 
   less_than(
     xqerl_types:cast_as(A,'xs:dateTime'),
     xqerl_types:cast_as(B,'xs:dateTime')
   ).

% returns: xs:boolean
date_greater_than(#xqAtomicValue{type = 'xs:date'} = A,#xqAtomicValue{type = 'xs:date'} = B) -> 
   greater_than(
     xqerl_types:cast_as(A,'xs:dateTime'),
     xqerl_types:cast_as(B,'xs:dateTime')
   ).

% returns: xs:boolean
time_equal(#xqAtomicValue{type = 'xs:time'} = A,#xqAtomicValue{type = 'xs:time'} = B) ->
   RefDt = xqerl_xs:xs_date([], #xqAtomicValue{type = 'xs:string', value = "1972-12-31"}),
   equal(
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(A)),
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(B))
   ).

% returns: xs:boolean
time_less_than(#xqAtomicValue{type = 'xs:time'} = A,#xqAtomicValue{type = 'xs:time'} = B) ->
   RefDt = xqerl_xs:xs_date([], #xqAtomicValue{type = 'xs:string', value = "1972-12-31"}),
   less_than(
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(A)),
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(B))
   ).

% returns: xs:boolean
time_greater_than(#xqAtomicValue{type = 'xs:time'} = A,#xqAtomicValue{type = 'xs:time'} = B) ->
   RefDt = xqerl_xs:xs_date([], #xqAtomicValue{type = 'xs:string', value = "1972-12-31"}),
   greater_than(
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(A)),
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(B))
   ).

% returns: xs:boolean
gYearMonth_equal(#xqAtomicValue{type = 'xs:gYearMonth',
                                value = #xsDateTime{sign = SnA,
                                                    year = YrA,
                                                    month = MoA,
                                                    offset = OfA}},
                 #xqAtomicValue{type = 'xs:gYearMonth',
                                value = #xsDateTime{sign = SnB,
                                                    year = YrB,
                                                    month = MoB,
                                                    offset = OfB}}) -> 
   DtA = {{YrA,MoA,1},{0,0,0}},
   DtB = {{YrB,MoB,1},{0,0,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA == SecB}.

% returns: xs:boolean
gYear_equal(#xqAtomicValue{type = 'xs:gYear',
                           value = #xsDateTime{sign = SnA,
                                               year = YrA,
                                               offset = OfA}},
            #xqAtomicValue{type = 'xs:gYear',
                           value = #xsDateTime{sign = SnB,
                                               year = YrB,
                                               offset = OfB}}) -> 
   DtA = {{YrA,1,1},{0,0,0}},
   DtB = {{YrB,1,1},{0,0,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA == SecB}.

% returns: xs:boolean
gMonthDay_equal(#xqAtomicValue{type = 'xs:gMonthDay',
                               value = #xsDateTime{sign = SnA,
                                                   month = MoA,
                                                   day = DyA,
                                                   offset = OfA}},
                #xqAtomicValue{type = 'xs:gMonthDay',
                               value = #xsDateTime{sign = SnB,
                                                   month = MoB,
                                                   day = DyB,
                                                   offset = OfB}}) -> 
   DtA = {{1972,MoA,DyA},{0,0,0}},
   DtB = {{1972,MoB,DyB},{0,0,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA == SecB}.

% returns: xs:boolean
gMonth_equal(#xqAtomicValue{type = 'xs:gMonth',
                            value = #xsDateTime{sign = SnA,
                                                month = MoA,
                                                offset = OfA}},
             #xqAtomicValue{type = 'xs:gMonth',
                            value = #xsDateTime{sign = SnB,
                                                month = MoB,
                                                offset = OfB}}) -> 
   DtA = {{1972,MoA,1},{0,0,0}},
   DtB = {{1972,MoB,1},{0,0,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA == SecB}.

% returns: xs:boolean
gDay_equal(#xqAtomicValue{type = 'xs:gDay',
                          value = #xsDateTime{sign = SnA,
                                              day = DyA,
                                              offset = OfA}},
           #xqAtomicValue{type = 'xs:gDay',
                          value = #xsDateTime{sign = SnB,
                                              day = DyB,
                                              offset = OfB}}) -> 
   DtA = {{1972,12,DyA},{0,0,0}},
   DtB = {{1972,12,DyB},{0,0,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) - OffSecB) * unary_sign(SnB),
   #xqAtomicValue{type = 'xs:boolean', value = SecA == SecB}.

% returns: xs:dayTimeDuration
subtract_dateTimes(#xqAtomicValue{type = 'xs:dateTime',
                                  value = #xsDateTime{sign = SnA,
                                                  year = YrA,
                                                  month = MoA,
                                                  day = DyA, 
                                                  hour = HrA,
                                                  minute = MiA, 
                                                  second = SdA,
                                                  offset = OfA}},
                    #xqAtomicValue{type = 'xs:dateTime',
                                   value = #xsDateTime{sign = SnB,
                                                  year = YrB,
                                                  month = MoB,
                                                  day = DyB, 
                                                  hour = HrB,
                                                  minute = MiB, 
                                                  second = SdB,
                                                  offset = OfB}}) -> 
   DtA = {{YrA,MoA,DyA},{HrA,MiA,0}},
   DtB = {{YrB,MoB,DyB},{HrB,MiB,0}},
   
   ImpTzSec = if OfA == [] orelse OfB == [] -> offset_to_seconds(xqerl_context:get_implicit_timezone());
                 true -> 0
              end,
   OffSecA = if OfA == [] -> ImpTzSec;
                true -> offset_to_seconds(OfA)
             end,
   OffSecB = if OfB == [] -> ImpTzSec;
                true -> offset_to_seconds(OfB)
             end,
   SecA = (calendar:datetime_to_gregorian_seconds(DtA) + SdA - OffSecA) * unary_sign(SnA), 
   SecB = (calendar:datetime_to_gregorian_seconds(DtB) + SdB - OffSecB) * unary_sign(SnB),
   SecC = SecA - SecB,
   AbsSec = erlang:abs(SecC),
   IntSec = erlang:trunc(AbsSec),
   FraSec = AbsSec - IntSec,
   {Days, {Hour,Min,Secs}} = calendar:seconds_to_daystime(IntSec),
   Str = if SecC < 0 -> "-" ;
            true -> "" end ++ 
           "P"++integer_to_list(Days)++
           "T"++integer_to_list(Hour)++"H"++
                integer_to_list(Min)++"M" ++
                float_to_list(float(Secs + FraSec), [{decimals,18}])++"S",                  
   xqerl_types:cast_as( #xqAtomicValue{type = 'xs:string', value = Str}, 'xs:dayTimeDuration' ).

% returns: xs:dayTimeDuration
subtract_dates(#xqAtomicValue{type = 'xs:date'} = A,#xqAtomicValue{type = 'xs:date'} = B) -> 
   subtract(
     xqerl_types:cast_as(A,'xs:dateTime'),
     xqerl_types:cast_as(B,'xs:dateTime')
   ).

% returns: xs:dayTimeDuration
subtract_times(#xqAtomicValue{type = 'xs:time'} = A,#xqAtomicValue{type = 'xs:time'} = B) ->
   RefDt = xqerl_xs:xs_date([], #xqAtomicValue{type = 'xs:string', value = "1972-12-31"}),
   subtract(
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(A)),
     xqerl_fn:dateTime([], RefDt, ?seq:singleton(B))
   ).

% returns: xs:dateTime
add_yearMonthDuration_to_dateTime(#xqAtomicValue{type = 'xs:dateTime',
                                  value = #xsDateTime{}} = A,
                                  #xqAtomicValue{type = 'xs:yearMonthDuration',
                                  value = #xsDateTime{}} = B) -> 
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt} = add_duration_to_dateTime(A, B),
   Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt#xsDateTime{string_value = Str} }.

% returns: xs:dateTime
add_dayTimeDuration_to_dateTime(#xqAtomicValue{type = 'xs:dateTime',
                                  value = #xsDateTime{}} = A,
                                  #xqAtomicValue{type = 'xs:dayTimeDuration',
                                  value = #xsDateTime{}} = B) -> 
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt} = add_duration_to_dateTime(A, B),
   Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt#xsDateTime{string_value = Str} }.

% returns: xs:dateTime
subtract_yearMonthDuration_from_dateTime(#xqAtomicValue{type = 'xs:dateTime',
                                  value = #xsDateTime{}} = A,
                                  #xqAtomicValue{type = 'xs:yearMonthDuration',
                                  value = #xsDateTime{sign = S} = D } = B) -> 
   NewSign = reverse_sign(S),
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt} = 
     add_duration_to_dateTime(A, B#xqAtomicValue{value = D#xsDateTime{sign = NewSign}}),
   Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt#xsDateTime{string_value = Str} }.

% returns: xs:dateTime
subtract_dayTimeDuration_from_dateTime(#xqAtomicValue{type = 'xs:dateTime',
                                  value = #xsDateTime{}} = A,
                                  #xqAtomicValue{type = 'xs:dayTimeDuration',
                                  value = #xsDateTime{sign = S} = D } = B) -> 
   NewSign = reverse_sign(S),
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt} = 
     add_duration_to_dateTime(A, B#xqAtomicValue{value = D#xsDateTime{sign = NewSign}}),
   Str = xqerl_datetime:to_string(NewDt, 'xs:dateTime'),
   #xqAtomicValue{type = 'xs:dateTime',value = NewDt#xsDateTime{string_value = Str} }.

% returns: xs:date
add_yearMonthDuration_to_date(A,B) -> 
   Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
   Ad = add_yearMonthDuration_to_dateTime(Dt, B),
   xqerl_xs:xs_date([], Ad).

% returns: xs:date
add_dayTimeDuration_to_date(A,B) -> 
   Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
   Ad = add_dayTimeDuration_to_dateTime(Dt, B),
   xqerl_xs:xs_date([], Ad).

% returns: xs:date
subtract_yearMonthDuration_from_date(A,B) ->
   Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
   Ad = subtract_yearMonthDuration_from_dateTime(Dt, B),
   xqerl_xs:xs_date([], Ad).

% returns: xs:date
subtract_dayTimeDuration_from_date(A,B) ->
   Dt = xqerl_types:cast_as(A, 'xs:dateTime'),
   Ad = subtract_dayTimeDuration_from_dateTime(Dt, B),
   xqerl_xs:xs_date([], Ad).

% returns: xs:time
add_dayTimeDuration_to_time(#xqAtomicValue{type = 'xs:time',
                                  value = #xsDateTime{} = T} = A,
                                  #xqAtomicValue{type = 'xs:dayTimeDuration',
                                  value = #xsDateTime{}} = B) -> 
   NewT = T#xsDateTime{year = 1972,month = 1,day = 1},
   Ad = add_duration_to_dateTime(A#xqAtomicValue{type = 'xs:dateTime',
                                                 value = NewT}, B),
   xqerl_xs:xs_time([], Ad).

% returns: xs:time
subtract_dayTimeDuration_from_time(#xqAtomicValue{type = 'xs:time',
                                  value = #xsDateTime{} = T} = A,
                                  #xqAtomicValue{type = 'xs:dayTimeDuration',
                                  value = #xsDateTime{sign = S} = D } = B) -> 
   NewSign = reverse_sign(S),
   NewT = T#xsDateTime{year = 1972,month = 12,day = 31},
   Ad = add_duration_to_dateTime(A#xqAtomicValue{type = 'xs:dateTime',
                                                 value = NewT}, B#xqAtomicValue{value = D#xsDateTime{sign = NewSign}}),
   xqerl_xs:xs_time([], Ad).


% returns: xs:boolean
qName_equal(#xqAtomicValue{type = 'xs:QName', value = #qname{namespace = NsA, local_name = LnA}} = _At1,
            #xqAtomicValue{type = 'xs:QName', value = #qname{namespace = NsB, local_name = LnB}} = _At2) -> 
   %?dbg("Maybe qName_equal", {At1,At2}),
   Eq = NsA == NsB andalso LnA == LnB,
   %?dbg("qName_equal", Eq),
   ?bool(Eq);
qName_equal(#xqAtomicValue{}, #xqAtomicValue{}) ->
   ?bool(false).


% returns: xs:boolean
string_equal(A,B) -> 
   #xqAtomicValue{type = 'xs:boolean', value = A#xqAtomicValue.value =:= B#xqAtomicValue.value }.

% returns: xs:boolean
string_less_than(A,B) -> 
   %?dbg("A,B",{A,B}),
   O = #xqAtomicValue{type = 'xs:boolean', value = A#xqAtomicValue.value < B#xqAtomicValue.value },
   %?dbg("LT",O),
   O.

% returns: xs:boolean
string_greater_than(A,B) ->
   %?dbg("A,B",{A,B}),
   O = #xqAtomicValue{type = 'xs:boolean', value = A#xqAtomicValue.value > B#xqAtomicValue.value },
   %?dbg("GT",O),
   O.

% returns: xs:boolean
hexBinary_equal(A,B) -> 
   #xqAtomicValue{type = 'xs:boolean', value = A =:= B }.

% returns: xs:boolean
hexBinary_less_than(A,B) -> 
   #xqAtomicValue{type = 'xs:boolean', value = A < B }.

% returns: xs:boolean
hexBinary_greater_than(A,B) ->
   #xqAtomicValue{type = 'xs:boolean', value = A > B }.

% returns: xs:boolean
base64Binary_equal(A,B) ->
   #xqAtomicValue{type = 'xs:boolean', value = A =:= B }.

% returns: xs:boolean
base64Binary_less_than(A,B) ->
   #xqAtomicValue{type = 'xs:boolean', value = A < B }.

% returns: xs:boolean
base64Binary_greater_than(A,B) ->
   #xqAtomicValue{type = 'xs:boolean', value = A > B }.

% returns: xs:boolean
nOTATION_equal(#xqAtomicValue{type = 'xs:NOTATION', value = #qname{namespace = NsA, local_name = LnA}},
               #xqAtomicValue{type = 'xs:NOTATION', value = #qname{namespace = NsB, local_name = LnB}}) -> 
   #xqAtomicValue{type = 'xs:boolean', 
                  value = NsA == NsB andalso LnA == LnB }.

% returns: xs:numeric
numeric_unary_plus([]) -> [];
numeric_unary_plus([#xqAtomicValue{} = Arg]) -> numeric_unary_plus(Arg);
numeric_unary_plus(#xqAtomicValue{type = Type} = Arg) ->
   case xqerl_types:is_numeric_type(Type) of
      true ->
         Arg;
      _ ->
         xqerl_error:error('XPTY0004')
         %xqerl_fn:number([], Arg)
   end.

% returns: xs:numeric
numeric_unary_minus([]) -> [];
numeric_unary_minus([#xqAtomicValue{} = Arg]) -> numeric_unary_minus(Arg);
numeric_unary_minus(#xqAtomicValue{type = Type, value = Val} = Arg) ->
   case xqerl_types:is_numeric_type(Type) of
      true ->
         Arg#xqAtomicValue{value = Val * -1};
      _ ->
         xqerl_error:error('XPTY0004')
         %Tmp = xqerl_fn:number([], Arg),
         %Tmp#xqAtomicValue{value = Tmp#xqAtomicValue.value * -1}
   end.




offset_to_seconds(#off_set{sign = OS, hour = OH, min = OM}) ->
   (OM * 60) + (OH * 3600) * (if OS =:= '-' -> -1; true -> 1 end).

unary_sign(Sgn) ->
  if Sgn =:= '-' -> -1; true -> 1 end.

reverse_sign(Sgn) ->
   if Sgn == '-' -> '+';
      true -> '-'
   end.

negate(Seq) ->
   case ?seq:is_sequence(Seq) of
      true ->
         #xqAtomicValue{type = 'xs:boolean', value = Bool } = ?seq:singleton_value(Seq),
         ?bool(not Bool);
      _ ->
         #xqAtomicValue{type = 'xs:boolean', value = Bool } = Seq,
         ?bool(not Bool)
   end.

%% time calculations with day remainders
loc_quotient(A, B) ->
   Fract = A / B,
%%    if Fract < 0 -> trunc(Fract) - 1;
   if Fract == -1 -> trunc(Fract);
      Fract < 0 -> trunc(Fract) - 1;
      true -> trunc(Fract)
   end.
loc_quotient(A, Low, High) ->
   loc_quotient(A - Low, High - Low).

loc_modulo(A, B) ->
   A - loc_quotient(A,B)*B.
loc_modulo(A, Low, High) ->
   loc_modulo(A - Low, High - Low) + Low.

loc_ldom(Year, Month) ->
   calendar:last_day_of_the_month(abs(Year), Month). % abs() hack probably not right with BC leap years...

add_duration_to_dateTime(#xqAtomicValue{type = 'xs:dateTime',
                                  value = #xsDateTime{sign = SnA,
                                                  year = YrA,
                                                  month = MoA,
                                                  day = DyA, 
                                                  hour = HrA,
                                                  minute = MiA, 
                                                  second = SdA,
                                                  offset = OfA}},
                    #xqAtomicValue{value = #xsDateTime{sign = SnB,
                                                  year = YrB,
                                                  month = MoB,
                                                  day = DyB, 
                                                  hour = HrB,
                                                  minute = MiB, 
                                                  second = SdB}}) -> 
   UA = unary_sign(SnA),
   UB = unary_sign(SnB),
   % months
   MonTemp = MoA * UA + MoB * UB,
   OutMon = loc_modulo(MonTemp, 1, 13),
   MonCarry = loc_quotient(MonTemp, 1, 13),
   % years
   OutYears = YrA * UA + YrB * UB + MonCarry,
   % zone
   OutZone = OfA,
   % seconds
   SecTemp = SdA * UA + SdB * UB,
   OutSec = loc_modulo(SecTemp, 60),
   SecCarry = loc_quotient(SecTemp, 60),
   % minutes
   MinTemp = MiA * UA + MiB * UB + SecCarry,
   OutMin = loc_modulo(MinTemp, 60),
   MinCarry = loc_quotient(MinTemp, 60),
   % hours
   HrsTemp = HrA * UA + HrB * UB + MinCarry,
   OutHrs = loc_modulo(HrsTemp, 24),
   HrsCarry = loc_quotient(HrsTemp, 24),
   % days
   DayTemp = case DyA > loc_ldom(OutYears, OutMon) of
                true ->
                   loc_ldom(OutYears, OutMon);
                _ ->
                   if (DyA * UA) < 1 -> 1;
                      true -> DyA * UA
                   end                         
             end,
   OutDay = DayTemp + DyB * UB + HrsCarry,
   {OutYear1,OutMonth1,OutDay1} = duration_loop(OutYears,OutMon,OutDay),
   SnC = if OutYear1 < 0 orelse OutDay1 < 0 -> '-';
            true -> '+'
         end,  
   #xqAtomicValue{type = 'xs:dateTime',
                   value = #xsDateTime{sign = SnC,
                                   year = OutYear1,
                                   month = OutMonth1,
                                   day = OutDay1, 
                                   hour = OutHrs,
                                   minute = OutMin, 
                                   second = OutSec,
                                   offset = OutZone}}.

duration_loop(Year,Month,Day) ->
   {OutDay, Carry} = case Day < 1 of
                        true ->
                           case Month == 1 of
                              true ->
                                 {Day + loc_ldom(Year - 1, 12), -1};
                              _ ->
                                 {Day + loc_ldom(Year, Month - 1), -1}
                           end;
                        _ ->
                           Max = loc_ldom(Year, Month),
                           case Day > Max of
                              true ->
                                 {Day - Max, 1};
                              _ ->
                                 {Day, 0}
                           end
                     end,
   if Carry == 0 ->
         {Year,Month,OutDay};
      true ->
         Temp = Month + Carry,
         OutMonth = loc_modulo(Temp, 1, 13),
         OutYear = Year + loc_quotient(Temp, 1, 13),
         duration_loop(OutYear,OutMonth,OutDay)
   end.

key_val(Val) ->
   Atomic = ?seq:singleton_value(Val),
   case Atomic of
      #xqAtomicValue{type = 'xs:string', value = V} ->
         V;
      #xqAtomicValue{type = 'xs:anyURI', value = V} ->
         V;
      #xqAtomicValue{type = 'xs:untypedAtomic', value = V} ->
         V;
      #xqAtomicValue{type = 'xs:integer', value = V} ->
         {number,float(V)};
      #xqAtomicValue{type = 'xs:decimal', value = V} ->
         {number,V};
      #xqAtomicValue{type = 'xs:double', value = V} ->
         {number,V};
      #xqAtomicValue{type = 'xs:float', value = V} ->
         {number,V};
      #xqAtomicValue{type = 'xs:yearMonthDuration', value = V} ->
         {duration,V};
      #xqAtomicValue{type = 'xs:dayTimeDuration', value = V} ->
         {duration,V};
      #xqAtomicValue{type = 'xs:duration', value = V} ->
         {duration,V};
      #xqAtomicValue{type = 'xs:QName', value = #qname{namespace = N,local_name = L}} ->
         {N,L};
      _ ->
         Atomic
   end.