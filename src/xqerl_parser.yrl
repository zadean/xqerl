Nonterminals 
% 
'uplus' 'uminus'
%
'ElementContentChars' 'AposAttrContentChars' 'QuotAttrContentChars'
% QName
'PrefixedName' 'UnprefixedName' %'LocalPart' 
'BracedURILiteral'
% 3.1
'AllowingEmpty' 'AnnotatedDecl' 'Annotation' 'AnnotationList' 'AnyArrayTest'
'AnyFunctionTest' 'AnyMapTest' 'Argument'  'ArgumentList' 'ArgumentPlaceholder'
'ArrayConstructor' 'ArrayTest' 'ArrowExpr' 'ArrowFunctionSpecifier'
'AtomicOrUnionType' 'AttributeDeclaration' 'CatchClause' 'CatchClauses'
'CatchErrorList' 'CompNamespaceConstructor' 'ContextItemDecl' 'CountClause'
'CurlyArrayConstructor' 'CurrentItem' 'DFPropertyName' 'DecimalFormatDecl'
'DFPropertyNameList' 'EQName' 'ElementDeclaration' 'EnclosedContentExpr'
'EnclosedPrefixExpr' 'EnclosedTryTargetExpr' 'EnclosedURIExpr' 'ExprSingleList'
'ExtensionExpr' 'ForBinding' 'ForBindingList' 'FunctionBody' 'FunctionItemExpr'
'FunctionTest' 'GroupByClause' 'GroupingSpec' 'GroupingSpecList'
'GroupingVariable' 'InitialClause' 'InlineFunctionExpr' 'IntermediateClause'
'IntermediateClauseList' 'KeySpecifier' 'LetBinding' 'LetBindingList'
'Lookup' 'MapConstructor' 'MapConstructorEntries' 'MapConstructorEntry'
'MapKeyExpr' 'MapTest' 'MapValueExpr' 'NamedFunctionRef' 'NamespaceNodeTest'
'NextItem' 'NodeConstructor' 'ParenthesizedItemType' 'PostfixExpr' 'PostFixes'
'Pragma' 'Pragmas' %'Prefix'
'PreviousItem' 'ReturnClause' 'SchemaAttributeTest' 'SchemaElementTest'
'SequenceTypeList' 'SequenceTypeUnion' 'SimpleMapExpr' 'SimpleTypeName'
'SlidingWindowClause' 'SquareArrayConstructor' 'StringConcatExpr' 
'StringConstContents' 'StringConstructor' 'StringConstructorContent'
'StringConstructorInterpolation' 'SwitchCase' 'SwitchCaseClause'
'SwitchCaseClauses' 'SwitchCaseOperand' 'SwitchExpr' 'TryCatchExpr' 'TryClause'
'TumblingWindowClause' 'TypeName' 'TypedArrayTest' 'TypedFunctionTest'
'TypedMapTest' 'URIQualifiedName' 'UnaryLookup' 'ValidateExpr' 'ValidationMode'
'VarDefaultValue' 'VarValue' 'WindowClause' 'WindowEndCondition'
'WindowStartCondition' 'WindowVars'
%
'AbbrevForwardStep' 'AbbrevReverseStep' 'AdditiveExpr' %'AdditiveExprs'
'AndExpr' 'AndExprs' 'AnyKindTest' 'AposAttrValueContent' 'Arguments'
'AttribNameOrWildcard' 'AttributeName' 'AttributeTest' 'AxisStep'
'BaseURIDecl' 'BoundarySpaceDecl' 'CDataSection' 'CDataSectionContents'
'CaseClause' 'CaseClauses' 'CastExpr' 'CastableExpr' 'CommentTest' 
'CommonContent' 'CompAttrConstructor' 'CompCommentConstructor' 
'CompDocConstructor' 'CompElemConstructor' 'CompPIConstructor' 
'CompTextConstructor' 'ComparisonExpr' 'ComputedConstructor' 'ConstructionDecl' 
'ContextItemExpr' 'CopyNamespacesDecl' 'DefaultCollationDecl' 
'DefaultNamespaceDecl' 'DirAttribute' 'DirAttributeList' 'DirAttributeValue' 
'DirAttributeValuesApos' 'DirAttributeValuesQuot' 'DirCommentConstructor' 
'DirCommentContents' 'DirElemConstructor' 'DirElemContent' 'DirElemContents' 
'DirPIConstructor' 'DirectConstructor' 'DocumentTest' 'ElementName' 
'ElementNameOrWildcard' 'ElementTest' 'EmptyOrderDecl' 'EnclosedExpr' 'Expr' 
'ExprSingle' 'FLWORExpr' 'ForClause' 'ForwardAxis' 'ForwardStep' 'FunctionCall' 
'FunctionDecl' 'GeneralComp' 'IfExpr' 'Import' 'InStatement' 'InStatements' 
'InheritMode' 'InstanceofExpr' 'IntersectExceptExpr' 'IntersectExceptExprs' 
'ItemType' 'KindTest' 'LetClause' 'LibraryModule' 'Literal' 'LiteralList'
'MainModule' 'Module' 'ModuleDecl' 'ModuleImport' 'MultiplicativeExpr'
%'MultiplicativeExprs'
'NameTest' 'NamespaceDecl' 'NodeComp' 'NodeTest' 'NumericLiteral' 
'OccurrenceIndicator' 'OptionDecl' 'OrExpr' 'OrExprs' 'OrderByClause' 
'OrderModifier' 'OrderSpec' 'OrderSpecList' 'OrderedExpr' 'OrderingModeDecl' 
'PITest' 'Param' 'ParamList' 'ParenthesizedExpr' 'PathExpr' 'PositionalVar' 
'Predicate' 'PredicateList' 'PreserveMode' 'PrimaryExpr' 'Prolog' 'Prolog1' 
'Prolog1s' 'QName' 'QuantifiedExpr' 'QueryBody' 'QuotAttrValueContent' 
'RangeExpr' 'RelativePathExpr'
%'RelativePathExprs'
'ReverseAxis' 'ReverseStep' 'SchemaImport' 'SchemaPrefix' 'Separator' 
'SequenceType' 'Setter' 'SingleType' 'StepExpr' 'TextTest' 'TreatExpr' 
'TypeDeclaration' 'TypeswitchExpr' 'URILiteral' 'URILiteralList' 'UnaryExpr' 
'UnionExpr' 'UnionExprs' 'UnorderedExpr' 'ValueComp' 'ValueExpr' 'VarDecl' 
'VarName' 'VarRef' 'VersionDecl' 'WhereClause' 'Wildcard'
%
'CopyBindingList' 'CopyBinding'
'RevalidationDecl' 'InsertExpr' 'DeleteExpr' 'ReplaceExpr' 'RenameExpr'
'UpdatingFunctionCall' 'CopyModifyExpr' 'InsertExprTargetChoice'
'TransformWithExpr'
% moved here from Terminals, added 'maybeNCName' to Terminals
'NCName'
.


Terminals 
'maybeNCName'
% terminating
'S' % whitespace
'#)' '(#'
'!=' 'StringLiteral' '$' '(' ')'
'*' '+' ',' '-' '-->' '.' '..' '/' '//' '/>'
':' ': ' ' :' '::' ':=' ';' '<' '<!--' '<![CDATA[' '</'
'<<' '<=' '<?' '=' '>' '>=' '>>' '?' '?>' '@'
'[' ']' ']]>' '{' '|' '}'
% non-terminating
'ancestor' 'ancestor-or-self' 'and' 'as' 'ascending' 'at' 'attribute' 
'base-uri' 'boundary-space' 'by' 'case' 'cast' 'castable' 'child' 
'collation' 'comment' 'construction' 'copy-namespaces' 'declare' 'default' 
'descendant' 'descendant-or-self' 'descending' 'div' 'document' 
'document-node' 'element' 'else' 'empty' 'empty-sequence' 'encoding' 
'eq' 'every' 'except' 'external' 'following' 'following-sibling' 
'for' 'function' 'ge' 'greatest' 'gt' 'idiv' 'if' 'import' 'in' 'inherit' 
'instance' 'intersect' 'is' 'item' 'le' 'least' 'let' 'lt' 'mod' 'module' 
'namespace' 'ne' 'no-inherit' 'no-preserve' 'node' 'of' 'option' 'or' 'order' 
'ordered' 'ordering' 'parent' 'preceding' 'preceding-sibling' 'preserve' 
'processing-instruction' 'return' 'satisfies' 'self' 'some' 'stable' 'strip' 
'text' 'then' 'to' 'treat' 'typeswitch' 'union' 'unordered' 'variable' 
'version' 'where' 'xquery'
%
'schema' 'schema-attribute' 'schema-element' 
'lax' 'strict' 'validate' 
% Update Facility
'updating' 'skip' 'revalidation' 'after' 'before' 'into' 'first' 'last' 'nodes'
'insert' 'delete' 'with' 'value' 'replace' 'rename' 'invoke' 'modify' 'copy'
'transform'

% ADDED
'quot' 'apos'
'cdata-contents' 'PITarget' 'DirPIContents' 'comment-text'
'IntegerLiteral' 'DecimalLiteral' 'DoubleLiteral' 
%'QName'
'wildcard' 'lone-slash' 'PredefinedEntityRef' 'CharRef' '{{' '}}' 'EscapeQuot'
'EscapeApos' 'QuotAttrContentChar' 'ElementContentChar' 'AposAttrContentChar'
%3.1
'decimal-format' 'decimal-separator' 'grouping-separator' 'infinity'          
'minus-sign' 'NaN' 'percent' 'per-mille' 'zero-digit' 'digit' 
'pattern-separator' 'exponent-separator' 'context' '%' 'allowing' 'tumbling' 
'sliding' 'window' 'start' 'when' 'only' 'end' 'previous' 'next' 'count' 'group'
'switch' 'catch' 'try' '||' '=>' type '!' '#' 'map' 'array' 'namespace-node'
'``[' ']``' '`{' '}`' '*:' ':*' 'PragmaContents' 'StringConstructorChars' 'Q'.


Rootsymbol 'Module'.


Endsymbol '$end'.


Left  100   ','.



Left     99  'NCName'.

Left     101 'PrefixedName'.


Left     102 'UnprefixedName'.



Nonassoc  200   'for' 'some' 'every' 'switch' 'typeswitch' 'try' 'if'.

%Left 201 'array' 'attribute' 'comment' 'document-node' 'element' 'empty-sequence' 'function' 'item' 'map' 'namespace-node' 'node' 'processing-instruction' 'schema-attribute' 'schema-element' 'text'.
Left  202   '{'.

Left  300   'or'.

Left  400   'and'.

Nonassoc  500   'eq' 'ne' 'lt' 'le' 'gt' 'ge' '=' '!=' '<' '<=' '>' '>=' 'is' '<<' '>>'.

Left  600   '||'.

Nonassoc  700   'to'.

Left  800   '+' '-'.


Left  900   '*' 'div' 'idiv' 'mod'.

Left  1000  'union' '|'.

Left  1100  'intersect' 'except'.

Nonassoc  1200  'instance'.

Nonassoc  1300  'treat'.

Nonassoc  1400  'castable'.

Nonassoc  1500  'cast'.

Left 1600  '=>'.


Right 1700  'uminus' 'uplus'.

Left  1800  '!'.


Left  1900  'lone-slash' '/' '//'.

Left  2000  '[' ']' '?'.


Right  2100 'S' 'QuotAttrContentChar' 'AposAttrContentChar' 'ElementContentChar'.

Nonassoc 2200 ':' ' :' ': '.


%Left 99 'maybeNCName'.


%Right 9999 'NCName'.

'Module'                 -> 'VersionDecl' 'MainModule'   : 
    _ = next_id(), 
    ('$2')#xqModule{version = '$1'}.

'Module'                 -> 'VersionDecl' 'LibraryModule': 
    _ = next_id(), 
    ('$2')#xqModule{version = '$1'}.

'Module'                 -> 'MainModule'                 : 
    _ = next_id(), 
    ('$1')#xqModule{version = {<<"3.1">>,<<"UTF-8">>}}.

'Module'                 -> 'LibraryModule'              : 
    _ = next_id(), 
    ('$1')#xqModule{version = {<<"3.1">>,<<"UTF-8">>}}.


'VersionDecl'            -> 'xquery' 'version' 'StringLiteral' 'encoding' 'StringLiteral' 'Separator' : 
    {bin_value_of('$3'), bin_value_of('$5')}.

'VersionDecl'            -> 'xquery' 'encoding' 'StringLiteral' 'Separator' : 
    V = <<"3.1">>,
    {V, bin_value_of('$3')}.


'VersionDecl'            -> 'xquery' 'version' 'StringLiteral' 'Separator' : 
    E = <<"UTF-8">>,
    {bin_value_of('$3'), E}.


'MainModule'             -> 'Prolog' 'QueryBody' :
    #xqModule{type = main, prolog = '$1', body = '$2'}.

'MainModule'             ->          'QueryBody' : 
    #xqModule{type = main, body = '$1'}.


'LibraryModule'          -> 'ModuleDecl' 'Prolog' : 
    #xqModule{type = library, declaration = '$1', prolog = '$2'}.

'LibraryModule'          -> 'ModuleDecl'          : 
    #xqModule{type = library, declaration = '$1'}.


'ModuleDecl'             -> 'module' 'namespace' 'NCName' '=' 'URILiteral' 'Separator' : 
    L = line('$1'),
    #xqURILiteral{str = U} = '$5',
    case U of
        <<>> ->
            ?parse_err('XQST0088', {undefined, L});
        _ ->
            #xqNCName{str = P} = '$3',
            check_prefix_namespace(L, P, U),
            xqerl_context:add_statically_known_namespace(parser, U, P), 
            #xqModuleDecl{namespace = U, prefix = P}
    end.


'Separator'              -> ';'.


'Prolog'                 -> 'Prolog1s' : '$1'.


% prolog part I
'Prolog1'                -> 'DefaultNamespaceDecl' 'Separator' : '$1'.

'Prolog1'                -> 'Setter' 'Separator' : '$1'.


'Prolog1'                -> 'NamespaceDecl' 'Separator' : '$1'. 


'Prolog1'                -> 'Import' 'Separator' : '$1'.


% prolog part II
'Prolog1'                -> 'ContextItemDecl' 'Separator' : '$1'. %3.1


'Prolog1'                -> 'AnnotatedDecl' 'Separator' : '$1'.   %3.1

'Prolog1'                -> 'OptionDecl' 'Separator' : '$1'.


'Prolog1s'               -> 'Prolog1' 'Prolog1s' : ['$1' | '$2'].

'Prolog1s'               -> 'Prolog1' : ['$1'].


'Setter'                 -> 'BoundarySpaceDecl'    : '$1'.

'Setter'                 -> 'DefaultCollationDecl' : '$1'.

'Setter'                 -> 'BaseURIDecl'          : '$1'.

'Setter'                 -> 'ConstructionDecl'     : '$1'.

'Setter'                 -> 'OrderingModeDecl'     : '$1'.

'Setter'                 -> 'EmptyOrderDecl'       : '$1'.

'Setter'                 -> 'CopyNamespacesDecl'   : '$1'.

'Setter'                 -> 'DecimalFormatDecl'    : '$1'.

'Setter'                 -> 'RevalidationDecl'     : '$1'.


'BoundarySpaceDecl'      -> 'declare' 'boundary-space' 'preserve' : 
    #xqBoundarySpaceDecl{anno = line('$1'), mode = preserve}.

'BoundarySpaceDecl'      -> 'declare' 'boundary-space' 'strip'    : 
    #xqBoundarySpaceDecl{anno = line('$1'), mode = strip}.


'DefaultCollationDecl'   -> 'declare' 'default' 'collation' 'URILiteral' : 
    #xqURILiteral{str = U} = '$4',
    #xqDefaultCollationDecl{anno = line('$1'), uri = U}.


'BaseURIDecl'            -> 'declare' 'base-uri' 'URILiteral' : 
    #xqURILiteral{str = U} = '$3',
    #xqBaseURIDecl{anno = line('$1'), uri = U}.


'ConstructionDecl'       -> 'declare' 'construction' 'strip'    : 
    #xqConstructionDecl{anno = line('$1'), mode = strip}.

'ConstructionDecl'       -> 'declare' 'construction' 'preserve' : 
    #xqConstructionDecl{anno = line('$1'), mode = preserve}.


'OrderingModeDecl'       -> 'declare' 'ordering' 'ordered'   : 
    #xqOrderingModeDecl{anno = line('$1'), mode = ordered}.


'OrderingModeDecl'       -> 'declare' 'ordering' 'unordered' : 
    #xqOrderingModeDecl{anno = line('$1'), mode = unordered}.


'EmptyOrderDecl'         -> 'declare' 'default' 'order' 'empty' 'greatest' : 
    #xqEmptyOrderDecl{anno = line('$1'), mode = greatest}.

'EmptyOrderDecl'         -> 'declare' 'default' 'order' 'empty' 'least'    : 
    #xqEmptyOrderDecl{anno = line('$1'), mode = least}.


'CopyNamespacesDecl'     -> 'declare' 'copy-namespaces' 'PreserveMode' ',' 'InheritMode' : 
    #xqCopyNamespacesDecl{anno = line('$1'), pre = '$3', inh = '$5'}.


'PreserveMode'           -> 'preserve' : 'preserve'.


'PreserveMode'           -> 'no-preserve' : 'no-preserve'.


'InheritMode'            -> 'inherit' : 'inherit'.

'InheritMode'            -> 'no-inherit' : 'no-inherit'.


'DecimalFormatDecl'      -> 'declare' 'decimal-format' 'EQName'  'DFPropertyNameList' : 
    #xqDecimalFormatDecl{anno = line('$1'), name = expand_qname(other,'$3'), props = '$4'}.

'DecimalFormatDecl'      -> 'declare' 'default' 'decimal-format' 'DFPropertyNameList' : 
    #xqDecimalFormatDecl{anno = line('$1'), props = '$4'}.


'RevalidationDecl'       -> 'declare' 'revalidation' 'strict' : ?parse_err('XUST0026', {undefined, line('$1')}). %{'revalidation', 'strict'}.

'RevalidationDecl'       -> 'declare' 'revalidation' 'lax'    : ?parse_err('XUST0026', {undefined, line('$1')}). %{'revalidation', 'lax'}.

'RevalidationDecl'       -> 'declare' 'revalidation' 'skip'   : 
    #xqRevalidationDecl{anno = line('$1'), kind = skip}.


'DFPropertyNameList'     -> 'DFPropertyName' '=' 'StringLiteral'  : 
    [{'$1', line('$2'), bin_value_of('$3')}].

'DFPropertyNameList'     -> 'DFPropertyName' '=' 'StringLiteral' 'DFPropertyNameList' : 
    [{'$1', line('$2'), bin_value_of('$3')}|'$4'].


