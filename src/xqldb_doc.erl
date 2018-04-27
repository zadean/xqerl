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
-module(xqldb_doc).

-behaviour(gen_server).
-include("xqerl_db.hrl").

-export([init/1, 
         handle_call/3, 
         handle_cast/2, 
         handle_info/2, 
         terminate/2, 
         code_change/3]).

%% all callbacks have timeouts to offload this process back to persistent data 
%% 

%% ====================================================================
%% API functions
%% ====================================================================
-export([start_link/1,
         load/1,
         run/2,
         export/1,
         query/2,
         delete/1]).

% reverse axes
-export([% parent
         parents/2,
         document_parents/2,
         element_parents/2,
         named_element_parents/3,
         other_parents/2,
         % ancestor
         ancestors/2,
         document_ancestors/2,
         element_ancestors/2,
         named_element_ancestors/3,
         other_ancestors/2,
         % ancestor-or-self
         ancestor_or_selfs/2,
         document_ancestor_or_selfs/2,
         element_ancestor_or_selfs/2,
         named_element_ancestor_or_selfs/3,
         other_ancestor_or_selfs/2,
         % preceding-sibling
         preceding_siblings/2,
         element_preceding_siblings/2,
         named_element_preceding_siblings/3,
         pi_preceding_siblings/2,
         named_pi_preceding_siblings/3,
         text_preceding_siblings/2,
         comment_preceding_siblings/2,
         % preceding
         precedings/2,
         element_precedings/2,
         named_element_precedings/3,
         pi_precedings/2,
         named_pi_precedings/3,
         text_precedings/2,
         comment_precedings/2
        ]).

% forward axes
-export([% attribute
         attributes/2,
         named_attributes/3,
         namespaces/2,
         % child
         children/2,
         element_children/2,
         named_element_children/3,
         pi_children/2,
         named_pi_children/3,
         text_children/2,
         comment_children/2,
         % self
         selfs/2,
         document_selfs/2,
         element_selfs/2,
         named_element_selfs/3,
         pi_selfs/2,
         named_pi_selfs/3,
         text_selfs/2,
         comment_selfs/2,         
         % descendant
         descendants/2,
         element_descendants/2,
         named_element_descendants/3,
         pi_descendants/2,
         named_pi_descendants/3,
         text_descendants/2,
         comment_descendants/2,         
         % descendant-or-self
         descendant_or_selfs/2,
         document_descendant_or_selfs/2,
         element_descendant_or_selfs/2,
         named_element_descendant_or_selfs/3,
         pi_descendant_or_selfs/2,
         named_pi_descendant_or_selfs/3,
         text_descendant_or_selfs/2,
         comment_descendant_or_selfs/2,
         % following-siblings
         following_siblings/2,
         element_following_siblings/2,
         named_element_following_siblings/3,
         pi_following_siblings/2,
         named_pi_following_siblings/3,
         text_following_siblings/2,
         comment_following_siblings/2,
         % following
         followings/2,
         element_followings/2,
         named_element_followings/3,
         pi_followings/2,
         named_pi_followings/3,
         text_followings/2,
         comment_followings/2
        ]).

-export([atomize/2,
         nodify/2,
         %
         namespace_nodes/2,
         document_uri/2,
         is_id/2,
         is_idrefs/2,
         nilled/2,
         node_kind/2,
         node_name/2,
         parent/2,
         string_value/2,
         type_name/2,
         typed_value/2,
         % 
         namespace_uri_for_prefix/3,
         inscope_prefixes/2,
         inscope_namespaces/2,
         inscope_namespace_nodes/2,
         roots/1,
         namespace_uri/2,
         local_name/2,
         lang/2,
         base_uri/2,
         path_to_root/2,
         innermost/2,
         outermost/2,
         name/2,
         id/2,
         ids/1,
         idref/2,
         idrefs/1,
         %
         build_parent_index/1,
         build_lang_index/1,
         build_base_uri_index/1,
         build_named_element_children/1]).


-define(TIMEOUT, 30000).

start_link(FileUri) ->
   gen_server:start_link(?MODULE, [FileUri], []).

% return {ok,Pid}
load(FileUriOrState) ->
   xqldb_doc_sup:start_child(FileUriOrState).

run(Pid,Fun) ->
   gen_server:call(Pid, {run, Fun}, ?TIMEOUT).

