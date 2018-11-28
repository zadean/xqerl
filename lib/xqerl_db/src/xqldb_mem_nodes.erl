%% ====================================================================
%% This module is for building in-memory XML nodes from the DB, XQuery or file.
%% ====================================================================
-module(xqldb_mem_nodes).

-compile({no_auto_import,[element/2]}).

-include("xqerl_db.hrl").

%% ====================================================================
%% API functions
%% ====================================================================

-export([serialize/1,
         id/2,
         idref/2,
         innermost/1,
         outermost/1,
         lang/1]).
         
-export([parse_file/1,
         parse_list/2,
         parse_binary/2,
         build_db_node/2]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%          Constructors             %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
-export([document/3,
         fragment/3,
         element/3, element/4,
         attribute/6,
         processing_instruction/3, processing_instruction/4,
         comment/2,
         text/2,
         namespace/1]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Modifiers               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
-export([add_children/2,
         add_self_to_children/1,
         add_attribute/2,
         add_namespace/2,
         lookup_node/2]).

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Accessors               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% These could be more generic and do all node types, DB and mem. 
%% Do not want to know where the node came from, just how to get more data. 
-export([base_uri/1,
         document_uri/1,
         node_identity/1,
         is_id/1,
         is_idrefs/1,
         namespace_nodes/1,
         nilled/1,
         type_name/1,
         typed_value/1,
         node_kind/1,
         node_name/1,
         parent/1,
         children/1,
         children_p/1, % adds parent
         attributes/1,
         string_value/1]).


%% -type state()::#{pos      => non_neg_integer(),
%%                  parent   => [non_neg_integer()],
%%                  uri      => binary(),
%%                  db       => string(),
%%                  node_stk => list(#{_ := _}),
%%                  chld_stk => list(#{_ := _}),
%%                  nsp_on   => list({_,_}),
%%                  nsp_off  => list({_,_,_})}.

-define(u2b(S), unicode:characters_to_binary(S)).

% construct from file
parse_file(<<"file://",File/binary>>) -> parse_file(File);
parse_file(File) ->
   State = default_state(unicode:characters_to_binary(File)),
   {ok,Tree,_} = 
      xmerl_sax_parser:file(File,[{continuation_fun, 
                                   fun default_continuation_cb/1},
                                  {event_fun, fun event/3},
                                  {event_state, State}]),
   Tree.

parse_binary(Bin, {Cwd, BaseUri}) ->
   State = default_state(unicode:characters_to_binary(BaseUri)),
   {ok,Tree,_} = 
      xmerl_sax_parser:stream(Bin,[{continuation_fun, 
                                    fun default_continuation_cb/1},
                                   {current_location, Cwd},
                                   {event_fun, fun event/3},
                                   {event_state, State}]),
   case Tree of
      #{du := _} ->
         Tree#{du := []};
      _ ->
         Tree
   end.

-spec parse_list(_,_) -> xq_types:xml_node() | [xq_types:xml_node()].
parse_list(BaseUri, List) when is_list(List) ->
   eventfold(List, default_state(BaseUri)).

-spec eventfold(_,_) -> xq_types:xml_node() | [xq_types:xml_node()].
eventfold([Hd|Tail], State) ->
   eventfold(Tail, event(Hd, 0, State));
eventfold([], Node) -> Node.

% construct from DB node
build_db_node(DB, Pos) ->
   {NodeBin,P2R} = xqldb_node_table:node(?NODE_TABLE_P(DB), Pos),
   ParentPos = case P2R of
                  [] -> [];
                  [H|_] ->
                     H
               end,
   build_db_node_1(NodeBin, ParentPos, Pos, DB).

%% at = attributes
%% bu = base-uri (list of all xml:base atts to document)
%% ch = children
%% du = document-uri
%% id = node-identity (unique ID in document)
%% ii = is-id
%% ir = is-idrefs
%% ns = namespace-nodes (in-scope namespaces)
%% nd = nilled
%% nk = node-kind
%% nn = node-name
%% pt = parent
%% sv = string-value
%% tn = type-name
%% tv = typed-value

%% up = unparsed-entity-public-id (only XSLT)
%% us = unparsed-entity-system-id (only XSLT)

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%          Constructors             %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
document(Id,DocUri,BaseUri) ->
   % children and string value come later
   #{nk => document,
     id => Id,
     du => DocUri,
     bu => BaseUri}.

fragment(Id,DocUri,BaseUri) ->
   % children and string value come later
   #{nk => fragment,
     id => Id,
     du => DocUri,
     bu => BaseUri}.

element(Id,NodeName,TypeName) ->
   % parent,children,attributes(base-uri),namespace-nodes, and string value come later
   #{nk => element,
     id => Id,
     ns => #{},
     tn => TypeName,
     nn => NodeName}.
element(Id,NodeName,BaseUri,TypeName) ->
   % parent,children,attributes,namespace-nodes, and string value come later
   #{nk => element,
     id => Id,
     ns => #{},
     tn => TypeName,
     nn => NodeName,
     bu => BaseUri}.

attribute(Id,NodeName,Value,IsId,IsIdRef,TypeName) ->
   % parent, base-uri comes later
   #{nk => attribute,
     id => Id,
     nn => NodeName,
     tn => TypeName,
     sv => Value,
     ii => IsId,
     ir => IsIdRef}.
   
processing_instruction(Id,NodeName,Value) ->
   % parent
   #{nk => 'processing-instruction',
     id => Id,
     nn => NodeName,
     sv => Value}.
processing_instruction(Id,NodeName,Value,BaseUri) ->
   % parent
   #{nk => 'processing-instruction',
     id => Id,
     nn => NodeName,
     sv => Value,
     bu => BaseUri}.

comment(Id,Value) ->
   % parent, base-uri comes later
   #{nk => comment,
     id => Id,
     sv => Value}.

text(Id,Value) ->
   % parent, base-uri comes later
   #{nk => text,
     id => Id,
     sv => Value}.