'DFPropertyName'         -> 'decimal-separator'  : 'decimal-separator' .


'DFPropertyName'         -> 'grouping-separator' : 'grouping-separator'.


'DFPropertyName'         -> 'infinity'           : 'infinity'          .


'DFPropertyName'         -> 'minus-sign'         : 'minus-sign'        .


'DFPropertyName'         -> 'NaN'                : 'NaN'               .


'DFPropertyName'         -> 'percent'            : 'percent'           .


'DFPropertyName'         -> 'per-mille'          : 'per-mille'         .


'DFPropertyName'         -> 'zero-digit'         : 'zero-digit'        .


'DFPropertyName'         -> 'digit'              : 'digit'             .


'DFPropertyName'         -> 'pattern-separator'  : 'pattern-separator' .


'DFPropertyName'         -> 'exponent-separator' : 'exponent-separator'.


'Import'                 -> 'SchemaImport' : ?parse_err('XQST0009', {undefined, 1}).


'Import'                 -> 'ModuleImport' : '$1'.

%list of URILiteral
'URILiteralList'         -> 'URILiteral' : ['$1'].

'URILiteralList'         -> 'URILiteral' ',' 'URILiteralList' : ['$1'|'$3'].


'SchemaImport'           -> 'import' 'schema' 'SchemaPrefix' 'URILiteral' 'at' 'URILiteralList' : 
    L = line('$1'),
    P = '$3',
    #xqURILiteral{str = U} = '$4',
    check_schema_prefix_namespace(L,P,U),
    #xqImport{anno = L, kind = schema, uri = U, prefix = P, hints = '$6'}.

'SchemaImport'           -> 'import' 'schema'                'URILiteral' 'at' 'URILiteralList' : 
    L = line('$1'),
    P = <<>>,
    #xqURILiteral{str = U} = '$3',
    check_schema_prefix_namespace(L,P,U),
    #xqImport{anno = L, kind = schema, uri = U, prefix = P, hints = '$5'}.

'SchemaImport'           -> 'import' 'schema' 'SchemaPrefix' 'URILiteral'                       : 
    L = line('$1'),
    P = '$3',
    #xqURILiteral{str = U} = '$4',
    check_schema_prefix_namespace(L,P,U),
    #xqImport{anno = L, kind = schema, uri = U, prefix = P, hints = []}.

'SchemaImport'           -> 'import' 'schema'                'URILiteral'                       : 
    L = line('$1'),
    P = <<>>,
    #xqURILiteral{str = U} = '$3',
    check_schema_prefix_namespace(L,P,U),
    #xqImport{anno = L, kind = schema, uri = U, prefix = P, hints = []}.


'SchemaPrefix'           -> 'namespace' 'NCName' '=' : #xqNCName{str = P} = '$2', P.

'SchemaPrefix'           -> 'default' 'element' 'namespace' : <<>>.


'ModuleImport'           -> 'import' 'module' 'URILiteral' :
    L = line('$1'),
    P = <<>>,
    #xqURILiteral{str = U} = '$3',
    case U of
        <<>> ->
            ?parse_err('XQST0088', {undefined, L});
        _ ->
            U1 = check_import_uri(L, U),
            ok = check_prefix_namespace(L, P, U1),
            xqerl_context:add_statically_known_namespace(parser, U, P),
            #xqImport{anno = L, kind = module, uri = U, prefix = P, hints = []}
    end.

'ModuleImport'           -> 'import' 'module' 'namespace' 'NCName' '=' 'URILiteral' : 
    L = line('$1'),
    #xqNCName{str = P} = '$4',
    #xqURILiteral{str = U} = '$6',
    case U of
        <<>> ->
            ?parse_err('XQST0088', {undefined, L});
        _ ->
            U1 = check_import_uri(L, U),
            ok = check_prefix_namespace(L, P, U1),
            xqerl_context:add_statically_known_namespace(parser, U, P),
            #xqImport{anno = L, kind = module, uri = U, prefix = P, hints = []}
    end.


'ModuleImport'           -> 'import' 'module' 'URILiteral' 'at' 'URILiteralList' : 
    L = line('$1'),
    P = <<>>,
    #xqURILiteral{str = U} = '$3',
    case U of
        <<>> ->
            ?parse_err('XQST0088', {undefined, L});
        _ ->
            U1 = check_import_uri(L, U),
            ok = check_prefix_namespace(L, P, U1),
            xqerl_context:add_statically_known_namespace(parser, U, P),
            #xqImport{anno = L, kind = module, uri = U, prefix = P, hints = '$5'}
    end.

'ModuleImport'           -> 'import' 'module' 'namespace' 'NCName' '=' 'URILiteral' 'at' 'URILiteralList' : 
    L = line('$1'),
    #xqNCName{str = P} = '$4',
    #xqURILiteral{str = U} = '$6',
    case U of
        <<>> ->
            ?parse_err('XQST0088', {undefined, L});
        _ ->
            U1 = check_import_uri(L, U),
            ok = check_prefix_namespace(L, P, U1),
            xqerl_context:add_statically_known_namespace(parser, U, P),
            #xqImport{anno = L, kind = module, uri = U, prefix = P, hints = '$8'}
    end.


'NamespaceDecl'          -> 'declare' 'namespace' 'NCName' '=' 'URILiteral' : 
    L = line('$1'),
    #xqNCName{str = P} = '$3',
    #xqURILiteral{str = U} = '$5',
    ok = check_prefix_namespace(L, P, check_import_uri(L, U)), 
    xqerl_context:add_statically_known_namespace(parser,U, P),
    #xqNamespaceDecl{anno = L, uri = U, prefix = P}.


'DefaultNamespaceDecl'   -> 'declare' 'default' 'element'  'namespace' 'URILiteral' : 
    case '$5' of
        #xqURILiteral{str = <<>>} ->
            #xqDefaultNamespaceDecl{anno = line('$1'), kind = element, uri = <<>>};
        #xqURILiteral{str = N} ->
            xqerl_context:add_statically_known_namespace(parser, N, <<>>),
            xqerl_context:set_default_element_type_namespace(parser, N),
            #xqDefaultNamespaceDecl{anno = line('$1'), kind = element, uri = N}
    end.

'DefaultNamespaceDecl'   -> 'declare' 'default' 'function' 'namespace' 'URILiteral' : 
    Ns = 
        case '$5' of
            #xqURILiteral{str = <<>>} ->
                <<>>;
            #xqURILiteral{str = <<"http://www.w3.org/2005/xpath-functions">>} ->
                <<"http://www.w3.org/2005/xpath-functions">>;
            #xqURILiteral{str = N} ->
                N
        end,
    xqerl_context:set_default_function_namespace(parser, Ns), 
    #xqDefaultNamespaceDecl{anno = line('$1'), kind = function, uri = Ns}.


'AnnotatedDecl'          -> 'declare' 'AnnotationList' 'VarDecl'      : ('$3')#xqVar{annotations = '$2', anno = line('$1')}.


'AnnotatedDecl'          -> 'declare' 'AnnotationList' 'FunctionDecl' : ('$3')#xqFunctionDef{annotations = '$2', anno = line('$1')}.


'AnnotatedDecl'          -> 'declare' 'VarDecl'                       : ('$2')#xqVar{anno = line('$1')}.


'AnnotatedDecl'          -> 'declare' 'FunctionDecl'                  : ('$2')#xqFunctionDef{anno = line('$1')}.
 

'AnnotationList'         -> 'Annotation' 'AnnotationList' : ['$1' | '$2'].

'AnnotationList'         -> 'updating'   'AnnotationList' : 
    [#xqAnnotation{anno = line('$1'), name = #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>, prefix = <<>>, local_name = <<"updating">>}, values = []} | '$2'].

'AnnotationList'         -> 'Annotation' : ['$1'].

'AnnotationList'         -> 'updating' : 
    [#xqAnnotation{anno = line('$1'), name = #xqQName{namespace = <<"http://www.w3.org/2012/xquery">>, prefix = <<>>, local_name = <<"updating">>}, values = []}].


'LiteralList'            -> 'Literal' ',' 'LiteralList' : ['$1' | '$3'].


'LiteralList'            -> 'Literal' : ['$1'].


'Annotation'             -> '%' 'EQName' '(' 'LiteralList' ')' : 
    #xqAnnotation{anno = line('$1'), name = expand_qname(anno, '$2'), values = '$4'}.

'Annotation'             -> '%' 'EQName'                       : 
    #xqAnnotation{anno = line('$1'), name = expand_qname(anno, '$2'), values = []}.


%% 
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' 'external' ':=' 'VarDefaultValue'  : 
    #xqVar{anno = line('$1'), id = next_id(), name = expand_qname(var,'$3'), type = '$4', 'external' = true, expr = '$7'}.

'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' 'external'                         : 
    #xqVar{anno = line('$1'), id = next_id(), name = expand_qname(var,'$3'), type = '$4', 'external' = true}.

'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' ':=' 'VarValue'                    : 
    #xqVar{anno = line('$1'), id = next_id(), name = expand_qname(var,'$3'), type = '$4', expr = '$6'}.

'VarDecl'                -> 'variable' '$' 'VarName' 'external' ':=' 'VarDefaultValue'                    : 
    #xqVar{anno = line('$1'), id = next_id(), name = expand_qname(var,'$3'), type = #xqSeqType{anno = line('$1')}, 'external' = true, expr = '$6'}.

'VarDecl'                -> 'variable' '$' 'VarName' 'external'                                           : 
    #xqVar{anno = line('$1'), id = next_id(), name = expand_qname(var,'$3'), type = #xqSeqType{anno = line('$1')}, 'external' = true}.


'VarDecl'                -> 'variable' '$' 'VarName' ':=' 'VarValue'                                      : 
    #xqVar{anno = line('$1'), id = next_id(), name = expand_qname(var,'$3'), type = #xqSeqType{anno = line('$1')}, expr = '$5'}.


'VarValue'               -> 'ExprSingle' : '$1'.


'VarDefaultValue'        -> 'ExprSingle' : '$1'.


'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' ':=' 'VarValue'                   : 
    #xqContextItemDecl{anno = line('$1'), type = #xqSeqType{anno = line('$1'), type = '$5', occur = one}, external = false, default = '$7'}.

'ContextItemDecl'        -> 'declare' 'context' 'item'                 ':=' 'VarValue'                   : 
    #xqContextItemDecl{anno = line('$1'), type = #xqSeqType{anno = line('$1')}, external = false, default = '$5'}.

'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' 'external' ':=' 'VarDefaultValue' : 
    #xqContextItemDecl{anno = line('$1'), type = #xqSeqType{anno = line('$1'), type = '$5', occur = one}, external = true, default = '$8'}.


'ContextItemDecl'        -> 'declare' 'context' 'item'                 'external' ':=' 'VarDefaultValue' : 
    #xqContextItemDecl{anno = line('$1'), type = #xqSeqType{anno = line('$1')}, external = true, default = '$6'}.

'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' 'external'                        : 
    #xqContextItemDecl{anno = line('$1'), type = #xqSeqType{anno = line('$1'), type = '$5', occur = one}, external = true}.


'ContextItemDecl'        -> 'declare' 'context' 'item'                 'external'                        : 
    #xqContextItemDecl{anno = line('$1'), type = #xqSeqType{anno = line('$1')}, external = true}.


'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), arity = length('$4'), params = '$4', type = '$7', body = '$8'}.

'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')' 'as' 'SequenceType' 'external'     : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), arity = length('$4'), params = '$4', type = '$7', external = true}.

'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')'                     'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), arity = length('$4'), params = '$4', type = #xqSeqType{anno = line('$1')}, body = '$6'}.

'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')'                     'external'     : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), arity = length('$4'), params = '$4', type = #xqSeqType{anno = line('$1')}, external = true}.

'FunctionDecl'           -> 'function' 'EQName' '('             ')' 'as' 'SequenceType' 'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), type = '$6', body = '$7'}.


'FunctionDecl'           -> 'function' 'EQName' '('             ')' 'as' 'SequenceType' 'external'     : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), type = '$6', external = true}.


'FunctionDecl'           -> 'function' 'EQName' '('             ')'                     'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), type = #xqSeqType{anno = line('$1')}, body = '$5'}.

'FunctionDecl'           -> 'function' 'EQName' '('             ')'                     'external'     : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), name = expand_qname(func, '$2'), type = #xqSeqType{anno = line('$1')}, external = true}.


'ParamList'              -> 'Param' ',' 'ParamList' : ['$1' | '$3'].


'ParamList'              -> 'Param' : ['$1'].

'Param'                  -> '$' 'EQName' 'TypeDeclaration' : 
    #xqVar{id = next_id(), name = expand_qname(var, '$2'), type = '$3', anno = line('$1')}.

'Param'                  -> '$' 'EQName'                   : 
    #xqVar{id = next_id(), name = expand_qname(var, '$2'), type = #xqSeqType{anno = line('$1')}, anno = line('$1')}.


'FunctionBody'           -> 'EnclosedExpr' : '$1'.


'EnclosedExpr'           -> '{' 'Expr' '}' : 
    #xqEnclosedExpr{anno = line('$1'), expr = '$2'}.

'EnclosedExpr'           -> '{' '}' : 
    #xqEnclosedExpr{anno = line('$1'), expr = 'empty-expr'}.


'OptionDecl'             -> 'declare' 'option' 'EQName' 'StringLiteral' : 
    #xqOptionDecl{anno = line('$1'), name = expand_qname(opt, '$3'), val = bin_value_of('$4')}.


'QueryBody'              -> 'Expr' : #xqQuery{query = '$1'}.


'Expr'                   -> 'ExprSingle' ',' 'Expr' : ['$1' | '$3'].

'Expr'                   -> 'ExprSingle' : ['$1'].


% [40]
'ExprSingle'             -> 'FLWORExpr' : '$1'.

'ExprSingle'             -> 'QuantifiedExpr' : '$1'.


'ExprSingle'             -> 'SwitchExpr' : '$1'.


'ExprSingle'             -> 'TypeswitchExpr' : '$1'.


'ExprSingle'             -> 'IfExpr' : '$1'.


'ExprSingle'             -> 'TryCatchExpr' : '$1'.

'ExprSingle'             -> 'InsertExpr' : '$1'.


'ExprSingle'             -> 'DeleteExpr' : '$1'.


'ExprSingle'             -> 'RenameExpr' : '$1'.


'ExprSingle'             -> 'ReplaceExpr' : '$1'.

'ExprSingle'             -> 'UpdatingFunctionCall' : '$1'.

'ExprSingle'             -> 'CopyModifyExpr' : '$1'.


'ExprSingle'             -> 'OrExpr' : '$1'.


% [199]
'InsertExprTargetChoice' -> 'after' : 'after'.

'InsertExprTargetChoice' -> 'before' : 'before'.


'InsertExprTargetChoice' -> 'as' 'first' 'into' : 'into_first'.

'InsertExprTargetChoice' -> 'as' 'last' 'into' : 'into_last'.

'InsertExprTargetChoice' -> 'into' : 'into'.
  


% [200]
'InsertExpr' -> 'insert' 'node' 'ExprSingle' 'InsertExprTargetChoice' 'ExprSingle' : 
    #xqUpdateExpr{id = next_id(), kind = '$4', src = '$3', tgt = '$5', anno = line('$1')}.

'InsertExpr' -> 'insert' 'nodes' 'ExprSingle' 'InsertExprTargetChoice' 'ExprSingle' : 
    #xqUpdateExpr{id = next_id(), kind = '$4', src = '$3', tgt = '$5', anno = line('$1')}.


% [201]
'DeleteExpr' -> 'delete' 'node'  'ExprSingle' :
    #xqUpdateExpr{id = next_id(), kind = 'delete', tgt = '$3', anno = line('$1')}.


'DeleteExpr' -> 'delete' 'nodes' 'ExprSingle' :
    #xqUpdateExpr{id = next_id(), kind = 'delete', tgt = '$3', anno = line('$1')}.


% [202]
'ReplaceExpr' -> 'replace' 'value' 'of' 'node' 'ExprSingle' 'with' 'ExprSingle' : 
    #xqUpdateExpr{id = next_id(), kind = 'replace_value', tgt = '$5', src = '$7', anno = line('$1')}.

'ReplaceExpr' -> 'replace' 'node' 'ExprSingle' 'with' 'ExprSingle' : 
    #xqUpdateExpr{id = next_id(), kind = 'replace', tgt = '$3', src = '$5', anno = line('$1')}.


% [203]
'RenameExpr' -> 'rename' 'node' 'ExprSingle' 'as' 'ExprSingle' : 
    #xqUpdateExpr{id = next_id(), kind = 'rename', tgt = '$3', src = '$5', anno = line('$1')}.


% [207]
'UpdatingFunctionCall' -> 'invoke' 'updating' 'PrimaryExpr' 'ArgumentList' : 
    % updating no different than regular call with update 3.0
    Part = is_partial_impl('$4'),
    #xqPostfixExpr{id = next_id(), part = Part, expr = '$3', post = '$4'}.


% [208]
'CopyModifyExpr' -> 'copy' 'CopyBindingList' 'modify' 'ExprSingle' 'return' 'ExprSingle' :
    #xqModifyExpr{id = next_id(), vars = '$2', expr = '$4', return = '$6', anno = line('$1')}.


'CopyBindingList' -> 'CopyBinding' ',' 'CopyBindingList' : ['$1'|'$3'].

'CopyBindingList' -> 'CopyBinding' : ['$1'].


'CopyBinding' -> '$' 'VarName' ':=' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', expr = '$4', anno = line('$1')}.


% [41]
'FLWORExpr'              -> 'InitialClause' 'IntermediateClauseList' 'ReturnClause' : 
    #xqFlwor{id = next_id(), loop = '$1'++'$2', return = '$3'}.

'FLWORExpr'              -> 'InitialClause'                          'ReturnClause' : 
    #xqFlwor{id = next_id(), loop = '$1', return = '$2'}.


% [42]
'InitialClause'          -> 'ForClause' : '$1'.

'InitialClause'          -> 'LetClause' : '$1'.

'InitialClause'          -> 'WindowClause' : '$1'.

% [43]
'IntermediateClauseList' -> 'IntermediateClause' 'IntermediateClauseList' : '$1' ++ '$2'.

'IntermediateClauseList' -> 'IntermediateClause'  : '$1'.


'IntermediateClause'     -> 'InitialClause'  : '$1'.


'IntermediateClause'     -> 'WhereClause'  : '$1'.

'IntermediateClause'     -> 'GroupByClause'  : '$1'.


'IntermediateClause'     -> 'OrderByClause'  : '$1'.


'IntermediateClause'     -> 'CountClause' : '$1'.


