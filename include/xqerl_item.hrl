%% -------------------------------------------------------------------
%%
%% xqerl - XQuery processor
%%
%% Copyright (c) 2017-2019 Zachary N. Dean  All Rights Reserved.
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
% 3 types of items
-record(xqAtomicValue,
        {
         type  = undefined :: atom(),
         value = undefined :: term() | []
        }).

-record(qname, 
        {
         namespace  :: 'no-namespace' | default | undefined | binary() | #xqAtomicValue{} | #{_ := _} | [term()],
         prefix    = undefined :: default | undefined | binary() | #xqAtomicValue{} | #{_ := _} | [term()],
         local_name :: undefined | binary() | #xqAtomicValue{} | #{_ := _} | [term()]
        }).

-record(xqNamespace, 
        {
         namespace  :: 'no-namespace' | undefined | binary() | [],
         prefix     :: undefined | binary() | []
        }).

-record(xqXmlFragment, {
      identity     = undefined :: term(),
      document_uri = undefined :: term(),
      children     = []        :: [term()]
   }).

-record(xqDocumentNode, {
      identity     = undefined :: term(),
      document_uri = undefined :: term(),
      base_uri     = <<>>      :: binary() | #xqAtomicValue{},
      children     = []        :: [term()],
      content      = undefined :: term()
   }).

-record(xqElementNode, {
      identity     = undefined :: term(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      children     = []        :: [term()],
      attributes   = []        :: undefined | term() | [term()],
      inscope_ns   = []        ,
      type         = undefined :: term(),
      base_uri     = <<>>      :: binary() | #xqAtomicValue{},
      content      = undefined :: term()
   }).

-record(xqAttributeNode, {
      identity     = undefined :: term(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      string_value = <<>>      :: binary() | term(),
      type         = undefined :: term()
   }).

-record(xqNamespaceNode, {
      identity     = undefined :: term(),
      uri          = <<>>      :: binary() | term(),
      prefix       = <<>>      :: binary() | term(),
      parent_node  = undefined :: term()
   }).

-record(xqProcessingInstructionNode, {
      identity     = undefined :: term(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      base_uri     = <<>>      :: binary() | #xqAtomicValue{},
      string_value = <<>>      :: binary() | term()
   }).

-record(xqCommentNode, {
      identity     = undefined :: term(),
      parent_node  = undefined :: term(),
      string_value = <<>>      :: binary() | term()
   }).

-record(xqTextNode, {
      identity     = undefined :: term(),
      parent_node  = undefined :: term(),
      cdata        = false     :: boolean(),
      string_value = <<>>      :: binary() | term()
   }).

