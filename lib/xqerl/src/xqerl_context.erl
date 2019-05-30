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

%% @doc The Static and Dynamic context values.
%% NOTE: This module needs cleaning up!! also a conceptual overworking.
%%       The static and dynamic phases need to be clearly separated. (who sets what? when and where?)

-module(xqerl_context).

-export([merge/2]).

-export([get_db/1]).

-export([init/1]).
-export([init/0]).
-export([destroy/1]).

-export([static_namespaces/0]).
-export([static_collations/0]).

-export([add_inscope_namespace/3]).
-export([get_inscope_namespace/2]).

-export([get_module_exports/1]).
-export([import_functions/2]).
-export([import_variables/2]).

%-export([remove_key/1]).
-export([count_context_items/1]).
-export([get_statically_known_namespaces/1]).
-export([set_statically_known_namespaces/2]).

-export([add_statically_known_namespace/3]).
-export([get_statically_known_namespace_from_prefix/2]).
-export([get_statically_known_prefix_from_namespace/2]).

-export([get_default_element_type_namespace/1]).
-export([set_default_element_type_namespace/2]).

-export([get_in_scope_variables/1]).
-export([set_in_scope_variables/2]).
-export([add_in_scope_variable/2]).

-export([get_context_item_static_type/1]).
-export([set_context_item_static_type/2]).
-export([get_ordering_mode/1]).
-export([set_ordering_mode/2]).
-export([get_default_function_namespace/1]).
-export([set_default_function_namespace/2]).
-export([get_in_scope_schema_types/1]).
-export([set_in_scope_schema_types/2]).
-export([get_in_scope_element_declarations/1]).
-export([set_in_scope_element_declarations/2]).
-export([get_in_scope_attribute_declarations/1]).
-export([set_in_scope_attribute_declarations/2]).

-export([get_statically_known_functions/1]).
-export([set_statically_known_functions/2]).
-export([add_statically_known_function/2]).

-export([get_default_language/1]).
-export([set_default_language/2]).

-export([get_default_collation/1]).
-export([set_default_collation/2]).

-export([get_construction_mode/1]).
-export([set_construction_mode/2]).
-export([get_default_order_for_empty_sequences/1]).
-export([set_default_order_for_empty_sequences/2]).
-export([get_boundary_space_policy/1]).
-export([set_boundary_space_policy/2]).
-export([get_copy_namespaces_mode/1]).
-export([set_copy_namespaces_mode/2]).
-export([get_static_base_uri/1]).
-export([set_static_base_uri/2]).

-export([get_statically_known_decimal_formats/1]).
-export([set_statically_known_decimal_formats/2]).
-export([add_statically_known_decimal_format/2]).
-export([get_statically_known_decimal_format/2]).