% [44]
'ForClause'              -> 'for' 'ForBindingList' : '$2'.


% [45]
'ForBindingList'         -> 'ForBinding' ',' 'ForBindingList' : [#xqFor{var = '$1'} | '$3'] .

'ForBindingList'         -> 'ForBinding' : [#xqFor{var = '$1'}].


'ForBinding'             -> '$' 'VarName' 'TypeDeclaration' 'AllowingEmpty' 'PositionalVar' 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', type = '$3', 'empty' = true, position = '$5', expr = '$7', anno = line('$1')}.


'ForBinding'             -> '$' 'VarName'                   'AllowingEmpty' 'PositionalVar' 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', 'empty' = true, position = '$4', expr = '$6', anno = line('$1')}.

'ForBinding'             -> '$' 'VarName' 'TypeDeclaration'                 'PositionalVar' 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', type = '$3', position = '$4', expr = '$6', anno = line('$1')}.


'ForBinding'             -> '$' 'VarName'                                   'PositionalVar' 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', position = '$3', expr = '$5', anno = line('$1')}.

'ForBinding'             -> '$' 'VarName' 'TypeDeclaration' 'AllowingEmpty'                 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', type = '$3', 'empty' = true, expr = '$6', anno = line('$1')}.

'ForBinding'             -> '$' 'VarName'                   'AllowingEmpty'                 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', 'empty' = true, expr = '$5', anno = line('$1')}.

'ForBinding'             -> '$' 'VarName' 'TypeDeclaration'                                 'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', type = '$3', expr = '$5', anno = line('$1')}.

'ForBinding'             -> '$' 'VarName'                                                   'in' 'ExprSingle' : 
    #xqVar{id = next_id(), name = '$2', expr = '$4', anno = line('$1')}.

% [46]
'AllowingEmpty'          -> 'allowing' 'empty' : true.

% [47]
'PositionalVar'          -> 'at' '$' 'VarName' : #xqPosVar{id = next_id(), name = '$3'} .


% [48]
'LetClause'              -> 'let' 'LetBindingList' : '$2'. 

% [49]
'LetBindingList'         -> 'LetBinding' ',' 'LetBindingList' : [#xqLet{var = '$1'}|'$3'].

'LetBindingList'         -> 'LetBinding' : [#xqLet{var = '$1'}] .


'LetBinding'             -> '$' 'VarName' 'TypeDeclaration' ':=' 'ExprSingle' : #xqVar{id = next_id(), name = '$2', type = '$3', expr = '$5', anno = line('$1')}.

'LetBinding'             -> '$' 'VarName'                   ':=' 'ExprSingle' : #xqVar{id = next_id(), name = '$2',                expr = '$4', anno = line('$1')}.


% [50]
'WindowClause'           -> 'for' 'TumblingWindowClause' : ['$2'].

'WindowClause'           -> 'for' 'SlidingWindowClause'  : ['$2'].


% [51]
'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), name = '$4', type = '$5', expr = '$7', anno = line('$3')},
                                     start_expr = element(5, '$8'),
                                     s          = element(1, '$8'),
                                     spos       = element(2, '$8'),
                                     sprev      = element(3, '$8'),
                                     snext      = element(4, '$8'),
                                     end_expr   = element(5, '$9'),
                                     e          = element(1, '$9'),
                                     epos       = element(2, '$9'),
                                     eprev      = element(3, '$9'),
                                     enext      = element(4, '$9'),
                                     only       = element(6, '$9')
                                    }.

'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName'                   'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), name = '$4', expr = '$6', anno = line('$3')},
                                     start_expr = element(5, '$7'),
                                     s          = element(1, '$7'),
                                     spos       = element(2, '$7'),
                                     sprev      = element(3, '$7'),
                                     snext      = element(4, '$7'),
                                     end_expr   = element(5, '$8'),
                                     e          = element(1, '$8'),
                                     epos       = element(2, '$8'),
                                     eprev      = element(3, '$8'),
                                     enext      = element(4, '$8'),
                                     only       = element(6, '$8')
                                    }.


'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition'                      : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), name = '$4', type = '$5', expr = '$7', anno = line('$3')},
                                     start_expr = element(5, '$8'),
                                     s          = element(1, '$8'),
                                     spos       = element(2, '$8'),
                                     sprev      = element(3, '$8'),
                                     snext      = element(4, '$8')
                                    }.

'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName'                   'in' 'ExprSingle' 'WindowStartCondition'                      : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), name = '$4', expr = '$6', anno = line('$3')},
                                     start_expr = element(5, '$7'),
                                     s          = element(1, '$7'),
                                     spos       = element(2, '$7'),
                                     sprev      = element(3, '$7'),
                                     snext      = element(4, '$7')
                                    }.

% [52]
'SlidingWindowClause'    -> 'sliding' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = sliding, 
                                     win_variable = #xqVar{id = next_id(), name = '$4', type = '$5', expr = '$7', anno = line('$3')},
                                     start_expr = element(5, '$8'),
                                     s          = element(1, '$8'),
                                     spos       = element(2, '$8'),
                                     sprev      = element(3, '$8'),
                                     snext      = element(4, '$8'),
                                     end_expr   = element(5, '$9'),
                                     e          = element(1, '$9'),
                                     epos       = element(2, '$9'),
                                     eprev      = element(3, '$9'),
                                     enext      = element(4, '$9'),
                                     only       = element(6, '$9')
                                    }.

'SlidingWindowClause'    -> 'sliding' 'window' '$' 'VarName'                   'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = sliding, 
                                     win_variable = #xqVar{id = next_id(), name = '$4', expr = '$6', anno = line('$3')},
                                     start_expr = element(5, '$7'),
                                     s          = element(1, '$7'),
                                     spos       = element(2, '$7'),
                                     sprev      = element(3, '$7'),
                                     snext      = element(4, '$7'),
                                     end_expr   = element(5, '$8'),
                                     e          = element(1, '$8'),
                                     epos       = element(2, '$8'),
                                     eprev      = element(3, '$8'),
                                     enext      = element(4, '$8'),
                                     only       = element(6, '$8')
                                    }.


% [53]
'WindowStartCondition'   -> 'start' 'WindowVars' 'when' 'ExprSingle' : erlang:append_element('$2', '$4').

'WindowStartCondition'   -> 'start'              'when' 'ExprSingle' : {'undefined','undefined','undefined','undefined','$3'}.


% [54]
'WindowEndCondition'     -> 'only' 'end' 'WindowVars' 'when' 'ExprSingle' : erlang:append_element(erlang:append_element('$3', '$5'),'true').


'WindowEndCondition'     ->        'end' 'WindowVars' 'when' 'ExprSingle' : erlang:append_element(erlang:append_element('$2', '$4'),'false').

'WindowEndCondition'     -> 'only' 'end'              'when' 'ExprSingle' : {'undefined','undefined','undefined','undefined','$4','true'}.

'WindowEndCondition'     ->        'end'              'when' 'ExprSingle' : {'undefined','undefined','undefined','undefined','$3','false'}.


% [55]
'WindowVars'             -> '$' 'CurrentItem' 'PositionalVar' 'previous' '$' 'PreviousItem' 'next' '$' 'NextItem' : {'$2',       '$3',       '$6',       '$9'}.

'WindowVars'             ->                   'PositionalVar' 'previous' '$' 'PreviousItem' 'next' '$' 'NextItem' : {'undefined','$1',       '$4',       '$7'}.

'WindowVars'             -> '$' 'CurrentItem'                 'previous' '$' 'PreviousItem' 'next' '$' 'NextItem' : {'$2',       'undefined','$5',       '$8'}.

'WindowVars'             ->                                   'previous' '$' 'PreviousItem' 'next' '$' 'NextItem' : {'undefined','undefined','$3',       '$6'}.

'WindowVars'             -> '$' 'CurrentItem' 'PositionalVar'                               'next' '$' 'NextItem' : {'$2',       '$3',       'undefined','$6'}.

'WindowVars'             ->                   'PositionalVar'                               'next' '$' 'NextItem' : {'undefined','$1',       'undefined','$4'}.

'WindowVars'             -> '$' 'CurrentItem'                                               'next' '$' 'NextItem' : {'$2',       'undefined','undefined','$5'}.

'WindowVars'             ->                                                                 'next' '$' 'NextItem' : {'undefined','undefined','undefined','$3'}.

'WindowVars'             -> '$' 'CurrentItem' 'PositionalVar' 'previous' '$' 'PreviousItem'                       : {'$2',       '$3',       '$6',       'undefined'}.

'WindowVars'             ->                   'PositionalVar' 'previous' '$' 'PreviousItem'                       : {'undefined','$1',       '$4',       'undefined'}.

'WindowVars'             -> '$' 'CurrentItem'                 'previous' '$' 'PreviousItem'                       : {'$2',       'undefined','$5',       'undefined'}.

'WindowVars'             ->                                   'previous' '$' 'PreviousItem'                       : {'undefined','undefined','$3',       'undefined'}.

'WindowVars'             -> '$' 'CurrentItem' 'PositionalVar'                                                     : {'$2',       '$3',       'undefined','undefined'}.

'WindowVars'             ->                   'PositionalVar'                                                     : {'undefined','$1',       'undefined','undefined'}.

'WindowVars'             -> '$' 'CurrentItem'                                                                     : {'$2',       'undefined','undefined','undefined'}.


% [56]
'CurrentItem'            -> 'EQName' :
    #xqQName{anno = A} = '$1',
    #xqVar{anno = A, id = next_id(), name = expand_qname(var, '$1')}.


% [57]
'PreviousItem'           -> 'EQName' :
    #xqQName{anno = A} = '$1',
    #xqVar{anno = A, id = next_id(), name = expand_qname(var, '$1')}.


% [58]
'NextItem'               -> 'EQName' :
    #xqQName{anno = A} = '$1',
    #xqVar{anno = A, id = next_id(), name = expand_qname(var, '$1')}.


% [59]
'CountClause'            -> 'count' '$' 'VarName' : 
    [#xqCount{var = #xqVar{id = next_id(), 
                           name = expand_qname(var, '$3'),
                           type = #xqSeqType{anno = line('$2'), type = 'xs:integer', occur = one}, 
                           anno = line('$2')}}].


% [60]
'WhereClause'            -> 'where' 'ExprSingle' : split_where_statement('$2', line('$1')).


% [61]
'GroupByClause'          ->  'group' 'by' 'GroupingSpecList' : sort_grouping('$3', next_id(), line('$1')).

% [62]
'GroupingSpecList'       ->  'GroupingSpec' ',' 'GroupingSpecList' : '$1' ++ '$3'.

'GroupingSpecList'       ->  'GroupingSpec' : '$1'.


% [63]
%% Grouping makes a new variable to group on by injecting a let statement
'GroupingSpec'           ->  'GroupingVariable' 'TypeDeclaration' ':=' 'ExprSingle' 'collation' 'URILiteral' : 
    [#xqLet{var = #xqVar{anno = line('$3'), id = next_id(), name = ('$1')#xqVarRef.name, type = '$2', expr = '$4'}},
     #xqGroupBy{grp_variable = '$1', collation = '$6'}] .

'GroupingSpec'           ->  'GroupingVariable' 'TypeDeclaration' ':=' 'ExprSingle'                          : 
    [#xqLet{var = #xqVar{anno = line('$3'), id = next_id(), name = ('$1')#xqVarRef.name, type = '$2', expr = '$4'}},
     #xqGroupBy{grp_variable = '$1', collation = 'default'}] .

'GroupingSpec'           ->  'GroupingVariable'                   ':=' 'ExprSingle' 'collation' 'URILiteral' : 
    [#xqLet{var = #xqVar{anno = line('$2'), id = next_id(), name = ('$1')#xqVarRef.name, expr = '$3'}},
     #xqGroupBy{grp_variable = '$1', collation = '$5'}] .

'GroupingSpec'           ->  'GroupingVariable'                   ':=' 'ExprSingle'                          : 
    [#xqLet{var = #xqVar{anno = line('$2'), id = next_id(), name = ('$1')#xqVarRef.name, expr = '$3'}},
     #xqGroupBy{grp_variable = '$1', collation = 'default'}] .


'GroupingSpec'           ->  'GroupingVariable'                                     'collation' 'URILiteral' : 
    [#xqGroupBy{grp_variable = '$1', collation = '$3'}].

'GroupingSpec'           ->  'GroupingVariable'                                                              : 
    [#xqGroupBy{grp_variable = '$1', collation = 'default'}].


% [64]
'GroupingVariable'       ->  '$' 'VarName' : 
    #xqVarRef{anno = line('$1'), name = '$2'}.


% [65]
'OrderByClause'          ->          'order' 'by' 'OrderSpecList' : 
    [#xqOrderByClause{anno = line('$1'), id = next_id(), spec = '$3'}].

'OrderByClause'          -> 'stable' 'order' 'by' 'OrderSpecList' : 
    [#xqOrderByClause{anno = line('$2'), id = next_id(), spec = '$4'}]. % always stable


% [66]
'OrderSpecList'          -> 'OrderSpec' ',' 'OrderSpecList' : ['$1' | '$3'].


'OrderSpecList'          -> 'OrderSpec' : ['$1'].


% [67]
'OrderSpec'              -> 'ExprSingle' 'OrderModifier' : 
    #xqOrderSpec{expr = '$1', modifier = '$2'}.


'OrderSpec'              -> 'ExprSingle'                 : 
    #xqOrderSpec{expr = '$1', modifier = #xqOrderModifier{}}.


% [68]
'OrderModifier'          -> 'ascending'  'empty' 'greatest' 'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), empty = greatest, collation = '$5'}.

'OrderModifier'          -> 'descending' 'empty' 'greatest' 'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), direction = descending, empty = greatest, collation = '$5'}.

'OrderModifier'          ->              'empty' 'greatest' 'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), empty = greatest, collation = '$4'}.

'OrderModifier'          -> 'ascending'  'empty' 'least'    'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), empty = least, collation = '$5'}.

'OrderModifier'          -> 'descending' 'empty' 'least'    'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), direction = descending, empty = least, collation = '$5'}.

'OrderModifier'          ->              'empty' 'least'    'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), empty = least, collation = '$4'}.

'OrderModifier'          -> 'ascending'                     'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), collation = '$3'}.

'OrderModifier'          -> 'descending'                    'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), direction = descending, collation = '$3'}.

'OrderModifier'          ->                                 'collation' 'URILiteral' : 
    #xqOrderModifier{anno = line('$1'), collation = '$2'}.

'OrderModifier'          -> 'ascending'  'empty' 'greatest'                          : 
    #xqOrderModifier{anno = line('$1'), empty = greatest}.

'OrderModifier'          -> 'descending' 'empty' 'greatest'                          : 
    #xqOrderModifier{anno = line('$1'), direction = descending, empty = greatest}.

'OrderModifier'          ->              'empty' 'greatest'                          : 
    #xqOrderModifier{anno = line('$1'), empty = greatest}.

'OrderModifier'          -> 'ascending'  'empty' 'least'                             : 
    #xqOrderModifier{empty = least}.

'OrderModifier'          -> 'descending' 'empty' 'least'                             : 
    #xqOrderModifier{anno = line('$1'), direction = descending, empty = least}.


'OrderModifier'          ->              'empty' 'least'                             : 
    #xqOrderModifier{anno = line('$1'), empty = least}.


'OrderModifier'          -> 'ascending'                                              : 
    #xqOrderModifier{anno = line('$1')}.

'OrderModifier'          -> 'descending'                                             : 
    #xqOrderModifier{anno = line('$1'), direction = descending}.


% [69]
'ReturnClause'           -> 'return' 'ExprSingle' : '$2'.


% [70]
'QuantifiedExpr'         -> 'some'  'InStatements' 'satisfies' 'ExprSingle' : 
    #xqQuantifiedExpr{which = some, in_expr = '$2', satisfies = '$4'}.

'QuantifiedExpr'         -> 'every' 'InStatements' 'satisfies' 'ExprSingle' : 
    #xqQuantifiedExpr{which = every, in_expr = '$2', satisfies = '$4'}.


'InStatement'            -> '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' : 
    #xqVar{anno = line('$1'), id = next_id(), name = '$2', type = '$3', expr = '$5'}.

'InStatement'            -> '$' 'VarName' 'in' 'ExprSingle'                   : 
    #xqVar{anno = line('$1'), id = next_id(), name = '$2', expr = '$4'}.


'InStatements'           -> 'InStatement' ',' 'InStatements': ['$1' | '$3'].


'InStatements'           -> 'InStatement' : ['$1'].


% [71]
'SwitchExpr'             ->  'switch' '(' 'Expr' ')' 'SwitchCaseClauses' 'default' 'return' 'ExprSingle' : 
    #xqSwitch{id      = next_id(),
              operand = '$3',
              clauses = '$5',
              default = '$8'}.


% [72]
'SwitchCaseClause'       -> 'SwitchCase' 'return' 'ExprSingle' : 
    #xqSwitchClause{operands = '$1', expr = '$3'}.


'SwitchCaseClauses'      -> 'SwitchCaseClause' 'SwitchCaseClauses' : ['$1'|'$2'].

'SwitchCaseClauses'      -> 'SwitchCaseClause' : ['$1'].


'SwitchCase'             -> 'case' 'SwitchCaseOperand' : ['$2'] .

'SwitchCase'             -> 'case' 'SwitchCaseOperand' 'SwitchCase' : ['$2'|'$3'] .


% [73]
'SwitchCaseOperand'      -> 'ExprSingle' : '$1'  .

% [74]
'TypeswitchExpr'         -> 'typeswitch' '(' 'Expr' ')' 'CaseClauses' 'default' '$' 'VarName' 'return' 'ExprSingle' : 
    #xqTypeswitch{anno = line('$1'),
                  id = next_id(),
                  input = '$3', 
                  cases = '$5', 
                  default = #xqTypeswitchCase{variable = #xqVar{anno = line('$7'), id = next_id(), name = '$8',expr = '$10'}}}.  

'TypeswitchExpr'         -> 'typeswitch' '(' 'Expr' ')' 'CaseClauses' 'default'               'return' 'ExprSingle' : 
    #xqTypeswitch{anno = line('$1'),
                  id = next_id(),
                  input = '$3', 
                  cases = '$5', 
                  default = #xqTypeswitchCase{expr = '$8'}}.  


% [75]
'CaseClause'             -> 'case' '$' 'VarName' 'as' 'SequenceTypeUnion' 'return' 'ExprSingle': 
    #xqTypeswitchCase{types = '$5', variable = #xqVar{anno = line('$2'), id = next_id(), name = '$3',expr = '$7'}}.

'CaseClause'             -> 'case'                    'SequenceTypeUnion' 'return' 'ExprSingle' : 
    #xqTypeswitchCase{types = '$2', expr = '$4'}.


'CaseClauses'            -> 'CaseClause' 'CaseClauses' : ['$1'|'$2'].

'CaseClauses'            -> 'CaseClause' : ['$1'].

% [76]
'SequenceTypeUnion'      -> 'SequenceType' '|' 'SequenceTypeUnion' : ['$1'|'$3']. 

'SequenceTypeUnion'      -> 'SequenceType' : ['$1'].


% [77]
'IfExpr'                 -> 'if' '(' 'Expr' ')' 'then' 'ExprSingle' 'else' 'ExprSingle' : 
    #xqIfExpr{anno = line('$2'), condition = '$3', if_true = {next_id(),'$6'}, if_false = {next_id(),'$8'}}.


% [78]
'TryCatchExpr'           -> 'TryClause' 'CatchClauses' :
    #xqTryCatch{id = next_id(), expr = '$1', catches = '$2'}.

% [79]
'TryClause'              -> 'try' 'EnclosedTryTargetExpr' : '$2'.

% [80]
'EnclosedTryTargetExpr'  -> 'EnclosedExpr' : '$1'.

% [81]
'CatchClause'            -> 'catch' 'CatchErrorList' 'EnclosedExpr' : {'$2', '$3'}.

'CatchClauses'           -> 'CatchClause' 'CatchClauses' : ['$1'|'$2'].

'CatchClauses'           -> 'CatchClause' : ['$1'].

% [82]
'CatchErrorList'         -> 'NameTest' '|' 'CatchErrorList' : ['$1'|'$3'].

'CatchErrorList'         -> 'NameTest' : ['$1'].


% [83]  
'OrExprs'                -> 'AndExpr' 'or' 'OrExprs' : 
   #xqLogicalExpr{id = next_id(),
                  comp = 'or',
                  lhs = '$1',
                  rhs = '$3',
                  anno = line('$2')}.

'OrExprs'                -> 'AndExpr' : '$1'.

'OrExpr'                 -> 'OrExprs' : '$1'.


% [84]  
'AndExprs'               -> 'ComparisonExpr' : '$1'.

'AndExprs'               -> 'ComparisonExpr' 'and' 'AndExprs' :
   #xqLogicalExpr{id = next_id(),
                  comp = 'and',
                  lhs = '$1',
                  rhs = '$3',
                  anno = line('$2')}.


'AndExpr'                -> 'AndExprs' : '$1'.


% [85]  
'ComparisonExpr'         -> 'StringConcatExpr' 'ValueComp'   'StringConcatExpr' : 
   #xqComparisonExpr{id = next_id(), 
                     comp = value_of('$2'), 
                     lhs = '$1', 
                     rhs = '$3', 
                     anno = line('$2')}.

'ComparisonExpr'         -> 'StringConcatExpr' 'GeneralComp' 'StringConcatExpr' : 
   #xqComparisonExpr{id = next_id(), 
                     comp = value_of('$2'), 
                     lhs = '$1', 
                     rhs = '$3', 
                     anno = line('$2')}.

'ComparisonExpr'         -> 'StringConcatExpr' 'NodeComp'    'StringConcatExpr' :
   #xqComparisonExpr{id = next_id(), 
                     comp = value_of('$2'), 
                     lhs = '$1', 
                     rhs = '$3', 
                     anno = line('$2')}.

'ComparisonExpr'         -> 'StringConcatExpr' : '$1'.


% [86]
'StringConcatExpr'       -> 'RangeExpr' '||' 'StringConcatExpr' : 
    case '$3' of
        #xqConcatExpr{expr = L} ->
            #xqConcatExpr{anno = line('$2'), expr = ['$1'|L]};
        _ ->
            #xqConcatExpr{anno = line('$2'), expr = ['$1', '$3']}
    end.

'StringConcatExpr'       -> 'RangeExpr' : '$1'.


% [87] 
'RangeExpr'              -> 'AdditiveExpr' 'to' 'AdditiveExpr' : 
    #xqRange{anno = line('$2'), from = '$1', to = '$3'}.


'RangeExpr'              -> 'AdditiveExpr' : '$1'.


% [88]   
'AdditiveExpr'          -> 'AdditiveExpr' '+' 'MultiplicativeExpr' : 
   #xqArithExpr{id = next_id(), 
                op = '+',
                lhs = '$1',
                rhs = '$3',
                anno = line('$2')}.


'AdditiveExpr'          -> 'AdditiveExpr' '-' 'MultiplicativeExpr' : 
   #xqArithExpr{id = next_id(), 
                op = '-',
                lhs = '$1',
                rhs = '$3',
                anno = line('$2')}.

