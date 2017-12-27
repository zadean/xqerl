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

%% @doc The Static and Dynamic context values.
%% NOTE: This module needs cleaning up!! also a conceptual overworking.
%%       The static and dynamic phases need to be clearly separated. (who sets what? when and where?)

-module(xqerl_context).

-export([merge/2]).

-export([init/1]).
-export([init/0]).
-export([static_namespaces/0]).
-export([static_collations/0]).

-export([add_inscope_namespace/3]).
-export([get_inscope_namespace/2]).

-export([get_module_exports/1]).
-export([import_functions/1]).
-export([import_variables/1]).

%-export([remove_key/1]).
-export([count_context_items/1]).
-export([get_statically_known_namespaces/0]).
-export([set_statically_known_namespaces/1]).

-export([add_statically_known_namespace/2]).
-export([get_statically_known_namespace_from_prefix/1]).
-export([get_statically_known_prefix_from_namespace/1]).

-export([get_default_element_type_namespace/0]).
-export([set_default_element_type_namespace/1]).

-export([get_in_scope_variables/0]).
-export([set_in_scope_variables/1]).
-export([add_in_scope_variable/1]).

-export([get_context_item_static_type/0]).
-export([set_context_item_static_type/1]).
-export([get_ordering_mode/0]).
-export([set_ordering_mode/1]).
-export([get_default_function_namespace/0]).
-export([set_default_function_namespace/1]).
-export([get_in_scope_schema_types/0]).
-export([set_in_scope_schema_types/1]).
-export([get_in_scope_element_declarations/0]).
-export([set_in_scope_element_declarations/1]).
-export([get_in_scope_attribute_declarations/0]).
-export([set_in_scope_attribute_declarations/1]).

-export([get_statically_known_functions/0]).
-export([set_statically_known_functions/1]).
-export([add_statically_known_function/1]).

-export([get_default_language/0]).
-export([set_default_language/1]).

-export([get_default_collation/1]).
-export([set_default_collation/2]).

-export([get_construction_mode/0]).
-export([set_construction_mode/1]).
-export([get_default_order_for_empty_sequences/0]).
-export([set_default_order_for_empty_sequences/1]).
-export([get_boundary_space_policy/0]).
-export([set_boundary_space_policy/1]).
-export([get_copy_namespaces_mode/0]).
-export([set_copy_namespaces_mode/1]).
-export([get_static_base_uri/0]).
-export([set_static_base_uri/1]).

-export([get_statically_known_decimal_formats/0]).
-export([set_statically_known_decimal_formats/1]).
-export([add_statically_known_decimal_format/1]).
-export([get_statically_known_decimal_format/1]).