export(Pid) ->
   gen_server:call(Pid, export, ?TIMEOUT).

query(Pid, Path) ->
   gen_server:call(Pid, {query, Path}, ?TIMEOUT).

delete(Pid) ->
   gen_server:call(Pid, delete, ?TIMEOUT).

% serialize
atomize(_,[{_,_,_,_,_,AVal}]) ->
   case AVal of
      {_,V} ->
         #xqAtomicValue{type = 'xs:untypedAtomic', value = V};
      V ->
         #xqAtomicValue{type = 'xs:untypedAtomic', value = V}
   end;
atomize(Pid,Ids) ->
   gen_server:call(Pid, {query, [{atomize,Ids}]}, ?TIMEOUT).
nodify(Pid,Ids) ->
   gen_server:call(Pid, {query, [{nodify,Ids}]}, ?TIMEOUT).

namespace_nodes(Pid,Ids) ->
   gen_server:call(Pid, {query, [{namespace_nodes,Ids}]}, ?TIMEOUT).




document_uri(Pid,Ids) ->
   gen_server:call(Pid, {query, [{document_uri,Ids}]}, ?TIMEOUT).

is_id(Pid,Ids) ->
   gen_server:call(Pid, {query, [{is_id,Ids}]}, ?TIMEOUT).

is_idrefs(Pid,Ids) ->
   gen_server:call(Pid, {query, [{is_idrefs,Ids}]}, ?TIMEOUT).

nilled(Pid,Ids) ->
   gen_server:call(Pid, {query, [{nilled,Ids}]}, ?TIMEOUT).

node_kind(Pid,Ids) ->
   gen_server:call(Pid, {query, [{node_kind,Ids}]}, ?TIMEOUT).

node_name(Pid,Ids) ->
   gen_server:call(Pid, {query, [{node_name,Ids}]}, ?TIMEOUT).

name(Pid,Ids) ->
   gen_server:call(Pid, {query, [{name,Ids}]}, ?TIMEOUT).

parent(Pid,Ids) ->
   gen_server:call(Pid, {query, [{parent,Ids}]}, ?TIMEOUT).

string_value(Pid,Ids) ->
   gen_server:call(Pid, {query, [{string_value,Ids}]}, ?TIMEOUT).

type_name(Pid,Ids) ->
   gen_server:call(Pid, {query, [{type_name,Ids}]}, ?TIMEOUT).

typed_value(Pid,Ids) ->
   gen_server:call(Pid, {query, [{typed_value,Ids}]}, ?TIMEOUT).


% paths
ancestor_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {ancestor_or_selfs,Ids}, ?TIMEOUT).
ancestors(Pid,Ids) ->
   gen_server:call(Pid, {ancestors,Ids}, ?TIMEOUT).
attributes(Pid,Ids) ->
   gen_server:call(Pid, {attributes,Ids}, ?TIMEOUT).
children(Pid,Ids) ->
   gen_server:call(Pid, {children,Ids}, ?TIMEOUT).
comment_children(Pid,Ids) ->
   gen_server:call(Pid, {comment_children,Ids}, ?TIMEOUT).
comment_descendant_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {comment_descendant_or_selfs,Ids}, ?TIMEOUT).
comment_descendants(Pid,Ids) ->
   gen_server:call(Pid, {comment_descendants,Ids}, ?TIMEOUT).
comment_following_siblings(Pid,Ids) ->
   gen_server:call(Pid, {comment_following_siblings,Ids}, ?TIMEOUT).
comment_followings(Pid,Ids) ->
   gen_server:call(Pid, {comment_followings,Ids}, ?TIMEOUT).
comment_preceding_siblings(Pid,Ids) ->
   gen_server:call(Pid, {comment_preceding_siblings,Ids}, ?TIMEOUT).
comment_precedings(Pid,Ids) ->
   gen_server:call(Pid, {comment_precedings,Ids}, ?TIMEOUT).
comment_selfs(Pid,Ids) ->
   gen_server:call(Pid, {comment_selfs,Ids}, ?TIMEOUT).
descendant_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {descendant_or_selfs,Ids}, ?TIMEOUT).
descendants(Pid,Ids) ->
   gen_server:call(Pid, {descendants,Ids}, ?TIMEOUT).
document_ancestor_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {document_ancestor_or_selfs,Ids}, ?TIMEOUT).
document_ancestors(Pid,Ids) ->
   gen_server:call(Pid, {document_ancestors,Ids}, ?TIMEOUT).