'AdditiveExpr'          -> 'MultiplicativeExpr' : '$1'.


% [89]  
'MultiplicativeExpr'    -> 'MultiplicativeExpr' '*'    'UnionExpr' : 
   #xqArithExpr{id = next_id(), 
                op = '*',
                lhs = '$1',
                rhs = '$3',
                anno = line('$2')}.

'MultiplicativeExpr'    -> 'MultiplicativeExpr' 'div'  'UnionExpr' : 
   #xqArithExpr{id = next_id(), 
                op = 'div',
                lhs = '$1',
                rhs = '$3',
                anno = line('$2')}.

'MultiplicativeExpr'    -> 'MultiplicativeExpr' 'idiv' 'UnionExpr' : 
   #xqArithExpr{id = next_id(), 
                op = 'idiv',
                lhs = '$1',
                rhs = '$3',
                anno = line('$2')}.


'MultiplicativeExpr'    -> 'MultiplicativeExpr' 'mod'  'UnionExpr' : 
   #xqArithExpr{id = next_id(), 
                op = 'mod',
                lhs = '$1',
                rhs = '$3',
                anno = line('$2')}.

'MultiplicativeExpr'    -> 'UnionExpr'  : '$1'.


% [90]   
'UnionExprs'             -> 'IntersectExceptExpr' 'union' 'UnionExprs' : 
    case '$3' of
        #xqNodeUnionExpr{expr = L} ->
            #xqNodeUnionExpr{anno = line('$2'), expr = ['$1'|L]};
        _ ->
            #xqNodeUnionExpr{anno = line('$2'), expr = ['$1', '$3']}
    end.

'UnionExprs'             -> 'IntersectExceptExpr' '|' 'UnionExprs' : 
    case '$3' of
        #xqNodeUnionExpr{expr = L} ->
            #xqNodeUnionExpr{anno = line('$2'), expr = ['$1'|L]};
        _ ->
            #xqNodeUnionExpr{anno = line('$2'), expr = ['$1', '$3']}
    end.


'UnionExprs'             -> 'IntersectExceptExpr' : '$1'.

'UnionExpr'              -> 'UnionExprs' : '$1'.


% [91]     IntersectExceptExpr     ::=      InstanceofExpr ( ("intersect" | "except") InstanceofExpr )* 
'IntersectExceptExprs'   -> 'InstanceofExpr' 'intersect' 'IntersectExceptExprs' : 
    #xqNodeSetExpr{anno = line('$2'), kind = intersect, lhs = '$1', rhs = '$3'}.

'IntersectExceptExprs'   -> 'InstanceofExpr' 'except' 'IntersectExceptExprs' : 
    #xqNodeSetExpr{anno = line('$2'), kind = except, lhs = '$1', rhs = '$3'}.

'IntersectExceptExprs'   -> 'InstanceofExpr' : '$1'.


'IntersectExceptExpr'    -> 'IntersectExceptExprs' : '$1'.


% [92]     InstanceofExpr    ::=      TreatExpr ( "instance" "of" SequenceType )?  
'InstanceofExpr'         -> 'TreatExpr' 'instance' 'of' 'SequenceType' : 
    #xqTypingExpr{anno = line('$2'), kind = instance, expr = '$1', type = '$4'}.


'InstanceofExpr'         -> 'TreatExpr' : '$1'.


% [93]     TreatExpr      ::=      CastableExpr ( "treat" "as" SequenceType )?  
'TreatExpr'              -> 'CastableExpr' 'treat' 'as' 'SequenceType' : 
    #xqTypingExpr{anno = line('$2'), kind = treat, expr = '$1', type = '$4'}.

'TreatExpr'              -> 'CastableExpr' : '$1'.


% [94]     CastableExpr      ::=      CastExpr ( "castable" "as" SingleType )?  
'CastableExpr'           -> 'CastExpr' 'castable' 'as' 'SingleType' : 
    #xqTypingExpr{anno = line('$2'), kind = castable, expr = '$1', type = '$4'}.

'CastableExpr'           -> 'CastExpr' : '$1'.


% [95]     CastExpr    ::=      ArrowExpr ( "cast" "as" SingleType )?  
'CastExpr'               -> 'ArrowExpr' 'cast' 'as' 'SingleType' : 
    #xqTypingExpr{anno = line('$2'), kind = cast, expr = '$1', type = '$4'}.

'CastExpr'               -> 'ArrowExpr' : '$1'.


% [96]     ArrowExpr      ::=      UnaryExpr ( "=>" ArrowFunctionSpecifier ArgumentList )*  
'ArrowExpr'              -> 'ArrowExpr' '=>' 'ArrowFunctionSpecifier' 'ArgumentList' : 
    #xqArgumentList{args = Args} = '$4',
    case '$3' of
        #xqQName{} ->
            #xqFunctionCall{name = '$3', arity = length(['$1'|Args]), args = ['$1'|Args], anno = line('$2')};
        _ ->
            Part = is_partial_impl(['$4']),
            #xqPostfixExpr{id = next_id(), part = Part, expr = '$3', post = ('$4')#xqArgumentList{args = ['$1'|Args]}}
    end.

'ArrowExpr'              -> 'TransformWithExpr' : '$1'.


% [97] UPD TransformWithExpr     ::=      UnaryExpr ( "transform" "with" "{" Expr? "}" )?
'TransformWithExpr' -> 'UnaryExpr' 'transform' 'with' '{' '}' : 
   Id = next_id(),
   B = list_to_binary(["~", integer_to_list(Id)]),
   Nm = #xqQName{namespace = <<>>, prefix = <<>>, local_name = B},
   #xqModifyExpr{id = next_id(), vars = [#xqVar{id = Id, name = Nm, expr = '$1', anno = line('$2')}], expr = #xqVarRef{anno = line('$2'), name = Nm}, return = #xqVarRef{anno = line('$2'), name = Nm}, anno = line('$2')}.


'TransformWithExpr' -> 'UnaryExpr' 'transform' 'with' '{' 'Expr' '}' :
   Id = next_id(),
   B = list_to_binary(["~", integer_to_list(Id)]),
   Nm = #xqQName{namespace = <<>>, prefix = <<>>, local_name = B},
   #xqModifyExpr{id = next_id(), vars = [#xqVar{id = Id, name = Nm, expr = '$1', anno = line('$2')}], 
                 expr = #xqSimpleMap{id = next_id(), lhs = #xqVarRef{anno = line('$2'), name = Nm}, rhs = '$5', anno = line('$2')}, 
                 return = #xqVarRef{anno = line('$2'), name = Nm}, anno = line('$2')}.


'TransformWithExpr' -> 'UnaryExpr' : '$1'.


% [97]     UnaryExpr      ::=      ("-" | "+")* ValueExpr  
'UnaryExpr'              -> 'uminus' : '$1'.

'UnaryExpr'              -> 'uplus' : '$1'.

'UnaryExpr'              -> 'ValueExpr' : '$1'.


'uminus'                 -> '-' 'ValueExpr' : 
    #xqUnaryExpr{anno = line('$1'), sign = '-', expr = '$2'}.

'uminus'                 -> '-' 'uminus' : 
    #xqUnaryExpr{anno = line('$1'), sign = '-', expr = '$2'}.

'uminus'                 -> '-' 'uplus'  : 
    #xqUnaryExpr{anno = line('$1'), sign = '-', expr = '$2'}.


'uplus'                  -> '+' 'ValueExpr' : 
    #xqUnaryExpr{anno = line('$1'), sign = '+', expr = '$2'}.

'uplus'                  -> '+' 'uminus' : 
    #xqUnaryExpr{anno = line('$1'), sign = '+', expr = '$2'}.

'uplus'                  -> '+' 'uplus'  : 
    #xqUnaryExpr{anno = line('$1'), sign = '+', expr = '$2'}.


% [98]     ValueExpr      ::=      ValidateExpr | ExtensionExpr | SimpleMapExpr 
'ValueExpr'              -> 'ValidateExpr'   : 
    #xqValidateExpr{anno = A} = '$1',
    ?parse_err('XQST0075', {undefined, A}). %TODO Schema Aware Feature


'ValueExpr'              -> 'ExtensionExpr'  : '$1'.


'ValueExpr'              -> 'SimpleMapExpr'  : '$1'.


% [99]     GeneralComp    ::=      "=" | "!=" | "<" | "<=" | ">" | ">="   
'GeneralComp'            -> '='  : '$1'.


'GeneralComp'            -> '!=' : '$1'.


'GeneralComp'            -> '<'  : '$1'.


'GeneralComp'            -> '<=' : '$1'.


'GeneralComp'            -> '>'  : '$1'.


'GeneralComp'            -> '>=' : '$1'.


% [100]    ValueComp      ::=      "eq" | "ne" | "lt" | "le" | "gt" | "ge"   
'ValueComp'              -> 'eq' : '$1'. 


'ValueComp'              -> 'ne' : '$1'.


'ValueComp'              -> 'lt' : '$1'.


'ValueComp'              -> 'le' : '$1'.


'ValueComp'              -> 'gt' : '$1'.


'ValueComp'              -> 'ge' : '$1'.


% [101]    NodeComp    ::=      "is" | "<<" | ">>"   
'NodeComp'               -> 'is' : '$1'.

'NodeComp'               -> '<<' : '$1'.


'NodeComp'               -> '>>' : '$1'.


% [102]    ValidateExpr      ::=      "validate" (ValidationMode | ("type" TypeName))? "{" Expr "}"
'ValidateExpr'           -> 'validate' 'ValidationMode'  '{' 'Expr' '}' : 
    #xqValidateExpr{anno = line('$1')}.


'ValidateExpr'           -> 'validate' type 'TypeName' '{' 'Expr' '}' : 
    #xqValidateExpr{anno = line('$1')}.

'ValidateExpr'           -> 'validate'                   '{' 'Expr' '}' : 
    #xqValidateExpr{anno = line('$1')}.


% [103]    ValidationMode    ::=      "lax" | "strict"
'ValidationMode'         -> 'lax'    : 'lax'.

'ValidationMode'         -> 'strict' : 'strict'.


% [104]    ExtensionExpr     ::=      Pragma+ "{" Expr? "}"
'ExtensionExpr'          -> 'Pragmas' '{' 'Expr' '}' : 
    #xqExtensionExpr{anno = line('$2'), pragmas = '$1', expr = '$3'}.

'ExtensionExpr'          -> 'Pragmas' '{' '}' : 
    %#xqExtensionExpr{anno = line('$2'), pragmas = '$1', expr = []}.
    ?parse_err('XQST0079', {undefined, line('$2')}).


% [105]    Pragma            ::=      "(#" S? EQName (S PragmaContents)? "#)"   /* ws: explicit */
'Pragma'                 -> '(#' 'S' 'EQName' 'S' 'PragmaContents' '#)' :
    case expand_qname(var,'$3') of
        {error, Err} ->
            ?parse_err(Err, {undefined, line('$1')});
        Name ->
            {Name, bin_value_of('$5')}
    end.

'Pragma'                 -> '(#'     'EQName' 'S' 'PragmaContents' '#)' : 
    case expand_qname(var,'$2') of
        {error, Err} ->
            ?parse_err(Err, {undefined, line('$1')});
        Name ->
            {Name, bin_value_of('$4')}
    end.

'Pragma'                 -> '(#' 'S' 'EQName' '#)' : 
    case expand_qname(var,'$3') of
        {error, Err} ->
            ?parse_err(Err, {undefined, line('$1')});
        Name ->
            {Name, <<>>}
    end.

'Pragma'                 -> '(#'     'EQName' '#)' : 
    case expand_qname(var,'$2') of
        {error, Err} ->
            ?parse_err(Err, {undefined, line('$1')});
        Name ->
            {Name, <<>>}
    end.


'Pragmas'                -> 'Pragma' 'Pragmas' : ['$1'|'$2'].

'Pragmas'                -> 'Pragma' : ['$1'].


% [106]    PragmaContents    ::=      (Char* - (Char* '#)' Char*))
%% done in scanner  

% [107]    SimpleMapExpr     ::=      PathExpr ("!" PathExpr)*
'SimpleMapExpr'          -> 'PathExpr' '!' 'SimpleMapExpr' : 
    case '$3' of
        #xqSimpleMap{id = I, lhs = P, rhs = S, anno = A} ->
            #xqSimpleMap{id = I, lhs = #xqSimpleMap{id = next_id(), lhs = '$1', rhs = P, anno = line('$2')}, rhs = S, anno = A};
        _ ->
            #xqSimpleMap{id = next_id(), lhs = '$1', rhs = '$3', anno = line('$2')}
    end.

'SimpleMapExpr'          -> 'PathExpr' : '$1'.


% [108]    PathExpr    ::=      ("/" RelativePathExpr?)| ("//" RelativePathExpr)| RelativePathExpr   /* xgc: leading-lone-slash */
'PathExpr'               -> '/' 'RelativePathExpr'  : 
    #xqPathExpr{anno = line('$1'), id = next_id(), expr = [{root, line('$1')} | '$2']}.

'PathExpr'               -> '//' 'RelativePathExpr' : 
    A = line('$1'),
    New = #xqAxisStep{anno = A, id = next_id(), axis = 'descendant-or-self'},
    #xqPathExpr{anno = A, id = next_id(), expr = [{root, A}, New | '$2']}.

