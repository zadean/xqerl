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

-include_lib("kernel/include/logger.hrl").
-include("xqerl_item.hrl").

-define(parse_err(Code, Anno), erlang:throw(xqerl_error:error(Code, Anno))).
-define(parse_dbg(A,B),?LOG_DEBUG("STATIC: ~p: ~p",[A,B], #{domain=>[xqerl]})).

-define(node(I), (I=='node' orelse I=='document' orelse I=='document-node' orelse I=='element' orelse I=='attribute' orelse I=='namespace' orelse I=='text' orelse I=='comment' orelse I=='processing-instruction')).

-type(anno() :: undefined | non_neg_integer()).

-record(xqURILiteral, {
    anno :: anno(),
    str  :: binary()
}).
-type(xqURILiteral() :: #xqURILiteral{}).

-record(xqNCName, {
    anno :: anno(),
    str  :: binary()
}).
-type(xqNCName() :: #xqNCName{}).

-record(xqStringLiteral, {
    anno :: anno(),
    str  :: binary()
}).
-type(xqStringLiteral() :: #xqStringLiteral{}).

-record(xqQName, {
    anno       :: anno(),
    namespace  :: term(),
    prefix     :: term(),
    local_name :: term()
}).

-record(xqSeqType, {
    anno       :: anno(),
    type  = item :: term(), %:: atom() | #xqKindTest{},
    occur = zero_or_many  :: zero | one | zero_or_one | zero_or_many | one_or_many | none
}).

-record(xqValidateExpr, {
    anno :: anno()
}).

-record(xqEntityRef, {
    ref:: binary()
}).

-record(xqCharRef, {
    ref:: binary()
}).

-record(xqDocumentNode, {
    anno    :: anno(),
    id      :: pos_integer(),
    content :: term()
}).

-record(xqElementNode, {
    anno       :: anno(),
    id         :: pos_integer(),
    type       :: direct | comp,
    name       :: #xqQName{} | term(),
    attributes :: term(),
    content    :: term()
}).

-record(xqAttributeNode, {
    anno :: anno(),
    id   :: pos_integer(),
    type :: direct | comp,
    name :: #xqQName{} | term(),
    text :: term()
}).

-record(xqNamespaceNode, {
    anno   :: anno(),
    id     :: pos_integer(),
    type   :: direct | comp,
    uri    :: term(),
    prefix :: term()
}).

-record(xqProcessingInstructionNode, {
    anno :: anno(),
    id   :: pos_integer(),
    type :: direct | comp,
    name :: #xqQName{} | term(),
    data :: term()
}).

-record(xqCommentNode, {
    anno :: anno(),
    id   :: pos_integer(),
    type :: direct | comp,
    text :: term()
}).

-record(xqTextNode, {
    anno :: anno(),
    id   :: undefined | pos_integer(),
    type :: direct | comp,
    text :: term()
}).

-record(xqNodeConstructor, {
    id   :: pos_integer(),
    type :: direct | comp,
    cons :: term()
}).

-record(xqArgumentPlaceholder, {
    anno :: anno(),
    id   :: pos_integer()
}).

-record(xqAnnotation, {
    anno   :: anno(),
    name   :: #xqQName{},
    values :: [#xqAtomicValue{} | binary() | atom() | number()]         
}).

-record(xqKindTest, {
   anno       :: anno(),
   kind = node :: node | text | comment | 'namespace-node' | namespace | 'schema-element' | element | 'schema-attribute' | attribute | 'document-node' | document | 'processing-instruction',
   name = undefined :: #xqQName{} | undefined | term(),
   type
}).

-record(xqPosVar, {
    anno       :: anno(),
    id = -1 :: integer(),
    name = undefined :: #xqQName{}
}).

-record(xqFunTest, {
    anno       :: anno(),
    kind   = function :: function | map | array,
    annotations = [] :: [ #xqAnnotation{} ],
    name   :: undefined | #xqQName{},
    params = any :: [#xqSeqType{}] | [any] | any,
    type   = any :: #xqSeqType{} | #xqKindTest{} | any
}).

-record(xqNameTest, {
    anno :: anno(),
    name :: #xqQName{}
}).

-record(xqPathExpr, {
    anno :: anno(),
    id   :: pos_integer(),
    expr :: term()
}).

-record(xqVar, {
    anno    :: anno(),
    id = -1 :: integer(),
    annotations = []  :: [ #xqAnnotation{} ], 
    name :: #xqQName{},
    type = undefined :: undefined | #xqSeqType{},
    value = undefined :: term(),
    expr  = undefined :: term(),
    external = false :: boolean(),
    default = undefined :: term(),
    position = undefined :: undefined | #xqPosVar{},
    empty = false :: boolean()
}).

-record(xqFor, {
    var = #xqVar{}
}).

-record(xqLet, {
    var = #xqVar{}
}).

-record(xqWhere, {
    anno :: anno(),
    id   :: integer(),
    expr :: any()
}).

-record(xqCount, {
    var :: #xqVar{}
}).

-record(xqVarRef, {
    anno :: anno(),
    name :: #xqQName{}
}).

-record(xqGroupBy, {
    grp_variable :: #xqVarRef{} | {variable, atom()},
    collation
}).

-record(xqGroup, {
    anno :: anno(),
    id   :: integer(),
    vars :: [#xqGroupBy{}]
}).

-record(xqFunctionDef, {
    anno        :: anno(),
    id          = -1 :: integer(),
    annotations = [] :: [ #xqAnnotation{} ],
    name        = undefined :: #xqQName{} | undefined,
    arity       = 0 :: integer(),
    params      = [] :: [#xqSeqType{}] | [term()] | {any(), any()},
    type        = undefined :: undefined | any | #xqSeqType{},
    body        = undefined :: undefined | tuple(),
    external    = false :: boolean()
}).

-record(xqIfExpr, {
    anno      :: anno(),
    condition :: term(),
    if_true   :: {pos_integer(), term()} | {error, anno(), any()},
    if_false  :: {pos_integer(), term()} | {error, anno(), any()}
}).

-record(xqQuantifiedExpr, {
    which     :: some | every,
    in_expr   :: [term()],
    satisfies :: term()
}).

-record(xqQuery, {query :: list()}).
-type(xqQuery() :: [] | #xqQuery{}).

-record(xqBoundarySpaceDecl, {
    anno :: anno(),
    mode :: strip | preserve
}).

-record(xqDefaultCollationDecl, {
    anno :: anno(),
    uri  :: binary()
}).

-record(xqBaseURIDecl, {
    anno :: anno(),
    uri  :: binary()
}).

-record(xqConstructionDecl, {
    anno :: anno(),
    mode :: strip | preserve
}).

-record(xqOrderingModeDecl, {
    anno :: anno(),
    mode :: ordered | unordered
}).

-record(xqEmptyOrderDecl, {
    anno :: anno(),
    mode :: least | greatest
}).

-record(xqCopyNamespacesDecl, {
    anno :: anno(),
    pre  :: atom(),
    inh  :: atom()
}).

-record(xqDecimalFormatDecl, {
    anno   :: anno(),
    name  :: undefined | #xqQName{},
    props :: [term()]
}).

-record(xqRevalidationDecl, {
    anno :: anno(),
    kind :: skip
}).

-type(xqSetters() ::
    #xqDecimalFormatDecl{} | #xqCopyNamespacesDecl{} | #xqEmptyOrderDecl{} |
    #xqOrderingModeDecl{} | #xqConstructionDecl{} | #xqBaseURIDecl{} |
    #xqDefaultCollationDecl{} | #xqBoundarySpaceDecl{} | #xqRevalidationDecl{}
).

-record(xqImport, {
    anno   :: anno(),
    kind   :: module | schema,
    uri    :: binary(),
    prefix :: binary(),
    hints  :: [term()]
}).

-record(xqNamespaceDecl, {
    anno   :: anno(),
    uri    :: binary(),
    prefix :: binary()
}).

-record(xqDefaultNamespaceDecl, {
    anno :: anno(),
    kind :: function | element,
    uri  :: binary()
}).

-record(xqContextItemDecl, {
    anno     :: anno(),
    type     = #xqSeqType{} :: #xqSeqType{},
    external :: boolean(),
    default  :: any()
}).

-record(xqOptionDecl, {
    anno :: anno(),
    name :: #xqQName{},
    val  :: #xqStringLiteral{}
}).

-type(xqAnnotatedDecl() :: #xqVar{} | #xqFunctionDef{}).
-type(xqProlog1() :: #xqDefaultNamespaceDecl{} | xqSetters() | #xqNamespaceDecl{} | #xqImport{}).
-type(xqProlog2() :: #xqContextItemDecl{} | xqAnnotatedDecl() | #xqOptionDecl{}).

-record(xqProlog, {
    sect_1 :: list(xqProlog1()),
    sect_2 :: list(xqProlog2())
}).
-type(xqProlog() :: undefined | #xqProlog{}).

-record(xqModuleDecl, {
    namespace :: binary(),
    prefix    :: binary()
}).
-type(xqModuleDecl() :: undefined | #xqModuleDecl{}).

-record(xqModule, {
    version     :: undefined | {binary(), binary()},
    type        :: library | main,
    declaration :: xqModuleDecl(),
    prolog      :: xqProlog() | [xqProlog1() | xqProlog2()],
    body        = [] :: xqQuery(),
    filename    :: undefined | binary()                 
}).

-record(xqUnaryExpr, {
    anno :: anno(),
    sign :: '+' | '-',
    expr :: term()
}).

-record(xqLookup, {
    anno :: anno(),
    key  :: term(),
    kind :: undefined | array | map
}).

-record(xqPredicate, {
    anno :: anno(),
    expr :: term(),
    pos = false :: boolean()
}).

-record(xqTypingExpr, {
    anno :: anno(),
    kind :: instance | treat | castable | cast | 
            promote | check | ensure,
    expr :: term(),
    type :: term()
}).

-record(xqNodeSetExpr, {
    anno :: anno(),
    kind :: except | intersect,
    lhs  :: term(),
    rhs  :: term()
}).

-record(xqNodeUnionExpr, {
    anno :: anno(),
    expr :: [term()]
}).

-record(xqConcatExpr, {
    anno :: anno(),
    expr :: [term()]
}).

-record(xqRange, {
    anno :: anno(),
    from :: term(),
    to   :: term()
}).

-record(xqPostfixExpr, {
    id   :: pos_integer(),
    part :: boolean(),
    expr :: term(),
    post :: term()
}).

-record(xqStringConstructor, {
    anno    :: anno(),
    content :: term()
}).

-record(xqEnclosedExpr, {
    anno :: anno(),
    expr :: term()
}).

-record(xqArrayConst, {
    anno    :: anno(),
    content :: term()
}).

-record(xqMapEntry, {
    anno  :: anno(),
    key   :: term(),
    value :: term()
}).

-record(xqMapConst, {
    anno    :: anno(),
    content :: list(#xqMapEntry{})
}).

-record(xqFunctionRef, {
    anno  :: anno(),
    name  :: #xqQName{},
    arity :: term()
}).

-record(xqSequence, {
    vals :: term()
}).

-type(axis() :: child | descendant | attribute | self | 'descendant-or-self' |
                'following-sibling' | following | namespace | parent |
                ancestor | 'preceding-sibling' | preceding | 'ancestor-or-self').

-record(xqAxisStep, {
    anno       :: anno(),
    id         :: pos_integer(),
    direction  = forward :: forward | reverse,
    axis       = child :: axis(),
    node_test  = #xqKindTest{},
    predicates = []
}).

-record(xqPostfixStep, {
    anno       :: anno(),
    predicates :: list()
}).

-record(xqFlwor, {
    id = -1 :: integer(),
    loop = undefined :: term(),
    return = undefined :: term()
}).

-record(xqWindow, {
    type         :: tumbling | sliding,
    win_variable :: #xqVar{},
    s            :: undefined | #xqVar{},
    spos         :: undefined | #xqPosVar{},
    sprev        :: undefined | #xqVar{},
    snext        :: undefined | #xqVar{},
    e            :: undefined | #xqVar{},
    epos         :: undefined | #xqPosVar{},
    eprev        :: undefined | #xqVar{},
    enext        :: undefined | #xqVar{},
    only         = false :: boolean(),
    start_expr,
    end_expr
}).

-record(xqSwitch, {
    anno    :: anno(),
    id      :: integer(),
    operand :: any(),
    clauses :: [any()],
    default :: any()
}).

-record(xqSwitchClause, {
    anno     :: anno(),
    operands :: [any()],
    expr     :: any()
}).

-record(xqOrderModifier,{
    anno                  :: anno(),
    direction = ascending :: ascending | descending,
    empty     = default   :: default | least | greatest,
    collation = default   :: default | binary() | #xqURILiteral{}
}).

-record(xqOrderSpec, {
    expr     :: any(),
    modifier :: #xqOrderModifier{}
}).

-record(xqOrderByClause, {
    anno    :: anno(),
    id      :: integer(),
    spec    :: [#xqOrderSpec{}]
}).

-record(xqTypeswitchCase, {
    anno     :: anno(),
    types    = default :: [any()] | default,
    variable = undefined :: #xqVar{} | undefined,
    expr     :: any()
}).

-record(xqTypeswitch, {
    anno    :: anno(),
    id      :: integer(),
    input   :: any(),
    cases   :: [#xqTypeswitchCase{}],
    default :: #xqTypeswitchCase{}
}).

-record(xqTryCatch, {
    anno    :: anno(),
    id      :: integer(),
    expr    :: any(),
    catches :: [any()]
}).

-type(valueComp() :: 'eq' | 'ne' | 'lt' | 'le' | 'gt' | 'gt').
-type(generalComp() :: '=' | '!=' | '<' | '<=' | '>' | '>=').
-type(nodeComp() :: 'is' | '<<' | '>>').

-record(xqComparisonExpr, {
    anno :: anno(),
    id   :: integer(),
    comp :: valueComp() | generalComp() | nodeComp(),
    lhs  :: term() | [term()],
    rhs  :: term() | [term()]
}).

-record(xqLogicalExpr, {
    anno :: anno(),
    id   :: integer(),
    comp :: 'and' | 'or',
    lhs  :: term() | [term()],
    rhs  :: term() | [term()]
}).

-type(arithOp() :: '+' | '-' | '*' | 'div' | 'idiv' | 'mod').
-record(xqArithExpr, {
    anno :: anno(),
    id   :: integer(),
    op   :: arithOp(),
    lhs  :: term() | [term()],
    rhs  :: term() | [term()]
}).

-record(xqSimpleMap, {
    anno :: anno(),
    id   :: integer(),
    lhs  :: term() | [term()],
    rhs  :: term() | [term()]
}).

-record(xqFunctionCall, {
    anno  :: anno(),
    name  :: undefined | #xqQName{},
    arity :: undefined | integer(),
    args  :: undefined | [term()],
    call  :: undefined | #xqFunctionDef{} % after the static phase this is set
}).

-record(xqPartialFunctionCall, {
    anno  :: anno(),
    name  :: undefined | #xqQName{},
    arity :: undefined | integer(),
    args  :: undefined | [term()],
    call  :: undefined | #xqFunctionDef{} % after the static phase this is set
}).

-record(xqArgumentList, {
    anno :: anno(),
    args :: [term()]
}).

-record(xqExtensionExpr, {
    anno    :: anno(),
    pragmas :: [term()],
    expr    :: term()
}).

-type (insert_type() :: 'after' | before | into_first | into_last | into).

-record(xqUpdateExpr, {
    anno :: anno(),
    id   :: undefined | integer(),
    kind :: insert_type() | delete | replace_value | replace | rename,
    src  :: term(),
    tgt  :: term()
}).

-record(xqModifyExpr, {
    anno   :: anno(),
    id     :: integer(),
    vars   :: [#xqVar{}],
    expr   :: term(),
    return :: term()
}).

%% at = attributes
%% bu = base-uri (list of all xml:base atts to document)
%% ch = children
%% du = document-uri
%% id = node-identity (unique ID in document)
%% ii = is-id
%% ir = is-idrefs
%% hn = has namespaces, flag to look them up from an element
%% ns = namespace-nodes (in-scope namespaces)
%% nd = nilled
%% nk = node-kind
%% nn = node-name
%% pt = parent
%% sv = string-value
%% tn = type-name
%% tv = typed-value
%% pa = path id in DB