namespace(NodeName) ->
   % parent, base-uri comes later
   #{nk => namespace,
     id => make_ref(), % simply something unique
     nn => NodeName}.

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Modifiers               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
add_children(#{nk := element} = Parent,Children) ->
   Parent#{ch => Children};
add_children(#{nk := document} = Parent,Children) ->
   Parent#{ch => Children}.

add_attribute(#{nk := element,
                at := Ats} = E,
              #{nk := attribute} = At) ->
   E#{at := [At|Ats]};
add_attribute(#{nk := element} = E,
              #{nk := attribute} = At) ->
   E#{at => [At]}.

% namespace must be {Uri,Prefix}
add_namespace(#{nk := element,
                ns := Nss} = E, {Ns,Px}) ->
   E#{ns := Nss#{Px => Ns}};
add_namespace(#{nk := element} = E, {Ns,Px}) ->
   E#{ns => #{Px => Ns}}.

set_namespaces(#{nk := element} = E, Nss) ->
   E#{ns => Nss}.

set_parent(#{nk := _} = E, Par) ->
   E#{pt => Par}.


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%%           Accessors               %%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
attributes(#{nk := element,
             at := _} = Elem) -> 
   #{at := At} = add_self_to_attributes(Elem),   
   At;
attributes(_) -> [].

base_uri(#{id := {DbUri,Pos}}) when is_binary(DbUri) ->
   DB = get_db_from_uri(DbUri),
   case xqldb_name_table:lookup(?NAME_TABLE_P(DB), {<<"base">>,<<"xml">>}) of
      error ->
         [U] = xqldb_node_table:base_uri(?NODE_TABLE_P(DB), Pos),
         Rel = xqldb_string_table:lookup(?TEXT_TABLE_P(DB), U),
         xqldb_uri:join(DbUri, Rel);
      XmlBase ->
         [U|Us] = xqldb_node_table:base_uri(?NODE_TABLE_P(DB), Pos, XmlBase),
         Rel = xqldb_string_table:lookup(?TEXT_TABLE_P(DB), U),
         Fold = fun(I, Base) ->
                      L = xqldb_string_table:lookup(?ATT_TABLE_P(DB), I),
                      xqldb_lib:join_uris(Base, L)
                end,
         lists:foldl(Fold, xqldb_uri:join(DbUri, Rel), Us)
   end;
base_uri(#{bu := B}) -> B;
base_uri(#{nk := Nk} = N) when Nk == text;
                               Nk == attribute;
                               Nk == comment;
                               Nk == 'processing-instruction' -> 
   base_uri(parent(N));
base_uri(_) -> [].

children(DUMMY) -> children_p(DUMMY).
%% ;
%% children(#{ch := Ch}) ->
%%    Ch;
%% children(_) -> [].

children_p(#{nk := element} = E) ->
   #{ch := Ch} = add_self_to_children(E),
   Ch;
children_p(#{nk := document} = D) ->
   #{ch := Ch} = add_self_to_children(D),
   [C || C <- Ch];
children_p(_) -> [].

document_uri(#{nk := document,
               du := Du}) -> Du;
document_uri(_) -> [].

node_identity(#{id := Id}) -> Id.

is_id(#{nk := element}) -> false;
is_id(#{nk := attribute,
        ii := Ii}) -> Ii;
is_id(_) -> [].

is_idrefs(#{nk := element}) -> false;
is_idrefs(#{nk := attribute,
            ir := Ir}) -> Ir;
is_idrefs(_) -> [].

namespace_nodes(#{nk := element,
                  ns := Ns}) -> 
   maps:to_list(Ns);
namespace_nodes(_) -> [].

nilled(#{nk := element}) -> false;
nilled(_) -> [].

node_kind(#{nk := Nk}) -> Nk.

node_name(#{nk := Nk,
            nn := Nn}) 
   when Nk =:= element;
        Nk =:= attribute;
        Nk =:= namespace;
        Nk =:= 'processing-instruction' -> Nn;
node_name(_) -> [].

parent(#{pt := #{nk := _} = Pt}) -> 
   Pt;
parent(#{pt := {DbUri,Pos}}) ->
   DB = get_db_from_uri(DbUri),
   build_db_node(DB, Pos);
parent(_) -> [].

string_value(#{sv := Sv}) -> Sv;
string_value(#{ch := _} = N) -> 
   Tx = [T || #{nk := Nk} = T <- children(N),
              Nk == text orelse Nk == element],
   build_string_value(Tx);
string_value(#{nk := namespace,
               nn := {U,_,_}}) -> U.




type_name(#{nk := element,
            tn := Tn}) -> Tn;
type_name(#{nk := attribute,
            tn := Tn}) -> Tn;
type_name(#{nk := text}) -> 'xs:untypedAtomic';
type_name(_) -> [].

% returns fun arity 1 (double) -> numeric value, else string
typed_value(Node) ->
   S = string_value(Node),
   fun(double) ->
         xqerl_numeric:double(S);
      (_) ->
         S
   end.

id(DocumentNode, Vals) ->
   Eq = fun(A,_,_) ->
              lists:member(string_value(A), Vals)
        end,
   Pred = fun(E,_,_) ->
                N = xqldb_xpath:attribute_attribute(
                     E, {{<<"http://www.w3.org/XML/1998/namespace">>,
                          <<"id">>,any}, [Eq]}),
                T = xqldb_xpath:attribute_attribute(E, {{any,any,'xs:ID'}, 
                                                        [Eq]}),
                N =/= [] orelse T =/= []
          end,
   Elems = xqldb_xpath:descendant_element(DocumentNode, {{any,any,any},[Pred]}),
   xqldb_xpath:document_order(Elems).
   
idref(DocumentNode, Vals) ->
   Eq = fun(A,_,_) ->
              F = fun(V) ->
                        lists:member(V, Vals)
                  end,
              lists:any(F, string:split(string_value(A)," ",all))              
        end,
   Pred = fun(E,_,_) ->
                T = xqldb_xpath:self_attribute(E, {{any,any,'xs:IDREF'}, 
                                                        [Eq]}),
                T =/= []
          end,
   Elems = xqldb_xpath:descendant_element(DocumentNode, {{any,any,any},[]}),
   Atts = [A || E <- Elems,
                A <- xqldb_xpath:attribute_node(E,{[Pred]})],
   xqldb_xpath:document_order(Atts).
   
%% 13.8 fn:innermost
innermost(Nodes) ->
   %%    $nodes except $nodes/ancestor::node()
   S = map_from_node_list(Nodes),
   AncFun = fun(N, A) ->
                  map_from_node_list(xqldb_xpath:ancestor_node(N, {[]}), A)
            end,
   Anc = lists:foldl(AncFun, #{}, Nodes),
   Outer = maps:fold(fun(K, _, A) when is_map_key(K, Anc) ->
                           A;
                        (_, V, A) ->
                           [V|A]                        
                     end, [], S),
   xqldb_xpath:document_order(Outer).

%% 13.9 fn:outermost
outermost(Nodes) ->
   %%    $nodes[not(ancestor::node() intersect $nodes)]/.
   S = map_from_node_list(Nodes),
   AncFun = fun(N, A) ->
                  map_from_node_list(xqldb_xpath:descendant_node(N, {[]}), A)
            end,
   Anc = lists:foldl(AncFun, #{}, Nodes),
   Outer = maps:fold(fun(K, _, A) when is_map_key(K, Anc) ->
                           A;
                        (_, V, A) ->
                           [V|A]                        
                     end, [], S),
   xqldb_xpath:document_order(Outer).

lang(Node) ->
   Langs = 
     [L ||
      A <- xqldb_xpath:ancestor_or_self_node(Node, {[]}),
      L <- xqldb_xpath:attribute_attribute(
                   A, {{<<"http://www.w3.org/XML/1998/namespace">>,
                        <<"lang">>,any},[]})],
   case lists:reverse(Langs) of
      [H|_] ->
         string_value(H);
      _ ->
         []
   end.

serialize(Node) ->
   serialize(Node, binary).


%% ====================================================================
%% Internal functions
%% ====================================================================

map_from_node_list(Nodes) when is_list(Nodes) ->
   F = fun (#{id := Id} = E, Map) -> 
              Map#{Id => E};
            (_, _) ->
               throw({error, non_node})          
       end,
   lists:foldl(F, #{}, Nodes).

map_from_node_list(Nodes, Map) when is_list(Nodes), is_map(Map) ->
   F = fun (#{id := Id} = E, Map1) -> 
              Map1#{Id => E}
       end,
   lists:foldl(F, Map, Nodes).

default_continuation_cb(IoDevice) ->
   case file:read(IoDevice, 1 bsl 16) of
      eof ->
         {<<>>, IoDevice};
      {ok, FileBin} ->
         {FileBin, IoDevice}
   end.

default_state(Uri) ->
   #{pos      => 0,
     doc_ref  => make_ref(),
     parent   => [0],
     names    => #{},
     uri      => Uri,
     node_stk => [],
     chld_stk => [[],[]],
     has_ns   => false,
     nsps     => [],
     nsp_off  => [],
     nsp_on   => []
    }.


%% SAX Events - File => in-memory document node
%% -spec event(Event::any(),Location::any(),State::state()) -> 
%%          xq_types:xml_document() | state().
-spec event(_,_,_) -> #{'ch':=_, 'nk':='document' | 'element', _=>_} |
                      [#{'ch':=_, 'nk':='document' | 'element', _=>_}].
        
%% startDocument
event(startDocument, _L, #{uri := _Uri, % came from a constructor
                           base_uri := BaseUri,
                           doc_ref := Ref} = State) ->
   %Nd = document({Ref,0}, Uri, BaseUri),
   Nd = document({Ref,0}, [], BaseUri),
   State1 = maps:remove(base_uri, State),
   State1#{pos := 1,
           parent := [{0,Nd}]};
event(startDocument, _L, #{uri := Uri,
                           doc_ref := Ref} = State) ->
   Nd = document({Ref,0}, Uri, Uri),
   State#{pos := 1,
          parent := [{0,Nd}]};
event(startFragment, _L, #{uri := Uri,
                           doc_ref := Ref} = State) ->
   Nd = document({Ref,0}, Uri, Uri),
   State#{pos := 1,
          base_uri => Uri,
          parent := [{0,Nd}]};
event(endDocument, _L, #{parent := [{0,Nd}],
                         chld_stk := [Chld,_]} = _State) ->
   add_children(Nd, lists:reverse(Chld));
event(endFragment, _L, #{parent := [{0,_}],
                         chld_stk := [Chld,_]} = _State) ->
   lists:reverse(Chld);
event({startPrefixMapping, PrefixS, UriS}, _, #{nsp_on := On,
                                                nsps := Nsps} = State) ->
   Prefix = ?u2b(PrefixS),
   Uri = ?u2b(UriS),
   N = {Uri,Prefix},
   State#{nsp_on := [N|On], has_ns := true, nsps := [N|Nsps]};
event({endPrefixMapping, PrefixS}, _, #{nsp_on := On} = State) ->
   Prefix = ?u2b(PrefixS),
   On1 = pop_uri(On,Prefix),
   State#{nsp_on := On1};

event({startElement, UriS, LocalNameS, {PrefixS,_}, Attributes}, _, 
      #{pos := Pos,
        doc_ref := Ref,
        parent := Ps,
        chld_stk := NodeStk,
        has_ns := HasNs,
        nsp_on := NspOn,
        nsps := Nsps} = State) ->
   Uri = ?u2b(UriS),
   Prefix = ?u2b(PrefixS),
   ok = case [ok || {UriX,PrefixX} <- NspOn, 
                    Uri == UriX,
                    Prefix == PrefixX] of
           [] when Prefix /= <<>> ->
              throw({error, unknown_namespace});
           _ ->
              ok
        end,           
   NodeName = {Uri, Prefix, ?u2b(LocalNameS)},
   %% 
   {Atts,State1} = att_events(Attributes,[],State#{pos := Pos + 1}),
   Elem = if is_map_key(base_uri, State1) ->
                element({Ref,Pos}, NodeName, maps:get(base_uri, State1), 'xs:untyped');
             true ->
                element({Ref,Pos}, NodeName, 'xs:untyped')
          end,
   Elem1 = lists:foldl(fun(A,Acc) -> add_attribute(Acc,A) end, Elem, Atts),
   Elem2 = if HasNs ->
                 lists:foldl(fun(A,Acc) -> add_namespace(Acc,A) end, Elem1, Nsps);
              true ->
                 Elem1
           end,
   State2 = if is_map_key(base_uri, State1) ->
                  maps:remove(base_uri, State1);
               true ->
                  State1
            end,
   State2#{parent := [{Pos,Elem2}|Ps],
           chld_stk := [[],NodeStk],
           nsps := [],
           has_ns := false};
   
event({endElement, _Uri, _LocalName, {_PrefixS,_}}, _, 
      #{parent := [{_Self,Elem}|Ps],
        chld_stk := [Chldn,[Pc,NodeStk]]} = State) ->
   Elem1 = add_children(Elem, lists:reverse(Chldn)),
   State#{parent := Ps,
          chld_stk := [[Elem1|Pc],NodeStk]};

event({characters, String}, _, #{pos := Pos,
                                 doc_ref := Ref,
                                 chld_stk := [Pc,NodeStk]} = State) -> 
   Value = ?u2b(String),
   Node = text({Ref,Pos},Value), 
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};
% could ignore with a setting
%% event({ignorableWhitespace, _}, _, State) -> State;
event({ignorableWhitespace, String}, _L, State) ->
   event({characters, String}, _L, State);
event({processingInstruction, Target, Data}, _, 
      #{pos := Pos,
        doc_ref := Ref,
        chld_stk := [Pc,NodeStk]} = State) -> 
   Value = ?u2b(Data),
   NodeName = {<<>>, <<>>, ?u2b(Target)},
   Node = processing_instruction({Ref,Pos},NodeName,Value),
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};
event({comment, String}, _, #{pos := Pos,
                              doc_ref := Ref,
                              chld_stk := [Pc,NodeStk]} = State) -> 
   Value = ?u2b(String),
   Node = comment({Ref,Pos},Value), 
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};
event({baseUri, String}, _, State) -> 
   Value = ?u2b(String),
   State#{base_uri => Value};