document_descendant_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {document_descendant_or_selfs,Ids}, ?TIMEOUT).
document_selfs(Pid,Ids) ->
   gen_server:call(Pid, {document_selfs,Ids}, ?TIMEOUT).
document_parents(Pid,Ids) ->
   gen_server:call(Pid, {document_parents,Ids}, ?TIMEOUT).
element_ancestor_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {element_ancestor_or_selfs,Ids}, ?TIMEOUT).
element_ancestors(Pid,Ids) ->
   gen_server:call(Pid, {element_ancestors,Ids}, ?TIMEOUT).
element_children(Pid,Ids) ->
   gen_server:call(Pid, {element_children,Ids}, ?TIMEOUT).
element_descendant_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {element_descendant_or_selfs,Ids}, ?TIMEOUT).
element_descendants(Pid,Ids) ->
   gen_server:call(Pid, {element_descendants,Ids}, ?TIMEOUT).
element_following_siblings(Pid,Ids) ->
   gen_server:call(Pid, {element_following_siblings,Ids}, ?TIMEOUT).
element_followings(Pid,Ids) ->
   gen_server:call(Pid, {element_followings,Ids}, ?TIMEOUT).
element_parents(Pid,Ids) ->
   gen_server:call(Pid, {element_parents,Ids}, ?TIMEOUT).
element_preceding_siblings(Pid,Ids) ->
   gen_server:call(Pid, {element_preceding_siblings,Ids}, ?TIMEOUT).
element_precedings(Pid,Ids) ->
   gen_server:call(Pid, {element_precedings,Ids}, ?TIMEOUT).
element_selfs(Pid,Ids) ->
   gen_server:call(Pid, {element_selfs,Ids}, ?TIMEOUT).
following_siblings(Pid,Ids) ->
   gen_server:call(Pid, {following_siblings,Ids}, ?TIMEOUT).
followings(Pid,Ids) ->
   gen_server:call(Pid, {followings,Ids}, ?TIMEOUT).
namespaces(Pid,Ids) ->
   gen_server:call(Pid, {namespaces,Ids}, ?TIMEOUT).
other_ancestor_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {other_ancestor_or_selfs,Ids}, ?TIMEOUT).
other_ancestors(Pid,Ids) ->
   gen_server:call(Pid, {other_ancestors,Ids}, ?TIMEOUT).
other_parents(Pid,Ids) ->
   gen_server:call(Pid, {other_parents,Ids}, ?TIMEOUT).
parents(Pid,Ids) ->
   gen_server:call(Pid, {parents,Ids}, ?TIMEOUT).
pi_children(Pid,Ids) ->
   gen_server:call(Pid, {pi_children,Ids}, ?TIMEOUT).
pi_descendant_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {pi_descendant_or_selfs,Ids}, ?TIMEOUT).
pi_descendants(Pid,Ids) ->
   gen_server:call(Pid, {pi_descendants,Ids}, ?TIMEOUT).
pi_following_siblings(Pid,Ids) ->
   gen_server:call(Pid, {pi_following_siblings,Ids}, ?TIMEOUT).
pi_followings(Pid,Ids) ->
   gen_server:call(Pid, {pi_followings,Ids}, ?TIMEOUT).
pi_preceding_siblings(Pid,Ids) ->
   gen_server:call(Pid, {pi_preceding_siblings,Ids}, ?TIMEOUT).
pi_precedings(Pid,Ids) ->
   gen_server:call(Pid, {pi_precedings,Ids}, ?TIMEOUT).
pi_selfs(Pid,Ids) ->
   gen_server:call(Pid, {pi_selfs,Ids}, ?TIMEOUT).
preceding_siblings(Pid,Ids) ->
   gen_server:call(Pid, {preceding_siblings,Ids}, ?TIMEOUT).
precedings(Pid,Ids) ->
   gen_server:call(Pid, {precedings,Ids}, ?TIMEOUT).
selfs(Pid,Ids) ->
   gen_server:call(Pid, {selfs,Ids}, ?TIMEOUT).
text_children(Pid,Ids) ->
   gen_server:call(Pid, {text_children,Ids}, ?TIMEOUT).
text_descendant_or_selfs(Pid,Ids) ->
   gen_server:call(Pid, {text_descendant_or_selfs,Ids}, ?TIMEOUT).
