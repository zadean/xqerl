%% @author Zack
%% @doc @todo Add description to xqldb_xpath.


-module(xqldb_xpath).

-compile({inline,[name_type_match/3,
                  name_match/2]}).

%% ==========================================================================
%% API functions
%% ==========================================================================
-export([document_order/1]).

-export([
   ancestor_document_node/2,
   ancestor_element/2,
   ancestor_node/2,
   ancestor_or_self_attribute/2,
   ancestor_or_self_comment/2,
   ancestor_or_self_document_node/2,
   ancestor_or_self_element/2,
   ancestor_or_self_node/2,
   ancestor_or_self_processing_instruction/2,
   ancestor_or_self_text/2,
   attribute_attribute/2,
   attribute_node/2,
   child_comment/2,
   child_element/2,
   child_node/2,
   child_processing_instruction/2,
   child_text/2,
   descendant_comment/2,
   descendant_element/2,
   descendant_node/2,
   descendant_or_self_attribute/2,
   descendant_or_self_comment/2,
   descendant_or_self_document_node/2,
   descendant_or_self_element/2,
   descendant_or_self_node/2,
   descendant_or_self_processing_instruction/2,
   descendant_or_self_text/2,
   descendant_processing_instruction/2,
   descendant_text/2,
   following_comment/2,
   following_element/2,
   following_node/2,
   following_processing_instruction/2,
   following_sibling_comment/2,
   following_sibling_element/2,
   following_sibling_node/2,
   following_sibling_processing_instruction/2,
   following_sibling_text/2,
   following_text/2,
   parent_document_node/2,
   parent_element/2,
   parent_node/2,
   preceding_comment/2,
   preceding_element/2,
   preceding_node/2,
   preceding_processing_instruction/2,
   preceding_sibling_comment/2,
   preceding_sibling_element/2,
   preceding_sibling_node/2,
   preceding_sibling_processing_instruction/2,
   preceding_sibling_text/2,
   preceding_text/2,
   self_attribute/2,
   self_comment/2,
   self_document_node/2,
   self_element/2,
   self_namespace/2,
   self_node/2,
   self_processing_instruction/2,
   self_text/2
]).

-type attribute() :: #{'nk' := attribute, _ => _}.
-type comment()   :: #{'nk' := comment, _ => _}.
-type document()  :: #{'nk' := document, _ => _}.
-type element()   :: #{'nk' := element, _ => _}.
-type proc_inst() :: #{'nk' := 'processing-instruction', _ => _}.
-type namespace() :: #{'nk' := namespace, _ => _}.
-type text()      :: #{'nk' := text, _ => _}.
-type anynode()   :: attribute() | comment() | document() | 
                     element() | proc_inst() | text().
-type anychild()  :: comment() | element() | proc_inst() | text().
% Name for element/attribute and processing-instruction
-type name() :: {Namespace  :: any | binary(), 
                 LocalName  :: any | binary(),
                 Type       :: atom()} | 
                {LocalName  :: any | binary()} .
-type predicate() :: fun((Node :: anynode(), 
                          Position :: non_neg_integer(), 
                          Last :: non_neg_integer()) -> boolean()).
-type step() :: {Name :: name(), % for named node kinds
                 Predicates :: [predicate()]} |
                {Predicates :: [predicate()]} .

%% NodeName is {Ns,Prefix,Local}

%% Each path function takes one node and returns a list of nodes. 