-export([get_statically_known_documents/1]).
-export([set_statically_known_documents/2]).
-export([get_statically_known_collections/1]).
-export([set_statically_known_collections/2]).
-export([get_statically_known_default_collection_type/1]).
-export([set_statically_known_default_collection_type/2]).
-export([get_statically_known_collations/1]).
-export([set_statically_known_collations/2]).
-export([get_xpath_1_compatibility_mode/1]).
-export([set_xpath_1_compatibility_mode/2]).
-export([get_serial_allow_duplicate_names/1]).
-export([set_serial_allow_duplicate_names/2]).
-export([get_serial_byte_order_mark/1]).
-export([set_serial_byte_order_mark/2]).
-export([get_serial_cdata_section_elements/1]).
-export([set_serial_cdata_section_elements/2]).
-export([get_serial_doctype_public/1]).
-export([set_serial_doctype_public/2]).
-export([get_serial_doctype_system/1]).
-export([set_serial_doctype_system/2]).
-export([get_serial_encoding/1]).
-export([set_serial_encoding/2]).
-export([get_serial_escape_uri_attributes/1]).
-export([set_serial_escape_uri_attributes/2]).
-export([get_serial_html_version/1]).
-export([set_serial_html_version/2]).
-export([get_serial_include_content_type/1]).
-export([set_serial_include_content_type/2]).
-export([get_serial_indent/1]).
-export([set_serial_indent/2]).
-export([get_serial_item_separator/1]).
-export([set_serial_item_separator/2]).
-export([get_serial_json_node_output_method/1]).
-export([set_serial_json_node_output_method/2]).
-export([get_serial_media_type/1]).
-export([set_serial_media_type/2]).
-export([get_serial_method/1]).
-export([set_serial_method/2]).
-export([get_serial_normalization_form/1]).
-export([set_serial_normalization_form/2]).
-export([get_serial_omit_xml_declaration/1]).
-export([set_serial_omit_xml_declaration/2]).
-export([get_serial_standalone/1]).
-export([set_serial_standalone/2]).
-export([get_serial_suppress_indentation/1]).
-export([set_serial_suppress_indentation/2]).
-export([get_serial_undeclare_prefixes/1]).
-export([set_serial_undeclare_prefixes/2]).
-export([get_serial_use_character_maps/1]).
-export([set_serial_use_character_maps/2]).
-export([get_serial_version/1]).
-export([set_serial_version/2]).
-export([get_context_item/1]).
%% -export([get_context_item/2]).
-export([set_empty_context_item/1]).
-export([set_context_item/2]).
-export([set_context_item/3]).
-export([set_context_item/4]).
-export([get_context_position/1]).
%-export([set_context_position/2]).
-export([get_context_size/1]).
-export([set_context_size/2]).
%% -export([get_variable_values/1]).
%% -export([get_variable_value/2]).
%% -export([set_variable_values/2]).
%% -export([add_variable_value/2]).
-export([get_named_functions/1]).
-export([set_named_functions/2]).
-export([get_current_datetime/1]).
-export([set_current_datetime/2]).
% global to node so can be in process dict
-export([get_implicit_timezone/0]).
-export([get_implicit_timezone/1]).
-export([set_implicit_timezone/2]).
%% -export([get_available_documents/1]).
%% -export([get_available_document/1]).
%% -export([add_available_document/2]).
%% -export([get_available_text_resources/1]).
%% -export([get_available_text_resource/2]).
%% -export([add_available_text_resource/2]).
-export([get_available_collections/1]).
-export([get_available_collection/2]).
-export([set_available_collections/2]).
-export([add_available_collection/3]).
-export([get_default_collection/1]).
-export([set_default_collection/2]).
-export([get_available_uri_collections/1]).
-export([set_available_uri_collections/2]).
-export([get_default_uri_collection/1]).
-export([set_default_uri_collection/2]).

%-define(STORAGE, ets).
%-define(STORAGE, maps).


-include("xqerl.hrl").

merge(#{namespaces := INs} = InitialContext, OuterContext) ->
   % ns is {xqNamespace, Uri, Prefix}
   Merged = maps:merge(InitialContext, check_base_uri(OuterContext)),
   NsToMerge = maps:get(namespaces, OuterContext, []),
   F = fun({Prefix,Namespace},Acc) ->
             lists:keystore(Prefix, 3, Acc, 
                            #xqNamespace{namespace = Namespace, 
                                         prefix = Prefix})
       end,
   NewNs = lists:foldl(F, INs, NsToMerge),
   Merged#{namespaces => NewNs};
merge(InitialContext, OuterContext) ->
   maps:merge(InitialContext, check_base_uri(OuterContext)).