-export([get_statically_known_documents/0]).
-export([set_statically_known_documents/1]).
-export([get_statically_known_collections/0]).
-export([set_statically_known_collections/1]).
-export([get_statically_known_default_collection_type/0]).
-export([set_statically_known_default_collection_type/1]).
-export([get_statically_known_collations/1]).
-export([set_statically_known_collations/2]).
-export([get_xpath_1_compatibility_mode/0]).
-export([set_xpath_1_compatibility_mode/1]).
-export([get_serial_allow_duplicate_names/0]).
-export([set_serial_allow_duplicate_names/1]).
-export([get_serial_byte_order_mark/0]).
-export([set_serial_byte_order_mark/1]).
-export([get_serial_cdata_section_elements/0]).
-export([set_serial_cdata_section_elements/1]).
-export([get_serial_doctype_public/0]).
-export([set_serial_doctype_public/1]).
-export([get_serial_doctype_system/0]).
-export([set_serial_doctype_system/1]).
-export([get_serial_encoding/0]).
-export([set_serial_encoding/1]).
-export([get_serial_escape_uri_attributes/0]).
-export([set_serial_escape_uri_attributes/1]).
-export([get_serial_html_version/0]).
-export([set_serial_html_version/1]).
-export([get_serial_include_content_type/0]).
-export([set_serial_include_content_type/1]).
-export([get_serial_indent/0]).
-export([set_serial_indent/1]).
-export([get_serial_item_separator/0]).
-export([set_serial_item_separator/1]).
-export([get_serial_json_node_output_method/0]).
-export([set_serial_json_node_output_method/1]).
-export([get_serial_media_type/0]).
-export([set_serial_media_type/1]).
-export([get_serial_method/0]).
-export([set_serial_method/1]).
-export([get_serial_normalization_form/0]).
-export([set_serial_normalization_form/1]).
-export([get_serial_omit_xml_declaration/0]).
-export([set_serial_omit_xml_declaration/1]).
-export([get_serial_standalone/0]).
-export([set_serial_standalone/1]).
-export([get_serial_suppress_indentation/0]).
-export([set_serial_suppress_indentation/1]).
-export([get_serial_undeclare_prefixes/0]).
-export([set_serial_undeclare_prefixes/1]).
-export([get_serial_use_character_maps/0]).
-export([set_serial_use_character_maps/1]).
-export([get_serial_version/0]).
-export([set_serial_version/1]).
-export([get_context_item/1]).
%% -export([get_context_item/2]).
-export([set_empty_context_item/1]).
-export([set_context_item/2]).
-export([set_context_item/3]).
-export([set_context_item/4]).
-export([get_context_position/1]).
-export([set_context_position/2]).
-export([get_context_size/1]).
-export([set_context_size/2]).
-export([get_variable_values/0]).
-export([get_variable_value/2]).
-export([set_variable_values/1]).
-export([add_variable_value/2]).
%% -export([get_named_functions/0]).
%% -export([set_named_functions/1]).
-export([get_current_datetime/0]).
-export([set_current_datetime/1]).
-export([get_implicit_timezone/0]).
-export([set_implicit_timezone/1]).
-export([get_available_documents/0]).
-export([get_available_document/1]).
-export([add_available_document/2]).
-export([get_available_text_resources/0]).
-export([get_available_text_resource/1]).
-export([add_available_text_resource/2]).
-export([get_available_collections/0]).
-export([get_available_collection/1]).
-export([set_available_collections/1]).
-export([add_available_collection/2]).
-export([get_default_collection/0]).
-export([set_default_collection/1]).
-export([get_available_uri_collections/0]).
-export([set_available_uri_collections/1]).
-export([get_default_uri_collection/0]).
-export([set_default_uri_collection/1]).

%-define(STORAGE, ets).
%-define(STORAGE, maps).


-include("xqerl.hrl").