%% ==========================
%% ancestor - reverse
%% ==========================
-spec ancestor_document_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [document()].
ancestor_document_node(#{nk := Nk} = Node, Step) when Nk =/= document ->
   [S || #{nk := document} = D <- ancestors(Node),
         S <- self_document_node(D, Step)];
ancestor_document_node(#{nk := _}, _) -> [].

-spec ancestor_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
ancestor_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =/= document ->
   As = [D || #{nk := element,
                nn := NodeName,
                tn := TypeName} = D <- ancestors(Node),
              name_type_match(NameAndType, NodeName, TypeName)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_element(#{nk := _}, _) -> [].

-spec ancestor_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [document() | element()].
ancestor_node(#{nk := Nk} = Node, {Preds}) when Nk =/= document ->
   Fil = do_predicates(ancestors(Node), Preds),
   lists:reverse(Fil);
ancestor_node(#{nk := _}, _) -> [].

%% ================================
%% ancestor_or_self - reverse
%% ================================
-spec ancestor_or_self_attribute(attribute(), step()) -> [attribute()].
ancestor_or_self_attribute(#{nk := attribute} = Node, Step) -> 
   self_attribute(Node, Step);
ancestor_or_self_attribute(#{nk := _}, _) -> [].

-spec ancestor_or_self_comment(comment(), step()) -> [comment()].
ancestor_or_self_comment(#{nk := comment} = Node, Step) -> 
   self_comment(Node, Step);
ancestor_or_self_comment(#{nk := _}, _) -> [].

-spec ancestor_or_self_document_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [document()].
ancestor_or_self_document_node(Node, Step) ->
   [S || #{nk := document} = D <- [Node|ancestors(Node)],
         S <- self_document_node(D, Step)].

-spec ancestor_or_self_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
ancestor_or_self_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =/= document -> 
   As = [D || #{nk := element,
                nn := NodeName,
                tn := TypeName} = D <- [Node|ancestors(Node)],
              name_type_match(NameAndType, NodeName, TypeName)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil);
ancestor_or_self_element(#{nk := _}, _) -> [].

-spec ancestor_or_self_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [anynode()].
ancestor_or_self_node(Node, {Preds}) -> 
   As = [Node|ancestors(Node)],
   Fil = do_predicates(As, Preds),
   lists:reverse(Fil).

-spec ancestor_or_self_processing_instruction(proc_inst(), step()) -> [proc_inst()].
ancestor_or_self_processing_instruction(#{nk := 'processing-instruction'} = Node, Step) -> 
   self_processing_instruction(Node, Step);
ancestor_or_self_processing_instruction(#{nk := _}, _) -> [].

-spec ancestor_or_self_text(text(), step()) -> [text()].
ancestor_or_self_text(#{nk := text} = Node, Step) -> 
   self_text(Node, Step);
ancestor_or_self_text(#{nk := _}, _) -> [].

%% ================================
%% attribute
%% ================================
-spec attribute_attribute(element(), step()) -> [attribute()].
attribute_attribute(#{nk := element, at := []}, _) -> [];
attribute_attribute(#{nk := element,
                      at := At} = P, {NameAndType, Preds}) ->
   Cn = [N#{pt => P} || #{nk := attribute,
                nn := NodeName,
                tn := TypeName} = N <- At,
              name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Cn, Preds);
attribute_attribute(#{nk := _}, _) -> [].

-spec attribute_node(element(), step()) -> [attribute()].
attribute_node(#{nk := element, at := []}, _) -> [];
attribute_node(#{nk := element,
                 at := At} = P, {Preds}) ->
   do_predicates([N#{pt => P} || N <- At], Preds);
attribute_node(#{nk := _}, _) -> [].

%% ================================
%% child - forward
%% ================================
-spec child_comment(document() | element(), step()) -> [comment()].
child_comment(#{nk := Nk,
                ch := _} = P, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N || #{nk := comment} = N <- xqldb_mem_nodes:children(P)],
   do_predicates(Cn, Preds);
child_comment(#{nk := _}, _) -> [].

-spec child_element(document() | element(), step()) -> [element()].
child_element(#{nk := Nk,
                ch := _} = P, {NameAndType, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N
        || #{nk := element,
             nn := NodeName,
             tn := TypeName} = N <- xqldb_mem_nodes:children(P),
           name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Cn, Preds);
child_element(#{nk := _}, _) -> [].

-spec child_node(document() | element(), step()) -> [anychild()].
child_node(#{nk := element} = P, {Preds}) -> 
   do_predicates([N || N <- xqldb_mem_nodes:children(P)], Preds);
child_node(#{nk := document} = P, {Preds}) -> 
   do_predicates([N || N <- xqldb_mem_nodes:children(P)], Preds);
child_node(#{nk := _}, _) -> [].

-spec child_processing_instruction(document() | element(), step()) -> [proc_inst()].
child_processing_instruction(#{nk := Nk,
                               ch := _} = P, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N
        || #{nk := 'processing-instruction',
             nn := NodeName} = N <- xqldb_mem_nodes:children(P),
           name_match(Name, NodeName)],
   do_predicates(Cn, Preds);
child_processing_instruction(#{nk := _}, _) -> [].

-spec child_text(document() | element(), step()) -> [text()].
child_text(#{nk := Nk,
             ch := _} = P, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Cn = [N || #{nk := text} = N <- xqldb_mem_nodes:children(P)],
   do_predicates(Cn, Preds);
child_text(#{nk := _}, _) -> [].

%% ================================
%% descendant - forward
%% ================================
-spec descendant_comment(document() | element(), step()) -> [comment()].
descendant_comment(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := comment} = N <- descendants(Node)],
   do_predicates(Ds, Preds);
descendant_comment(#{nk := _}, _) -> [].

-spec descendant_element(document() | element(), step()) -> [element()].
descendant_element(#{nk := Nk} = Node, {NameAndType, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := element,
                nn := NodeName,
                tn := TypeName} = N <- descendants(Node),
              name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Ds, Preds);
descendant_element(#{nk := _}, _) -> [].

-spec descendant_node(document() | element(), step()) -> [anychild()].
descendant_node(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   do_predicates(descendants(Node), Preds);
descendant_node(#{nk := _}, _) -> [].

-spec descendant_processing_instruction(document() | element(), step()) -> [proc_inst()].
descendant_processing_instruction(#{nk := Nk} = Node, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := 'processing-instruction',
                nn := NodeName} = N <- descendants(Node),
              name_match(Name, NodeName)],
   do_predicates(Ds, Preds);
descendant_processing_instruction(#{nk := _}, _) -> [].

-spec descendant_text(document() | element(), step()) -> [text()].
descendant_text(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := text} = N <- descendants(Node)],
   do_predicates(Ds, Preds);
descendant_text(#{nk := _}, _) -> [].

%% ==========================
%% descendant_or_self - forward
%% ==========================
-spec descendant_or_self_attribute(attribute(), step()) -> [attribute()].
descendant_or_self_attribute(#{nk := attribute} = Node, Step) ->
   self_attribute(Node, Step);
descendant_or_self_attribute(#{nk := _}, _) -> [].

-spec descendant_or_self_comment(comment() | document() | element(), step()) -> [comment()].
descendant_or_self_comment(#{nk := comment} = Node, Step) ->
   self_comment(Node, Step);
descendant_or_self_comment(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := comment} = N <- descendants(Node)],
   do_predicates(Ds, Preds);
descendant_or_self_comment(#{nk := _}, _) -> [].

-spec descendant_or_self_document_node(document(), step()) -> [document()].
descendant_or_self_document_node(#{nk := document} = Node, Step) -> 
   self_document_node(Node, Step);
descendant_or_self_document_node(#{nk := _}, _) -> [].

-spec descendant_or_self_element(document() | element(), step()) -> [element()].
descendant_or_self_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [D || #{nk := element,
                nn := NodeName,
                tn := TypeName} = D <- [Node | descendants(Node)],
              name_type_match(NameAndType, NodeName, TypeName)], 
   do_predicates(Ds, Preds);
descendant_or_self_element(#{nk := _}, _) -> [].

-spec descendant_or_self_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [anynode()].
descendant_or_self_node(#{nk := Nk} = Node, Step) 
   when Nk =:= attribute; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   self_node(Node, Step);
descendant_or_self_node(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [Node | descendants(Node)], 
   do_predicates(Ds, Preds);
descendant_or_self_node(#{nk := _}, _) -> [].

-spec descendant_or_self_processing_instruction(document() | element() | proc_inst(), step()) -> [proc_inst()].
descendant_or_self_processing_instruction(#{nk := 'processing-instruction'} = Node, Step) ->
   self_processing_instruction(Node, Step);
descendant_or_self_processing_instruction(#{nk := Nk} = Node, {Name, Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := 'processing-instruction',
                nn := NodeName} = N <- descendants(Node),
              name_match(Name, NodeName)],
   do_predicates(Ds, Preds);
descendant_or_self_processing_instruction(#{nk := _}, _) -> [].

-spec descendant_or_self_text(document() | element() | text(), step()) -> [text()].
descendant_or_self_text(#{nk := text} = Node, Step) -> 
   self_text(Node, Step);
descendant_or_self_text(#{nk := Nk} = Node, {Preds})
   when Nk =:= element;
        Nk =:= document -> 
   Ds = [N || #{nk := text} = N <- descendants(Node)],
   do_predicates(Ds, Preds);
descendant_or_self_text(#{nk := _}, _) -> [].

%% ==========================
%% following - forward
%% ==========================
-spec following_comment(attribute() | comment() | element() | proc_inst() | text(), step()) -> [comment()].
following_comment(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := comment} = P <- following(Node)],
   do_predicates(Fol, Preds);
following_comment(#{nk := _}, _) -> [].

-spec following_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
following_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := element,
                 nn := NodeName,
                 tn := TypeName} = P <- following(Node),
               name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Fol, Preds);
following_element(#{nk := _}, _) -> [].

-spec following_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [anychild()].
following_node(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = following(Node),
   do_predicates(Fol, Preds);
following_node(#{nk := _}, _) -> [].

-spec following_processing_instruction(attribute() | comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
following_processing_instruction(#{nk := Nk} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := 'processing-instruction',
                 nn := NodeName} = P <- following(Node),
               name_match(Name, NodeName)],
   do_predicates(Fol, Preds);
following_processing_instruction(#{nk := _}, _) -> [].

-spec following_text(attribute() | comment() | element() | proc_inst() | text(), step()) -> [text()].
following_text(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Fol = [P || #{nk := text} = P <- following(Node)],
   do_predicates(Fol, Preds);
following_text(#{nk := _}, _) -> [].

%% ==========================
%% following_sibling - forward
%% ==========================
-spec following_sibling_comment(comment() | element() | proc_inst() | text(), step()) -> [comment()].
following_sibling_comment(#{nk := Nk,
                            id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := comment} = S <- siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_comment(#{nk := _}, _) -> [].

-spec following_sibling_element(comment() | element() | proc_inst() | text(), step()) -> [element()].
following_sibling_element(#{nk := Nk,
                            id := Id} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := element,
                  nn := NodeName,
                  tn := TypeName} = S <- siblings(Node), 
                SId > Id,
                name_type_match(NameAndType, NodeName, TypeName)],
   do_predicates(Sibs, Preds);
following_sibling_element(#{nk := _}, _) -> [].

-spec following_sibling_node(comment() | element() | proc_inst() | text(), step()) -> [anychild()].
following_sibling_node(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId} = S <- siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_node(#{nk := _}, _) -> [].

-spec following_sibling_processing_instruction(comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
following_sibling_processing_instruction(#{nk := Nk,
                                           id := Id} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := 'processing-instruction',
                  nn := NodeName} = S <- siblings(Node), 
                SId > Id,
                name_match(Name, NodeName)],
   do_predicates(Sibs, Preds);
following_sibling_processing_instruction(#{nk := _}, _) -> [].

-spec following_sibling_text(comment() | element() | proc_inst() | text(), step()) -> [text()].
following_sibling_text(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = [S || #{id := SId,
                  nk := text} = S <- siblings(Node), 
                SId > Id],
   do_predicates(Sibs, Preds);
following_sibling_text(#{nk := _}, _) -> [].

%% ==========================
%% parent - reverse
%% ==========================
-spec parent_document_node(comment() | element() | proc_inst() | text(), step()) -> [document()].
parent_document_node(#{nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_document_node(Par, Step)
   end;
parent_document_node(#{nk := _}, _) -> [].

-spec parent_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
parent_element(#{nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_element(Par, Step)
   end;
parent_element(#{nk := _}, _) -> [].

-spec parent_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [document() | element()].
parent_node(#{nk := Nk} = Node, Step) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         [];
      Par ->
         self_node(Par, Step)
   end;
parent_node(#{nk := _}, _) -> [].

%% ==========================
%% preceding - reverse
%% ==========================
-spec preceding_comment(attribute() | comment() | element() | proc_inst() | text(), step()) -> [comment()].
preceding_comment(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := comment} = P <- preceding(Node)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_comment(#{nk := _}, _) -> [].

-spec preceding_element(attribute() | comment() | element() | proc_inst() | text(), step()) -> [element()].
preceding_element(#{nk := Nk} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := element,
                 nn := NodeName,
                 tn := TypeName} = P <- preceding(Node),
               name_type_match(NameAndType, NodeName, TypeName)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_element(#{nk := _}, _) -> [].

-spec preceding_node(attribute() | comment() | element() | proc_inst() | text(), step()) -> [anychild()].
preceding_node(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = preceding(Node),
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_node(#{nk := _}, _) -> [].

-spec preceding_processing_instruction(attribute() | comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
preceding_processing_instruction(#{nk := Nk} = Node, {Name, Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := 'processing-instruction',
                 nn := NodeName} = P <- preceding(Node),
               name_match(Name, NodeName)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_processing_instruction(#{nk := _}, _) -> [].

-spec preceding_text(attribute() | comment() | element() | proc_inst() | text(), step()) -> [text()].
preceding_text(#{nk := Nk} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text; Nk =:= attribute;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Pre = [P || #{nk := text} = P <- preceding(Node)],
   Fil = do_predicates(Pre, Preds),
   lists:reverse(Fil);
preceding_text(#{nk := _}, _) -> [].

%% ==========================
%% preceding_sibling - reverse
%% ==========================
-spec preceding_sibling_comment(comment() | element() | proc_inst() | text(), step()) -> [comment()].
preceding_sibling_comment(#{nk := Nk,
                            id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := comment} = S <- Sibs, SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_comment(#{nk := _}, _) -> [].

-spec preceding_sibling_element(comment() | element() | proc_inst() | text(), step()) -> [element()].
preceding_sibling_element(#{nk := Nk,
                            id := Id} = Node, {NameAndType, Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := element,
                   nn := NodeName,
                   tn := TypeName} = S <- Sibs, 
                 name_type_match(NameAndType, NodeName, TypeName),
                 SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_element(#{nk := _}, _) -> [].

-spec preceding_sibling_node(comment() | element() | proc_inst() | text(), step()) -> [anychild()].
preceding_sibling_node(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId} = S <- Sibs, SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_node(#{nk := _}, _) -> [].

-spec preceding_sibling_processing_instruction(comment() | element() | proc_inst() | text(), step()) -> [proc_inst()].
preceding_sibling_processing_instruction(#{nk := Nk,
                                           id := Id} = Node, {Name, Preds})
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := 'processing-instruction',
                   nn := NodeName} = S <- Sibs, 
                 name_match(Name, NodeName),
                 SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_processing_instruction(#{nk := _}, _) -> [].

-spec preceding_sibling_text(comment() | element() | proc_inst() | text(), step()) -> [text()].
preceding_sibling_text(#{nk := Nk,
                         id := Id} = Node, {Preds}) 
   when Nk =:= element; Nk =:= text;
        Nk =:= comment; Nk =:= 'processing-instruction' -> 
   Sibs = siblings(Node),
   Sibs1 = [S || #{id := SId,
                   nk := text} = S <- Sibs, SId < Id],
   Sibs2 = lists:reverse(Sibs1),
   Sibs3 = do_predicates(Sibs2, Preds),
   lists:reverse(Sibs3);
preceding_sibling_text(#{nk := _}, _) -> [].

%% ==========================
%% self - forward
%% ==========================
-spec self_attribute(attribute(), step()) -> [attribute()].
self_attribute(#{nk := attribute,
                 nn := NodeName,
                 tn := TypeName} = Node, {NameAndType, Preds}) -> 
   case name_type_match(NameAndType, NodeName, TypeName) of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_attribute(#{nk := _}, _) -> [].

-spec self_comment(comment(), step()) -> [comment()].
self_comment(#{nk := comment} = Node, {Preds}) ->
   do_predicates([Node], Preds);
self_comment(#{nk := _}, _) -> [].

-spec self_document_node(document(), step()) -> [document()].
self_document_node(#{nk := document,
                     ch := Ch} = Node, {NameAndType, Preds}) ->
   case child_element(Node, {{any,any,any}, []}) of
      [#{nn := NodeName, tn := TypeName}] ->
         case name_type_match(NameAndType, NodeName, TypeName) of
            true ->
               do_predicates([Node], Preds);
            false ->
               []
         end;
      [] when Ch == [] ->
         do_predicates([Node], Preds);
      _ ->
         []
   end;
self_document_node(#{nk := document} = Node, {Preds}) -> 
   do_predicates([Node], Preds);
self_document_node(#{nk := _}, _) -> [].

-spec self_element(element(), step()) -> [element()].
self_element(#{nk := element,
               nn := NodeName,
               tn := TypeName} = Node, {NameAndType, Preds}) -> 
   case name_type_match(NameAndType, NodeName, TypeName) of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_element(#{nk := _}, _) -> [].

-spec self_namespace(namespace(), step()) -> [namespace()].
self_namespace(#{nk := namespace} = Node, {Preds}) ->
   do_predicates([Node], Preds);
self_namespace(#{nk := _}, _) -> [].

-spec self_node(attribute() | comment() | document() | element() | proc_inst() | text(), step()) -> [anynode()].
self_node(Node, {Preds}) -> 
   do_predicates([Node], Preds).

-spec self_processing_instruction(proc_inst(), step()) -> [proc_inst()].
self_processing_instruction(#{nk := 'processing-instruction',
                              nn := NodeName} = Node, {Name, Preds}) ->
   case name_match(Name, NodeName) of
      true ->
         do_predicates([Node], Preds);
      false ->
         []
   end;
self_processing_instruction(#{nk := _}, _) -> [].

-spec self_text(text(), step()) -> [text()].
self_text(#{nk := text} = Node, {Preds}) ->
   do_predicates([Node], Preds);
self_text(#{nk := _}, _) -> [].

document_order(NodeList) ->
   case catch (doc_ord(NodeList)) of
      {'EXIT',_} ->
         {error, non_node};
      O ->
         O
   end.

%% ==========================================================================
%% Internal functions
%% ==========================================================================

doc_ord(NodeList) ->
   lists:usort(fun doc_ord_fun/2, NodeList).

doc_ord_fun(#{id := A}, #{id := B}) -> A =< B.

doc_rev_ord(NodeList) ->
   lists:usort(fun doc_rev_ord_fun/2, NodeList).
doc_rev_ord_fun(#{id := A}, #{id := B}) -> A > B.

ancestors(Node) ->
   ancestors_1(xqldb_mem_nodes:parent(Node), []).

ancestors_1([], Acc) -> 
   lists:reverse(Acc);
ancestors_1(Node, Acc) ->
   ancestors_1(xqldb_mem_nodes:parent(Node), [Node|Acc]).
   

descendants(#{ch := _,
              nk := document} = S) ->
   % block text children of document
   [D || #{nk := Nk} = C <- xqldb_mem_nodes:children(S),
         Nk =/= text,
         D <- descendants_1(C)];
descendants(#{nk := element} = S) ->
   [D || C <- xqldb_mem_nodes:children(S),
         D <- descendants_1(C)];
descendants(_) -> [].

descendants_1(#{nk := element} = Self) ->
   Ds = [D || C <- xqldb_mem_nodes:children(Self),
              D <- descendants_1(C)],
   [Self|Ds];
descendants_1(Self) -> [Self].
   
siblings(Node) ->
   case xqldb_mem_nodes:parent(Node) of
      #{ch := _} = P ->
         xqldb_mem_nodes:children(P);
      _ ->
         []
   end.

preceding(Node) ->
   Par = xqldb_mem_nodes:parent(Node),
   case Par of
      [] ->
         [];
      _ ->
         Acc = [N || S <- preceding_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         All = preceding(Par, Acc),
         doc_rev_ord(All)
   end.

preceding(Node, Acc) ->
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         Acc;
      Par ->
         Nds = [N || S <- preceding_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         preceding(Par, Nds ++ Acc)
   end.

following(Node) ->
   Par = xqldb_mem_nodes:parent(Node),
   case Par of
      [] ->
         [];
      _ ->
         Acc = [N || S <- following_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         following(Par, Acc)
   end.

following(Node, Acc) ->
   case xqldb_mem_nodes:parent(Node) of
      [] ->
         Acc;
      Par ->
         Nds = [N || S <- following_sibling_node(Node, {[]}),
                     N <- descendant_or_self_node(S, {[]})],
         following(Par, Acc ++ Nds)
   end.

name_type_match({any, any, any}, _, _) -> true;
name_type_match({any, any, Ty}, {_, _, _}, Ty) -> true;
name_type_match({any, Ln,  any},{_, _, Ln}, _) -> true;
name_type_match({any, Ln,  Ty}, {_, _, Ln}, Ty) -> true;
name_type_match({Ns,  any, any},{Ns, _, _}, _) -> true;
name_type_match({Ns,  any, Ty}, {Ns, _, _}, Ty) -> true;
name_type_match({Ns,  Ln,  any},{Ns, _, Ln}, _) -> true;
name_type_match({Ns,  Ln,  Ty}, {Ns, _, Ln}, Ty) -> true;
name_type_match(_, _, _) -> false.

name_match({any}, _) -> true;
name_match({Ln}, {_, _, Ln}) -> true;
name_match(_, _) -> false.

do_predicates(Nodes, []) -> Nodes;
do_predicates(Nodes, [P|Ps]) ->
   S = length(Nodes),
   F = do_pred_filter(P, Nodes, 1, S),
   do_predicates(F, Ps).

do_pred_filter(Pred, [Node|Nodes], Pos, Size) ->
   case Pred(Node, Pos, Size) of
      true ->
         [Node|do_pred_filter(Pred, Nodes, Pos + 1, Size)];
      false ->
         do_pred_filter(Pred, Nodes, Pos + 1, Size)
   end;
do_pred_filter(_, [], _, _) -> [].

%% add_pos([H|T], Pos) ->
%%    [{H,Pos}|add_pos(T, Pos + 1)];
%% add_pos([], _) -> [].

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