text_descendants(Pid,Ids) ->
   gen_server:call(Pid, {text_descendants,Ids}, ?TIMEOUT).
text_following_siblings(Pid,Ids) ->
   gen_server:call(Pid, {text_following_siblings,Ids}, ?TIMEOUT).
text_followings(Pid,Ids) ->
   gen_server:call(Pid, {text_followings,Ids}, ?TIMEOUT).
text_preceding_siblings(Pid,Ids) ->
   gen_server:call(Pid, {text_preceding_siblings,Ids}, ?TIMEOUT).
text_precedings(Pid,Ids) ->
   gen_server:call(Pid, {text_precedings,Ids}, ?TIMEOUT).
text_selfs(Pid,Ids) ->
   gen_server:call(Pid, {text_selfs,Ids}, ?TIMEOUT).

named_attributes(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_attributes,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_ancestor_or_selfs(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_ancestor_or_selfs,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_ancestors(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_ancestors,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_children(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_children,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_descendant_or_selfs(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_descendant_or_selfs,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_descendants(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_descendants,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_following_siblings(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_following_siblings,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_followings(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_followings,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_parents(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_parents,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_preceding_siblings(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_preceding_siblings,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_precedings(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_precedings,Ids,{Namespace,Localname}}, ?TIMEOUT).
named_element_selfs(Pid,Ids,{Namespace,Localname}) ->
   gen_server:call(Pid, {named_element_selfs,Ids,{Namespace,Localname}}, ?TIMEOUT).

named_pi_children(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_children,Ids,Localname}, ?TIMEOUT).
named_pi_descendant_or_selfs(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_descendant_or_selfs,Ids,Localname}, ?TIMEOUT).
named_pi_descendants(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_descendants,Ids,Localname}, ?TIMEOUT).
named_pi_following_siblings(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_following_siblings,Ids,Localname}, ?TIMEOUT).
named_pi_followings(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_followings,Ids,Localname}, ?TIMEOUT).
named_pi_preceding_siblings(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_preceding_siblings,Ids,Localname}, ?TIMEOUT).
named_pi_precedings(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_precedings,Ids,Localname}, ?TIMEOUT).
named_pi_selfs(Pid,Ids,Localname) ->
   gen_server:call(Pid, {named_pi_selfs,Ids,Localname}, ?TIMEOUT).

roots(Pid) ->
   gen_server:call(Pid, {query, [roots]}, ?TIMEOUT).

path_to_root(Pid,Ids) ->
   gen_server:call(Pid, {query, [{path_to_root,Ids}]}, ?TIMEOUT).

lang(Pid,Ids) ->
   gen_server:call(Pid, {query, [{lang,Ids}]}, ?TIMEOUT).

namespace_uri(Pid,Ids) ->
   gen_server:call(Pid, {query, [{namespace_uri,Ids}]}, ?TIMEOUT).

local_name(Pid,Ids) ->
   gen_server:call(Pid, {query, [{local_name,Ids}]}, ?TIMEOUT).

inscope_namespaces(Pid,Ids) ->
   gen_server:call(Pid, {query, [{inscope_namespaces,Ids}]}, ?TIMEOUT).

inscope_namespace_nodes(Pid,Ids) ->
   gen_server:call(Pid, {query, [{inscope_namespace_nodes,Ids}]}, ?TIMEOUT).

inscope_prefixes(Pid,Ids) ->
   gen_server:call(Pid, {query, [{inscope_prefixes,Ids}]}, ?TIMEOUT).

namespace_uri_for_prefix(Pid,Prefix,Ids) ->
   gen_server:call(Pid, {query, [{namespace_uri_for_prefix,{Prefix,Ids}}]}, ?TIMEOUT).

innermost(Pid,Ids) ->
   gen_server:call(Pid, {query, [{innermost,Ids}]}, ?TIMEOUT).
outermost(Pid,Ids) ->
   gen_server:call(Pid, {query, [{outermost,Ids}]}, ?TIMEOUT).

ids(Pid) ->
   gen_server:call(Pid, ids, ?TIMEOUT).
id(Pid,Vals) ->
   gen_server:call(Pid, {query, [{id,Vals}]}, ?TIMEOUT).
idrefs(Pid) ->
   gen_server:call(Pid, idrefs, ?TIMEOUT).
idref(Pid,Vals) ->
   gen_server:call(Pid, {query, [{idref,Vals}]}, ?TIMEOUT).


base_uri(Pid,Ids) ->
   gen_server:call(Pid, {query, [{base_uri,Ids}]}, ?TIMEOUT).

build_parent_index(Pid) ->
   gen_server:cast(Pid, build_parent_index).

build_lang_index(Pid) ->
   gen_server:cast(Pid, build_lang_index).

build_base_uri_index(Pid) ->
   gen_server:cast(Pid, build_base_uri_index).

build_named_element_children(Pid) ->
   gen_server:cast(Pid, build_named_element_children).


%% ====================================================================
%% Behavioural functions
%% ====================================================================
-record(state, 
        {uri,
         hits    = 0,
         doc
        }).

-spec init(Args :: term()) -> Result when
	Result :: {ok, State}
			| {ok, State, Timeout}
			| {ok, State, hibernate}
			| {stop, Reason :: term()}
			| ignore,
	State :: term(),
	Timeout :: non_neg_integer() | infinity.

init([OldState]) when is_binary(OldState) ->
   State = binary_to_term(OldState, [safe]),
   %State = #state{doc = Doc},
   {ok, State, ?TIMEOUT};
init([{Uri,FileUri}]) ->
   State = #state{uri = {Uri,FileUri}},
   Self = self(),
   ok = gen_server:cast(Self, from_file),
   _ = build_parent_index(Self),
   _ = build_lang_index(Self),
   _ = build_base_uri_index(Self),
   _ = build_named_element_children(Self),
   {ok, State, ?TIMEOUT};
init([Doc]) when is_tuple(Doc), not is_atom(element(1,Doc)) ->
   State = #state{doc = Doc},
   Self = self(),
   _ = build_parent_index(Self),
   _ = build_lang_index(Self),
   _ = build_base_uri_index(Self),
   _ = build_named_element_children(Self),
   {ok, State, ?TIMEOUT};

init([FileUri]) ->
   State = #state{uri = FileUri},
   Self = self(),
   ok = gen_server:cast(Self, from_file),
   _ = build_parent_index(Self),
   _ = build_lang_index(Self),
   _ = build_base_uri_index(Self),
   _ = build_named_element_children(Self),
   {ok, State, ?TIMEOUT}.




-spec handle_call(Request :: term(), 
                  From :: {pid(), Tag :: term()}, 
                  State :: term()) -> Result when
	Result :: {reply, Reply, NewState}
			| {reply, Reply, NewState, Timeout}
			| {reply, Reply, NewState, hibernate}
			| {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason, Reply, NewState}
			| {stop, Reason, NewState},
	Reply :: term(),
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity,
	Reason :: term().


handle_call({run,Fun}, _From, State) ->
   try
      Reply = xqldb_xdm:run(State#state.doc, Fun),
      {reply, Reply, State, ?TIMEOUT}
   catch
      _:Err ->
         xqldb_docstore:deactivate(State#state.uri,State),
         {reply, Err, State, ?TIMEOUT}
   end;

handle_call(delete, _From, State) ->
   {stop, normal, State};
handle_call(export, _From, State) ->
   %?dbg("State",State),
   Bin = term_to_binary(State#state.doc, [{compressed,1},{minor_version, 2}]),
   {reply, {ok,Bin}, State, ?TIMEOUT};

handle_call({query, [{atomize,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:atomize(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{nodify,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:nodify(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};

handle_call({ancestor_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:ancestor_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({ancestors,Ids}, _From, State) ->
   Reply = xqldb_xdm:ancestors(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({attributes,Ids}, _From, State) ->
   Reply = xqldb_xdm:attributes(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({children,Ids}, _From, State) ->
   Reply = xqldb_xdm:children(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_children,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_children(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_descendant_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_descendant_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_descendants,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_descendants(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_following_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_following_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_followings,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_followings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_preceding_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_preceding_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_precedings,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_precedings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({comment_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:comment_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({descendant_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:descendant_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({descendants,Ids}, _From, State) ->
   Reply = xqldb_xdm:descendants(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({document_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:document_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({document_ancestor_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:document_ancestor_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({document_ancestors,Ids}, _From, State) ->
   Reply = xqldb_xdm:document_ancestors(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({document_descendant_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:document_descendant_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({document_parents,Ids}, _From, State) ->
   Reply = xqldb_xdm:document_parents(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_ancestor_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_ancestor_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_ancestors,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_ancestors(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_children,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_children(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_descendant_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_descendant_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_descendants,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_descendants(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_following_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_following_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_followings,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_followings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_parents,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_parents(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_preceding_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_preceding_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_precedings,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_precedings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({element_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:element_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({following_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:following_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({followings,Ids}, _From, State) ->
   Reply = xqldb_xdm:followings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({namespaces,Ids}, _From, State) ->
   Reply = xqldb_xdm:namespaces(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({other_ancestor_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:other_ancestor_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({other_ancestors,Ids}, _From, State) ->
   Reply = xqldb_xdm:other_ancestors(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({other_parents,Ids}, _From, State) ->
   Reply = xqldb_xdm:other_parents(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({parents,Ids}, _From, State) ->
   Reply = xqldb_xdm:parents(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_children,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_children(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_descendant_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_descendant_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_descendants,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_descendants(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_following_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_following_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_followings,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_followings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_preceding_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_preceding_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_precedings,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_precedings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({pi_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:pi_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({preceding_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:preceding_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({precedings,Ids}, _From, State) ->
   Reply = xqldb_xdm:precedings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_children,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_children(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_descendant_or_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_descendant_or_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_descendants,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_descendants(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_following_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_following_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_followings,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_followings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_preceding_siblings,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_preceding_siblings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_precedings,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_precedings(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({text_selfs,Ids}, _From, State) ->
   Reply = xqldb_xdm:text_selfs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};

handle_call({named_attributes,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_attributes(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_ancestor_or_selfs,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_ancestor_or_selfs(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_ancestors,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_ancestors(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_children,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_children(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_descendant_or_selfs,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_descendant_or_selfs(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_descendants,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_descendants(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_following_siblings,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_following_siblings(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_followings,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_followings(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_parents,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_parents(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_preceding_siblings,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_preceding_siblings(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_precedings,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_precedings(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_element_selfs,Ids, {Namespace,Localname}}, _From, State) ->
   Reply = xqldb_xdm:named_element_selfs(State#state.doc, Ids, {Namespace,Localname}),
   {reply, Reply, State, ?TIMEOUT};

handle_call({named_pi_children,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_children(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_descendant_or_selfs,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_descendant_or_selfs(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_descendants,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_descendants(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_following_siblings,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_following_siblings(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_followings,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_followings(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_preceding_siblings,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_preceding_siblings(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_precedings,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_precedings(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};
handle_call({named_pi_selfs,Ids, Localname}, _From, State) ->
   Reply = xqldb_xdm:named_pi_selfs(State#state.doc, Ids, Localname),
   {reply, Reply, State, ?TIMEOUT};

handle_call({query, [{namespace_nodes,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:namespaces(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{document_uri,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:document_uri(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{is_id,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:is_id(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{is_idrefs,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:is_idrefs(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{nilled,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:nilled(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{node_kind,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:node_kind(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{node_name,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:node_name(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{name,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:name(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{string_value,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:string_value(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{type_name,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:type_name(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{typed_value,Ids}]}, _From, State) ->
   Reply = xqldb_xdm:typed_value(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};

handle_call({query, [roots]}, _From, State) ->
   Reply = xqldb_xdm:roots(State#state.doc),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{path_to_root, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:path_to_root(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{lang, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:lang(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{namespace_uri, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:namespace_uri(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{local_name, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:local_name(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{inscope_namespaces, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:inscope_namespaces(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{inscope_namespace_nodes, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:inscope_namespace_nodes(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{inscope_prefixes, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:inscope_prefixes(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{namespace_uri_for_prefix, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:namespace_uri_for_prefix(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{base_uri, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:base_uri(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};

handle_call({query, [{innermost, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:innermost(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{outermost, Ids}]}, _From, State) ->
   Reply = xqldb_xdm:outermost(State#state.doc, Ids),
   {reply, Reply, State, ?TIMEOUT};

handle_call(ids, _From, State) ->
   Reply = xqldb_xdm:ids(State#state.doc),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{id, Vals}]}, _From, State) ->
   Reply = xqldb_xdm:id(State#state.doc,Vals),
   {reply, Reply, State, ?TIMEOUT};

handle_call(idrefs, _From, State) ->
   Reply = xqldb_xdm:idrefs(State#state.doc),
   {reply, Reply, State, ?TIMEOUT};
handle_call({query, [{idref, Vals}]}, _From, State) ->
   Reply = xqldb_xdm:idref(State#state.doc,Vals),
   {reply, Reply, State, ?TIMEOUT};


handle_call({query,Path}, _From, State) ->
   {Reply,State1} = do_path(Path,State),
   io:format("hits: ~p~n",[State1#state.hits]),
   {reply, Reply, State1, ?TIMEOUT};


handle_call(Request, _From, State) ->
   ?dbg("unexpected call: ",Request),
   Reply = ok,
   {reply, Reply, State, ?TIMEOUT}.


-spec handle_cast(Request :: term(), State :: term()) -> Result when
	Result :: {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason :: term(), NewState},
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity.

% self called load
handle_cast(from_file, State) ->
   State1 = do_from_file(State),
   {noreply, State1, ?TIMEOUT};

% index builders
handle_cast(build_parent_index, State) ->
   {K,V} = xqldb_xdm:build_parent_index(State#state.doc),
   State1 = add_index_to_state({K,V}, State),
   {noreply, State1, ?TIMEOUT};
handle_cast(build_lang_index, State) ->
   {K,V} = xqldb_xdm:build_lang_index(State#state.doc),
   State1 = add_index_to_state({K,V}, State),
   {noreply, State1, ?TIMEOUT};
handle_cast(build_base_uri_index, State) ->
   {K,V} = xqldb_xdm:build_base_uri_index(State#state.doc),
   State1 = add_index_to_state({K,V}, State),
   {noreply, State1, ?TIMEOUT};
handle_cast(build_named_element_children, State) ->
   {K,V} = xqldb_xdm:build_named_element_children_index(State#state.doc),
   State1 = add_index_to_state({K,V}, State),
   State2 = add_index_to_state({named_element_following_siblings,#{}}, State1),
   {noreply, State2, ?TIMEOUT};




   
   
   
handle_cast(Msg, State) ->
   ?dbg("unexpected cast: ",Msg),
   {noreply, State, ?TIMEOUT}.


-spec handle_info(Info :: timeout | term(), State :: term()) -> Result when
	Result :: {noreply, NewState}
			| {noreply, NewState, Timeout}
			| {noreply, NewState, hibernate}
			| {stop, Reason :: term(), NewState},
	NewState :: term(),
	Timeout :: non_neg_integer() | infinity.

handle_info(timeout, State) ->
   %io:format("Got timeout: ~p~n",[self()]),
   {stop, normal, State};

% adding an index should cause a new save of the state
handle_info(touch, State) ->
   {noreply, State, ?TIMEOUT};
handle_info(Info, State) ->
   ?dbg("unexpected info: ",Info),
   {noreply, State, ?TIMEOUT}.


-spec terminate(Reason, State :: term()) -> Any :: term() when
	Reason :: normal
			| shutdown
			| {shutdown, term()}
			| term().

terminate(_Reason, State) -> 
   %?dbg("State",State),
   xqldb_docstore:deactivate(State#state.uri,State).


-spec code_change(OldVsn, State :: term(), Extra :: term()) -> Result when
	Result :: {ok, NewState :: term()} | {error, Reason :: term()},
	OldVsn :: Vsn | {down, Vsn},
	Vsn :: term().

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.


%% ====================================================================
%% Internal functions
%% ====================================================================


parse(FileUri) ->
   xqldb_parse:read_file(FileUri).

get_file_uri(State) ->
   State#state.uri.

add_doc_to_state(Doc, State) ->
   State#state{doc = Doc}.

add_index_to_state({K,V}, State) ->
   {__Filename,__Names,__Namesp,__Nodes,
    __Attributes,__Nss,__Text,__Comment,
    __Data,__Indexes} = State#state.doc,
   Indexes = __Indexes#{K => V},
   State#state{doc = {__Filename,__Names,__Namesp,__Nodes,
    __Attributes,__Nss,__Text,__Comment,
    __Data,Indexes}}.

%%  Names,     map (string to int)
%%  Namesp,    map (string to int)
do_from_file(State) ->
   case get_file_uri(State) of
      {Uri,FileUri} ->
         Doc = parse({Uri,FileUri}),
         add_doc_to_state(Doc, State#state{uri = Uri});
      Uri ->
         Doc = parse(Uri),
         add_doc_to_state(Doc, State)
   end.

do_path(Path,State) ->
   % update hit count
   {Path,State#state{hits = State#state.hits + 1}}.

  