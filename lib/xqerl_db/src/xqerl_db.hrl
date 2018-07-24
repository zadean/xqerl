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
% node kinds
-include_lib("kernel/include/logger.hrl").
-define(fragment, 7). % non-conformant xml
-define(document, 0).
-define(element,  1).
-define(attribute,2).
-define(namespace,3).
-define(proc_inst,4).
-define(comment,  5).
-define(text,     6).

-record(xqldb_doc,
        {uri,
         bin}).

-record(xqldb_res,
        {uri,
         bin}).

-record(xqldb_collection,
        {uri,
         uris}).

-record(xqldb_namespace,
        {uri,
         id}).

-record(xqldb_name,
        {name,
         id}).

% for use with mnesia:dirty_update_counter
-record(xqldb_counter,
        {key,
         value}).

-define(BSZ,22).

-define(tp(A),A:4/integer).
-define(dpt(A),A:12/integer).
-define(dptm(A),A:12).
-define(nxt(A),A:32/integer).
%
-define(ln(A),A:24/integer).
-define(px(A),A:24/integer).
-define(ns(A),A:16/integer).
-define(att(A),A:32/integer).
-define(nms(A),A:32/integer).
%
-define(off(A),A:64/integer).
-define(tlen(A),A:64/integer).
-define(plen(A),A:40/integer).
-define(drest(A),A:128/integer).

-define(NOD,<<?tp(_),?dpt(__Dpt),?nxt(__Nxt),?drest(_)>>).
-define(DMT,<<?tp(?document),?dpt(__Dpt),?nxt(__Nxt),?drest(0)>>).
-define(FRG,<<?tp(?fragment),?dpt(__Dpt),?nxt(__Nxt),?ln(0),?px(0),?ns(0),?att(__Att),?nms(__Nms)>>).
-define(ELM,<<?tp(?element),?dpt(__Dpt),?nxt(__Nxt),?ln(__Ln),?px(__Px),?ns(__Ns),?att(__Att),?nms(__Nms)>>).
-define(TXT,<<?tp(?text),?dpt(__Dpt),?nxt(__Nxt),?off(__Pos),?tlen(__Len)>>).
-define(CMT,<<?tp(?comment),?dpt(__Dpt),?nxt(__Nxt),?off(__Pos),?tlen(__Len)>>).
-define(PIN,<<?tp(?proc_inst),?dpt(__Dpt),?nxt(__Nxt),?ln(__Ln),?off(__Pos),?plen(__Len)>>).

-define(NODM,<<?tp(_),?dptm(__Dpt),?nxt(__Nxt),?drest(_),Rest/binary>>).
-define(DMTM,<<?tp(?document),?dptm(__Dpt),?nxt(__Nxt),?drest(0),Rest/binary>>).
-define(FRGM,<<?tp(?fragment),?dptm(__Dpt),?nxt(__Nxt),?ln(0),?px(0),?ns(0),?att(__Att),?nms(__Nms),Rest/binary>>).
-define(ELMM,<<?tp(?element),?dptm(__Dpt),?nxt(__Nxt),?ln(__Ln),?px(__Px),?ns(__Ns),?att(__Att),?nms(__Nms),Rest/binary>>).
-define(TXTM,<<?tp(?text),?dptm(__Dpt),?nxt(__Nxt),?off(__Pos),?tlen(__Len),Rest/binary>>).
-define(CMTM,<<?tp(?comment),?dptm(__Dpt),?nxt(__Nxt),?off(__Pos),?tlen(__Len),Rest/binary>>).
-define(PINM,<<?tp(?proc_inst),?dptm(__Dpt),?nxt(__Nxt),?ln(__Ln),?off(__Pos),?plen(__Len),Rest/binary>>).

-define(DOC,{__Filename,__Names,__Namesp,__Nodes,__Attributes,
             __Nss,__Text,__Comment,__Data,__Indexes}).
-define(NSP,{__Par,__Ln,__Ns}).
-define(ATT,{__APar,__ALn,__APx,__ANs,__ATyp,__AVal}).

-define(node_get(Ix), (catch binary_part(__Nodes, Ix * ?BSZ, ?BSZ))).

-define(dbg(A,B),?LOG_DEBUG("~p: ~p",[A,B])).





-record(xqAtomicValue,
        {
         type  = undefined :: atom(),
         value = undefined :: term() | []
        }).
-record(xqNode, {
      doc   :: pid() | term(),
      node  :: [integer()] | binary()
   }).