'PathExpr'               -> 'RelativePathExpr'     : 
    %?parse_dbg("'$1'",'$1'),
    case '$1' of 
        [{'root', A}] = V -> 
            #xqPathExpr{anno = A, id = next_id(), expr = V};
        [#xqAxisStep{anno = A}] = V -> 
            #xqPathExpr{anno = A, id = next_id(), expr = [{'context-item', A}|V]};
        [V] -> 
            V;
        V ->  
            #xqPathExpr{id = next_id(), expr = V}
    end.


'RelativePathExpr'       -> 'StepExpr' '/'  'RelativePathExpr' : ['$1' | '$3'].

'RelativePathExpr'       -> 'StepExpr' '//' 'RelativePathExpr' : 
     case '$3' of 
        [#xqAxisStep{axis = child, predicates = []} = H|T] -> 
            ['$1', H#xqAxisStep{axis = descendant} | T];
        _ ->
            New = #xqAxisStep{anno = line('$2'), id = next_id(), axis = 'descendant-or-self'},
            ['$1', New | '$3'] 
     end.

'RelativePathExpr'       -> 'StepExpr' :  ['$1'].


% [110]    StepExpr    ::=      PostfixExpr | AxisStep  
'StepExpr'               -> 'PostfixExpr' : '$1'.

'StepExpr'               -> 'AxisStep'   : '$1'.


'StepExpr'               -> 'lone-slash'   : {root, line('$1')}.


% [111]    AxisStep    ::=      (ReverseStep | ForwardStep) PredicateList 
'AxisStep'               -> 'ReverseStep' 'PredicateList' : ('$1')#xqAxisStep{predicates = '$2'}.

'AxisStep'               -> 'ReverseStep'                 : '$1'.

'AxisStep'               -> 'ForwardStep' 'PredicateList' : ('$1')#xqAxisStep{predicates = '$2'}.

'AxisStep'               -> 'ForwardStep'                 : '$1'.


% [112]    ForwardStep    ::=      (ForwardAxis NodeTest) | AbbrevForwardStep   
'ForwardStep'            -> 'ForwardAxis' 'NodeTest' : 
    case '$1' of
        #xqAxisStep{axis = 'attribute'} ->
            ('$1')#xqAxisStep{node_test = node_to_kind_test('$2', attribute)};
        _ ->
            ('$1')#xqAxisStep{node_test = node_to_kind_test('$2', element)}
    end.

'ForwardStep'            -> 'AbbrevForwardStep'      : '$1'.


% [113]    ForwardAxis    ::=      ("child" "::")| ("descendant" "::")| ("attribute" "::")| ("self" "::")| 
%                                  ("descendant-or-self" "::")| ("following-sibling" "::")| ("following" "::") 
'ForwardAxis'            -> 'child' '::'              : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'child'}.


'ForwardAxis'            -> 'descendant' '::'         : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'descendant'}.

'ForwardAxis'            -> 'attribute' '::'          : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'attribute'}.

'ForwardAxis'            -> 'self' '::'               : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'self'}.

'ForwardAxis'            -> 'descendant-or-self' '::' : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'descendant-or-self'}.

'ForwardAxis'            -> 'following-sibling' '::'  : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'following-sibling'}.

'ForwardAxis'            -> 'following' '::'          : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = forward, axis = 'following'}.


% [114]    AbbrevForwardStep    ::=      "@"? NodeTest  
'AbbrevForwardStep'      -> '@' 'NodeTest' : 
    case node_to_kind_test('$2', 'attribute') of
        #xqKindTest{anno = A, kind = 'attribute'} = Kt ->
            #xqAxisStep{anno = A, id = next_id(), direction = forward, axis = 'attribute', node_test = Kt}
    end.

'AbbrevForwardStep'      -> 'NodeTest'     : 
    case node_to_kind_test('$1', 'element') of
        #xqKindTest{anno = A, kind = 'attribute'} = Kt ->
            #xqAxisStep{anno = A, id = next_id(), direction = forward, axis = 'attribute', node_test = Kt};
        #xqKindTest{anno = A, kind = 'namespace'} ->
            ?parse_err('XQST0134', {undefined, A}); % no abbrev namespace allowed
        #xqKindTest{anno = A} = Kt ->
            #xqAxisStep{anno = A, id = next_id(), direction = forward, axis = 'child', node_test = Kt}
    end.


% [115]    ReverseStep    ::=      (ReverseAxis NodeTest) | AbbrevReverseStep   
'ReverseStep' -> 'ReverseAxis' 'NodeTest' : 
    ('$1')#xqAxisStep{node_test = node_to_kind_test('$2', node)}.

'ReverseStep' -> 'AbbrevReverseStep'      : '$1'.


% [116]    ReverseAxis    ::=      ("parent" "::") | ("ancestor" "::")| ("preceding-sibling" "::")| ("preceding" "::")| ("ancestor-or-self" "::")   
'ReverseAxis' -> 'parent' '::'            : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = reverse, axis = 'parent'}.

'ReverseAxis' -> 'ancestor' '::'          : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = reverse, axis = 'ancestor'}.

'ReverseAxis' -> 'preceding-sibling' '::' : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = reverse, axis = 'preceding-sibling'}.

'ReverseAxis' -> 'preceding' '::'         : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = reverse, axis = 'preceding'}.

'ReverseAxis' -> 'ancestor-or-self' '::'  : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = reverse, axis = 'ancestor-or-self'}.


% [117]    AbbrevReverseStep    ::=      ".."
'AbbrevReverseStep'      -> '..' : 
    #xqAxisStep{anno = line('$1'), id = next_id(), direction = reverse, 
                axis = parent, node_test = #xqKindTest{anno = line('$1')}}.


% [118]    NodeTest    ::=      KindTest | NameTest  
'NodeTest'               -> 'KindTest' : '$1'.

'NodeTest'               -> 'NameTest' : '$1'.


% [119]    NameTest    ::=      EQName | Wildcard 
'NameTest'               -> 'EQName'   : 
    #xqQName{anno = A} = '$1',
    #xqNameTest{anno = A, name = expand_qname(nametest,'$1')}.

'NameTest'               -> 'Wildcard' : 
    #xqQName{anno = A} = '$1',
    #xqNameTest{anno = A, name = expand_qname(wildcard,'$1')}.


% [120]    Wildcard    ::=      "*" | (NCName ":*") | ("*:" NCName) | (BracedURILiteral "*")   /* ws: explicit */
'Wildcard'               -> '*'           : 
    #xqQName{anno = line('$1'), prefix = <<"*">>, local_name = <<"*">>}.

'Wildcard'               -> 'NCName' ':*' : 
    #xqQName{anno = line('$2'), prefix = ('$1')#xqNCName.str, local_name = <<"*">>}.

'Wildcard'               -> '*:' 'NCName' : 
    #xqQName{anno = line('$1'), prefix = <<"*">>, local_name = ('$2')#xqNCName.str}.

'Wildcard'               -> '*' ':*' : 
    #xqQName{anno = line('$1'), prefix = <<"*">>, local_name = <<"*">>}.

'Wildcard'               -> '*:' '*' : 
    #xqQName{anno = line('$1'), prefix = <<"*">>, local_name = <<"*">>}.

'Wildcard'               -> 'BracedURILiteral' '*'  :
    #xqURILiteral{str = U} = '$1',
    #xqQName{anno = line('$2'), namespace = U, local_name = <<"*">>}.


% [121]    PostfixExpr    ::=      PrimaryExpr (Predicate | ArgumentList | Lookup)*   
'PostfixExpr'            -> 'PrimaryExpr' 'PostFixes'  : 
    Part = is_partial_impl('$2'),
    #xqPostfixExpr{id = next_id(), part = Part, expr = '$1', post = '$2'}.


'PostfixExpr'            -> 'PrimaryExpr'              : '$1'.


'PostFixes'              -> 'Predicate'                : ['$1'].


'PostFixes'              -> 'ArgumentList'             : ['$1'].


'PostFixes'              -> 'Lookup'                   : ['$1'].


'PostFixes'              -> 'Predicate'    'PostFixes' : ['$1'|'$2'].

'PostFixes'              -> 'ArgumentList' 'PostFixes' : ['$1'|'$2'].

'PostFixes'              -> 'Lookup'       'PostFixes' : ['$1'|'$2'].


% [122]    ArgumentList      ::=      "(" (Argument ("," Argument)*)? ")"
'ArgumentList'           -> '(' ')' : #xqArgumentList{args = [], anno = line('$1')}.

'ArgumentList'           -> '(' 'Arguments' ')' : #xqArgumentList{args = '$2', anno = line('$1')}.


'Arguments'              -> 'Argument' : as_list('$1').

'Arguments'              -> 'Argument' ',' 'Arguments': as_list('$1') ++ '$3'.


% [123]    PredicateList     ::=      Predicate*  
'PredicateList'          -> 'Predicate' 'PredicateList' : ['$1'|'$2'].  


'PredicateList'          -> 'Predicate' : ['$1'].


% [124]    Predicate      ::=      "[" Expr "]"   
'Predicate'              -> '[' 'Expr' ']' : 
    #xqPredicate{anno = line('$1'), expr = '$2'}.


% [125]    Lookup      ::=      "?" KeySpecifier
'Lookup'                 -> '?' 'KeySpecifier' : 
    #xqLookup{anno = line('$1'), key = '$2'}.


% [126]    KeySpecifier      ::=      NCName | IntegerLiteral | ParenthesizedExpr | "*"
'KeySpecifier'           -> 'NCName'         : xqAtomicValue('xs:NCName', bin_value_of('$1')).

'KeySpecifier'           -> 'IntegerLiteral' : xqAtomicValue('xs:integer', value_of('$1')).

'KeySpecifier'           -> 'ParenthesizedExpr' : '$1'.

'KeySpecifier'           -> '*'        : 'wildcard'.


'KeySpecifier'           -> 'wildcard' : 'wildcard'.


% [127]    ArrowFunctionSpecifier     ::=      EQName | VarRef | ParenthesizedExpr
'ArrowFunctionSpecifier' -> 'EQName' : expand_qname(func, '$1').


'ArrowFunctionSpecifier' -> 'VarRef' : '$1'.


'ArrowFunctionSpecifier' -> 'ParenthesizedExpr' : '$1'.


% [128]    PrimaryExpr    ::=      Literal | VarRef | ParenthesizedExpr | ContextItemExpr | FunctionCall | 
% OrderedExpr | UnorderedExpr | NodeConstructor | FunctionItemExpr | MapConstructor | ArrayConstructor | 
% StringConstructor | UnaryLookup  
'PrimaryExpr'            -> 'Literal'   : '$1'.


'PrimaryExpr'            -> 'VarRef'  : '$1'.

'PrimaryExpr'            -> 'ParenthesizedExpr' : '$1'.  

'PrimaryExpr'            -> 'ContextItemExpr'  : '$1'.

'PrimaryExpr'            -> 'FunctionCall'  : '$1'.

'PrimaryExpr'            -> 'OrderedExpr'  : '$1'.

'PrimaryExpr'            -> 'UnorderedExpr'  : '$1'.


'PrimaryExpr'            -> 'NodeConstructor' : '$1'.

'PrimaryExpr'            -> 'FunctionItemExpr' : '$1'.

'PrimaryExpr'            -> 'MapConstructor' : '$1'.


'PrimaryExpr'            -> 'ArrayConstructor' : '$1'.

'PrimaryExpr'            -> 'StringConstructor' : '$1'.

'PrimaryExpr'            -> 'UnaryLookup' : '$1'.


% [129]    Literal     ::=      NumericLiteral | StringLiteral   
'Literal'                -> 'NumericLiteral' : '$1'.

'Literal'                -> 'StringLiteral'  : xqAtomicValue('xs:string', bin_value_of('$1')).


% [130]    NumericLiteral    ::=      IntegerLiteral | DecimalLiteral | DoubleLiteral 
'NumericLiteral'         -> 'IntegerLiteral' : xqAtomicValue('xs:integer', value_of('$1')).

'NumericLiteral'         -> 'DecimalLiteral' : xqAtomicValue('xs:decimal', value_of('$1')).

'NumericLiteral'         -> 'DoubleLiteral'  : xqAtomicValue('xs:double', value_of('$1')).


% [131]    VarRef      ::=      "$" VarName 
'VarRef'                 -> '$' 'VarName' : #xqVarRef{anno = line('$1'), name = '$2'}.


% [132]    VarName     ::=      EQName   
'VarName'                -> 'EQName' : expand_qname(var, '$1').


% [133]    ParenthesizedExpr    ::=      "(" Expr? ")"  
'ParenthesizedExpr'      -> '(' ')' : 'empty-sequence'.

'ParenthesizedExpr'      -> '(' 'Expr' ')' : 
    #xqSequence{vals = '$2'}.


% [134]    ContextItemExpr      ::=      "."   
'ContextItemExpr'        -> '.' : {'context-item', line('$1')}.


% [135]    OrderedExpr    ::=      "ordered" EnclosedExpr  
'OrderedExpr'            -> 'ordered' 'EnclosedExpr' : '$2'.

%{'ordered-expr', '$2'}.

% [136]    UnorderedExpr     ::=      "unordered" EnclosedExpr
'UnorderedExpr'          -> 'unordered' 'EnclosedExpr' : 
    case '$2' of
        #xqEnclosedExpr{expr = 'empty-expr'} -> 
            %?parse_err('XPST0003', {undefined, line('$1')});
            % not error in 3.1
            '$2';
        _ ->
            '$2'
    end.

%{'unordered-expr', '$2'}.

% [137]    FunctionCall      ::=      EQName ArgumentList  /* xgc: reserved-function-names *//* gn: parens */
'FunctionCall'           -> 'EQName' 'ArgumentList' :
    #xqArgumentList{args = Args}  = '$2',
    #xqQName{anno = L} = '$1',
    N = expand_qname(func, '$1'),
    case lists:any(fun(#xqArgumentPlaceholder{}) -> true; (_) -> false end, Args) of
        true ->
            #xqPartialFunctionCall{name = N, arity = length(Args), args = Args, anno = L};
        _ ->
            #xqFunctionCall{name = N, arity = length(Args), args = Args, anno = L}
    end.

'FunctionCall'           -> 'return' 'ArgumentList' : % functions named 'return' can screw things up 
    #xqArgumentList{args = Args}  = '$2',
    L = line('$1'),
    N = expand_qname(func, #xqQName{anno = L, namespace = default, prefix = <<>>, local_name = <<"return">>}),
    case lists:any(fun(#xqArgumentPlaceholder{}) -> true; (_) -> false end, Args) of
        true ->
            #xqPartialFunctionCall{name = N, arity = length(Args), args = Args, anno = L};
        _ ->
            #xqFunctionCall{name = N, arity = length(Args), args = Args, anno = L}
    end.


'FunctionCall'           -> 'in' 'ArgumentList' : % functions named 'in' can screw things up 
    #xqArgumentList{args = Args}  = '$2',
    L = line('$1'),
    N = expand_qname(func, #xqQName{anno = L, namespace = default, prefix = <<>>, local_name = <<"in">>}),
    case lists:any(fun(#xqArgumentPlaceholder{}) -> true; (_) -> false end, Args) of
        true ->
            #xqPartialFunctionCall{name = N, arity = length(Args), args = Args, anno = L};
        _ ->
            #xqFunctionCall{name = N, arity = length(Args), args = Args, anno = L}
    end.


% [138]    Argument    ::=      ExprSingle | ArgumentPlaceholder 
'Argument'               -> 'ExprSingle' : '$1'.

'Argument'               -> 'ArgumentPlaceholder' : '$1'.


% [139]    ArgumentPlaceholder     ::=      "?"
'ArgumentPlaceholder'    -> '?' : 
    #xqArgumentPlaceholder{anno = line('$1'), id = next_id()}.


% [140]    NodeConstructor      ::=      DirectConstructor | ComputedConstructor   
'NodeConstructor'        -> 'DirectConstructor'   : 
    #xqNodeConstructor{id = next_id(), type = direct, cons = '$1'}.

'NodeConstructor'        -> 'ComputedConstructor' : 
    #xqNodeConstructor{id = next_id(), type = comp, cons = '$1'}.


% [141]    DirectConstructor    ::=      DirElemConstructor | DirCommentConstructor | DirPIConstructor   
'DirectConstructor'      -> 'DirElemConstructor'    : '$1'.

'DirectConstructor'      -> 'DirCommentConstructor' : '$1'.

'DirectConstructor'      -> 'DirPIConstructor'      : '$1'.


% [142]    DirElemConstructor      ::=      "<" QName DirAttributeList ("/>" | (">" DirElemContent* "</" QName S? ">"))   /* ws: explicit */
'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '/>' :
    #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), attributes = '$3'}.

'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' 'DirElemContents' '</' 'EQName' '>' :
    case qname_equal('$2', '$7') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), attributes = '$3', content = '$5'};
        false ->
            ?parse_err('XQST0118', {undefined, line('$6')})
    end.  

'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' 'DirElemContents' '</' 'EQName' 'S' '>' : 
    case qname_equal('$2', '$7') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), attributes = '$3', content = '$5'};
        false ->
            ?parse_err('XQST0118', {undefined, line('$6')})
    end.  

'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' '</' 'EQName' '>' : 
    case qname_equal('$2', '$6') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), attributes = '$3'};
        false ->
            ?parse_err('XQST0118', {undefined, line('$5')})
    end.  


'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' '</' 'EQName' 'S' '>' :
    case qname_equal('$2', '$6') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), attributes = '$3'};
        false ->
            ?parse_err('XQST0118', {undefined, line('$5')})
    end.  

'DirElemConstructor'     -> '<' 'EQName' '/>' : 
    #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2')}.


'DirElemConstructor'     -> '<' 'EQName' '>' 'DirElemContents' '</' 'EQName' '>' :
    case qname_equal('$2', '$6') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), content = '$4'};
        false ->
            ?parse_err('XQST0118', {undefined, line('$5')})
    end.  

'DirElemConstructor'     -> '<' 'EQName' '>' 'DirElemContents' '</' 'EQName' 'S' '>' :
    case qname_equal('$2', '$6') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2'), content = '$4'};
        false ->
            ?parse_err('XQST0118', {undefined, line('$5')})
    end.  

'DirElemConstructor'     -> '<' 'EQName' '>' '</' 'EQName' '>' :
    case qname_equal('$2', '$5') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2')};
        false ->
            ?parse_err('XQST0118', {undefined, line('$4')})
    end.  

'DirElemConstructor'     -> '<' 'EQName' '>' '</' 'EQName' 'S' '>' : 
    case qname_equal('$2', '$5') of
        true ->
            #xqElementNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(other,'$2')};
        false ->
            ?parse_err('XQST0118', {undefined, line('$4')})
    end.  


% [143]    DirAttributeList     ::=      (S (QName S? "=" S? DirAttributeValue)?)* /* ws: explicit */
'DirAttributeList'       -> 'DirAttribute' 'DirAttributeList' : 
    case '$1' of
        #xqNamespaceNode{} ->
            ['$1' | '$2'];
        _ ->
            '$2' ++ ['$1']
    end.


'DirAttributeList'       -> 'DirAttribute' : ['$1'].


'DirAttribute'           -> 'S' 'QName'     '='     'DirAttributeValue' : 
    case dir_att('$2', '$4') of
        {error, Code} ->
            ?parse_err(Code, {undefined, line('$3')});
        Att ->
            Att
    end.


'DirAttribute'           -> 'S' 'QName' 'S' '='     'DirAttributeValue' : 
    case dir_att('$2', '$5') of
        {error, Code} ->
            ?parse_err(Code, {undefined, line('$4')});
        Att ->
            Att
    end.