merge(#{namespaces := INs} = InitialContext, OuterContext) ->
   % ns is {xqNamespace, Uri, Prefix}
   Merged = maps:merge(InitialContext, OuterContext),
   NsToMerge = maps:get(namespaces, OuterContext, []),
   NewNs = lists:foldl(fun({Prefix,Namespace},Acc) ->
                             lists:keystore(Prefix, 3, Acc, #xqNamespace{namespace = Namespace, prefix = Prefix})
                       end, INs, NsToMerge),
   Merged#{namespaces => NewNs}.


init() -> init(self()).

init(Pid) ->
   Docs = erlang:get('available-documents'),
   Txts = erlang:get('available-text-resources'),
   erlang:erase(),
   erlang:put('available-documents', Docs),
   erlang:put('available-text-resources', Txts),
   
   Now = erlang:timestamp(),
   Key = {Pid, Now},
%%    case ets:info(?MODULE,name) of
%%       undefined ->
%%          ets:new(?MODULE, [named_table]),
%%          add_default_static_values(Key);
%%       _ ->
         add_default_static_values(Key).

%%    end.






%%% STATIC CONTEXT
get_statically_known_namespaces() ->
   erlang:get('statically-known-namespaces').
set_statically_known_namespaces(Value) ->
   erlang:put('statically-known-namespaces', Value).
% block static prefixes
%add_statically_known_namespace(_Namespace,"local") -> ok;
%add_statically_known_namespace(_Namespace,"fn") -> ok;
%add_statically_known_namespace(_Namespace,"xsi") -> ok;
add_statically_known_namespace("http://www.w3.org/XML/1998/namespace","xml") -> ok;
%add_statically_known_namespace(_Namespace,"xml") -> xqerl_error:error('XQST0070');
%add_statically_known_namespace("http://www.w3.org/XML/1998/namespace",_) -> xqerl_error:error('XQST0070');
add_statically_known_namespace("http://www.w3.org/2000/xmlns/","xmlns") -> ok;
%add_statically_known_namespace(_Namespace,"xmlns") -> xqerl_error:error('XQST0070');
%add_statically_known_namespace("http://www.w3.org/2000/xmlns/",_) -> xqerl_error:error('XQST0070');
%add_statically_known_namespace(_Namespace,"xs") -> ok;
%add_statically_known_namespace(_Namespace,"math") -> ok;
%add_statically_known_namespace(_Namespace,"map") -> ok;
%add_statically_known_namespace(_Namespace,"array") -> ok;
%add_statically_known_namespace(_Namespace,"err") -> ok;
add_statically_known_namespace(Namespace,Prefix) ->
   %?dbg("add_statically_known_namespace",Prefix),
   Old = case erlang:get('statically-known-namespaces') of
            undefined ->
               dict:from_list(static_namespaces());
            N ->
               N
         end,
%%    OldVal = case dict:find(Prefix, Old) of
%%                error ->
%%                   undefined;
%%                {ok, Val} ->
%%                   Val
%%             end,
   New = dict:store(Prefix, Namespace, Old),
   set_statically_known_namespaces(New),
   ok.
   %OldVal.
get_statically_known_namespace_from_prefix(Prefix) ->
   Dict = erlang:get('statically-known-namespaces'),
   case dict:find(Prefix, Dict) of
      error ->
         ?dbg("get_statically_known_namespace_from_prefix",Prefix),
         xqerl_error:error('XPST0081');
      {ok, V} ->
         V
   end.

get_statically_known_prefix_from_namespace(Namespace) ->
   Dict = erlang:get('statically-known-namespaces'),
   List = dict:to_list(Dict),
   case lists:keyfind(Namespace, 2, List) of
      false ->
         ?dbg("get_statically_known_prefix_from_namespace",Namespace),
         xqerl_error:error('XPST0081');
      {V,_} ->
         V
   end.


get_default_element_type_namespace() ->
   erlang:get('default-element-type-namespace').

set_default_element_type_namespace([Value]) when is_atom(Value)->
   erlang:put('default-element-type-namespace', Value);
set_default_element_type_namespace(Value) ->
   erlang:put('default-element-type-namespace', Value).

get_in_scope_variables() ->
   case erlang:get('in-scope-variables') of
      undefined ->
         [];
      List ->
         List
   end.
set_in_scope_variables(Value) ->
   erlang:put('in-scope-variables', Value).
add_in_scope_variable(Value) ->
   Old = case erlang:get('in-scope-variables') of
            undefined ->
               [];
            N ->
               N
         end,
   New = [Value|Old],
   set_in_scope_variables(New).

get_context_item_static_type() ->
   erlang:get('context-item-static-type').
set_context_item_static_type(Value) ->
   erlang:put('context-item-static-type', Value).
get_ordering_mode() ->
   erlang:get('ordering-mode').
set_ordering_mode(Value) ->
   erlang:put('ordering-mode', Value).

get_default_function_namespace() ->
   case erlang:get('default-function-namespace') of
      undefined ->
         "http://www.w3.org/2005/xpath-functions";
      N ->
         N
   end.
set_default_function_namespace(Value) ->
   erlang:put('default-function-namespace', Value).
%%    xqerl_error:error('XQST0066').

get_in_scope_schema_types() ->
   erlang:get('in-scope-schema-types').
set_in_scope_schema_types(Value) ->
   erlang:put('in-scope-schema-types', Value).
get_in_scope_element_declarations() ->
   erlang:get('in-scope-element-declarations').
set_in_scope_element_declarations(Value) ->
   erlang:put('in-scope-element-declarations', Value).
get_in_scope_attribute_declarations() ->
   erlang:get('in-scope-attribute-declarations').
set_in_scope_attribute_declarations(Value) ->
   erlang:put('in-scope-attribute-declarations', Value).

get_statically_known_functions() ->
   erlang:get('statically-known-functions').
set_statically_known_functions(Value) ->
   erlang:put('statically-known-functions', Value).
add_statically_known_function(Value) ->
   Old = case erlang:get('statically-known-functions') of
            undefined ->
               [];
            N ->
               N
         end,
   New = [Value|Old],
   set_statically_known_functions(New).

get_default_language() ->
   erlang:get('default-language').
set_default_language(Value) ->
   erlang:put('default-language', Value).
get_default_collation(Ctx) ->
   maps:get('default-collation', Ctx).
set_default_collation(Ctx, Value) ->
   All = ?MODULE:get_statically_known_collations(Ctx),
   case lists:any(fun(U) -> U == Value end, All) of
      true ->
         Ctx#{'default-collation' => Value};
      _ ->
         xqerl_error:error('XQST0038')
   end.
get_construction_mode() ->
   erlang:get('construction-mode').
set_construction_mode(Value) ->
   erlang:put('construction-mode', Value).
get_default_order_for_empty_sequences() ->
   erlang:get('default-order-for-empty-sequences').
set_default_order_for_empty_sequences(Value) ->
   erlang:put('default-order-for-empty-sequences', Value).
get_boundary_space_policy() ->
   erlang:get('boundary-space-policy').
set_boundary_space_policy(Value) ->
   erlang:put('boundary-space-policy', Value).
get_copy_namespaces_mode() ->
   erlang:get('copy-namespaces-mode').
set_copy_namespaces_mode(Value) ->
   erlang:put('copy-namespaces-mode', Value).

get_static_base_uri() ->
   %"http://xqerl.org".
   %code:lib_dir(xqerl, lib).
   erlang:get('static-base-uri').
set_static_base_uri(Value) ->
   erlang:put('static-base-uri', Value).

get_statically_known_decimal_formats() ->
   erlang:get('statically-known-decimal-formats').
set_statically_known_decimal_formats(Value) ->
   erlang:put('statically-known-decimal-formats', Value).
add_statically_known_decimal_format(Value) ->
   Old = case erlang:get('statically-known-decimal-formats') of
            undefined ->
               [];
            N ->
               N
         end,
   New = [Value|Old],
   set_statically_known_decimal_formats(New).
get_statically_known_decimal_format(Name) ->
   All = erlang:get('statically-known-decimal-formats'),
   proplists:get_value(Name, All).

get_statically_known_documents() ->
   erlang:get('statically-known-documents').
set_statically_known_documents(Value) ->
   erlang:put('statically-known-documents', Value).
get_statically_known_collections() ->
   erlang:get('statically-known-collections').
set_statically_known_collections(Value) ->
   erlang:put('statically-known-collections', Value).
get_statically_known_default_collection_type() ->
   erlang:get('statically-known-default-collection-type').
set_statically_known_default_collection_type(Value) ->
   erlang:put('statically-known-default-collection-type', Value).
get_xpath_1_compatibility_mode() ->
   erlang:get('xpath-1-compatibility-mode').
set_xpath_1_compatibility_mode(Value) ->
   erlang:put('xpath-1-compatibility-mode', Value).

get_statically_known_collations(Ctx) ->
   maps:get('statically-known-collations', Ctx).
set_statically_known_collations(Ctx, Value) ->
   Ctx#{'statically-known-collations' => Value}.

%%% STATIC SERIALIZATION CONTEXT
get_serial_allow_duplicate_names() ->
   erlang:get('serial-allow-duplicate-names').
set_serial_allow_duplicate_names(Value) ->
   erlang:put('serial-allow-duplicate-names', Value).
get_serial_byte_order_mark() ->
   erlang:get('serial-byte-order-mark').
set_serial_byte_order_mark(Value) ->
   erlang:put('serial-byte-order-mark', Value).
get_serial_cdata_section_elements() ->
   erlang:get('serial-cdata-section-elements').
set_serial_cdata_section_elements(Value) ->
   erlang:put('serial-cdata-section-elements', Value).
get_serial_doctype_public() ->
   erlang:get('serial-doctype-public').
set_serial_doctype_public(Value) ->
   erlang:put('serial-doctype-public', Value).
get_serial_doctype_system() ->
   erlang:get('serial-doctype-system').
set_serial_doctype_system(Value) ->
   erlang:put('serial-doctype-system', Value).
get_serial_encoding() ->
   erlang:get('serial-encoding').
set_serial_encoding(Value) ->
   erlang:put('serial-encoding', Value).
get_serial_escape_uri_attributes() ->
   erlang:get('serial-escape-uri-attributes').
set_serial_escape_uri_attributes(Value) ->
   erlang:put('serial-escape-uri-attributes', Value).
get_serial_html_version() ->
   erlang:get('serial-html-version').
set_serial_html_version(Value) ->
   erlang:put('serial-html-version', Value).
get_serial_include_content_type() ->
   erlang:get('serial-include-content-type').
set_serial_include_content_type(Value) ->
   erlang:put('serial-include-content-type', Value).
get_serial_indent() ->
   erlang:get('serial-indent').
set_serial_indent(Value) ->
   erlang:put('serial-indent', Value).
get_serial_item_separator() ->
   erlang:get('serial-item-separator').
set_serial_item_separator(Value) ->
   erlang:put('serial-item-separator', Value).
get_serial_json_node_output_method() ->
   erlang:get('serial-json-node-output-method').
set_serial_json_node_output_method(Value) ->
   erlang:put('serial-json-node-output-method', Value).
get_serial_media_type() ->
   erlang:get('serial-media-type').
set_serial_media_type(Value) ->
   erlang:put('serial-media-type', Value).
get_serial_method() ->
   erlang:get('serial-method').
set_serial_method(Value) ->
   erlang:put('serial-method', Value).
get_serial_normalization_form() ->
   erlang:get('serial-normalization-form').
set_serial_normalization_form(Value) ->
   erlang:put('serial-normalization-form', Value).
get_serial_omit_xml_declaration() ->
   erlang:get('serial-omit-xml-declaration').
set_serial_omit_xml_declaration(Value) ->
   erlang:put('serial-omit-xml-declaration', Value).
get_serial_standalone() ->
   erlang:get('serial-standalone').
set_serial_standalone(Value) ->
   erlang:put('serial-standalone', Value).
get_serial_suppress_indentation() ->
   erlang:get('serial-suppress-indentation').
set_serial_suppress_indentation(Value) ->
   erlang:put('serial-suppress-indentation', Value).
get_serial_undeclare_prefixes() ->
   erlang:get('serial-undeclare-prefixes').
set_serial_undeclare_prefixes(Value) ->
   erlang:put('serial-undeclare-prefixes', Value).
get_serial_use_character_maps() ->
   erlang:get('serial-use-character-maps').
set_serial_use_character_maps(Value) ->
   erlang:put('serial-use-character-maps', Value).
get_serial_version() ->
   erlang:get('serial-version').
set_serial_version(Value) ->
   erlang:put('serial-version', Value).

%%% DYNAMIC CONTEXT

%% inscope namespaces
add_inscope_namespace(Ctx,Prefix,Namespace) ->
   maps:put(namespaces, [#xqNamespace{namespace = Namespace, prefix = Prefix}|maps:get(namespaces, Ctx)], Ctx).
get_inscope_namespace(Ctx,Prefix) ->
   List = maps:get(namespaces, Ctx),
   proplists:get_value(Prefix, List,undefined).


% returns context item
get_context_item(Ctx) when is_map(Ctx) ->
   case catch maps:get('context-item', Ctx) of
      {'EXIT',_} -> xqerl_error:error('XPDY0002');
      C ->
         C
   end;
% KLUDGE
get_context_item(Ctx) when is_list(Ctx) ->
   Ctx;
get_context_item(Ctx) ->
   Ctx.

%% merge_context_items([]) -> [];
%% merge_context_items([#xqAtomicValue{} = H|T]) ->
%%    [H|merge_context_items(T)];
%% merge_context_items([#xqNode{frag_id = F}|_] = L) ->
%%    PartFun = fun(#xqNode{frag_id = F2}) ->
%%                    F2 =:= F;
%%                 (_) ->
%%                    false                
%%              end,
%%    {Matched, Rest} = lists:partition(PartFun, L),
%%    lists:usort(Matched ++ merge_context_items(Rest));
%% merge_context_items([H|T]) ->
%%    [H|merge_context_items(T)].

count_context_items(Items) ->
   length(Items).

   

% returns new Ctx map
set_empty_context_item(Ctx) when is_map(Ctx) ->
   Ctx1 = maps:remove('context-item', Ctx),
   Ctx2 = maps:remove('context-position', Ctx1),
   Ctx3 = maps:remove('context-item-count', Ctx2),
   Ctx3;
set_empty_context_item(Ctx) ->
  Ctx.
   
% returns new Ctx map
set_context_item(Ctx, [], _Pos, _Size) ->
   set_empty_context_item(Ctx);
set_context_item(Ctx, CI, Pos, Size) when is_integer(Size) ->
   Ctx#{'context-item' => CI,
        'context-position' => Pos,
        'context-item-count' => #xqAtomicValue{type = 'xs:integer',value = Size}};
set_context_item(Ctx, CI, Pos, Size) ->
   Ctx#{'context-item' => CI,
        'context-position' => Pos,
        'context-item-count' => Size}.

set_context_item(#{'context-item' := _} = Ctx, CI, Pos) ->
   Ctx#{'context-item' := CI,
        'context-position' := Pos};
set_context_item(Ctx, CI, Pos) ->
   Ctx#{'context-item' => CI,
        'context-position' => Pos}.

set_context_item(Ctx, []) ->
   maps:remove('context-item',Ctx);
set_context_item(Ctx, CI) ->
   maps:put('context-item', CI, Ctx).

get_context_position(Ctx) ->
   case catch maps:get('context-position', Ctx) of
      {'EXIT',_} ->
         xqerl_error:error('XPDY0002');
      C ->
         C
   end.
set_context_position(Ctx, Value) ->
   maps:put('context-position', Value, Ctx).

get_context_size(Ctx) ->
   case catch maps:get('context-item-count', Ctx) of
      {'EXIT',_} ->
         xqerl_error:error('XPDY0002');
      C ->
         C
   end.
set_context_size(Ctx, Value) when is_integer(Value)->
   maps:put('context-item-count', #xqAtomicValue{type = 'xs:integer',value = Value}, Ctx);
set_context_size(Ctx, Value) ->
   maps:put('context-item-count', Value, Ctx).

get_available_documents() ->
   erlang:get('available-documents').
get_available_document(Id) ->
   {ok,Doc} = xqerl_ds:lookup_doc(Id),
   Doc.

%%    All = get_available_documents(),
%%    gb_trees:get(Id, All).
add_available_document(Id, Tree) ->
   xqerl_ds:insert_doc(Id, Tree).

%%    NewAll = case get_available_documents() of
%%                undefined ->
%%                   gb_trees:enter(Id, Tree, gb_trees:empty());
%%                All ->
%%                   gb_trees:enter(Id, Tree, All)
%%             end,
%%    erlang:put('available-documents', NewAll).

get_available_text_resources() ->
   erlang:get('available-text-resources').
get_available_text_resource(Uri) ->
   All = get_available_text_resources(),
   gb_trees:get(Uri, All).
add_available_text_resource(Uri, Tree) ->
   xqerl_ds:insert_res(Uri, Tree).
%%    NewAll = case get_available_text_resources() of
%%                undefined ->
%%                   gb_trees:enter(Uri, Tree, gb_trees:empty());
%%                All ->
%%                   gb_trees:enter(Uri, Tree, All)
%%             end,
%%    erlang:put('available-text-resources', NewAll).

get_variable_values() ->
   erlang:get('variable-values').

get_variable_value(Key, Default) ->
   Tree = case erlang:get('variable-values') of
            undefined ->
               gb_trees:empty();
            T ->
               T
         end,
   case gb_trees:lookup(Key, Tree) of
      none ->
         add_variable_value(Key, Default),
         Default;
      {value,GotIt} ->
         GotIt
   end.

set_variable_values(Value) ->
   erlang:put('variable-values', Value).

add_variable_value(Key, Value) ->
   All = case erlang:get('variable-values') of
            undefined ->
               gb_trees:empty();
            T ->
               T
         end,
   New = gb_trees:enter(Key, Value, All),
   erlang:put('variable-values', New).

%% get_named_functions() ->
%%    erlang:get('named-functions').
%% set_named_functions(Value) ->
%%    erlang:put('named-functions', Value).

get_current_datetime() ->
   erlang:get('current-datetime').
set_current_datetime(Value) ->
   erlang:put('current-datetime', Value).
get_implicit_timezone() ->
   erlang:get('implicit-timezone').
set_implicit_timezone(#off_set{} = Value) ->
   erlang:put('implicit-timezone', Value).
get_available_collections() ->
   erlang:get('available-collections').
get_available_collection(Name) ->
   All = erlang:get('available-collections'),
   gb_trees:lookup(Name, All).
set_available_collections(Value) ->
   erlang:put('available-collections', Value).
add_available_collection(Name, Value) ->
   Old = case get_available_collections() of 
            undefined ->
               gb_trees:empty();
            T ->
               T
         end,
   New = gb_trees:enter(Name, Value, Old),
   set_available_collections(New).
get_default_collection() ->
   erlang:get('default-collection').
set_default_collection(Value) ->
   erlang:put('default-collection', Value).
get_available_uri_collections() ->
   erlang:get('available-uri-collections').
set_available_uri_collections(Value) ->
   erlang:put('available-uri-collections', Value).
get_default_uri_collection() ->
   erlang:get('default-uri-collection').
set_default_uri_collection(Value) ->
   erlang:put('default-uri-collection', Value).

static_namespaces() ->
   [ {[],'no-namespace'},
     {"local","http://www.w3.org/2005/xquery-local-functions"},
     {"fn","http://www.w3.org/2005/xpath-functions"},
     {"xsi","http://www.w3.org/2001/XMLSchema-instance"},
     {"xml","http://www.w3.org/XML/1998/namespace"},
     {"xs","http://www.w3.org/2001/XMLSchema"},
     {"math","http://www.w3.org/2005/xpath-functions/math"},
     {"map","http://www.w3.org/2005/xpath-functions/map"},
     {"array","http://www.w3.org/2005/xpath-functions/array"},
     {"err","http://www.w3.org/2005/xqt-errors"}].

static_collations() ->
   ["http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind", % testing
    "http://www.w3.org/2005/xpath-functions/collation/codepoint",
    "http://www.w3.org/2013/collation/UCA",
    "http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive"].


%% remove_key(Key) ->
%%    catch ets:match_delete(?MODULE, {{Key,'_'},'_'}).

get_local_timezone(RawCdt) ->
   Loc = calendar:now_to_local_time(RawCdt),
   UTC = calendar:now_to_universal_time(RawCdt),
   {D,{H,M,_}} = calendar:time_difference(UTC, Loc),
   if D == 0 ->
         #off_set{sign = '+', hour = H, min = M};
      true ->
         #off_set{sign = '-', hour = 24 - H, min = M}
   end.


add_default_static_values({_, RawCdt} = Key) ->
   %{ok, Home} = init:get_argument(home),
   set_static_base_uri("http://xqerl.org"),
   %set_static_base_uri(lists:flatten(Home)),
%%    set_ordering_mode('ordered'),
   set_implicit_timezone(get_local_timezone(RawCdt)),
   set_default_element_type_namespace('no-namespace'),
   
   StaticNsList = static_namespaces(),
   StaticNsDict = dict:from_list(StaticNsList),
   set_statically_known_namespaces(StaticNsDict),
   set_default_language(#xqAtomicValue{type = 'xs:language', value = "en"}),
   
   %% non-augmentable values from dynamic context can be put here as well.
   %set_current_datetime(xqerl_datetime:get_from_now(RawCdt)),
   set_current_datetime(xqerl_datetime:get_from_now_local(RawCdt)),
   Key.

%TODO annotations (private)
get_module_exports(Imports) ->
   Acc = xqerl_module:get_static_signatures(),
   lists:foldl(fun({Ns,_Px}, {FunsAcc, VarsAcc}) ->
                     {atomic,{Funs,Vars}} = xqerl_module:get_signatures(Ns),
                     %?dbg("{Funs,Vars}",{Funs,Vars}),
                     FunsAcc1 = Funs ++ FunsAcc, 
                     VarsAcc1 = Vars ++ VarsAcc,
                     {FunsAcc1,VarsAcc1}
               end, Acc, Imports).

import_functions(Functions) ->
   lists:foreach(fun(F) ->
                       xqerl_context:add_statically_known_function(F)
                 end, Functions).

import_variables(Variables) ->
   lists:foreach(fun(V) ->
                       xqerl_context:add_in_scope_variable(V)
                 end, Variables).