event({attribute, {UriS, PrefixS, AttributeNameS, ValueS}}, _, 
      #{pos := Pos,
        chld_stk := [Pc,NodeStk],
        doc_ref := Ref} = State) ->
   Value = ?u2b(ValueS),
   NodeName = {?u2b(UriS), ?u2b(PrefixS), ?u2b(AttributeNameS)},
   Node = attribute({Ref,Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
   State#{pos := Pos + 1,
          chld_stk := [[Node|Pc],NodeStk]};
event({namespace, PrefixS, UriS}, _, 
      #{chld_stk := [Pc,NodeStk]} = State) ->
   Node = namespace({UriS, PrefixS, <<>>}),
   State#{chld_stk := [[Node|Pc],NodeStk]};

event(Event,_,State) -> 
   ?dbg("UNKNOWN EVENT", Event),
   State.

att_events([{UriS, Xml, Base, ValueS}|T], Acc, 
           #{pos := Pos,
             doc_ref := Ref} = State) 
   when Xml == <<"xml">> andalso Base == <<"base">>;
        Xml == "xml" andalso Base == "base" ->
   Value = ?u2b(ValueS),
   NodeName = {?u2b(UriS), <<"xml">>, <<"base">>},
   NewBaseUri = 
     if is_map_key(base_uri, State) ->
           case catch xqldb_lib:join_uris(maps:get(base_uri, State), Value) of
              {error,_} ->
                 % invalid URI joins are empty
                 <<>>;
               B ->
                  B
           end;
        true -> 
           Value
     end,
   Att = attribute({Ref,Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
   att_events(T, [Att|Acc], State#{pos := Pos + 1, base_uri => NewBaseUri});
att_events([{UriS, PrefixS, AttributeNameS, ValueS}|T], Acc, 
           #{pos := Pos,
             doc_ref := Ref} = State) ->
   Value = ?u2b(ValueS),
   NodeName = {?u2b(UriS), ?u2b(PrefixS), ?u2b(AttributeNameS)},
   Att = attribute({Ref,Pos}, NodeName, Value, false, false, 'xs:untypedAtomic'),
   att_events(T, [Att|Acc], State#{pos := Pos + 1});
att_events([],Acc,State) ->
   {Acc,State}.

%% 
%% startCDATA
%% endCDATA
%% {startDTD, Name, PublicId, SystemId}
%% endDTD
%% {startEntity, SysId}
%% {endEntity, SysId}
%% {elementDecl, Name, Model}
%% {attributeDecl, ElementName, AttributeName, Type, Mode, Value}
%% {internalEntityDecl, Name, Value}
%% {externalEntityDecl, Name, PublicId, SystemId}
%% {unparsedEntityDecl, Name, PublicId, SystemId, Ndata}
%% {notationDecl, Name, PublicId, SystemId}


pop_uri(On,Prefix) ->
   lists:keydelete(Prefix, 2, On).



%% TODO 
%%  


%% 13 Bytes 
%% d - Kind:3|Text:32|____:32|Size:32|____:19|__:10|___:1|____:7 = 67
%% e - Kind:3|____:32|Dist:32|Size:32|Name:19|Ns:10|NsF:1|Atts:7 = 104
%% t - Kind:3|Text:32|Dist:32|____:32|____:19|__:10|___:1|____:7 = 67
%% a - Kind:3|Text:32|____:32|____:32|Name:19|Ns:10|___:1|Dist:7 = 71
%% c - Kind:3|Text:32|Dist:32|____:32|____:19|__:10|___:1|____:7 = 67
%% p - Kind:3|Text:32|Dist:32|____:32|Name:19|__:10|___:1|____:7 = 86

%% build_node_1(Bin, #{pos := Pos,
%%                     db := DB} = State) ->
%%    {[Node],_} = build_node_1(Bin, [], State),
%%    <<Part:?BSZ/binary,_/binary>> = Bin,
%%    case xqldb_nodes:node_kind(Part) of
%%       document -> Node;
%%       _ ->
%%          ParPos = Pos - xqldb_nodes:node_offset(Part),
%%          F = fun() -> 
%%                    build_db_node(DB, ParPos)
%%              end,                  
%%          Node#{pt => term_to_binary(F)}
%%    end.
%%    
%% build_node_1(<<?document:3,UriRef:32/integer,_:69,Rest/binary>>, 
%%              Acc, #{db := DB, pos := Pos} = State) ->
%%    NdId = {?DBNAME(DB), Pos},
%%    Uri = xqldb_lib:join_uris(?DBURI(DB), 
%%                              xqldb_string_table:lookup(?TEXT_TABLE_P(DB), UriRef)),
%%    Doc = document(NdId,Uri,Uri),
%%    {Children, State1} = build_node_1(Rest, Acc, State#{pos := Pos + 1}),
%%    % documents do not have text node children in infoset 
%%    Children1 = [C || #{nk := Nk} = C <- Children, Nk =/= text], 
%%    {[add_children(Doc, Children1)], State1};
%% build_node_1(<<?element:3,_:32/integer,Size:32/integer,NameRef:19/integer,
%%                NsRef:10/integer,NsF:1,AttCnt:7/integer,Rest/binary>>,
%%              Acc,
%%              #{db := DB,
%%                buf := Buf,
%%                pos := Pos,
%%                ns  := Nss,
%%                uri := Uris,
%%                nms := Names} = State) ->
%%    State000 = if is_map_key(nsf, State) -> maps:remove(nsf,State); true -> State end,   
%%    {{Local, Prefix}, Names1} = get_name(NameRef, Names, DB), 
%%    {Ns, Uris1} = get_uri(NsRef, Uris, DB),
%%    NodeName = {Ns,Prefix,Local},
%%    State00 = State000#{uri := Uris1, nms := Names1},
%%    NdId = {?DBNAME(DB), Pos},
%%    BaseUri = fun() -> Buf(Pos) end,                   
%%    Elem0 = element(NdId, NodeName, BaseUri, 'xs:untyped'),
%%    {Elem, State0} =  if NsF == 1 orelse is_map_key(ns, State) ->
%%                             NssL = xqldb_ns_node_table:lookup(?NS_NODE_TABLE_P(DB), Pos),
%%                             NssN = normalize_namespaces(DB, NssL),
%%                             {set_namespaces(Elem0, NssN), State00#{ns := NssN}};
%%                          true ->
%%                             {set_namespaces(Elem0, Nss), State00}
%%                       end,
%%    AttSz = AttCnt * ?BSZ,
%%    {Atts, State2, Rest1} = if AttCnt == 0 ->
%%                                  {[], State0#{pos := Pos + 1}, Rest};
%%                               true ->
%%                                  <<AttBin:AttSz/binary,Rest2/binary>> = Rest, 
%%                                  {Atts0, State1} = build_node_1(AttBin, [], State0#{pos := Pos + 1}),
%%                                  {Atts0, State1, Rest2}
%%                            end,
%%    AttFun = fun(At, E) -> add_attribute(E, At) end,
%%    Elem1 = lists:foldl(AttFun, Elem, Atts),
%%    BodySz = (Size - AttCnt) * ?BSZ,
%%    case Rest1 of
%%       <<>> -> % Last sibling, add self to Acc then return
%%          Elem2 = add_children(Elem1, []),
%%          {lists:reverse([Elem2|Acc]), State2};
%%       <<Body:BodySz/binary>> -> % Last sibling, add self to Acc then return
%%          {Children, State3} = build_node_1(Body, [], State2),
%%          Elem2 = add_children(Elem1, Children),
%%          {lists:reverse([Elem2|Acc]), State3};
%%       <<Rest3/binary>> when BodySz == 0 -> % not last sibling, so add self to Acc then continue
%%          Elem2 = add_children(Elem1, []),
%%          build_node_1(Rest3, [Elem2|Acc], State2);
%%       <<Body:BodySz/binary,Rest3/binary>> -> % not last sibling, so add self to Acc then continue
%%          {Children, State3} = build_node_1(Body, [], State2),
%%          Elem2 = add_children(Elem1, Children),
%%          build_node_1(Rest3, [Elem2|Acc], State3);
%%       _ ->
%%          throw({exit, Size, AttCnt, BodySz, byte_size(Rest1)})
%%    end;
%% build_node_1(<<?text:3,TextRef:32/integer,_Offset:32/integer,0:37,Rest/binary>>, Acc,
%%              #{db := DB,
%%                str := Str,
%%                pos := Pos} = State) ->
%%    NdId = {?DBNAME(DB), Pos},
%%    {Value, Str1} = get_text(TextRef, Str, DB),
%%    State1 = State#{pos := Pos + 1, str := Str1},
%%    Node = text(NdId, Value),
%%    case Rest of
%%       <<>> ->
%%          {lists:reverse([Node|Acc]), State1};
%%       _ ->
%%          build_node_1(Rest, [Node|Acc], State1)
%%    end;
%% build_node_1(<<?proc_inst:3,TextRef:32/integer,_Offset:32/integer,NameRef:19/integer,0:10,0:1,0:7,Rest/binary>>, Acc,
%%              #{db := DB,
%%                str := Str,
%%                nms := Names,
%%                pos := Pos} = State) ->
%%    {{Local, _}, Names1} = get_name(NameRef, Names, DB), 
%%    NodeName = {<<>>,<<>>,Local},
%%    NdId = {?DBNAME(DB), Pos},
%%    {Value, Str1} = get_text(TextRef, Str, DB),
%%    State1 = State#{pos := Pos + 1, str := Str1, nms := Names1},
%%    Node = processing_instruction(NdId, NodeName, Value),
%%    case Rest of
%%       <<>> ->
%%          {lists:reverse([Node|Acc]), State1};
%%       _ ->
%%          build_node_1(Rest, [Node|Acc], State1)
%%    end;
%% build_node_1(<<?comment:3,TextRef:32/integer,_Offset:32/integer,0:37,Rest/binary>>, Acc,
%%              #{db := DB,
%%                str := Str,
%%                pos := Pos} = State) ->
%%    NdId = {?DBNAME(DB), Pos},
%%    {Value, Str1} = get_text(TextRef, Str, DB),
%%    State1 = State#{pos := Pos + 1, str := Str1},
%%    Node = comment(NdId, Value),
%%    case Rest of
%%       <<>> ->
%%          {lists:reverse([Node|Acc]), State1};
%%       _ ->
%%          build_node_1(Rest, [Node|Acc], State1)
%%    end;
%% %% a - Kind:3|Text:32|____:32|____:32|Name:19|Ns:10|___:1|Dist:7 = 71
%% build_node_1(<<?attribute:3,TextRef:32/integer,Type:3/integer,0:29/integer,
%%                NameRef:19/integer,NsRef:10,0:1,_Offset:7,Rest/binary>>, Acc,
%%              #{db := DB,
%%                att := Str,
%%                uri := Uris,
%%                nms := Names,
%%                pos := Pos} = State) ->
%%    {{Local, Prefix}, Names1} = get_name(NameRef, Names, DB), 
%%    {Ns, Uris1} = get_uri(NsRef, Uris, DB), 
%%    NodeName = {Ns,Prefix,Local},
%%    State0 = State#{uri := Uris1, nms := Names1},
%%    NdId = {?DBNAME(DB), Pos},
%%    {Value, Str1} = get_att_text(TextRef, Str, DB),
%%    State1 = State0#{pos := Pos + 1, att := Str1},
%%    Node = case Type of
%%              ?att_str ->
%%                 attribute(NdId, NodeName, Value, false, false, 'xs:untypedAtomic');
%%              ?att_id ->
%%                 attribute(NdId, NodeName, Value, true, false, 'xs:ID');
%%              ?att_idref ->
%%                 attribute(NdId, NodeName, Value, false, true, 'xs:IDREF')
%%           end,
%%    case Rest of
%%       <<>> ->
%%          {[Node|Acc], State1};
%%       _ ->
%%          build_node_1(Rest, [Node|Acc], State1)
%%    end;
%% build_node_1(<<>>, Acc, State) -> 
%%    ?dbg("empty",{Acc,State}),
%%    [].

split_child_bin(<<>>, _) -> [];
split_child_bin(Bin, Pos) ->
   Size = (xqldb_nodes:node_size(Bin) + 1),
   ByteSize = Size * ?BSZ,
   <<Child:ByteSize/binary,Rest/binary>> = Bin,
   [{Pos, Child}|split_child_bin(Rest, Pos + Size)].

%% <<?document:3,UriRef:32/integer,Size:32/integer,0:19/integer,0:10/integer,0:1,0:7/integer>>,
%% <<?element:3,Offset:32/integer,Size:32/integer,NameRef:19/integer,NsRef:10/integer,NsF:1,AttCnt:7/integer>>,
%% <<?text:3,TextRef:32/integer,Offset:32/integer,0:19/integer,0:10,0:1,0:7>>,
%% <<?attribute:3,TextRef:32/integer,0:32/integer,NameRef:19/integer,NsRef:10,0:1,Offset:7>>,
%% <<?comment:3,TextRef:32/integer,Offset:32/integer,0:19/integer,0:10,0:1,0:7>>,
%% <<?proc_inst:3,TextRef:32/integer,Offset:32/integer,NameRef:19/integer,0:10,0:1,0:7>>,
build_db_node_1(<<?document:3,UriRef:32/integer,_:69,Rest/binary>>, [], Pos, DB) ->
   DbUri = ?DBURI(DB),
   NdId = {DbUri, Pos},
   Uri = xqldb_lib:join_uris(
           DbUri,
           xqldb_string_table:lookup(?TEXT_TABLE_P(DB), UriRef)),
   Doc = document(NdId,Uri,Uri),
   Children = split_child_bin(Rest, Pos + 1),
   add_children(Doc, Children);
build_db_node_1(<<?element:3,_:32/integer,_Size:32/integer,NameRef:19/integer,
                  NsRef:10/integer,NsF:1,AttCnt:7/integer,Rest/binary>>, 
                ParentPos, Pos, DB) ->
   DbUri = ?DBURI(DB),
   {Local, Prefix} = get_name(NameRef, DbUri), 
   Ns = get_uri(NsRef, DbUri),
   NodeName = {Ns,Prefix,Local},
   NdId = {DbUri, Pos},
   ParId = {DbUri, ParentPos},
   Elem = element(NdId, NodeName, 'xs:untyped'),
   Elem1 = if NsF == 1 ->
                 NssL = xqldb_ns_node_table:lookup(?NS_NODE_TABLE_P(DB), Pos),
                 NssN = normalize_namespaces(DB, NssL),
                 set_namespaces(Elem, NssN);
              true ->
                 Elem
           end,
   AttSz = AttCnt * ?BSZ,
   {Atts, Rest1} = if AttCnt == 0 ->
                         {[], Rest};
                      true ->
                         <<AttBin:AttSz/binary,Rest2/binary>> = Rest,
                         Atts0 = build_attributes(AttBin, NdId, DB, Pos + 1),
                         {Atts0, Rest2}
                   end,
   AttFun = fun(At, E) -> add_attribute(E, At) end,
   Elem2 = lists:foldl(AttFun, Elem1, Atts),
   Elem3 = set_parent(Elem2, ParId),
   Children = split_child_bin(Rest1, Pos + 1 + AttCnt),
   add_children(Elem3, Children);
build_db_node_1(<<?text:3,TextRef:32/integer,_Offset:32/integer,0:37>>, 
                ParentPos, Pos, DB) ->
   DbUri = ?DBURI(DB),
   NdId = {DbUri, Pos},
   ParId = {DbUri, ParentPos},
   Value = xqldb_string_table:lookup(?TEXT_TABLE_P(DB), TextRef),
   set_parent(text(NdId, Value), ParId);
build_db_node_1(<<?proc_inst:3,TextRef:32/integer,_Offset:32/integer,NameRef:19/integer,0:10,0:1,0:7>>, 
                ParentPos, Pos, DB) ->
   DbUri = ?DBURI(DB),
   NdId = {DbUri, Pos},
   ParId = {DbUri, ParentPos},
   {Local, _} = get_name(NameRef, DbUri), 
   NodeName = {<<>>,<<>>,Local},
   Value = xqldb_string_table:lookup(?TEXT_TABLE_P(DB), TextRef),
   set_parent(processing_instruction(NdId, NodeName, Value), ParId);
build_db_node_1(<<?comment:3,TextRef:32/integer,_Offset:32/integer,0:37>>, 
                ParentPos, Pos, DB) ->
   DbUri = ?DBURI(DB),
   NdId = {DbUri, Pos},
   ParId = {DbUri, ParentPos},
   Value = xqldb_string_table:lookup(?TEXT_TABLE_P(DB), TextRef),
   set_parent(comment(NdId, Value), ParId);
build_db_node_1(<<?attribute:3,TextRef:32/integer,Type:3/integer,0:29/integer,
                  NameRef:19/integer,NsRef:10,0:1,_Offset:7>>, 
                ParentPos, Pos, DB) ->
   DbUri = ?DBURI(DB),
   NdId = {DbUri, Pos},
   ParId = {DbUri, ParentPos},
   {Local, Prefix} = get_name(NameRef, DbUri), 
   Ns = get_uri(NsRef, DbUri),
   NodeName = {Ns,Prefix,Local},
   Value = xqldb_string_table:lookup(?ATT_TABLE_P(DB), TextRef),
   Att = case Type of
            ?att_str ->
               attribute(NdId, NodeName, Value, false, false, 'xs:untypedAtomic');
            ?att_id ->
               attribute(NdId, NodeName, Value, true, false, 'xs:ID');
            ?att_idref ->
               attribute(NdId, NodeName, Value, false, true, 'xs:IDREF')
         end,
   set_parent(Att, ParId).

build_attributes(<<>> ,_,_,_) -> [];
build_attributes(<<Att:?BSZ/binary,Rest/binary>>, {_, Par} = ParId, DB, Pos) ->
   [build_db_node_1(Att, Par, Pos, DB)|build_attributes(Rest, ParId, DB, Pos + 1)].
   
get_db_from_uri(DbUri) ->
   case erlang:get({'$_db_uri', DbUri}) of
      undefined ->
         DB = xqldb_db:database(DbUri),
         erlang:put({'$_db_uri', DbUri}, DB),
         DB;
      DB1 ->
         DB1
   end.

get_name(NameRef, DbUri) ->
   case erlang:get({'$_db_name', DbUri, NameRef}) of
      undefined ->
         DB = get_db_from_uri(DbUri),
         Val = xqldb_name_table:lookup(?NAME_TABLE_P(DB), NameRef),
         erlang:put({'$_db_name', DbUri, NameRef}, Val),
         Val;
      Name ->
         Name
   end.

get_uri(UriRef, DbUri) ->
   case erlang:get({'$_db_uri_lu', DbUri, UriRef}) of
      undefined ->
         DB = get_db_from_uri(DbUri),
         Val = xqldb_namespace_table:lookup(?NMSP_TABLE_P(DB), UriRef),
         erlang:put({'$_db_uri_lu', DbUri, UriRef}, Val),
         Val;
      Name ->
         Name
   end.
%% 
%% get_text(TextRef, TextsMap, DB) ->
%%    case TextsMap of
%%       #{TextRef := Text} ->
%%          {Text, TextsMap};
%%       _ ->
%%          Val = xqldb_string_table:lookup(?TEXT_TABLE_P(DB), TextRef),
%%          {Val, TextsMap#{TextRef => Val}}
%%    end.
%% 
%% get_att_text(AttTextRef, AttTextsMap, DB) ->
%%    case AttTextsMap of
%%       #{AttTextRef := AttText} ->
%%          {AttText, AttTextsMap};
%%       _ ->
%%          Val = xqldb_string_table:lookup(?ATT_TABLE_P(DB), AttTextRef),
%%          {Val, AttTextsMap#{AttTextRef => Val}}
%%    end.

% used once children added to node
build_string_value(Ch) ->
   build_string_value(Ch,<<>>).

build_string_value([H|T],Acc) ->
   Val = case string_value(H) of
            B when is_binary(B) ->
               B;
            F ->
               F()
         end,
   build_string_value(T,<<Acc/binary,Val/binary>>);
build_string_value([],Acc) -> Acc.


add_self_to_children(#{id := {Ref,_},
                       ch := Children,
                       ns := Namespaces,
                       bu := BU} = Obj) when is_reference(Ref) ->
   Obj#{ch := [augment_base_uri(merge_ns(C#{pt => Obj},Namespaces),BU) || 
                 C <- Children]};
add_self_to_children(#{id := {Ref,_},
                       ch := Children,
                       bu := BU} = Obj) when is_reference(Ref) ->
   Obj#{ch := [augment_base_uri(C#{pt => Obj},BU) || C <- Children]};
add_self_to_children(#{id := {Ref,_},
                       ch := Children} = Obj) when is_reference(Ref) ->
   Obj#{ch := [C#{pt => Obj} || C <- Children]};
% DB nodes
add_self_to_children(#{id := {Ref,ParPos},
                       ns := Namespaces,
                       ch := Children} = Obj) when is_binary(Ref) ->
   case erlang:get({'$_db_node_children', Ref, ParPos}) of
      undefined ->
         %?dbg("Building", {Ref,ParPos}),
         DB = get_db_from_uri(Ref),
         Vals = [merge_ns(build_db_node_1(Bin, ParPos, Id, DB),Namespaces) 
                || {Id, Bin} <- Children],
         erlang:put({'$_db_node_children', Ref, ParPos}, Vals),
         Obj#{ch := Vals};
      Vals ->
         Obj#{ch := Vals}
   end;