% remove invalid base uri and use empty 
check_base_uri(#{'base-uri' := #xqAtomicValue{value = Uri}} = C) ->
   case xqerl_lib:resolve_against_base_uri(Uri,<<>>) of
      {error,_} ->
         C#{'base-uri' := #xqAtomicValue{value = <<>>}};
      _ ->
         C
   end;
check_base_uri(C) -> C.

init() -> init(self()).

init(parser) ->
   add_default_static_values(parser);
init(_) ->
   Tab = ets:new(?MODULE, [public, {read_concurrency,true}, {write_concurrency,true}]),
   %?dbg("Tab",Tab),
   Now = erlang:timestamp(),
   add_default_static_values(Tab, Now).

destroy(#{tab := Tab}) ->
   %?dbg("Tab",Tab),
   case ets:lookup(Tab, clients) of
      [{clients,Map}] ->
         [Close() || {_, Close} <- maps:values(Map), is_function(Close)];
      _ ->
         ok
   end,
   ets:delete(Tab),
   erlang:erase(),
   ok.


%%% STATIC CONTEXT
get_statically_known_namespaces(parser) ->
   erlang:get('statically-known-namespaces');
get_statically_known_namespaces(Tab) ->
   get(Tab, 'statically-known-namespaces').
set_statically_known_namespaces(parser,Value) ->
   erlang:put('statically-known-namespaces', Value);
set_statically_known_namespaces(Tab,Value) ->
   set(Tab, 'statically-known-namespaces', Value).

% block static prefixes
add_statically_known_namespace(_,<<"http://www.w3.org/XML/1998/namespace">>,
                               <<"xml">>) -> ok;
add_statically_known_namespace(_,<<"http://www.w3.org/2000/xmlns/">>,
                               <<"xmlns">>) -> ok;
add_statically_known_namespace(parser,Namespace,Prefix) ->
   Old = case erlang:get('statically-known-namespaces') of
            undefined ->
               dict:from_list(static_namespaces());
            N ->
               N
         end,
   New = dict:store(Prefix, Namespace, Old),
   set_statically_known_namespaces(parser,New),
   ok;
add_statically_known_namespace(Tab,Namespace,Prefix) ->
   Old = case get(Tab, 'statically-known-namespaces') of
            undefined ->
               dict:from_list(static_namespaces());
            N ->
               N
         end,
   New = dict:store(Prefix, Namespace, Old),
   set_statically_known_namespaces(Tab,New),
   ok.

get_statically_known_namespace_from_prefix(parser,[]) ->
   get_statically_known_namespace_from_prefix(parser,<<>>);
get_statically_known_namespace_from_prefix(parser,Prefix) ->
   Dict = erlang:get('statically-known-namespaces'),
   case dict:find(Prefix, Dict) of
      error ->
         ?dbg("get_statically_known_namespace_from_prefix",Prefix),
         xqerl_error:error('XPST0081');
      {ok, V} ->
         V
   end;
get_statically_known_namespace_from_prefix(Tab,Prefix) ->
   Dict = get(Tab, 'statically-known-namespaces'),
   case dict:find(Prefix, Dict) of
      error ->
         ?dbg("get_statically_known_namespace_from_prefix",Prefix),
         xqerl_error:error('XPST0081');
      {ok, V} ->
         V
   end.

get_statically_known_prefix_from_namespace(parser,Namespace) ->
   Dict = erlang:get('statically-known-namespaces'),
   List = dict:to_list(Dict),
   case lists:keyfind(Namespace, 2, List) of
      false ->
         ?dbg("get_statically_known_prefix_from_namespace",Namespace),
         xqerl_error:error('XPST0081');
      {V,_} ->
         V
   end;
get_statically_known_prefix_from_namespace(Tab,Namespace) ->
   Dict = get(Tab, 'statically-known-namespaces'),
   List = dict:to_list(Dict),
   case lists:keyfind(Namespace, 2, List) of
      false ->
         ?dbg("get_statically_known_prefix_from_namespace",Namespace),
         xqerl_error:error('XPST0081');
      {V,_} ->
         V
   end.


get_default_element_type_namespace(parser) ->
   erlang:get('default-element-type-namespace');
get_default_element_type_namespace(Tab) ->
   get(Tab, 'default-element-type-namespace').

set_default_element_type_namespace(parser,Value) ->
   erlang:put('default-element-type-namespace', Value);
set_default_element_type_namespace(Tab,[Value]) when is_atom(Value)->
   set(Tab, 'default-element-type-namespace', Value);
set_default_element_type_namespace(Tab,Value) ->
   set(Tab, 'default-element-type-namespace', Value).

get_in_scope_variables(Tab) ->
   get(Tab, 'in-scope-variables').
set_in_scope_variables(Tab,Value) ->
   set(Tab, 'in-scope-variables', Value).
add_in_scope_variable(Tab,Value) ->
   Old = case get_in_scope_variables(Tab) of
            undefined ->
               [];
            N ->
               N
         end,
   New = [Value|Old],
   set_in_scope_variables(Tab,New).

get_context_item_static_type(Tab) ->
   get(Tab, 'context-item-static-type').
set_context_item_static_type(Tab,Value) ->
   set(Tab, 'context-item-static-type', Value).

get_ordering_mode(#{'ordering-mode' := O}) ->
   O.
set_ordering_mode(Ctx,O) ->
   Ctx#{'ordering-mode' := O}.

get_default_function_namespace(parser) ->
   case erlang:get('default-function-namespace') of
      undefined ->
         <<"http://www.w3.org/2005/xpath-functions">>;
      N ->
         N
   end;
get_default_function_namespace(Tab) ->
   case get(Tab, 'default-function-namespace') of
      undefined ->
         <<"http://www.w3.org/2005/xpath-functions">>;
      N ->
         N
   end.

set_default_function_namespace(parser,Value) ->
   erlang:put('default-function-namespace', Value);
set_default_function_namespace(Tab,Value) ->
   set(Tab, 'default-function-namespace', Value).

get_in_scope_schema_types(Tab) ->
   get(Tab, 'in-scope-schema-types').
set_in_scope_schema_types(Tab,Value) ->
   set(Tab, 'in-scope-schema-types', Value).
get_in_scope_element_declarations(Tab) ->
   get(Tab, 'in-scope-element-declarations').
set_in_scope_element_declarations(Tab,Value) ->
   set(Tab, 'in-scope-element-declarations', Value).
get_in_scope_attribute_declarations(Tab) ->
   get(Tab, 'in-scope-attribute-declarations').
set_in_scope_attribute_declarations(Tab,Value) ->
   set(Tab, 'in-scope-attribute-declarations', Value).

get_statically_known_functions(Tab) ->
   get(Tab, 'statically-known-functions').
set_statically_known_functions(Tab,Value) ->
   set(Tab, 'statically-known-functions', Value).
add_statically_known_function(Tab,Value) ->
   Old = case get_statically_known_functions(Tab) of
            undefined ->
               [];
            N ->
               N
         end,
   New = [Value|Old],
   set_statically_known_functions(Tab,New).

get_default_language(Tab) ->
   get(Tab, 'default-language').
set_default_language(Tab,Value) ->
   set(Tab, 'default-language', Value).

get_default_collation(#{'default-collation' := Coll}) -> Coll.
set_default_collation(Ctx, Value) ->
   All = ?MODULE:get_statically_known_collations(Ctx),
   case lists:any(fun(U) -> U == Value end, All) of
      true ->
         Ctx#{'default-collation' => Value};
      _ ->
         xqerl_error:error('XQST0038')
   end.
get_construction_mode(Tab) ->
   get(Tab, 'construction-mode').
set_construction_mode(Tab,Value) ->
   set(Tab, 'construction-mode', Value).

get_default_order_for_empty_sequences(Tab) ->
   get(Tab, 'default-order-for-empty-sequences').
set_default_order_for_empty_sequences(Tab,Value) ->
   set(Tab, 'default-order-for-empty-sequences', Value).

get_boundary_space_policy(Tab) ->
   get(Tab, 'boundary-space-policy').
set_boundary_space_policy(Tab,Value) ->
   set(Tab, 'boundary-space-policy', Value).

get_copy_namespaces_mode(Tab) ->
   get(Tab, 'copy-namespaces-mode').
set_copy_namespaces_mode(Tab,Value) ->
   set(Tab, 'copy-namespaces-mode', Value).

get_static_base_uri(Tab) ->
   get(Tab, 'base-uri').
set_static_base_uri(Tab, Value) ->
   set(Tab, 'base-uri', Value).

get_statically_known_decimal_formats(Tab) ->
   get(Tab,'statically-known-decimal-formats').
set_statically_known_decimal_formats(Tab, Value) ->
   set(Tab,'statically-known-decimal-formats', Value).
add_statically_known_decimal_format(Tab, Value) ->
   Old = case get_statically_known_decimal_formats(Tab) of
            undefined ->
               [];
            N ->
               N
         end,
   New = [Value|Old],
   set_statically_known_decimal_formats(Tab, New).
get_statically_known_decimal_format(Tab,Name) ->
   All = get_statically_known_decimal_formats(Tab),
   proplists:get_value(Name, All).

get_statically_known_documents(Tab) ->
   get(Tab, 'statically-known-documents').
set_statically_known_documents(Tab,Value) ->
   set(Tab, 'statically-known-documents', Value).

get_statically_known_collections(Tab) ->
   get(Tab, 'statically-known-collections').
set_statically_known_collections(Tab,Value) ->
   set(Tab, 'statically-known-collections', Value).

get_statically_known_default_collection_type(Tab) ->
   get(Tab, 'statically-known-default-collection-type').
set_statically_known_default_collection_type(Tab,Value) ->
   set(Tab, 'statically-known-default-collection-type', Value).

get_xpath_1_compatibility_mode(Tab) ->
   get(Tab, 'xpath-1-compatibility-mode').
set_xpath_1_compatibility_mode(Tab,Value) ->
   set(Tab, 'xpath-1-compatibility-mode', Value).

get_statically_known_collations(#{'statically-known-collations' := Val}) ->
   Val.
set_statically_known_collations(Ctx, Value) ->
   Ctx#{'statically-known-collations' => Value}.

%%% STATIC SERIALIZATION CONTEXT
get_serial_allow_duplicate_names(Tab) ->
   get(Tab, 'serial-allow-duplicate-names').
set_serial_allow_duplicate_names(Tab,Value) ->
   set(Tab, 'serial-allow-duplicate-names', Value).
get_serial_byte_order_mark(Tab) ->
   get(Tab, 'serial-byte-order-mark').
set_serial_byte_order_mark(Tab,Value) ->
   set(Tab, 'serial-byte-order-mark', Value).
get_serial_cdata_section_elements(Tab) ->
   get(Tab, 'serial-cdata-section-elements').
set_serial_cdata_section_elements(Tab,Value) ->
   set(Tab, 'serial-cdata-section-elements', Value).
get_serial_doctype_public(Tab) ->
   get(Tab, 'serial-doctype-public').
set_serial_doctype_public(Tab,Value) ->
   set(Tab, 'serial-doctype-public', Value).
get_serial_doctype_system(Tab) ->
   get(Tab, 'serial-doctype-system').
set_serial_doctype_system(Tab,Value) ->
   set(Tab, 'serial-doctype-system', Value).
get_serial_encoding(Tab) ->
   get(Tab, 'serial-encoding').
set_serial_encoding(Tab,Value) ->
   set(Tab, 'serial-encoding', Value).
get_serial_escape_uri_attributes(Tab) ->
   get(Tab, 'serial-escape-uri-attributes').
set_serial_escape_uri_attributes(Tab,Value) ->
   set(Tab, 'serial-escape-uri-attributes', Value).
get_serial_html_version(Tab) ->
   get(Tab, 'serial-html-version').
set_serial_html_version(Tab,Value) ->
   set(Tab, 'serial-html-version', Value).
get_serial_include_content_type(Tab) ->
   get(Tab, 'serial-include-content-type').
set_serial_include_content_type(Tab,Value) ->
   set(Tab, 'serial-include-content-type', Value).
get_serial_indent(Tab) ->
   get(Tab, 'serial-indent').
set_serial_indent(Tab,Value) ->
   set(Tab, 'serial-indent', Value).
get_serial_item_separator(Tab) ->
   get(Tab, 'serial-item-separator').
set_serial_item_separator(Tab,Value) ->
   set(Tab, 'serial-item-separator', Value).
get_serial_json_node_output_method(Tab) ->
   get(Tab, 'serial-json-node-output-method').
set_serial_json_node_output_method(Tab,Value) ->
   set(Tab, 'serial-json-node-output-method', Value).
get_serial_media_type(Tab) ->
   get(Tab, 'serial-media-type').
set_serial_media_type(Tab,Value) ->
   set(Tab, 'serial-media-type', Value).
get_serial_method(Tab) ->
   get(Tab, 'serial-method').
set_serial_method(Tab,Value) ->
   set(Tab, 'serial-method', Value).
get_serial_normalization_form(Tab) ->
   get(Tab, 'serial-normalization-form').
set_serial_normalization_form(Tab,Value) ->
   set(Tab, 'serial-normalization-form', Value).
get_serial_omit_xml_declaration(Tab) ->
   get(Tab, 'serial-omit-xml-declaration').
set_serial_omit_xml_declaration(Tab,Value) ->
   set(Tab, 'serial-omit-xml-declaration', Value).
get_serial_standalone(Tab) ->
   get(Tab, 'serial-standalone').
set_serial_standalone(Tab,Value) ->
   set(Tab, 'serial-standalone', Value).
get_serial_suppress_indentation(Tab) ->
   get(Tab, 'serial-suppress-indentation').
set_serial_suppress_indentation(Tab,Value) ->
   set(Tab, 'serial-suppress-indentation', Value).
get_serial_undeclare_prefixes(Tab) ->
   get(Tab, 'serial-undeclare-prefixes').
set_serial_undeclare_prefixes(Tab,Value) ->
   set(Tab, 'serial-undeclare-prefixes', Value).
get_serial_use_character_maps(Tab) ->
   get(Tab, 'serial-use-character-maps').
set_serial_use_character_maps(Tab,Value) ->
   set(Tab, 'serial-use-character-maps', Value).
get_serial_version(Tab) ->
   get(Tab, 'serial-version').
set_serial_version(Tab,Value) ->
   set(Tab, 'serial-version', Value).

%%% DYNAMIC CONTEXT

%% inscope namespaces
add_inscope_namespace(#{namespaces := Old} = Ctx,Prefix,Namespace) ->
   New = [#xqNamespace{namespace = Namespace, prefix = Prefix} | Old],
   Ctx#{namespaces := New}.

get_inscope_namespace(#{namespaces := List},Prefix) ->
   proplists:get_value(Prefix, List, undefined).

% returns context item
get_context_item(#{'context-item' := {Ci, _}}) ->
   Ci;
get_context_item(Ctx) when is_map(Ctx) ->
   ?err('XPDY0002');

% KLUDGE
get_context_item(Ctx) when is_list(Ctx) ->
   Ctx;
get_context_item(Ctx) ->
   Ctx.

count_context_items(Items) ->
   length(Items).

   

% returns new Ctx map
set_empty_context_item(#{'context-item' := _} = Ctx) ->
   Ctx1 = maps:remove('context-item', Ctx),
   maps:remove('context-item-count', Ctx1);
set_empty_context_item(Ctx) ->
  Ctx.
   
% returns new Ctx map
set_context_item(Ctx, [], _Pos, _Size) ->
   set_empty_context_item(Ctx);

set_context_item(#{'context-item' := _} = Ctx, CI, Pos, Size) 
   when is_integer(Size) ->
   Ctx#{'context-item' := {CI, Pos},
        'context-item-count' => Size};
set_context_item(Ctx, #{nk := _} = CI, Pos, Size) 
   when is_integer(Size) ->
   BU = xqldb_mem_nodes:base_uri(CI),
   Ctx#{'context-item' => {CI, Pos},
        'base-uri' => #xqAtomicValue{type = 'xs:anyURI', value = BU},
        'context-item-count' => Size};
set_context_item(Ctx, CI, Pos, Size) 
   when is_integer(Size) ->
   Ctx#{'context-item' => {CI, Pos},
        'context-item-count' => Size};
set_context_item(#{'context-item' := _,
                   'context-item-count' := _} = Ctx, CI, Pos, Size) ->
   Ctx#{'context-item' := {CI, Pos},
        'context-item-count' := Size};
set_context_item(Ctx, CI, Pos, Size) ->
   Ctx#{'context-item' => {CI, Pos},
        'context-item-count' => Size}.

set_context_item(#{'context-item' := _} = Ctx, CI, Pos) ->
   Ctx#{'context-item' := {CI, Pos}};
set_context_item(Ctx, CI, Pos) ->
   Ctx#{'context-item' => {CI, Pos}}.

set_context_item(Ctx, []) ->
   maps:remove('context-item',Ctx);
set_context_item(Ctx, CI) ->
   maps:put('context-item', {CI, 1}, Ctx).

get_context_position(#{'context-item' := {_,P}}) ->
   P;
get_context_position(_) ->
   ?err('XPDY0002').

get_context_size(#{'context-item-count' := P}) ->
   P;
get_context_size(_) ->
   ?err('XPDY0002').

set_context_size(Ctx, Value) ->
   maps:put('context-item-count', Value, Ctx).

%% get_available_documents(Tab) ->
%%    get(Tab, 'available-documents').
%% get_available_document(Id) ->
%%    {ok,Doc} = xqerl_ds:lookup_doc(Id),
%%    Doc.

%% add_available_document(Id, Tree) ->
%%    xqerl_ds:insert_doc(Id, Tree).

%% get_available_text_resources() ->
%%    erlang:get('available-text-resources').
%% get_available_text_resource(Uri) ->
%%    All = get_available_text_resources(),
%%    gb_trees:get(Uri, All).
%% add_available_text_resource(Uri, Tree) ->
%%    xqerl_ds:insert_res(Uri, Tree).

%% get_variable_values() ->
%%    erlang:get('variable-values').
%% 
%% get_variable_value(Key, Default) ->
%%    Tree = case erlang:get('variable-values') of
%%             undefined ->
%%                gb_trees:empty();
%%             T ->
%%                T
%%          end,
%%    case gb_trees:lookup(Key, Tree) of
%%       none ->
%%          add_variable_value(Key, Default),
%%          Default;
%%       {value,GotIt} ->
%%          GotIt
%%    end.

%% set_variable_values(Value) ->
%%    erlang:put('variable-values', Value).
%% 
%% add_variable_value(Key, Value) ->
%%    All = case erlang:get('variable-values') of
%%             undefined ->
%%                gb_trees:empty();
%%             T ->
%%                T
%%          end,
%%    New = gb_trees:enter(Key, Value, All),
%%    erlang:put('variable-values', New).

get_named_functions(Tab) ->
   get(Tab, 'named-functions').
set_named_functions(Tab, Value) ->
   set(Tab, 'named-functions', Value).

get_current_datetime(Tab) ->
   get(Tab, 'current-datetime').
set_current_datetime(Tab, Value) ->
   set(Tab, 'current-datetime', Value).

get_implicit_timezone() ->
   case erlang:get('implicit-timezone') of
      undefined ->
         RawCdt = erlang:timestamp(),
         Val = get_local_timezone(RawCdt),
         _ = erlang:put('implicit-timezone', Val),
         Val;
      Val ->
         Val
   end.
get_implicit_timezone(Tab) ->
   get(Tab, 'implicit-timezone').
set_implicit_timezone(Tab, #off_set{} = Value) ->
   set(Tab, 'implicit-timezone', Value).

get_available_collections(Tab) ->
   get(Tab, 'available-collections').
get_available_collection(Tab, Name) ->
   All = get_available_collections(Tab),
   {value,V} = gb_trees:lookup(Name, All),
   V.
set_available_collections(Tab, Value) ->
   set(Tab, 'available-collections', Value).
add_available_collection(Tab, Name, Value) ->
   Old = case get_available_collections(Tab) of 
            undefined ->
               gb_trees:empty();
            T ->
               T
         end,
   New = gb_trees:enter(Name, Value, Old),
   set_available_collections(Tab, New).

get_default_collection(Tab) ->
   get(Tab, 'default-collection').
set_default_collection(Tab, Value) ->
   set(Tab, 'default-collection', Value).

get_available_uri_collections(Tab) ->
   get(Tab, 'available-uri-collections').
set_available_uri_collections(Tab, Value) ->
   set(Tab, 'available-uri-collections', Value).

get_default_uri_collection(Tab) ->
   get(Tab, 'default-uri-collection').
set_default_uri_collection(Tab, Value) ->
   set(Tab, 'default-uri-collection', Value).

static_namespaces() ->
   [ {<<>>,     'no-namespace'},
     {<<"local">>, <<"http://www.w3.org/2005/xquery-local-functions">>},
     {<<"fn">>,    <<"http://www.w3.org/2005/xpath-functions">>},
     {<<"xsi">>,   <<"http://www.w3.org/2001/XMLSchema-instance">>},
     {<<"xml">>,   <<"http://www.w3.org/XML/1998/namespace">>},
     {<<"xs">>,    <<"http://www.w3.org/2001/XMLSchema">>},
     {<<"math">>,  <<"http://www.w3.org/2005/xpath-functions/math">>},
     {<<"map">>,   <<"http://www.w3.org/2005/xpath-functions/map">>},
     {<<"array">>, <<"http://www.w3.org/2005/xpath-functions/array">>},
     {<<"output">>,<<"http://www.w3.org/2010/xslt-xquery-serialization">>},
     {<<"file">>,  <<"http://expath.org/ns/file">>},
     {<<"bin">>,   <<"http://expath.org/ns/binary">>},
     {<<"http">>,  <<"http://expath.org/ns/http-client">>},
     {<<"rest">>,  <<"http://exquery.org/ns/restxq">>},
     {<<"random">>,<<"http://xqerl.org/modules/random">>},
     {<<"basex">>, <<"http://xqerl.org/modules/client/BaseX">>},
     {<<"csv">>,   <<"http://xqerl.org/modules/csv">>},
     {<<"err">>,   <<"http://www.w3.org/2005/xqt-errors">>}].

static_collations() ->
   [<<"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind">>, % testing
    <<"http://www.w3.org/2005/xpath-functions/collation/codepoint">>,
    <<"http://www.w3.org/2013/collation/UCA">>,
    <<"http://www.w3.org/2005/xpath-functions/collation/"
      "html-ascii-case-insensitive">>].


get_local_timezone(RawCdt) ->
   Loc = calendar:now_to_local_time(RawCdt),
   UTC = calendar:now_to_universal_time(RawCdt),
   
   LocSec = calendar:datetime_to_gregorian_seconds(Loc),
   UtcSec = calendar:datetime_to_gregorian_seconds(UTC),
   Dif = LocSec - UtcSec,
   {{_,_,_},{H,M,_}} = calendar:gregorian_seconds_to_datetime(abs(Dif)),
   if Dif >= 0 ->
         #off_set{sign = '+', hour = H, min = M};
      true ->
         #off_set{sign = '-', hour = H, min = M}
   end.


add_default_static_values(parser) ->
   set_default_element_type_namespace(parser, 'no-namespace'),
   StaticNsList = static_namespaces(),
   StaticNsDict = dict:from_list(StaticNsList),
   set_statically_known_namespaces(parser, StaticNsDict),
   parser.

add_default_static_values(Tab, RawCdt) ->
   set_static_base_uri(Tab, <<"http://xqerl.org">>),
   Tz = get_local_timezone(RawCdt),
   set_implicit_timezone(Tab, Tz),
   set_default_element_type_namespace(Tab, 'no-namespace'),
   
   StaticNsList = static_namespaces(),
   StaticNsDict = dict:from_list(StaticNsList),
   set_statically_known_namespaces(Tab, StaticNsDict),
   set_default_language(Tab, #xqAtomicValue{type = 'xs:language', 
                                            value = <<"en">>}),
   
   %% non-augmentable values from dynamic context can be put here as well.
   set_current_datetime(Tab, xqerl_datetime:get_from_now_local(RawCdt, Tz)),
   Tab.

%TODO annotations (private)
get_module_exports(Imports) when is_list(Imports) ->
   Acc = xqerl_code_server:get_static_signatures(),
   lists:foldl(fun({Ns,_Px}, {FunsAcc, VarsAcc, PropsAcc}) ->
                     {ok,{Name,Funs,Vars}} = xqerl_code_server:get_signatures(Ns),
                     try
                        Name:static_props()
                     of 
                        Props ->
                           %?dbg("{Funs,Vars}",{Funs,Vars}),
                           FunsAcc1 = Funs ++ FunsAcc, 
                           VarsAcc1 = Vars ++ VarsAcc,
                           PropsAcc1 = Props ++ PropsAcc,
                           {FunsAcc1,VarsAcc1,PropsAcc1}
                     catch 
                        _:_ ->
                           xqerl_error:error('XQST0059', 
                                           <<"Unknown ModNamespace">>, 
                                           Ns)
                     end
               end, Acc, Imports);
get_module_exports({Ns,_Px}) ->
   {ok,{Name,Funs,Vars}} = xqerl_code_server:get_signatures(Ns),
   try
      Name:static_props()
   of 
      Props ->
         {Funs,Vars,Props}
   catch 
      _:_ ->
         xqerl_error:error('XQST0059', 
                         <<"Unknown ModNamespace">>, 
                         Ns)
   end.

import_functions(Functions,Tab) ->
   lists:foreach(fun(F) ->
                       add_statically_known_function(Tab, F)
                 end, Functions).

import_variables(Variables,Tab) ->
   lists:foreach(fun(V) ->
                       add_in_scope_variable(Tab,V)
                 end, Variables).


set(Tab,Key,Value) ->
   ets:insert(Tab, {Key,Value}).

get(#{tab := Tab},Key) ->
   get(Tab,Key);
get(Tab,Key) ->
   case ets:lookup(Tab, Key) of
      [{Key,Value}] ->
         Value;
      [] ->
         undefined
   end.

get_db(DbPid) ->
   DbKey = {'$_db', DbPid},
   case xqerl_lib:lget(DbKey) of
      undefined ->
         DB1 = xqldb_db:database(DbPid),
         Names = xqldb_name_table:id_map(DB1),
         New = DB1#{names     := Names,
                    uri       => xqldb_path_table:uri(DB1)},
         xqerl_lib:lput(DbKey, New);
      EDb ->
         EDb
   end.
   


