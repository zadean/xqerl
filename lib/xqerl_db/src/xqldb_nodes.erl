%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2018-2019 Zachary N. Dean  All Rights Reserved.
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

%% This module is for use with DB nodes only. Root is always single document.
-module(xqldb_nodes).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([set_children/2,
         node_size/1,
         node_kind/1,
         node_offset/1,
         doc_tree_to_node_table/1]).

-export([document/1,
         element/5,
         text/2,
         attribute/5,
         comment/2,
         proc_inst/3]).

%% 13 Bytes 
%% d - Kind:3|Text:32|____:32|Size:32|____:19|__:10|___:1|____:7 = 67
%% e - Kind:3|____:32|Dist:32|Size:32|Name:19|Ns:10|NsF:1|Atts:7 = 104
%% t - Kind:3|Text:32|Dist:32|____:32|____:19|__:10|___:1|____:7 = 67
%% a - Kind:3|Text:32|____:32|____:32|Name:19|Ns:10|___:1|Dist:7 = 71
%% c - Kind:3|Text:32|Dist:32|____:32|____:19|__:10|___:1|____:7 = 67
%% p - Kind:3|Text:32|Dist:32|____:32|Name:19|__:10|___:1|____:7 = 86

document(UriRef) ->
   #{kind => ?document,
     text => UriRef,
     size => 0,
     chld => []}.

element(Offset,NameRef,NsRef,HasNs,AttCnt) ->
   #{kind => ?element,
     dist => Offset,
     name => NameRef,
     ns   => NsRef,
     nsf  => HasNs,
     atts => AttCnt,
     size => AttCnt,
     chld => []}.

text(Offset,TextRef) when is_integer(TextRef) ->
   Bin = <<?text:3,TextRef:32/integer,Offset:32/integer,
           0:19/integer,0:10,0:1,0:7>>,
   #{kind => ?text,
     dist => Offset,
     text => TextRef,
     bin => Bin}.

attribute(Offset,NameRef,NsRef,TextRef,Type) ->
   Bin = <<?attribute:3,TextRef:32/integer,Type:3/integer,0:29/integer,
           NameRef:19/integer,NsRef:10,0:1,Offset:7>>,
   #{kind => ?attribute,
     dist => Offset,
     name => NameRef,
     ns   => NsRef,
     text => TextRef,
     bin  => Bin}.

comment(Offset,TextRef) ->
   Bin = <<?comment:3,TextRef:32/integer,Offset:32/integer,
           0:19/integer,0:10,0:1,0:7>>,
   #{kind => ?comment,
     dist => Offset,
     text => TextRef,
     bin => Bin}.

proc_inst(Offset,NameRef,TextRef) ->
   Bin = <<?proc_inst:3,TextRef:32/integer,Offset:32/integer,
           NameRef:19/integer,0:10,0:1,0:7>>,
   #{kind => ?proc_inst,
     dist => Offset,
     name => NameRef,
     text => TextRef,
     bin => Bin}.

node_size(<<?element:3,_:32/integer,S:32/integer,_/bitstring>>) -> S;
node_size(<<?text:3,_/bitstring>>) -> 0;
node_size(<<?attribute:3,_/bitstring>>) -> 0;
node_size(<<?document:3,_:32/integer,S:32/integer,_/bitstring>>) -> S;
node_size(<<?comment:3,_/bitstring>>) -> 0;
node_size(<<?proc_inst:3,_/bitstring>>) -> 0.

node_kind(<<?element:3,_/bitstring>>) -> element;
node_kind(<<?text:3,_/bitstring>>) -> text;
node_kind(<<?attribute:3,_/bitstring>>) -> attribute;
node_kind(<<?document:3,_/bitstring>>) -> document;
node_kind(<<?comment:3,_/bitstring>>) -> comment;
node_kind(<<?proc_inst:3,_/bitstring>>) -> 'processing-instruction'.

%% d - Kind:3|Text:32|____:32|Size:32|____:19|__:10|___:1|____:7 = 67
%% e - Kind:3|____:32|Dist:32|Size:32|Name:19|Ns:10|NsF:1|Atts:7 = 104
%% t - Kind:3|Text:32|Dist:32|____:32|____:19|__:10|___:1|____:7 = 67
%% a - Kind:3|Text:32|____:32|____:32|Name:19|Ns:10|___:1|Dist:7 = 71
%% c - Kind:3|Text:32|Dist:32|____:32|____:19|__:10|___:1|____:7 = 67
%% p - Kind:3|Text:32|Dist:32|____:32|Name:19|__:10|___:1|____:7 = 86

node_offset(<<?element:3,O:32/integer,_/bitstring>>) -> O;
node_offset(<<?attribute:3,_:94/bitstring,O:7/integer>>) -> O;
node_offset(<<_:35,O:32/integer,_/bitstring>>) -> O.
   

set_children(#{kind := ?element,
               dist := Offset,
               name := NameRef,
               ns   := NsRef,
               nsf  := HasNs,
               atts := AttCnt} = _Node, Children) ->
   NsF = if HasNs -> 1; true -> 0 end,
   S = get_size(Children),
   CB = get_bin(Children),
   Bin = <<?element:3,Offset:32/integer,
           S:32/integer,NameRef:19/integer,NsRef:10/integer,
           NsF:1,AttCnt:7/integer,CB/binary>>,
   #{size => S,
     bin  => Bin,
     kind => ?element};
%%    xqldb_structure:index_doc(Node#{size := S,
%%                                    bin  => Bin,
%%                                    chld := Children});
set_children(#{kind := ?document,
               text := UriRef} = _Node, Children) ->
   S = get_size(Children),
   CB = get_bin(Children),
   Bin = <<?document:3,UriRef:32/integer,
           S:32/integer,0:19/integer,0:10/integer,
           0:1,0:7/integer,CB/binary>>,
   Bin.


%% ====================================================================
%% Internal functions
%% ====================================================================
 

get_size([#{kind := ?element,
            size := S}|T]) ->
   1 + S + get_size(T);
get_size([#{kind := K}|T]) when K == ?text;
                                K == ?attribute;
                                K == ?comment;
                                K == ?proc_inst ->
   1 + get_size(T);
get_size([]) -> 0.

get_bin(Children) ->
   << B || #{bin := B} <- Children >>.

doc_tree_to_node_table(#{kind := ?document,
                         size := Size, 
                         bin := Bin, chld := Children}) ->
   Deep = [Bin, [doc_tree_to_node_table(C) || C <- Children] ],
   Io = erlang:iolist_to_binary(Deep),
   {Size,Io};
doc_tree_to_node_table(#{bin := Bin, chld := Children}) ->
   [Bin, 
    [doc_tree_to_node_table(C) || C <- Children] ];
doc_tree_to_node_table(#{bin := Bin}) -> Bin.