add_self_to_children(#{id := {Ref,ParPos},
                       nk := Nk,
                       ch := Children} = Obj) when is_binary(Ref) ->
   case erlang:get({'$_db_node_children', Ref, ParPos}) of
      undefined ->
         %?dbg("Building", {Ref,ParPos}),
         DB = get_db_from_uri(Ref),
         Vals0 = [build_db_node_1(Bin, ParPos, Id, DB)
                 || {Id, Bin} <- Children],
         Vals = if Nk == document ->
                      [V || #{nk := Nk1} = V <- Vals0, Nk1 =/= text];
                   true ->
                      Vals0
                end,
         erlang:put({'$_db_node_children', Ref, ParPos}, Vals),
         Obj#{ch := Vals};
      Vals ->
         Obj#{ch := Vals}
   end;

add_self_to_children(Obj) -> Obj.



add_self_to_attributes(#{at := Children,
                         bu := BU} = Obj) ->
   Obj#{at := [C#{pt => Obj,
                  bu => BU} || C <- Children]};
add_self_to_attributes(Obj) -> Obj.





lookup_node(#{id := NodeId} = Node,Id) when NodeId == Id ->
   Node;
lookup_node([#{id := NodeId} = Node|_],Id) when NodeId == Id ->
   Node;
lookup_node(#{id := NodeId,
              ch := Children},Id) when NodeId < Id ->
   lookup_node(Children,Id);
lookup_node([#{id := NodeId, ch := Children},#{id := NextNodeId}|_],Id) 
  when NodeId < Id, NextNodeId > Id ->
   lookup_node(Children,Id);
lookup_node([#{id := NodeId, ch := Children}],Id) 
  when NodeId < Id ->
   lookup_node(Children,Id);
lookup_node([_|T],Id) ->
   lookup_node(T,Id).

merge_ns(#{ns := Nss} = E, Namespaces) ->
   E#{ns := maps:merge(Namespaces, Nss)};
merge_ns(E, Namespaces) -> E#{ns => Namespaces}.

% Base is the parent base-uri
augment_base_uri(#{bu := BU} = N, Base) ->
   NewBase = xqldb_lib:join_uris(Base, BU),
   N#{bu := NewBase};
augment_base_uri(N, Base) ->
   N#{bu => Base}.
 
normalize_namespaces(DB,Nss) ->
   DbUri = ?DBURI(DB),
   maps:from_list([{Px, get_uri(UriRef, DbUri)} || 
                   {Px, UriRef} <- Nss]).


-define(STR_REST(Str,Rest), <<Str,Rest/binary>>).
-define(CP_REST(Cp,Rest), <<Cp/utf8,Rest/binary>>).


serialize(Node, binary) ->
   serialize_to_bin(Node, #{<<>> => <<>>}).

serialize_to_bin(#{nk := document} = Doc, NsInScope) ->
   << <<(serialize_to_bin(C, NsInScope))/binary>> ||
      C <- children(Doc)>>;   
serialize_to_bin(#{nk := 'processing-instruction',
                   nn := {_,_,Ln}} = Node, _) ->
   Tgt = string_value(Node),
   if Tgt == <<>> ->
         <<"<?", Ln/binary, " ?>">>;
      true ->
         <<"<?", Ln/binary, " ", Tgt/binary, "?>">>
   end;
serialize_to_bin(#{nk := comment} = Node, _) ->
   Txt = string_value(Node),
   <<"<!--", Txt/binary, "-->">>;
serialize_to_bin(#{nk := text} = Node, _) ->
   Txt = string_value(Node),
   encode_text(Txt);
serialize_to_bin(#{nk := attribute,
                   nn := NodeName} = Node, _) ->
   Txt = string_value(Node),
   QNm = encode_qname(NodeName),
   AttTxt = encode_att_text(Txt),
   <<" ", QNm/binary, "=\"", AttTxt/binary, "\"">>;

serialize_to_bin(#{nk := element,
                   ch := [],
                   at := At,
                   ns := Ns,
                   nn := NodeName}, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   NsStr = << <<(encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs>>,
   Atts = << <<(serialize_to_bin(A, InScopeNamespaces))/binary>> ||
             A <- At>>,
   <<$<, QNm/binary, NsStr/binary, Atts/binary, "/>">>;
serialize_to_bin(#{nk := element,
                   ch := [],
                   ns := Ns,
                   nn := NodeName}, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   NsStr = << <<(encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs>>,
   <<$<, QNm/binary, NsStr/binary, "/>">>;
serialize_to_bin(#{nk := element,
                   ch := _,
                   at := At,
                   ns := Ns,
                   nn := NodeName} = Node, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   NsStr = << <<(encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs>>,
   Atts = << <<(serialize_to_bin(A, InScopeNamespaces))/binary>> ||
             A <- At>>,
   Chld = << <<(serialize_to_bin(C, Ns))/binary>> ||
             C <- children(Node)>>,
   <<"<", QNm/binary, NsStr/binary, Atts/binary, ">", 
     Chld/binary, "</", QNm/binary, ">">>;
serialize_to_bin(#{nk := element,
                   ch := _,
                   ns := Ns,
                   nn := NodeName} = Node, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   NewNs = get_new_namespaces(Ns, InScopeNamespaces),
   NsStr = << <<(encode_namespace(P, N))/binary>> ||
              {P,N} <- NewNs>>,
   Chld = << <<(serialize_to_bin(C, Ns))/binary>> ||
             C <- children(Node)>>,
   <<$<, QNm/binary, NsStr/binary, ">", Chld/binary, "</", QNm/binary, ">">>;

serialize_to_bin(#{nk := element,
                   ch := [],
                   at := At,
                   nn := NodeName}, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   Atts = << <<(serialize_to_bin(A, InScopeNamespaces))/binary>> ||
             A <- At>>,
   <<$<, QNm/binary, Atts/binary, "/>">>;
serialize_to_bin(#{nk := element,
                   ch := [],
                   nn := NodeName}, _) ->
   QNm = encode_qname(NodeName),
   <<$<, QNm/binary, "/>">>;
serialize_to_bin(#{nk := element,
                   ch := _,
                   at := At,
                   nn := NodeName} = Node, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   Atts = << <<(serialize_to_bin(A, InScopeNamespaces))/binary>> ||
             A <- At>>,
   Chld = << <<(serialize_to_bin(C, InScopeNamespaces))/binary>> ||
             C <- children(Node) >>,
   <<$<, QNm/binary, Atts/binary, ">", 
     Chld/binary, "</", QNm/binary, ">">>;
serialize_to_bin(#{nk := element,
                   ch := _,
                   nn := NodeName} = Node, InScopeNamespaces) ->
   QNm = encode_qname(NodeName),
   Chld = << <<(serialize_to_bin(C, InScopeNamespaces))/binary>> ||
             C <- children(Node) >>,
   <<$<, QNm/binary, ">", Chld/binary, "</", QNm/binary, ">">>.

encode_namespace(<<"xml">>, _) -> <<>>;
encode_namespace(<<>>, Ns) ->
   Ns1 = encode_ns_text(Ns),
   <<" ", "xmlns=\"", Ns1/binary, "\"">>;
encode_namespace(Px, Ns) ->
   Ns1 = encode_ns_text(Ns),
   <<" ", "xmlns:", Px/binary, "=\"", Ns1/binary, "\"">>.
           

get_new_namespaces(Current, Old) ->
   [{K,V} || {K,V} <- maps:to_list(Current),
             maps:find(K, Old) =/= {ok,V}].

encode_text(Bin) -> encode_text(Bin,<<>>).

encode_text(<<>>,Acc) -> Acc;
encode_text(?STR_REST("<",Tail),Acc) ->
   encode_text(Tail,<<Acc/binary,"&lt;">>);
encode_text(?STR_REST(">",Tail),Acc) ->
   encode_text(Tail,<<Acc/binary, "&gt;">>);
encode_text(?STR_REST("&", Tail),Acc) ->
   encode_text(Tail,<<Acc/binary,"&amp;">>);
encode_text(?CP_REST(H, Tail),Acc) when H == 13 ->
   encode_text(Tail,<<Acc/binary,"&#xD;">>);
encode_text(?CP_REST(H, Tail),Acc) when H >= 255 ->
   encode_text(Tail,<<Acc/binary,"&#",(integer_to_binary(H))/binary,";">>);
encode_text(?CP_REST(H, Tail),Acc) ->
   encode_text(Tail,<<Acc/binary,H/utf8>>).

encode_att_text(Bin) -> encode_att_text(Bin,<<>>).

encode_att_text(<<>>,Acc) -> Acc;
encode_att_text(?CP_REST(H, Tail),Acc) 
  when H >= 255;
       H == 9;
       H == 10;
       H == 13 ->
   encode_att_text(Tail,<<Acc/binary,"&#",(integer_to_binary(H))/binary,";">>);
encode_att_text(?STR_REST("\"", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&quot;">>);
encode_att_text(?STR_REST("<", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&lt;">>);
encode_att_text(?STR_REST(">", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&gt;">>);
encode_att_text(?STR_REST("&", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"&amp;">>);
encode_att_text(?STR_REST("{{", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"{{">>);
encode_att_text(?STR_REST("{", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"{{">>);
encode_att_text(?STR_REST("}}", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"}}">>);
encode_att_text(?STR_REST("}", Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,"}}">>);
encode_att_text(?CP_REST(H, Tail),Acc) ->
   encode_att_text(Tail,<<Acc/binary,H/utf8>>).

encode_ns_text(Bin) -> encode_ns_text(Bin,<<>>).

encode_ns_text(<<>>,Acc) -> Acc;
encode_ns_text(?CP_REST(H, Tail),Acc) 
  when H >= 255;
       H == 9;
       H == 10;
       H == 13 ->
   encode_ns_text(Tail,<<Acc/binary,"&#",(integer_to_binary(H))/binary,";">>);
encode_ns_text(?STR_REST("\"", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&quot;">>);
encode_ns_text(?STR_REST("<", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&lt;">>);
encode_ns_text(?STR_REST(">", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&gt;">>);
encode_ns_text(?STR_REST("&", Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,"&amp;">>);
encode_ns_text(?CP_REST(H, Tail),Acc) ->
   encode_ns_text(Tail,<<Acc/binary,H/utf8>>).


encode_qname({_, Px, Ln}) when is_atom(Px);
                               Px == <<>> ->
   Ln;
encode_qname({_, Px, Ln}) ->
   <<Px/binary, ":", Ln/binary>>.