'DirAttribute'           -> 'S' 'QName' 'S' '=' 'S' 'DirAttributeValue' : 
    case dir_att('$2', '$6') of
        {error, Code} ->
            ?parse_err(Code, {undefined, line('$4')});
        Att ->
            Att
    end.


'DirAttribute'           -> 'S' 'QName'     '=' 'S' 'DirAttributeValue' : 
    case dir_att('$2', '$5') of
        {error, Code} ->
            ?parse_err(Code, {undefined, line('$3')});
        Att ->
            Att
    end.

'DirAttribute'           -> 'S' : [].


% [144]    DirAttributeValue    ::=      ('"' (EscapeQuot | QuotAttrValueContent)* '"') | ("'" (EscapeApos | AposAttrValueContent)* "'")   /* ws: explicit */
'DirAttributeValuesQuot' -> 'QuotAttrValueContent' 'DirAttributeValuesQuot' : ['$1' | '$2'].

'DirAttributeValuesQuot' -> 'EscapeQuot'           'DirAttributeValuesQuot' : 
    [#xqEntityRef{ref = <<"\"">>} | '$2'].

'DirAttributeValuesQuot' -> 'QuotAttrValueContent' : ['$1'].


'DirAttributeValuesQuot' -> 'EscapeQuot'           : 
    [#xqEntityRef{ref = <<"\"">>}].


'DirAttributeValuesApos' -> 'AposAttrValueContent' 'DirAttributeValuesApos' : ['$1' | '$2'].


'DirAttributeValuesApos' -> 'EscapeApos'           'DirAttributeValuesApos' : 
    [#xqEntityRef{ref = <<"'">>} | '$2'].

'DirAttributeValuesApos' -> 'AposAttrValueContent' : ['$1'].


'DirAttributeValuesApos' -> 'EscapeApos'           : 
    [#xqEntityRef{ref = <<"'">>}].


'DirAttributeValue'      -> 'quot' 'DirAttributeValuesQuot' 'quot' : '$2'.

'DirAttributeValue'      -> 'quot'                          'quot' : [].


'DirAttributeValue'      -> 'apos' 'DirAttributeValuesApos' 'apos' : '$2'.

'DirAttributeValue'      -> 'apos'                          'apos' : [].


% [145]    QuotAttrValueContent    ::=      QuotAttrContentChar | CommonContent   
'QuotAttrValueContent'   -> 'QuotAttrContentChars' : xqAtomicValue('xs:string', '$1').

'QuotAttrValueContent'   -> 'CommonContent' : '$1'.


'QuotAttrContentChars'   -> 'QuotAttrContentChar' : bin_value_of('$1').

'QuotAttrContentChars'   -> 'QuotAttrContentChar' 'QuotAttrContentChars' : <<(bin_value_of('$1'))/binary , ('$2')/binary>>.

% [146]    AposAttrValueContent    ::=      AposAttrContentChar | CommonContent   
'AposAttrValueContent'   -> 'AposAttrContentChars' : xqAtomicValue('xs:string', '$1').

'AposAttrValueContent'   -> 'CommonContent' : '$1'.


'AposAttrContentChars'   -> 'AposAttrContentChar' 'AposAttrContentChars' : <<(bin_value_of('$1'))/binary , ('$2')/binary>>.

'AposAttrContentChars'   -> 'AposAttrContentChar' : bin_value_of('$1').


% [147]    DirElemContent    ::=      DirectConstructor | CDataSection | CommonContent | ElementContentChar 
'DirElemContents'        -> 'DirElemContent' 'DirElemContents' : ['$1' | '$2'].

'DirElemContents'        -> 'DirElemContent' : ['$1'].


'DirElemContent'         -> 'DirectConstructor'   : '$1'.

'DirElemContent'         -> 'CDataSection'        : '$1'.

'DirElemContent'         -> 'CommonContent'       : '$1'.

'DirElemContent'         -> 'ElementContentChars' : '$1'.


'ElementContentChars'    -> 'ElementContentChar' 'ElementContentChars' : <<(bin_value_of('$1'))/binary , ('$2')/binary>>.

'ElementContentChars'    -> 'S'                  'ElementContentChars' : <<(bin_value_of('$1'))/binary , ('$2')/binary>>.

'ElementContentChars'    -> 'ElementContentChar' : bin_value_of('$1').

'ElementContentChars'    -> 'S'                  : bin_value_of('$1').


% [148]    CommonContent     ::=      PredefinedEntityRef | CharRef | "{{" | "}}" | EnclosedExpr  
'CommonContent'          -> 'PredefinedEntityRef' : 
    #xqEntityRef{ref = bin_value_of('$1')}.

'CommonContent'          -> 'CharRef'             : 
    #xqCharRef{ref = bin_value_of('$1')}.

'CommonContent'          -> '{{'                  : <<"{">>.


'CommonContent'          -> '}}'                  : <<"}">>.


'CommonContent'          -> 'EnclosedExpr' : '$1'.


% [149]    DirCommentConstructor      ::=      "<!--" DirCommentContents "-->"  /* ws: explicit */
'DirCommentConstructor'  -> '<!--' 'DirCommentContents' '-->' : 
    #xqCommentNode{anno = line('$1'), id = next_id(), type = direct, text = '$2'}.


% [150]    DirCommentContents      ::=      ((Char - '-') | ('-' (Char - '-')))*
%% done in scanner
'DirCommentContents'     -> 'comment-text' : bin_value_of('$1').


% [151]    DirPIConstructor     ::=      "<?" PITarget (S DirPIContents)? "?>"  /* ws: explicit */
'DirPIConstructor'       -> '<?' 'PITarget' '?>'                 : 
    #xqProcessingInstructionNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(pi, '$2'), data = <<>>}.


'DirPIConstructor'       -> '<?' 'PITarget' 'DirPIContents' '?>' : 
    #xqProcessingInstructionNode{anno = line('$1'), id = next_id(), type = direct, name = expand_qname(pi, '$2'), data = bin_value_of('$3')}.


% [152]    DirPIContents     ::=      (Char* - (Char* '?>' Char*))  /* ws: explicit */
%% done in scanner

% [153]    CDataSection      ::=      "<![CDATA[" CDataSectionContents "]]>" /* ws: explicit */
'CDataSection'           -> '<![CDATA[' 'CDataSectionContents' ']]>' : 
    #xqTextNode{anno = line('$1'), id = next_id(), type = direct, text = '$2'}.


% [154]    CDataSectionContents    ::=      (Char* - (Char* ']]>' Char*)) /* ws: explicit */
%% done in scanner
'CDataSectionContents'   -> 'cdata-contents' : bin_value_of('$1').


% [155]    ComputedConstructor     ::=      CompDocConstructor | CompElemConstructor | CompAttrConstructor | 
%                                           CompNamespaceConstructor | CompTextConstructor | CompCommentConstructor | CompPIConstructor
'ComputedConstructor'    -> 'CompDocConstructor'  : '$1'.

'ComputedConstructor'    -> 'CompElemConstructor' : '$1'.

'ComputedConstructor'    -> 'CompAttrConstructor' : '$1'.

'ComputedConstructor'    -> 'CompNamespaceConstructor' : '$1'.

'ComputedConstructor'    -> 'CompTextConstructor' : '$1'.

'ComputedConstructor'    -> 'CompCommentConstructor' : '$1'.


'ComputedConstructor'    -> 'CompPIConstructor' : '$1'.


% [156]    CompDocConstructor      ::=      "document" EnclosedExpr 
'CompDocConstructor'     -> 'document' 'EnclosedExpr' : 
    #xqDocumentNode{anno = line('$1'), id = next_id(), content = '$2'}.


% [157]    CompElemConstructor     ::=      "element" (EQName | ("{" Expr "}")) EnclosedContentExpr  
'CompElemConstructor'    -> 'element'    'return'    'EnclosedContentExpr' : 
    #xqElementNode{anno = line('$1'), id = next_id(), type = comp, name = expand_qname(other,to_NCName('$2')), content = '$3'}. 

'CompElemConstructor'    -> 'element'    'EQName'    'EnclosedContentExpr' : 
    #xqElementNode{anno = line('$1'), id = next_id(), type = comp, name = expand_qname(other,'$2'), content = '$3'}. 


'CompElemConstructor'    -> 'element' '{' 'Expr' '}' 'EnclosedContentExpr' : 
    #xqElementNode{anno = line('$1'), id = next_id(), type = comp, name = '$3', content = '$5'}.


% [158]    EnclosedContentExpr     ::=      EnclosedExpr
'EnclosedContentExpr'    -> 'EnclosedExpr' : '$1'.


% [159]    CompAttrConstructor     ::=      "attribute" (EQName | ("{" Expr "}")) EnclosedExpr 
'CompAttrConstructor'    -> 'attribute'    'return'    'EnclosedExpr' : 
    #xqAttributeNode{anno = line('$1'), id = next_id(), type = comp, name = expand_qname(other,to_NCName('$2')), text = '$3'}.

'CompAttrConstructor'    -> 'attribute'    'EQName'    'EnclosedExpr' : 
    #xqAttributeNode{anno = line('$1'), id = next_id(), type = comp, name = expand_qname(other,'$2'), text = '$3'}.

'CompAttrConstructor'    -> 'attribute' '{' 'Expr' '}' 'EnclosedExpr' : 
    #xqAttributeNode{anno = line('$1'), id = next_id(), type = comp, name = '$3', text = '$5'}.


% [160]    CompNamespaceConstructor      ::=      "namespace" (Prefix | EnclosedPrefixExpr) EnclosedURIExpr
'CompNamespaceConstructor'-> 'namespace' 'NCName'             'EnclosedURIExpr' : 
    #xqNCName{str = S} = '$2',
    #xqNamespaceNode{anno = line('$1'), id = next_id(), type = comp, uri = '$3', prefix = S}.

'CompNamespaceConstructor'-> 'namespace' 'EnclosedPrefixExpr' 'EnclosedURIExpr' : 
    #xqNamespaceNode{anno = line('$1'), id = next_id(), type = comp, uri = '$3', prefix = '$2'}.


% [161]    Prefix      ::=      NCName
% block due to conflict with LocalPart 'Prefix'                 -> 'NCName' : value_of('$1').

% [162]    EnclosedPrefixExpr      ::=      EnclosedExpr
'EnclosedPrefixExpr'     -> 'EnclosedExpr' : '$1'.

% [163]    EnclosedURIExpr      ::=      EnclosedExpr   
'EnclosedURIExpr'        -> 'EnclosedExpr' : '$1'.


% [164]    CompTextConstructor     ::=      "text" EnclosedExpr  
'CompTextConstructor'    -> 'text' 'EnclosedExpr' : 
    #xqTextNode{anno = line('$1'), id = next_id(), type = comp, text = '$2'}.


% [165]    CompCommentConstructor     ::=      "comment" EnclosedExpr  
'CompCommentConstructor' -> 'comment' 'EnclosedExpr' : 
    #xqCommentNode{anno = line('$1'), id = next_id(), type = comp, text = '$2'}.


% [166]    CompPIConstructor    ::=      "processing-instruction" (NCName | ("{" Expr "}")) EnclosedExpr   
'CompPIConstructor'      -> 'processing-instruction'    'NCName'    'EnclosedExpr' : 
    #xqProcessingInstructionNode{anno = line('$1'), id = next_id(), type = comp, name = expand_qname(pi, '$2'), data = '$3'}.

'CompPIConstructor'      -> 'processing-instruction' '{' 'Expr' '}' 'EnclosedExpr' : 
    #xqProcessingInstructionNode{anno = line('$1'), id = next_id(), type = comp, name = '$3', data = '$5'}.


% [167]    FunctionItemExpr     ::=      NamedFunctionRef | InlineFunctionExpr
'FunctionItemExpr'       -> 'NamedFunctionRef' : '$1'.

'FunctionItemExpr'       -> 'InlineFunctionExpr' : '$1'.


% [168]    NamedFunctionRef     ::=      EQName "#" IntegerLiteral  /* xgc: reserved-function-names */
'NamedFunctionRef'       -> 'EQName' '#' 'IntegerLiteral' :
    L = line('$2'),
    case expand_qname(func, '$1') of
        {error, Code} ->
            ?parse_err(Code, {undefined, L});
        Name ->
            #xqFunctionRef{anno = L, name = Name, arity = value_of('$3')}
    end.


% [169]    InlineFunctionExpr      ::=      Annotation* "function" "(" ParamList? ")" ("as" SequenceType)? FunctionBody   
'InlineFunctionExpr'     -> 'AnnotationList' 'function' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : 
    #xqFunctionDef{anno = line('$2'), id = next_id(), annotations = '$1',name = undefined, arity = length('$4'), params = '$4', type = '$7', body = '$8'}.

'InlineFunctionExpr'     ->                  'function' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), annotations = []  ,name = undefined, arity = length('$3'), params = '$3', type = '$6', body = '$7'}.

'InlineFunctionExpr'     -> 'AnnotationList' 'function' '('             ')' 'as' 'SequenceType' 'FunctionBody' : 
    #xqFunctionDef{anno = line('$2'), id = next_id(), annotations = '$1',name = undefined,                                      type = '$6', body = '$7'}.

'InlineFunctionExpr'     ->                  'function' '('             ')' 'as' 'SequenceType' 'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), annotations = []  ,name = undefined,                                      type = '$5', body = '$6'}.

'InlineFunctionExpr'     -> 'AnnotationList' 'function' '(' 'ParamList' ')'                     'FunctionBody' : 
    #xqFunctionDef{anno = line('$2'), id = next_id(), annotations = '$1',name = undefined, arity = length('$4'), params = '$4',              body = '$6'}.

'InlineFunctionExpr'     ->                  'function' '(' 'ParamList' ')'                     'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), annotations = []  ,name = undefined, arity = length('$3'), params = '$3',              body = '$5'}.

'InlineFunctionExpr'     -> 'AnnotationList' 'function' '('             ')'                     'FunctionBody' : 
    #xqFunctionDef{anno = line('$2'), id = next_id(), annotations = '$1',name = undefined,                                                   body = '$5'}.

'InlineFunctionExpr'     ->                  'function' '('             ')'                     'FunctionBody' : 
    #xqFunctionDef{anno = line('$1'), id = next_id(), annotations = []  ,name = undefined,                                                   body = '$4'}.


% [170]    MapConstructor    ::=      "map" "{" (MapConstructorEntry ("," MapConstructorEntry)*)? "}"
'MapConstructor'         -> 'map' '{' 'MapConstructorEntries' '}' : 
    #xqMapConst{anno = line('$1'), content = '$3'}.


'MapConstructor'         -> 'map' '{' '}' : 
    #xqMapConst{anno = line('$1'), content = []}.


% [171]    MapConstructorEntry     ::=      MapKeyExpr ":" MapValueExpr   
'MapConstructorEntry'    -> 'MapKeyExpr' ':'  'MapValueExpr' : 
    #xqMapEntry{anno = line('$2'), key = '$1', value = '$3'}.

'MapConstructorEntry'    -> 'MapKeyExpr' ' :' 'MapValueExpr' : 
    #xqMapEntry{anno = line('$2'), key = '$1', value = '$3'}.

'MapConstructorEntry'    -> 'MapKeyExpr' ': ' 'MapValueExpr' : 
    #xqMapEntry{anno = line('$2'), key = '$1', value = '$3'}.

'MapConstructorEntries'  -> 'MapConstructorEntry' : ['$1'].

'MapConstructorEntries'  -> 'MapConstructorEntry' ',' 'MapConstructorEntries' : ['$1'|'$3'].


% [172]    MapKeyExpr     ::=      ExprSingle  
'MapKeyExpr'             -> 'ExprSingle' : '$1'.

%'MapKeyExpr'             -> 'NCName'     : #'qname'{namespace = 'default', prefix = 'default', local_name = value_of('$1')}.
% [173]    MapValueExpr      ::=      ExprSingle  
'MapValueExpr'           -> 'ExprSingle' : '$1'.


% [174]    ArrayConstructor     ::=      SquareArrayConstructor | CurlyArrayConstructor
'ArrayConstructor'       -> 'SquareArrayConstructor' : '$1'. 

'ArrayConstructor'       -> 'CurlyArrayConstructor' : '$1'. 


% [175]    SquareArrayConstructor     ::=      "[" (ExprSingle ("," ExprSingle)*)? "]"   
'SquareArrayConstructor' -> '[' ']' : 
    #xqArrayConst{anno = line('$1'), content = []}.

'SquareArrayConstructor' -> '[' 'ExprSingleList' ']' : 
    #xqArrayConst{anno = line('$1'), content = '$2'}.


'ExprSingleList'         -> 'ExprSingle' : ['$1'].

'ExprSingleList'         -> 'ExprSingle' ',' 'ExprSingleList' : ['$1'|'$3']. 


% [176]    CurlyArrayConstructor      ::=      "array" EnclosedExpr 
'CurlyArrayConstructor'  -> 'array' 'EnclosedExpr' : 
    #xqArrayConst{anno = line('$1'), content = '$2'}.


% [177]    StringConstructor    ::=      "``[" StringConstructorContent "]``"   /* ws: explicit */
'StringConstructor'      -> '``[' 'StringConstructorContent' ']``' : 
    #xqStringConstructor{anno = line('$1'), content = '$2'}.


% [178]    StringConstructorContent      ::=      StringConstructorChars (StringConstructorInterpolation StringConstructorChars)*  /* ws: explicit */
'StringConstructorContent'-> 'StringConstructorChars'                                 : 
    [ bin_value_of('$1') ].


'StringConstructorContent'-> 'StringConstructorChars'        'StringConstContents'    : 
    [ bin_value_of('$1') | '$2' ].

'StringConstContents'    -> 'StringConstructorInterpolation' 'StringConstructorChars' : 
    '$1' ++ [ bin_value_of('$2') ].

'StringConstContents'    -> 'StringConstructorInterpolation' 'StringConstructorChars' 'StringConstContents': 
    '$1' ++ [ bin_value_of('$2') | '$3' ].


% [179]    StringConstructorChars     ::=      (Char* - (Char* ('`{' | ']``') Char*)) /* ws: explicit */
%% done in scanner

% [180]    StringConstructorInterpolation      ::=      "`{" Expr? "}`"   
'StringConstructorInterpolation' -> '`{' 'Expr' '}`' : '$2'.


'StringConstructorInterpolation' -> '`{' '}`' : [].


% [181]    UnaryLookup    ::=      "?" KeySpecifier  
'UnaryLookup'            -> '?' 'KeySpecifier' : 
    #xqLookup{anno = line('$1'), key = '$2'}.


% [182]    SingleType     ::=      SimpleTypeName "?"?  
'SingleType'             -> 'SimpleTypeName' '?' : 
    #xqSeqType{anno = line('$2'), type = '$1', occur = 'zero_or_one'}.

'SingleType'             -> 'SimpleTypeName'     : 
    #xqSeqType{anno = 0, type = '$1', occur = 'one'}.


% [183]    TypeDeclaration      ::=      "as" SequenceType 
'TypeDeclaration'        -> 'as' 'SequenceType' : '$2'.


% [184]    SequenceType      ::=      ("empty-sequence" "(" ")")| (ItemType OccurrenceIndicator?)   
'SequenceType'           -> 'empty-sequence' '(' ')'         : 
    #xqSeqType{anno = line('$1'), type = 'empty-sequence', occur = 'zero'}.

'SequenceType'           -> 'ItemType' 'OccurrenceIndicator' : 
    #xqSeqType{anno = 0, type = '$1', occur = '$2'}.

'SequenceType'           -> 'ItemType'                       : 
    #xqSeqType{anno = 0, type = '$1', occur = 'one'}.


% [185]    OccurrenceIndicator     ::=      "?" | "*" | "+"   /* xgc: occurrence-indicators */ 
'OccurrenceIndicator'    -> '?'           : 'zero_or_one'.

'OccurrenceIndicator'    -> '*'           : 'zero_or_many'.

'OccurrenceIndicator'    -> '+'           : 'one_or_many'.


% [186]    ItemType    ::=      KindTest | ("item" "(" ")") | FunctionTest | MapTest | ArrayTest | AtomicOrUnionType | ParenthesizedItemType   
'ItemType'               -> 'KindTest'     : '$1'.

'ItemType'               -> 'item' '(' ')' : 'item'.


'ItemType'               -> 'FunctionTest' : '$1'.

'ItemType'               -> 'MapTest'      : '$1'.

'ItemType'               -> 'ArrayTest'    : '$1'.

'ItemType'               -> 'AtomicOrUnionType'     : '$1'.

'ItemType'               -> 'ParenthesizedItemType' : '$1'.


% [187]    AtomicOrUnionType    ::=      EQName   
'AtomicOrUnionType'      -> 'EQName' : 
    case '$1' of
        #xqQName{prefix = <<"xs">>, local_name = <<"*">>} -> '$1';
        #xqQName{namespace = <<"http://www.w3.org/2001/XMLSchema">>} -> 
            qname_to_atom(('$1')#xqQName{prefix = <<"xs">>});
        #xqQName{prefix = <<"xs">>} -> qname_to_atom('$1');
        #xqQName{namespace = default, prefix = default} = Q -> 
            expand_qname(wildcard, Q#xqQName{prefix = <<>>});
        Q -> Q
    end.


% [188]    KindTest    ::=      DocumentTest | ElementTest | AttributeTest | SchemaElementTest | SchemaAttributeTest | 
%                               PITest | CommentTest | TextTest | NamespaceNodeTest | AnyKindTest  
'KindTest'               -> 'DocumentTest' : '$1'.


'KindTest'               -> 'ElementTest' : '$1'.

'KindTest'               -> 'AttributeTest'  : '$1'.


'KindTest'               -> 'SchemaElementTest'  : '$1'.


'KindTest'               -> 'SchemaAttributeTest'  : '$1'.

'KindTest'               -> 'PITest'  : '$1'.

'KindTest'               -> 'CommentTest'  : '$1'.

'KindTest'               -> 'TextTest'  : '$1'.

'KindTest'               -> 'NamespaceNodeTest'  : '$1'.


'KindTest'               -> 'AnyKindTest' : '$1'.


% [189]    AnyKindTest    ::=      "node" "(" ")" 
'AnyKindTest'            -> 'node' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'node'}.


% [190]    DocumentTest      ::=      "document-node" "(" (ElementTest | SchemaElementTest)? ")"
'DocumentTest'           -> 'document-node' '(' 'ElementTest' ')'       : 
    ('$3')#xqKindTest{anno = line('$1'), kind = 'document-node'}.

'DocumentTest'           -> 'document-node' '(' 'SchemaElementTest' ')' : 
    ?parse_err('XPST0008', {undefined, line('$1')}).


'DocumentTest'           -> 'document-node' '(' ')'                     : 
    #xqKindTest{anno = line('$1'), kind = 'document-node'}.


% [191]    TextTest    ::=      "text" "(" ")" 
'TextTest'               -> 'text' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'text'}.


% [192]    CommentTest    ::=      "comment" "(" ")" 
'CommentTest'            -> 'comment' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'comment'}.


% [193]    NamespaceNodeTest    ::=      "namespace-node" "(" ")"   
'NamespaceNodeTest'      -> 'namespace-node' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'namespace'}.


% [194]    PITest      ::=      "processing-instruction" "(" (NCName | StringLiteral)? ")"  
'PITest'                 -> 'processing-instruction' '(' 'NCName' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'processing-instruction', name = expand_qname(pi, '$3')}.

'PITest'                 -> 'processing-instruction' '(' 'StringLiteral' ')' : 
    L = line('$1'),
    case expand_qname(pi, '$3') of
        {error, Code} ->
            ?parse_err(Code, {undefined, L});
        Name ->
            #xqKindTest{anno = L, kind = 'processing-instruction', name = Name}
    end.

'PITest'                 -> 'processing-instruction' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'processing-instruction'}.


% [195]    AttributeTest     ::=      "attribute" "(" (AttribNameOrWildcard ("," TypeName)?)? ")" 
'AttributeTest'          -> 'attribute' '(' 'AttribNameOrWildcard' ',' 'TypeName' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'attribute', name = '$3', type = #xqSeqType{anno = line('$1'), type = '$5', occur = one}}.

'AttributeTest'          -> 'attribute' '(' 'AttribNameOrWildcard' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'attribute', name = '$3'}.

'AttributeTest'          -> 'attribute' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'attribute'}.


% [196]    AttribNameOrWildcard    ::=      AttributeName | "*"  
'AttribNameOrWildcard'   -> 'AttributeName' : 
    expand_qname(attwildcard, '$1').

'AttribNameOrWildcard'   -> '*' : 
    #xqQName{anno = line('$1'), namespace = <<"*">>, prefix = <<"*">>, local_name = <<"*">>}.


% [197]    SchemaAttributeTest     ::=      "schema-attribute" "(" AttributeDeclaration ")" 
'SchemaAttributeTest'    -> 'schema-attribute' '(' 'AttributeDeclaration' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'schema-attribute', name = expand_qname(wildcard,'$3')}.


% [198]    AttributeDeclaration    ::=      AttributeName  
'AttributeDeclaration'   -> 'AttributeName' : '$1'.


% [199]    ElementTest    ::=      "element" "(" (ElementNameOrWildcard ("," TypeName "?"?)?)? ")"   
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ',' 'TypeName' '?' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'element', name = '$3', type = #xqSeqType{anno = line('$1'), type = '$5', occur = zero_or_one}}.

'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ',' 'TypeName' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'element', name = '$3', type = #xqSeqType{anno = line('$1'), type = '$5', occur = one}}.

'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'element', name = '$3'}.


'ElementTest'            -> 'element' '(' ')' : 
    #xqKindTest{anno = line('$1'), kind = 'element'}.


% [200]    ElementNameOrWildcard      ::=      ElementName | "*" 
'ElementNameOrWildcard'  -> '*' : 
    #xqQName{anno = line('$1'), namespace = <<"*">>, prefix = <<"*">>, local_name = <<"*">>}.


'ElementNameOrWildcard'  -> 'ElementName' : 
    expand_qname(nametest, '$1').


% [201]    SchemaElementTest    ::=      "schema-element" "(" ElementDeclaration ")"  
'SchemaElementTest'      -> 'schema-element' '(' 'ElementDeclaration' ')' :
    #xqKindTest{anno = line('$1'), kind = 'schema-element', name = expand_qname(wildcard, '$3')}.

% [202]    ElementDeclaration      ::=      ElementName 
'ElementDeclaration'     -> 'ElementName' : '$1'.

% [203]    AttributeName     ::=      EQName   
'AttributeName'          -> 'EQName' : '$1'.

% [204]    ElementName    ::=      EQName   
'ElementName'            -> 'EQName' : '$1'.

% [205]    SimpleTypeName    ::=      TypeName
'SimpleTypeName'         -> 'TypeName' : '$1'.

% [206]    TypeName    ::=      EQName   
'TypeName'               -> 'EQName' : '$1'.


% [207]    FunctionTest      ::=      Annotation* (AnyFunctionTest | TypedFunctionTest)
'FunctionTest'            -> 'AnnotationList' 'AnyFunctionTest':
    #xqFunTest{annotations = '$1'} .

'FunctionTest'            -> 'AnnotationList' 'TypedFunctionTest': 
    #xqFunTest{annotations = '$1', params = element(2,'$2'), type = element(1,'$2')}.

'FunctionTest'            -> 'AnyFunctionTest':                    
    #xqFunTest{}.

'FunctionTest'            -> 'TypedFunctionTest':                  
    #xqFunTest{params = element(2,'$1'), type = element(1,'$1')}.


% [208]    AnyFunctionTest      ::=      "function" "(" "*" ")"  
% [209]    TypedFunctionTest    ::=      "function" "(" (SequenceType ("," SequenceType)*)? ")" "as" SequenceType   
'AnyFunctionTest'         -> 'function' '(' '*' ')' : '*'.

'TypedFunctionTest'       -> 'function' '(' 'SequenceTypeList' ')' 'as' 'SequenceType' : {'$6', '$3'}.

'TypedFunctionTest'       -> 'function' '(' ')' 'as' 'SequenceType' : {'$5', []}.


'SequenceTypeList'        -> 'SequenceType' : ['$1'].

'SequenceTypeList'        -> 'SequenceType' ',' 'SequenceTypeList' : ['$1'|'$3'].


% [210]    MapTest     ::=      AnyMapTest | TypedMapTest  
'MapTest'                 -> 'AnyMapTest' : '$1'.

'MapTest'                 -> 'TypedMapTest' : '$1'.


% [211]    AnyMapTest     ::=      "map" "(" "*" ")" 
% [212]    TypedMapTest      ::=      "map" "(" AtomicOrUnionType "," SequenceType ")"   
'AnyMapTest'              -> 'map' '(' '*' ')' : 
    #xqFunTest{kind = map}.

'TypedMapTest'            -> 'map' '(' 'AtomicOrUnionType' ',' 'SequenceType' ')' : 
    #xqFunTest{kind = map, params = [#xqSeqType{anno = line('$1'), type = '$3', occur = one}], type = '$5'}.


% [213]    ArrayTest      ::=      AnyArrayTest | TypedArrayTest 
'ArrayTest'               -> 'AnyArrayTest' : '$1'.

'ArrayTest'               -> 'TypedArrayTest' : '$1'.


% [214] AnyArrayTest   ::= "array" "(" "*" ")"  
% [215] TypedArrayTest ::= "array" "(" SequenceType ")"
'AnyArrayTest'            -> 'array' '(' '*' ')' : 
    #xqFunTest{kind = array}.

'TypedArrayTest'          -> 'array' '(' 'SequenceType' ')' : 
    #xqFunTest{kind = array, type = '$3'}.


% [216] ParenthesizedItemType ::= "(" ItemType ")" 
'ParenthesizedItemType'  -> '(' 'ItemType' ')' : '$2'.


% [217] URILiteral ::= StringLiteral  
'URILiteral'             -> 'StringLiteral' : % StringLiteral is terminal from scanner
    {_, Anno, List} = '$1',
    Bv = bin(List),
    Bv1 = 
        case xqerl_lib:check_uri_string(Bv) of
            {error,_} when Bv == <<>> ->
                ?parse_err('FORG0001', {undefined, Anno});
            {error,_} -> Bv;
            Val -> Val
        end,
    #xqURILiteral{anno = Anno, str = Bv1}.


% [218] EQName ::= QName | URIQualifiedName
'EQName'                 -> 'PrefixedName' : '$1'.

'EQName'                 -> 'UnprefixedName' : '$1'.


'EQName'                 -> 'URIQualifiedName' : '$1'.


'QName'                  -> 'PrefixedName'   : '$1'.


'QName'                  -> 'UnprefixedName' : '$1'.


'PrefixedName'           -> 'NCName' ':' 'NCName' : 
    #xqQName{anno = line('$1'), prefix = ('$1')#xqNCName.str, local_name = ('$3')#xqNCName.str}.

'UnprefixedName'         -> 'NCName' : 
    #xqQName{anno = line('$1'), namespace = 'default', prefix = 'default', local_name = ('$1')#xqNCName.str}.


'URIQualifiedName'       -> 'BracedURILiteral' 'NCName' :
    case '$1' of
        #xqURILiteral{anno = A, str = <<"http://www.w3.org/2000/xmlns/">>} ->
            ?parse_err('XQST0070', {undefined, A});
        #xqURILiteral{str = S} ->
            #xqQName{anno = line('$1'), namespace = S, local_name = ('$2')#xqNCName.str}
    end.

'BracedURILiteral'       -> 'Q' '{' 'URILiteral' '}' : '$3'.


'BracedURILiteral'       -> 'Q' '{'              '}' : #xqURILiteral{anno = line('$2'), str = <<>>}.



%% 'ElementContentChar'     -> 'Char' : value_of('$1'). % Char - [{}<&]
%% 'QuotAttrContentChar'    -> 'Char' : value_of('$1'). % Char - ["{}<&]
%% 'AposAttrContentChar'    -> 'Char' : value_of('$1'). % Char - ['{}<&]

%% Here keywords from the scanner can fallback to NCName.
%% Not all keywords are eligible to fallback, only the ones here.
'NCName' -> 'maybeNCName' : to_NCName('$1').

'NCName' -> 'NaN' : to_NCName('$1').


'NCName' -> 'after' : to_NCName('$1').

'NCName' -> 'allowing' : to_NCName('$1').

'NCName' -> 'ancestor' : to_NCName('$1').

'NCName' -> 'ancestor-or-self' : to_NCName('$1').

'NCName' -> 'and' : to_NCName('$1').


'NCName' -> 'apos' : to_NCName('$1').

'NCName' -> 'as' : to_NCName('$1').

'NCName' -> 'ascending' : to_NCName('$1').

'NCName' -> 'at' : to_NCName('$1').

'NCName' -> 'base-uri' : to_NCName('$1').

'NCName' -> 'before' : to_NCName('$1').

'NCName' -> 'boundary-space' : to_NCName('$1').

'NCName' -> 'by' : to_NCName('$1').

'NCName' -> 'case' : to_NCName('$1').

'NCName' -> 'cast' : to_NCName('$1').

'NCName' -> 'castable' : to_NCName('$1').

'NCName' -> 'catch' : to_NCName('$1').

'NCName' -> 'cdata-contents' : to_NCName('$1').

'NCName' -> 'child' : to_NCName('$1').

'NCName' -> 'collation' : to_NCName('$1').

'NCName' -> 'comment-text' : to_NCName('$1').

'NCName' -> 'construction' : to_NCName('$1').

'NCName' -> 'context' : to_NCName('$1').


'NCName' -> 'copy' : to_NCName('$1').

'NCName' -> 'copy-namespaces' : to_NCName('$1').


'NCName' -> 'count' : to_NCName('$1').

'NCName' -> 'decimal-format' : to_NCName('$1').

'NCName' -> 'decimal-separator' : to_NCName('$1').

'NCName' -> 'default' : to_NCName('$1').


'NCName' -> 'delete' : to_NCName('$1').

'NCName' -> 'descendant' : to_NCName('$1').

'NCName' -> 'descendant-or-self' : to_NCName('$1').

'NCName' -> 'descending' : to_NCName('$1').

'NCName' -> 'digit' : to_NCName('$1').

'NCName' -> 'div' : to_NCName('$1').


'NCName' -> 'document' : to_NCName('$1').

'NCName' -> 'else' : to_NCName('$1').

'NCName' -> 'empty' : to_NCName('$1').

'NCName' -> 'encoding' : to_NCName('$1').

'NCName' -> 'end' : to_NCName('$1').


'NCName' -> 'eq' : to_NCName('$1').

'NCName' -> 'every' : to_NCName('$1').

'NCName' -> 'except' : to_NCName('$1').

'NCName' -> 'exponent-separator' : to_NCName('$1').

'NCName' -> 'external' : to_NCName('$1').

'NCName' -> 'first' : to_NCName('$1').

'NCName' -> 'following' : to_NCName('$1').

'NCName' -> 'following-sibling' : to_NCName('$1').

'NCName' -> 'for' : to_NCName('$1').


'NCName' -> 'ge' : to_NCName('$1').

'NCName' -> 'greatest' : to_NCName('$1').

'NCName' -> 'group' : to_NCName('$1').

'NCName' -> 'grouping-separator' : to_NCName('$1').

'NCName' -> 'gt' : to_NCName('$1').

'NCName' -> 'idiv' : to_NCName('$1').

'NCName' -> 'in' : to_NCName('$1').

'NCName' -> 'infinity' : to_NCName('$1').

'NCName' -> 'inherit' : to_NCName('$1').


'NCName' -> 'insert' : to_NCName('$1').

'NCName' -> 'instance' : to_NCName('$1').

'NCName' -> 'intersect' : to_NCName('$1').

'NCName' -> 'into' : to_NCName('$1').

'NCName' -> 'invoke' : to_NCName('$1').

'NCName' -> 'is' : to_NCName('$1').

'NCName' -> 'last' : to_NCName('$1').

'NCName' -> 'lax' : to_NCName('$1').


'NCName' -> 'le' : to_NCName('$1').

'NCName' -> 'least' : to_NCName('$1').

'NCName' -> 'let' : to_NCName('$1').


'NCName' -> 'lt' : to_NCName('$1').

'NCName' -> 'minus-sign' : to_NCName('$1').

'NCName' -> 'mod' : to_NCName('$1').


'NCName' -> 'modify' : to_NCName('$1').

'NCName' -> 'module' : to_NCName('$1').

'NCName' -> 'namespace' : to_NCName('$1').

'NCName' -> 'ne' : to_NCName('$1').

'NCName' -> 'next' : to_NCName('$1').

'NCName' -> 'no-inherit' : to_NCName('$1').

'NCName' -> 'no-preserve' : to_NCName('$1').


'NCName' -> 'nodes' : to_NCName('$1').

'NCName' -> 'of' : to_NCName('$1').

'NCName' -> 'only' : to_NCName('$1').

'NCName' -> 'option' : to_NCName('$1').

'NCName' -> 'or' : to_NCName('$1').

'NCName' -> 'order' : to_NCName('$1').

'NCName' -> 'ordered' : to_NCName('$1').


'NCName' -> 'ordering' : to_NCName('$1').

'NCName' -> 'parent' : to_NCName('$1').

'NCName' -> 'pattern-separator' : to_NCName('$1').

'NCName' -> 'per-mille' : to_NCName('$1').

'NCName' -> 'percent' : to_NCName('$1').


'NCName' -> 'preceding' : to_NCName('$1').

'NCName' -> 'preceding-sibling' : to_NCName('$1').

'NCName' -> 'preserve' : to_NCName('$1').

'NCName' -> 'previous' : to_NCName('$1').

'NCName' -> 'quot' : to_NCName('$1').

'NCName' -> 'rename' : to_NCName('$1').

'NCName' -> 'replace' : to_NCName('$1').


'NCName' -> 'return' : to_NCName('$1').

'NCName' -> 'revalidation' : to_NCName('$1').

'NCName' -> 'satisfies' : to_NCName('$1').

'NCName' -> 'schema' : to_NCName('$1').

'NCName' -> 'self' : to_NCName('$1').

'NCName' -> 'skip' : to_NCName('$1').

'NCName' -> 'sliding' : to_NCName('$1').


'NCName' -> 'some' : to_NCName('$1').

'NCName' -> 'stable' : to_NCName('$1').

'NCName' -> 'start' : to_NCName('$1').

'NCName' -> 'strict' : to_NCName('$1').

'NCName' -> 'strip' : to_NCName('$1').

'NCName' -> 'then' : to_NCName('$1').

'NCName' -> 'to' : to_NCName('$1').

'NCName' -> 'transform' : to_NCName('$1').

'NCName' -> 'treat' : to_NCName('$1').

'NCName' -> 'try' : to_NCName('$1').


'NCName' -> 'tumbling' : to_NCName('$1').

'NCName' -> 'type' : to_NCName('$1').

'NCName' -> 'union' : to_NCName('$1').

'NCName' -> 'unordered' : to_NCName('$1').

'NCName' -> 'updating' : to_NCName('$1').

'NCName' -> 'validate' : to_NCName('$1').

'NCName' -> 'value' : to_NCName('$1').

'NCName' -> 'variable' : to_NCName('$1').

'NCName' -> 'version' : to_NCName('$1').


'NCName' -> 'when' : to_NCName('$1').

'NCName' -> 'where' : to_NCName('$1').

'NCName' -> 'window' : to_NCName('$1').

'NCName' -> 'with' : to_NCName('$1').

'NCName' -> 'xquery' : to_NCName('$1').

'NCName' -> 'zero-digit' : to_NCName('$1').


  

 

Erlang code.


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

%% @doc Parser for the XQuery 3.1 Grammar.

%-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-compile([{hipe, [{regalloc, linear_scan}]}]).

-dialyzer(no_return).

bin(List) when is_list(List) ->
    unicode:characters_to_binary(List);
bin(Int) when is_integer(Int) ->
    <<Int/utf8>>;
bin(Bin) when is_binary(Bin) ->
    Bin;
bin(Atom) when is_atom(Atom) ->
    atom_to_binary(Atom, utf8).

to_NCName({_, B, C}) ->
    #xqNCName{anno = B, str = bin(C)}.

value_of(Token) ->
    element(3, Token).

line(Token) ->
    element(2, Token).

bin_value_of(Token) ->
    Str = element(3, Token),
    if
        is_list(Str) ->
            unicode:characters_to_binary(Str);
        is_integer(Str) ->
            <<Str/utf8>>;
        true ->
            Str
    end.

next_id() ->
    case erlang:get(var_id) of
        undefined ->
            erlang:put(var_id, 2),
            1;
        Id ->
            erlang:put(var_id, Id + 1),
            Id
    end.

expand_qname(wildcard, #xqQName{anno = L, namespace = default, prefix = default} = Eq) ->
    try
        Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, <<>>),
        Eq#xqQName{namespace = Ns, prefix = <<>>}
    catch
        _:Err ->
            ?parse_err(Err, {undefined, L})
    end;
expand_qname(wildcard, #xqQName{namespace = default} = Eq) ->
    Eq#xqQName{namespace = <<>>, prefix = <<>>};
expand_qname(wildcard, #xqQName{namespace = undefined, prefix = <<"*">>} = Eq) ->
    Eq#xqQName{namespace = <<"*">>};
expand_qname(wildcard, #xqQName{anno = L, namespace = undefined, prefix = Px} = Eq) ->
    try
        Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, Px),
        Eq#xqQName{namespace = Ns}
    catch
        _:Err ->
            ?parse_err(Err, {undefined, L})
    end;
expand_qname(wildcard, #xqQName{prefix = default} = Eq) ->
    Eq#xqQName{prefix = <<"*">>};
expand_qname(wildcard, #xqQName{} = Eq) ->
    Eq;
expand_qname(nametest, #xqQName{namespace = default, prefix = default} = Eq) ->
    Ns = xqerl_context:get_default_element_type_namespace(parser),
    Eq#xqQName{namespace = Ns, prefix = <<>>};
expand_qname(nametest, Eq) ->
    expand_qname(wildcard, Eq);
expand_qname(attwildcard, #xqQName{namespace = default, prefix = default} = Eq) ->
    Eq#xqQName{namespace = <<>>, prefix = <<>>};
expand_qname(attwildcard, Eq) ->
    expand_qname(wildcard, Eq);
expand_qname(pi, {'PITarget', A, N}) ->
    #xqQName{anno = A, namespace = <<>>, prefix = <<>>, local_name = bin(N)};
expand_qname(pi, #xqNCName{anno = A, str = N}) ->
    #xqQName{anno = A, namespace = <<>>, prefix = <<>>, local_name = N};
expand_qname(pi, {'StringLiteral', A, N}) ->
    try
        #xqAtomicValue{value = NC} = xqerl_types:cast_as(bin(N), 'xs:NCName'),
        #xqQName{anno = A, namespace = <<>>, prefix = <<>>, local_name = NC}
    catch
        _:_ ->
            {error, 'XPTY0004'}
    end;
% may be known in static namespaces
expand_qname(func, #xqQName{namespace = Ns, prefix = undefined} = Eq) ->
    try
        Px = xqerl_context:get_statically_known_prefix_from_namespace(parser, Ns),
        Eq#xqQName{prefix = Px}
    catch
        _:_ ->
            Eq
    end;
% may be known in static namespaces
expand_qname(func, #xqQName{namespace = undefined, prefix = Px} = Eq) ->
    try
        Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, Px),
        Eq#xqQName{namespace = Ns}
    catch
        _:_ ->
            Eq
    end;
% reserved function names
expand_qname(func, #xqQName{namespace = default, local_name = Ln}) when
    Ln == <<"array">>;
    Ln == <<"attribute">>;
    Ln == <<"comment">>;
    Ln == <<"document-node">>;
    Ln == <<"element">>;
    Ln == <<"empty-sequence">>;
    Ln == <<"function">>;
    Ln == <<"if">>;
    Ln == <<"item">>;
    Ln == <<"map">>;
    Ln == <<"namespace-node">>;
    Ln == <<"node">>;
    Ln == <<"processing-instruction">>;
    Ln == <<"schema-attribute">>;
    Ln == <<"schema-element">>;
    Ln == <<"switch">>;
    Ln == <<"text">>;
    Ln == <<"typeswitch">>
->
    {error, 'XPST0003'};
% default
expand_qname(func, #xqQName{namespace = default} = Eq) ->
    Ns = xqerl_context:get_default_function_namespace(parser),
    Eq#xqQName{namespace = Ns, prefix = <<>>};
expand_qname(func, #xqQName{namespace = <<>>} = Eq) ->
    Eq#xqQName{namespace = <<>>, prefix = <<>>};
expand_qname(func, #xqQName{} = Eq) ->
    Eq;
expand_qname(other, #xqQName{prefix = <<"err">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2005/xqt-errors">>};
expand_qname(other, #xqQName{namespace = <<"http://www.w3.org/2005/xqt-errors">>} = Eq) ->
    Eq#xqQName{prefix = <<"err">>};
expand_qname(other, #xqQName{prefix = undefined} = Eq) ->
    expand_qname(func, Eq);
expand_qname(other, #xqQName{prefix = <<"*">>, local_name = <<"*">>} = Eq) ->
    Eq#xqQName{namespace = <<"*">>};
expand_qname(other, #xqQName{prefix = <<"*">>} = Eq) ->
    Eq#xqQName{namespace = <<"*">>};
expand_qname(other, #xqQName{namespace = undefined, prefix = Px, local_name = <<"*">>} = Eq) ->
    Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, Px),
    Eq#xqQName{namespace = Ns};
expand_qname(other, #xqQName{prefix = <<"fn">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2005/xpath-functions">>};
expand_qname(other, #xqQName{prefix = <<"xsi">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2001/XMLSchema-instance">>};
expand_qname(other, #xqQName{prefix = <<"xml">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/XML/1998/namespace">>};
expand_qname(other, #xqQName{prefix = <<"xs">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2001/XMLSchema">>};
expand_qname(other, #xqQName{prefix = <<"math">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2005/xpath-functions/math">>};
expand_qname(other, #xqQName{prefix = <<"map">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2005/xpath-functions/map">>};
expand_qname(other, #xqQName{prefix = <<"array">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2005/xpath-functions/array">>};
expand_qname(other, #xqQName{prefix = <<"local">>} = Eq) ->
    Eq#xqQName{namespace = <<"http://www.w3.org/2005/xquery-local-functions">>};
expand_qname(other, #xqQName{prefix = default} = Eq) ->
    Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, <<>>),
    Eq#xqQName{namespace = Ns, prefix = <<>>};
expand_qname(other, #xqQName{anno = L, prefix = Px} = Eq) ->
    try xqerl_context:get_statically_known_namespace_from_prefix(parser, Px) of
        <<>> ->
            ?parse_err('XPST0081', {undefined, L});
        Ns ->
            Eq#xqQName{namespace = Ns}
    catch
        _:_ ->
            Eq
    end;
expand_qname(var, #xqQName{namespace = <<>>, prefix = Px} = Eq) when Px =/= <<>> ->
    Eq#xqQName{namespace = <<>>, prefix = <<>>};
expand_qname(var, #xqQName{namespace = default, prefix = default} = Eq) ->
    Eq#xqQName{namespace = <<>>, prefix = <<>>};
expand_qname(var, #xqQName{namespace = default, prefix = <<>>} = Eq) ->
    Eq#xqQName{namespace = <<>>};
expand_qname(var, #xqQName{namespace = undefined, prefix = <<"err">>} = Eq) ->
    expand_qname(var, Eq#xqQName{namespace = <<"http://www.w3.org/2005/xqt-errors">>});
% may be known in static namespaces
expand_qname(var, #xqQName{namespace = undefined, prefix = <<>>} = Eq) ->
    try
        Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, <<>>),
        Eq#xqQName{namespace = Ns}
    catch
        _:_ ->
            Eq
    end;
% may be known in static namespaces
expand_qname(var, #xqQName{anno = L, namespace = undefined, prefix = Px} = Eq) ->
    try xqerl_context:get_statically_known_namespace_from_prefix(parser, Px) of
        <<>> ->
            ?parse_err('XPST0081', {undefined, L});
        Ns ->
            Eq#xqQName{namespace = Ns}
    catch
        _:_ ->
            Eq
    end;
% may be known in static namespaces
expand_qname(var, #xqQName{namespace = Ns, prefix = undefined} = Eq) ->
    try
        Px = xqerl_context:get_statically_known_prefix_from_namespace(parser, Ns),
        Eq#xqQName{prefix = Px}
    catch
        _:_ ->
            Eq
    end;
expand_qname(var, #xqQName{} = Eq) ->
    Eq;
expand_qname(opt, #xqQName{anno = L, namespace = undefined, prefix = Px} = Eq) ->
    try
        Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, Px),
        Eq#xqQName{namespace = Ns}
    catch
        _:Err ->
            ?parse_err(Err, {undefined, L})
    end;
expand_qname(opt, #xqQName{namespace = default} = Eq) ->
    Ns = <<"http://www.w3.org/2012/xquery">>,
    Eq#xqQName{namespace = Ns, prefix = <<>>};
expand_qname(opt, #xqQName{} = Eq) ->
    Eq;
expand_qname(anno, #xqQName{anno = L, namespace = undefined, prefix = Px} = Eq) ->
    try
        Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, Px),
        Eq#xqQName{namespace = Ns, prefix = Px}
    catch
        _:Err ->
            ?parse_err(Err, {undefined, L})
    end;
expand_qname(anno, #xqQName{namespace = default} = Eq) ->
    Ns = <<"http://www.w3.org/2012/xquery">>,
    Eq#xqQName{namespace = Ns, prefix = <<>>};
expand_qname(anno, #xqQName{} = Eq) ->
    Eq.

qname_to_atom(#xqQName{prefix = P, local_name = L}) ->
    binary_to_atom(<<P/binary, ":", L/binary>>, utf8).

xqAtomicValue('xs:string', Value) -> Value;
xqAtomicValue('xs:integer', Value) -> Value;
xqAtomicValue('xs:double', Value) -> Value;
xqAtomicValue(Type, Value) -> #xqAtomicValue{type = Type, value = Value}.

ns_value([]) ->
    <<>>;
ns_value([At]) when is_binary(At) ->
    xqerl_lib:normalize_spaces(At);
ns_value(A) when is_list(A) ->
    try
        L = lists:map(
            fun
                (V) when is_binary(V) -> V;
                (#xqEntityRef{ref = R}) -> R;
                (#xqCharRef{ref = R}) -> R;
                (_) -> throw('XQST0022')
            end,
            A
        ),
        xqerl_lib:normalize_spaces(list_to_binary(L))
    catch
        _:_ ->
            {error, 'XQST0022'}
    end;
ns_value(_) ->
    {error, 'XQST0022'}.

as_list(L) ->
    if
        is_list(L) -> L;
        true -> [L]
    end.

dir_att(#xqQName{anno = A, prefix = <<"xmlns">>, local_name = LocalStr}, Value) ->
    case ns_value(Value) of
        {error, _} = Err ->
            Err;
        Ns ->
            _ = xqerl_context:add_statically_known_namespace(parser, Ns, LocalStr),
            #xqNamespaceNode{anno = A, id = next_id(), type = direct, uri = Ns, prefix = LocalStr}
    end;
dir_att(#xqQName{anno = A, prefix = default, local_name = <<"xmlns">>}, Value) ->
    case ns_value(Value) of
        {error, _} = Err ->
            Err;
        <<>> ->
            _ = xqerl_context:add_statically_known_namespace(parser, <<>>, <<>>),
            #xqNamespaceNode{anno = A, id = next_id(), type = direct, uri = <<>>, prefix = <<>>};
        Ns ->
            _ = xqerl_context:add_statically_known_namespace(parser, Ns, <<>>),
            #xqNamespaceNode{anno = A, id = next_id(), type = direct, uri = Ns, prefix = <<>>}
    end;
dir_att(#xqQName{anno = A} = QName, Value) ->
    #xqAttributeNode{
        anno = A,
        id = next_id(),
        type = direct,
        name = expand_qname(other, QName),
        text = normalize_att_content(Value)
    }.

normalize_att_content(Content) ->
    lists:map(
        fun
            (Str) when is_binary(Str) ->
                normalize_whitespace(Str);
            (O) ->
                O
        end,
        Content
    ).

normalize_whitespace(<<H, T/binary>>) when H == 32; H == 13; H == 10; H == 9 ->
    <<32, (normalize_whitespace(T))/binary>>;
normalize_whitespace(<<H, T/binary>>) ->
    <<H, (normalize_whitespace(T))/binary>>;
normalize_whitespace(<<>>) ->
    <<>>.

qname_equal(
    #xqQName{namespace = N, prefix = P, local_name = L},
    #xqQName{namespace = N, prefix = P, local_name = L}
) ->
    true;
qname_equal(_, _) ->
    false.

is_partial_impl(PostFixes) ->
    lists:any(
        fun
            (#xqArgumentList{args = Args}) ->
                lists:any(
                    fun
                        (#xqArgumentPlaceholder{}) -> true;
                        (_) -> false
                    end,
                    Args
                );
            (_) ->
                false
        end,
        PostFixes
    ).

sort_grouping(Groups, Id, Line) ->
    Lets = [E || E <- Groups, is_record(E, xqLet)],
    Vars = [E || E <- Groups, is_record(E, xqGroupBy)],
    Lets ++ [#xqGroup{anno = Line, id = Id, vars = Vars}].

split_where_statement(#xqLogicalExpr{comp = 'and', lhs = A, rhs = B}, L) ->
    split_where_statement(A, L) ++ split_where_statement(B, L);
split_where_statement(A, L) ->
    [#xqWhere{anno = L, id = next_id(), expr = A}].

check_prefix_namespace(L, <<"xml">>, _) ->
    ?parse_err('XQST0070', {undefined, L});
check_prefix_namespace(L, <<"xmlns">>, _) ->
    ?parse_err('XQST0070', {undefined, L});
check_prefix_namespace(_, _, <<>>) ->
    ok;
check_prefix_namespace(L, P, N) ->
    %?parse_dbg("CHECK", {L, P, N}),
    check_schema_prefix_namespace(L, P, N).

%check_schema_prefix_namespace(_, <<"xml">>,<<"http://www.w3.org/XML/1998/namespace">>) -> ok;
check_schema_prefix_namespace(L, <<"xml">>, _) ->
    ?parse_err('XQST0070', {undefined, L});
check_schema_prefix_namespace(L, _, <<"http://www.w3.org/XML/1998/namespace">>) ->
    ?parse_err('XQST0070', {undefined, L});
check_schema_prefix_namespace(L, <<"xmlns">>, _) ->
    ?parse_err('XQST0070', {undefined, L});
check_schema_prefix_namespace(L, _, <<"http://www.w3.org/2000/xmlns/">>) ->
    ?parse_err('XQST0070', {undefined, L});
check_schema_prefix_namespace(L, _, <<>>) ->
    ?parse_err('XQST0057', {undefined, L});
check_schema_prefix_namespace(_, _, _) ->
    ok.

check_import_uri(L, Uri) ->
    case xqerl_lib:check_uri_string(Uri) of
        {error, _} ->
            ?parse_err('XQST0046', {undefined, L});
        Val ->
            Val
    end.

%% check_uri_hints(L, Hints) when not is_list(Hints) -> check_uri_hints(L, [Hints]);
%% check_uri_hints(L, Hints) ->
%%    [ case xqerl_lib:check_uri_string(H) of
%%         {error,_} ->
%%            ?parse_err('XQST0046', {undefined, L});
%%         _ ->
%%            ok
%%      end || H <- Hints],
%%    Hints.

node_to_kind_test(#xqKindTest{} = Kt, _) ->
    Kt;
node_to_kind_test(#xqNameTest{anno = A, name = N}, node) ->
    #xqKindTest{anno = A, kind = element, name = N};
node_to_kind_test(#xqNameTest{anno = A, name = N}, Kind) ->
    #xqKindTest{anno = A, kind = Kind, name = N}.
