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
'switch' 'catch' 'try' '||' '=>' 'type' '!' '#' 'map' 'array' 'namespace-node'
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

'Module'                 -> 'VersionDecl' 'MainModule'   : erlang:put(var_id, 1), #xqModule{version = '$1',            type = main,    declaration = [],               prolog = element(2, '$2'), body = element(3, '$2')}.
'Module'                 -> 'VersionDecl' 'LibraryModule': erlang:put(var_id, 1), #xqModule{version = '$1',            type = library, declaration = element(1, '$2'), prolog = element(2, '$2'), body = []}.
'Module'                 -> 'MainModule'                 : erlang:put(var_id, 1), #xqModule{version = {<<"3.1">>,<<"UTF-8">>}, type = main,    declaration = [],               prolog = element(2, '$1'), body = element(3, '$1')}.
'Module'                 -> 'LibraryModule'              : erlang:put(var_id, 1), #xqModule{version = {<<"3.1">>,<<"UTF-8">>}, type = library, declaration = element(1, '$1'), prolog = element(2, '$1'), body = []}.

'VersionDecl'            -> 'xquery' 'version' 'StringLiteral' 'encoding' 'StringLiteral' 'Separator' 
                              : {bin_value_of('$3'), bin_value_of('$5')}.
'VersionDecl'            -> 'xquery' 'encoding' 'StringLiteral' 'Separator' 
                              : {<<"3.1">>, bin_value_of('$3')}.
'VersionDecl'            -> 'xquery' 'version' 'StringLiteral' 'Separator' 
                              : {bin_value_of('$3'),<<"UTF-8">>}.

'MainModule'             -> 'Prolog' 'QueryBody' : {undefined, '$1', '$2'}. %% TODO local functions and variables, multiple namespaces!
'MainModule'             ->          'QueryBody' : {undefined, [], '$1'}.

'LibraryModule'          -> 'ModuleDecl' 'Prolog' : {'$1', '$2', undefined}.
'LibraryModule'          -> 'ModuleDecl'          : {'$1', [], undefined}.

'ModuleDecl'             -> 'module' 'namespace' 'NCName' '=' 'URILiteral' 'Separator' 
                           : if '$5' == <<>> -> ?err('XQST0088');
                                true ->
                                 Ns = list_to_binary(["Q{", '$5',"}"]),
                                 xqerl_context:add_statically_known_namespace(parser,Ns, bin_value_of('$3')), 
                                        {Ns, bin_value_of('$3')}
                             end.

'Separator'              -> ';'.

'Prolog'                 -> 'Prolog1s' : [P || P <- lists:flatten('$1'), not is_atom(P)]. % strip the table inserts

% prolog part I
'Prolog1'                -> 'DefaultNamespaceDecl' 'Separator' : ['$1'].
'Prolog1'                -> 'Setter' 'Separator' : ['$1'].
'Prolog1'                -> 'NamespaceDecl' 'Separator' : ['$1']. 
'Prolog1'                -> 'Import' 'Separator' : ['$1'].
% prolog part II
'Prolog1'                -> 'ContextItemDecl' 'Separator' : ['$1']. %3.1
'Prolog1'                -> 'AnnotatedDecl' 'Separator' : ['$1'].   %3.1
'Prolog1'                -> 'OptionDecl' 'Separator' : ['$1'].

%'Prolog1'                -> 'VarDecl' : ['$1'].
%'Prolog1'                -> 'FunctionDecl' : ['$1'].

'Prolog1s'               -> 'Prolog1' 'Prolog1s' : ['$1' | '$2'].
'Prolog1s'               -> 'Prolog1' : ['$1'].

'Setter'                 -> 'BoundarySpaceDecl'    : {set, '$1'}.
'Setter'                 -> 'DefaultCollationDecl' : {set, '$1'}.
'Setter'                 -> 'BaseURIDecl'          : {set, '$1'}.
'Setter'                 -> 'ConstructionDecl'     : {set, '$1'}.
'Setter'                 -> 'OrderingModeDecl'     : {set, '$1'}.
'Setter'                 -> 'EmptyOrderDecl'       : {set, '$1'}.
'Setter'                 -> 'CopyNamespacesDecl'   : {set, '$1'}.
'Setter'                 -> 'DecimalFormatDecl'    : {set, '$1'}.
'Setter'                 -> 'RevalidationDecl'    : {set, '$1'}.

'BoundarySpaceDecl'      -> 'declare' 'boundary-space' 'preserve' : {'boundary-space', 'preserve'}.
'BoundarySpaceDecl'      -> 'declare' 'boundary-space' 'strip'    : {'boundary-space', 'strip'}.

'DefaultCollationDecl'   -> 'declare' 'default' 'collation' 'URILiteral' : {'default-collation', '$4'}. 

'BaseURIDecl'            -> 'declare' 'base-uri' 'URILiteral' : {'base-uri', '$3'}.

'ConstructionDecl'       -> 'declare' 'construction' 'strip'    : {'construction-mode', 'strip'}.
'ConstructionDecl'       -> 'declare' 'construction' 'preserve' : {'construction-mode', 'preserve'}.

'OrderingModeDecl'       -> 'declare' 'ordering' 'ordered'   : {'ordering-mode', 'ordered'}.
'OrderingModeDecl'       -> 'declare' 'ordering' 'unordered' : {'ordering-mode', 'unordered'}.

'EmptyOrderDecl'         -> 'declare' 'default' 'order' 'empty' 'greatest' : {'empty-seq-order', 'greatest'}.
'EmptyOrderDecl'         -> 'declare' 'default' 'order' 'empty' 'least'    : {'empty-seq-order', 'least'}.

'CopyNamespacesDecl'     -> 'declare' 'copy-namespaces' 'PreserveMode' ',' 'InheritMode' : {'copy-namespaces', {'$3', '$5'}}.

'PreserveMode'           -> 'preserve' : 'preserve'.
'PreserveMode'           -> 'no-preserve' : 'no-preserve'.

'InheritMode'            -> 'inherit' : 'inherit'.
'InheritMode'            -> 'no-inherit' : 'no-inherit'.

'DecimalFormatDecl'      -> 'declare' 'decimal-format' 'EQName'  'DFPropertyNameList' : {'decimal-format', qname(other,'$3'), '$4'}.
'DecimalFormatDecl'      -> 'declare' 'default' 'decimal-format' 'DFPropertyNameList' : {'decimal-format', <<>>, '$4'}.

'RevalidationDecl'       -> 'declare' 'revalidation' 'strict' : ?err('XUST0026'). %{'revalidation', 'strict'}.
'RevalidationDecl'       -> 'declare' 'revalidation' 'lax' : ?err('XUST0026'). %{'revalidation', 'lax'}.
'RevalidationDecl'       -> 'declare' 'revalidation' 'skip' : {'revalidation', 'skip'}.

'DFPropertyNameList'     -> 'DFPropertyName' '=' 'StringLiteral'  : [{'$1', bin_value_of('$3')}].
'DFPropertyNameList'     -> 'DFPropertyName' '=' 'StringLiteral' 'DFPropertyNameList' : [{'$1', bin_value_of('$3')}|'$4'].

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

'Import'                 -> 'SchemaImport' : ?err('XQST0009').
'Import'                 -> 'ModuleImport' : {'module-import', '$1'}.

%list of URILiteral
'URILiteralList'         -> 'URILiteral' : ['$1'].
'URILiteralList'         -> 'URILiteral' ',' 'URILiteralList' : ['$1'|'$3'].

'SchemaImport'           -> 'import' 'schema' 'SchemaPrefix' 'URILiteral' 'at' 'URILiteralList' : check_schema_prefix_namespace('$3', '$4'),{schema, {'$3', '$4'}, check_uri_hints('$6')}.
'SchemaImport'           -> 'import' 'schema'                'URILiteral' 'at' 'URILiteralList' : check_schema_prefix_namespace(<<>>,'$3'),{schema, {<<>>, '$3'}, check_uri_hints('$5')}.
'SchemaImport'           -> 'import' 'schema' 'SchemaPrefix' 'URILiteral'                       : check_schema_prefix_namespace('$3', '$4'),{schema, {'$3', '$4'}}.
'SchemaImport'           -> 'import' 'schema'                'URILiteral'                       : check_schema_prefix_namespace(<<>>,'$3'),{schema, {<<>>, '$3'}}.

'SchemaPrefix'           -> 'namespace' 'NCName' '=' : bin_value_of('$2').
'SchemaPrefix'           -> 'default' 'element' 'namespace' : 'default-element-namespace'.

'ModuleImport'           -> 'import' 'module' 'URILiteral'
                           : if '$3' == <<>> ->
                                    ?err('XQST0088');
                                 true ->
                                    Ns = list_to_binary(["Q{", '$3', "}"]), 
                                    xqerl_context:add_statically_known_namespace(parser,Ns, <<>>),
                                    {Ns, <<>>}
                              end.
'ModuleImport'           -> 'import' 'module' 'namespace' 'NCName' '=' 'URILiteral' 
                           : if '$6' == <<>> ->
                                    ?err('XQST0088');
                                 true ->
                                    Ns = list_to_binary(["Q{", '$6', "}"]), 
                                    xqerl_context:add_statically_known_namespace(parser,Ns, bin_value_of('$4')),
                                    {Ns, bin_value_of('$4')}
                              end.
'ModuleImport'           -> 'import' 'module' 'URILiteral' 'at' 'URILiteralList' 
                           : if '$3' == <<>> ->
                                    ?err('XQST0088');
                                 true ->
                                    Ns = list_to_binary(["Q{", '$3', "}"]), 
                                    xqerl_context:add_statically_known_namespace(parser,Ns, <<>>),
                                    {Ns, <<>>}
                              end.
'ModuleImport'           -> 'import' 'module' 'namespace' 'NCName' '=' 'URILiteral' 'at' 'URILiteralList' 
                           : if '$6' == <<>> ->
                                    ?err('XQST0088');
                                 true ->
                                    Ns = list_to_binary(["Q{", '$6', "}"]), 
                                    xqerl_context:add_statically_known_namespace(parser,Ns, bin_value_of('$4')),
                                    {Ns, bin_value_of('$4')}
                              end.

'NamespaceDecl'          -> 'declare' 'namespace' 'NCName' '=' 'URILiteral' 
                           : xqerl_context:add_statically_known_namespace(parser,'$5', bin_value_of('$3')),
                             {namespace, {'$5', bin_value_of('$3')}}.

'DefaultNamespaceDecl'   -> 'declare' 'default' 'element'  'namespace' 'URILiteral' 
                           : 
case '$5' of
   <<>> -> {'element-namespace', 'no-namespace'};
   _ ->
      xqerl_context:add_statically_known_namespace(parser,'$5', <<>>),
      xqerl_context:set_default_element_type_namespace(parser,'$5'),
      {'element-namespace', '$5'}
end.
'DefaultNamespaceDecl'   -> 'declare' 'default' 'function' 'namespace' 'URILiteral' 
                           : xqerl_context:set_default_function_namespace(parser,'$5'), 
                             {'function-namespace', '$5'}.

'AnnotatedDecl'          -> 'declare' 'AnnotationList' 'VarDecl'      : ('$3')#xqVar{annotations = '$2', anno = line('$1')}.
'AnnotatedDecl'          -> 'declare' 'AnnotationList' 'FunctionDecl' : ('$3')#xqFunction{annotations = '$2'}.
'AnnotatedDecl'          -> 'declare' 'VarDecl'                       : ('$2')#xqVar{anno = line('$1')}.
'AnnotatedDecl'          -> 'declare' 'FunctionDecl'                  : '$2'.
 
'AnnotationList'         -> 'Annotation' 'AnnotationList' : ['$1' | '$2'].
'AnnotationList'         -> 'updating'   'AnnotationList' : [#annotation{name = {qname,<<"http://www.w3.org/2012/xquery">>,<<>>,<<"updating">>}, values = []} | '$2'].
'AnnotationList'         -> 'Annotation' : ['$1'].
'AnnotationList'         -> 'updating' : [#annotation{name = {qname,<<"http://www.w3.org/2012/xquery">>,<<>>,<<"updating">>}, values = []}].

'LiteralList'            -> 'Literal' ',' 'LiteralList' : ['$1' | '$3'].
'LiteralList'            -> 'Literal' : ['$1'].

'Annotation'             -> '%' 'EQName' '(' 'LiteralList' ')' : #annotation{name = qname(anno, '$2'), values = '$4'}.
'Annotation'             -> '%' 'EQName'                       : #annotation{name = qname(anno, '$2'), values = []}.

%% 
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' 'external' ':=' 'VarDefaultValue'  : #xqVar{id = next_id(), 'name' = qname(var,'$3'), 'type' = '$4', 'external' = true, 'expr' = '$7'}.
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' 'external'                         : #xqVar{id = next_id(), 'name' = qname(var,'$3'), 'type' = '$4', 'external' = true}.
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' ':=' 'VarValue'                    : #xqVar{id = next_id(), 'name' = qname(var,'$3'), 'type' = '$4', 'expr' = '$6'}.
'VarDecl'                -> 'variable' '$' 'VarName' 'external' ':=' 'VarDefaultValue'                    : #xqVar{id = next_id(), 'name' = qname(var,'$3'), 'external' = true, 'expr' = '$6', type = undefined}.
'VarDecl'                -> 'variable' '$' 'VarName' 'external'                                           : #xqVar{id = next_id(), 'name' = qname(var,'$3'), 'external' = true               , type = undefined}.
'VarDecl'                -> 'variable' '$' 'VarName' ':=' 'VarValue'                                      : #xqVar{id = next_id(), 'name' = qname(var,'$3'), 'expr' = '$5'}.

'VarValue'               -> 'ExprSingle' : '$1'.
'VarDefaultValue'        -> 'ExprSingle' : '$1'.

'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' ':=' 'VarValue'                   : {'context-item', {'$5', 'undefined', '$7'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item'                 ':=' 'VarValue'                   : {'context-item', {'item', 'undefined', '$5'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' 'external' ':=' 'VarDefaultValue' : {'context-item', {'$5', 'external', '$8'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item'                 'external' ':=' 'VarDefaultValue' : {'context-item', {'item', 'external', '$6'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' 'external'                        : {'context-item', {'$5', 'external', 'undefined'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item'                 'external'                        : {'context-item', {'item', 'external', 'undefined'}}.

'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4', type = '$7', body = '$8'}.
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')' 'as' 'SequenceType' 'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4', type = '$7', external = true}.
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')'                     'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4',              body = '$6'}.
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')'                     'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4',              external = true}.
'FunctionDecl'           -> 'function' 'EQName' '('             ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'),                                      type = '$6', body = '$7'}.
'FunctionDecl'           -> 'function' 'EQName' '('             ')' 'as' 'SequenceType' 'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'),                                      type = '$6', external = true}.
'FunctionDecl'           -> 'function' 'EQName' '('             ')'                     'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'),                                                   body = '$5'}.
'FunctionDecl'           -> 'function' 'EQName' '('             ')'                     'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'),                                                   external = true}.

'ParamList'              -> 'Param' ',' 'ParamList' : ['$1' | '$3'].
'ParamList'              -> 'Param' : ['$1'].

'Param'                  -> '$' 'EQName' 'TypeDeclaration' : #xqVar{id = next_id(), name = qname(var, '$2'), 'type' = '$3', anno = line('$1')}.
'Param'                  -> '$' 'EQName'                   : #xqVar{id = next_id(), name = qname(var, '$2'), 'type' = #xqSeqType{}, anno = line('$1')}.

'FunctionBody'           -> 'EnclosedExpr' : '$1'.

'EnclosedExpr'           -> '{' 'Expr' '}' : '$2'.
'EnclosedExpr'           -> '{' '}' : 'empty-expr'.

'OptionDecl'             -> 'declare' 'option' 'EQName' 'StringLiteral' : {'option', {qname(opt, '$3'), bin_value_of('$4')}}.

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
'InsertExpr' -> 'insert' 'node' 'ExprSingle' 'InsertExprTargetChoice' 'ExprSingle' : {update, next_id(), '$4', '$3', '$5'}.
'InsertExpr' -> 'insert' 'nodes' 'ExprSingle' 'InsertExprTargetChoice' 'ExprSingle' : {update, next_id(), '$4', '$3', '$5'}.

% [201]
'DeleteExpr' -> 'delete' 'node'  'ExprSingle' : {update, next_id(), delete, '$3'}.
'DeleteExpr' -> 'delete' 'nodes' 'ExprSingle' : {update, next_id(), delete, '$3'}.

% [202]
'ReplaceExpr' -> 'replace' 'value' 'of' 'node' 'ExprSingle' 'with' 'ExprSingle' : {update, next_id(), replace_value, '$5', '$7'}.
'ReplaceExpr' -> 'replace' 'node' 'ExprSingle' 'with' 'ExprSingle' : {update, next_id(), replace, '$3', '$5'}.

% [203]
'RenameExpr' -> 'rename' 'node' 'ExprSingle' 'as' 'ExprSingle' : {update, next_id(), rename, '$3', '$5'}.

% [207]
'UpdatingFunctionCall' -> 'invoke' 'updating' 'PrimaryExpr' 'ArgumentList' : {'updating-function-call', '$3', length('$4'), '$4'}.

% [208]
'CopyModifyExpr' -> 'copy' 'CopyBindingList' 'modify' 'ExprSingle' 'return' 'ExprSingle' :
   {update, modify, next_id(), '$2', '$4', '$6'}.

'CopyBindingList' -> 'CopyBinding' ',' 'CopyBindingList' : ['$1'|'$3'].
'CopyBindingList' -> 'CopyBinding' : ['$1'].

'CopyBinding' -> '$' 'VarName' ':=' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'expr' = '$4', anno = line('$1')}.
  

% [41]
'FLWORExpr'              -> 'InitialClause' 'IntermediateClauseList' 'ReturnClause' : #xqFlwor{id = next_id(),loop = '$1'++'$2', return = element(2, '$3'), anno = element(1, '$3')}.
'FLWORExpr'              -> 'InitialClause'                          'ReturnClause' : #xqFlwor{id = next_id(),loop = '$1', return = element(2, '$2'), anno = element(1, '$2')}.
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
'ForBindingList'         -> 'ForBinding' ',' 'ForBindingList' : [{for,'$1',undefined} | '$3'] .
'ForBindingList'         -> 'ForBinding' : [{for,'$1',undefined}].

'ForBinding'             -> '$' 'VarName' 'TypeDeclaration' 'AllowingEmpty' 'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'empty' = true, position = '$5', expr = '$7', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName'                   'AllowingEmpty' 'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                'empty' = true, position = '$4', expr = '$6', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName' 'TypeDeclaration'                 'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3',                 position = '$4', expr = '$6', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName'                                   'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                                position = '$3', expr = '$5', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName' 'TypeDeclaration' 'AllowingEmpty'                 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'empty' = true,                  expr = '$6', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName'                   'AllowingEmpty'                 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                'empty' = true,                  expr = '$5', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName' 'TypeDeclaration'                                 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3',                                  expr = '$5', anno = line('$1')}.
'ForBinding'             -> '$' 'VarName'                                                   'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                                                 expr = '$4', anno = line('$1')}.
% [46]
'AllowingEmpty'          -> 'allowing' 'empty' : true.
% [47]
'PositionalVar'          -> 'at' '$' 'VarName' : #xqPosVar{id = next_id(), name = '$3'} .
% [48]
'LetClause'              -> 'let' 'LetBindingList' : '$2'. 
% [49]
'LetBindingList'         -> 'LetBinding' ',' 'LetBindingList' : [{'let', '$1',undefined}|'$3'].
'LetBindingList'         -> 'LetBinding' : [{'let', '$1',undefined}] .

'LetBinding'             -> '$' 'VarName' 'TypeDeclaration' ':=' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'expr' = '$5', anno = line('$1')}.
'LetBinding'             -> '$' 'VarName'                   ':=' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                'expr' = '$4', anno = line('$1')}.

% [50]
'WindowClause'           -> 'for' 'TumblingWindowClause' : ['$2'].
'WindowClause'           -> 'for' 'SlidingWindowClause'  : ['$2'].
% [51]
'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', 'type' = '$5', expr = '$7', anno = line('$3')},
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
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', expr = '$6', anno = line('$3')},
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
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', 'type' = '$5', expr = '$7', anno = line('$3')},
                                     start_expr = element(5, '$8'),
                                     s          = element(1, '$8'),
                                     spos       = element(2, '$8'),
                                     sprev      = element(3, '$8'),
                                     snext      = element(4, '$8')
                                    }.
'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName'                   'in' 'ExprSingle' 'WindowStartCondition'                      : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', expr = '$6', anno = line('$3')},
                                     start_expr = element(5, '$7'),
                                     s          = element(1, '$7'),
                                     spos       = element(2, '$7'),
                                     sprev      = element(3, '$7'),
                                     snext      = element(4, '$7')
                                    }.
% [52]
'SlidingWindowClause'    -> 'sliding' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = sliding, 
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', 'type' = '$5', expr = '$7', anno = line('$3')},
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
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', expr = '$6', anno = line('$3')},
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
'WindowStartCondition'   -> 'start' 'when' 'ExprSingle' : {'undefined','undefined','undefined','undefined','$3'}.
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
'CurrentItem'            -> 'EQName' : #xqVar{id = next_id(), 'name' = qname(var, '$1')}.
% [57]
'PreviousItem'           -> 'EQName' : #xqVar{id = next_id(), 'name' = qname(var, '$1')}.
% [58]
'NextItem'               -> 'EQName' : #xqVar{id = next_id(), 'name' = qname(var, '$1')}.
% [59]
'CountClause'            -> 'count' '$' 'VarName' : [{'count', #xqVar{id = next_id(), 'name' = qname(var, '$3'), type = #xqSeqType{type = 'xs:integer', occur = one}, anno = line('$2')}}].
% [60]
'WhereClause'            -> 'where' 'ExprSingle' : split_where_statement('$2').
% [61]
'GroupByClause'          ->  'group' 'by' 'GroupingSpecList' : sort_grouping('$3', next_id()).
% [62]
'GroupingSpecList'       ->  'GroupingSpec' ',' 'GroupingSpecList' : '$1' ++ '$3'.
'GroupingSpecList'       ->  'GroupingSpec' : '$1'.
% [63]
%% Grouping makes a new variable to group on by injecting a let statement
'GroupingSpec'           ->  'GroupingVariable' 'TypeDeclaration' ':=' 'ExprSingle' 'collation' 'URILiteral' : [{'let', #xqVar{anno = line('$3'), id = next_id(), 'name' = '$1', 'type' = '$2', 'expr' = '$4'}, undefined},
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = '$6'}] .
'GroupingSpec'           ->  'GroupingVariable' 'TypeDeclaration' ':=' 'ExprSingle'                          : [{'let', #xqVar{anno = line('$3'), id = next_id(), 'name' = '$1', 'type' = '$2', 'expr' = '$4'}, undefined},
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = 'default'}] .
'GroupingSpec'           ->  'GroupingVariable'                   ':=' 'ExprSingle' 'collation' 'URILiteral' : [{'let', #xqVar{anno = line('$2'), id = next_id(), 'name' = '$1', 'expr' = '$3'}, undefined},
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = '$5'}] .
'GroupingSpec'           ->  'GroupingVariable'                   ':=' 'ExprSingle'                          : [{'let', #xqVar{anno = line('$2'), id = next_id(), 'name' = '$1', 'expr' = '$3'}, undefined},
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = 'default'}] .
'GroupingSpec'           ->  'GroupingVariable'                                     'collation' 'URILiteral' : [#xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = '$3'}].
'GroupingSpec'           ->  'GroupingVariable'                                                              : [#xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = 'default'}].
% [64]
'GroupingVariable'       ->  '$' 'VarName' : '$2'.
% [65]
'OrderByClause'          -> 'order' 'by' 'OrderSpecList'          : [{order_by, next_id(), '$3'}].
'OrderByClause'          -> 'stable' 'order' 'by' 'OrderSpecList' : [{order_by, next_id(), '$4'}]. % always stable
% [66]
'OrderSpecList'          -> 'OrderSpec' ',' 'OrderSpecList' : '$1' ++ '$3'.
'OrderSpecList'          -> 'OrderSpec' : '$1'.
% [67]
'OrderSpec'              -> 'ExprSingle' 'OrderModifier' : [#xqOrderSpec{expr = '$1', modifier = '$2'}].
'OrderSpec'              -> 'ExprSingle'                 : [#xqOrderSpec{expr = '$1', modifier = #xqOrderModifier{}}].
% [68]
'OrderModifier'          -> 'ascending'  'empty' 'greatest' 'collation' 'URILiteral' : #xqOrderModifier{empty = greatest, collation = '$5'}.
'OrderModifier'          -> 'descending' 'empty' 'greatest' 'collation' 'URILiteral' : #xqOrderModifier{direction = descending, empty = greatest, collation = '$5'}.
'OrderModifier'          ->              'empty' 'greatest' 'collation' 'URILiteral' : #xqOrderModifier{empty = greatest, collation = '$4'}.
'OrderModifier'          -> 'ascending'  'empty' 'least'    'collation' 'URILiteral' : #xqOrderModifier{empty = least, collation = '$5'}.
'OrderModifier'          -> 'descending' 'empty' 'least'    'collation' 'URILiteral' : #xqOrderModifier{direction = descending, empty = least, collation = '$5'}.
'OrderModifier'          ->              'empty' 'least'    'collation' 'URILiteral' : #xqOrderModifier{empty = least, collation = '$4'}.
'OrderModifier'          -> 'ascending'                     'collation' 'URILiteral' : #xqOrderModifier{collation = '$3'}.
'OrderModifier'          -> 'descending'                    'collation' 'URILiteral' : #xqOrderModifier{direction = descending, collation = '$3'}.
'OrderModifier'          ->                                 'collation' 'URILiteral' : #xqOrderModifier{collation = '$2'}.
'OrderModifier'          -> 'ascending'  'empty' 'greatest'                          : #xqOrderModifier{empty = greatest}.
'OrderModifier'          -> 'descending' 'empty' 'greatest'                          : #xqOrderModifier{direction = descending, empty = greatest}.
'OrderModifier'          ->              'empty' 'greatest'                          : #xqOrderModifier{empty = greatest}.
'OrderModifier'          -> 'ascending'  'empty' 'least'                             : #xqOrderModifier{empty = least}.
'OrderModifier'          -> 'descending' 'empty' 'least'                             : #xqOrderModifier{direction = descending, empty = least}.
'OrderModifier'          ->              'empty' 'least'                             : #xqOrderModifier{empty = least}.
'OrderModifier'          -> 'ascending'                                              : #xqOrderModifier{}.
'OrderModifier'          -> 'descending'                                             : #xqOrderModifier{direction = descending}.
% [69]
'ReturnClause'           -> 'return' 'ExprSingle' : {line('$1'), '$2'}.
% [70]
'QuantifiedExpr'         -> 'some'  'InStatements' 'satisfies' 'ExprSingle' : {'some' , '$2', '$4'}.
'QuantifiedExpr'         -> 'every' 'InStatements' 'satisfies' 'ExprSingle' : {'every', '$2', '$4'}.

'InStatement'            -> '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' : #xqVar{anno = line('$1'), id = next_id(), 'name' = '$2', 'type' = '$3', 'expr' = '$5'}.
'InStatement'            -> '$' 'VarName' 'in' 'ExprSingle'                   : #xqVar{anno = line('$1'), id = next_id(), 'name' = '$2',                'expr' = '$4'}.

'InStatements'           -> 'InStatement' ',' 'InStatements': ['$1' | '$3'].
'InStatements'           -> 'InStatement' : ['$1'].

% [71] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
'SwitchExpr'             ->  'switch' '(' 'Expr' ')' 'SwitchCaseClauses' 'default' 'return' 'ExprSingle' 
                              : #xqSwitch{id      = next_id(),
                                          operand = '$3',
                                          clauses = '$5',
                                          default = '$8'}.
% [72]
'SwitchCaseClause'       -> 'SwitchCase' 'return' 'ExprSingle' 
                              : #xqSwitchClause{operands = '$1', expr = '$3'}.

'SwitchCaseClauses'      -> 'SwitchCaseClause' 'SwitchCaseClauses' : ['$1'|'$2'].
'SwitchCaseClauses'      -> 'SwitchCaseClause' : ['$1'].
'SwitchCase'             -> 'case' 'SwitchCaseOperand' : ['$2'] .
'SwitchCase'             -> 'case' 'SwitchCaseOperand' 'SwitchCase' : ['$2'|'$3'] .
% [73]
'SwitchCaseOperand'      -> 'ExprSingle' : '$1'  .
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% [74] %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
'TypeswitchExpr'         -> 'typeswitch' '(' 'Expr' ')' 'CaseClauses' 'default' '$' 'VarName' 'return' 'ExprSingle' 
                           : #xqTypeswitch{id = next_id(),
                                           input = '$3', 
                                           cases = '$5', 
                                           default = #xqTypeswitchCase{variable = #xqVar{anno = line('$7'), id = next_id(), 'name' = '$8',expr = '$10'}}}.  
'TypeswitchExpr'         -> 'typeswitch' '(' 'Expr' ')' 'CaseClauses' 'default'               'return' 'ExprSingle' 
                           : #xqTypeswitch{id = next_id(),
                                           input = '$3', 
                                           cases = '$5', 
                                           default = #xqTypeswitchCase{expr = '$8'}}.  
% [75]
'CaseClause'             -> 'case' '$' 'VarName' 'as' 'SequenceTypeUnion' 'return' 'ExprSingle' 
                           : #xqTypeswitchCase{types = '$5', variable = #xqVar{anno = line('$2'), id = next_id(), 'name' = '$3',expr = '$7'}}.
'CaseClause'             -> 'case'                    'SequenceTypeUnion' 'return' 'ExprSingle' 
                           : #xqTypeswitchCase{types = '$2', expr = '$4'}.

'CaseClauses'            -> 'CaseClause' 'CaseClauses' : ['$1'|'$2'].
'CaseClauses'            -> 'CaseClause' : ['$1'].
% [76]
'SequenceTypeUnion'      -> 'SequenceType' '|' 'SequenceTypeUnion' : ['$1'|'$3']. 
'SequenceTypeUnion'      -> 'SequenceType' : ['$1'].
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% [77]
'IfExpr'                 -> 'if' '(' 'Expr' ')' 'then' 'ExprSingle' 'else' 'ExprSingle' : {'if-then-else', '$3', {next_id(),'$6'}, {next_id(),'$8'}}.
% [78]
'TryCatchExpr'           -> 'TryClause' 'CatchClauses' 
                           : #xqTryCatch{id = next_id(), expr = '$1', catches = '$2'}.
% [79]
'TryClause'              -> 'try' 'EnclosedTryTargetExpr' : '$2'.
% [80]
'EnclosedTryTargetExpr'  -> 'EnclosedExpr' : {expr, '$1'}.
% [81]
'CatchClause'            -> 'catch' 'CatchErrorList' 'EnclosedExpr' : {'$2', {expr, '$3'}}.
'CatchClauses'           -> 'CatchClause' 'CatchClauses' : ['$1'|'$2'].
'CatchClauses'           -> 'CatchClause' : ['$1'].
% [82]
'CatchErrorList'         -> 'NameTest' '|' 'CatchErrorList' : ['$1'|'$3'].
'CatchErrorList'         -> 'NameTest' : ['$1'].
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
                     lhs = maybe_atomize_path('$1'), 
                     rhs = maybe_atomize_path('$3'), 
                     anno = line('$2')}.
'ComparisonExpr'         -> 'StringConcatExpr' 'GeneralComp' 'StringConcatExpr' : 
   #xqComparisonExpr{id = next_id(), 
                     comp = value_of('$2'), 
                     lhs = maybe_atomize_path('$1'), 
                     rhs = maybe_atomize_path('$3'), 
                     anno = line('$2')}.
'ComparisonExpr'         -> 'StringConcatExpr' 'NodeComp'    'StringConcatExpr' :
   #xqComparisonExpr{id = next_id(), 
                     comp = value_of('$2'), 
                     lhs = maybe_atomize_path('$1'), 
                     rhs = maybe_atomize_path('$3'), 
                     anno = line('$2')}.
'ComparisonExpr'         -> 'StringConcatExpr' : '$1'.
% [86]
'StringConcatExpr'       -> 'RangeExpr' '||' 'StringConcatExpr' : {'concat', '$1', '$3'}.
%% {'concat', ['$1', '$3']}.
'StringConcatExpr'       -> 'RangeExpr' : '$1'.
% [87] 
'RangeExpr'              -> 'AdditiveExpr' 'to' 'AdditiveExpr' : {'range', '$1', '$3'}.
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
   {'union', L} ->
      {'union', ['$1'|L]};
   _ ->
      {'union', ['$1', '$3']}
end.
'UnionExprs'             -> 'IntersectExceptExpr' '|' 'UnionExprs' : 
case '$3' of
   {'union', L} ->
      {'union', ['$1'|L]};
   _ ->
      {'union', ['$1','$3']}
end.
'UnionExprs'             -> 'IntersectExceptExpr' : '$1'.
'UnionExpr'              -> 'UnionExprs' : '$1'.
% [91]     IntersectExceptExpr     ::=      InstanceofExpr ( ("intersect" | "except") InstanceofExpr )* 
'IntersectExceptExprs'   -> 'InstanceofExpr' 'intersect' 'IntersectExceptExprs' : {'intersect', '$1', '$3'}.
'IntersectExceptExprs'   -> 'InstanceofExpr' 'except' 'IntersectExceptExprs' : {'except', '$1', '$3'}.
'IntersectExceptExprs'   -> 'InstanceofExpr' : '$1'.
'IntersectExceptExpr'    -> 'IntersectExceptExprs' : '$1'.
% [92]     InstanceofExpr    ::=      TreatExpr ( "instance" "of" SequenceType )?  
'InstanceofExpr'         -> 'TreatExpr' 'instance' 'of' 'SequenceType' : {'instance_of', '$1', '$4'}.
'InstanceofExpr'         -> 'TreatExpr' : '$1'.
% [93]     TreatExpr      ::=      CastableExpr ( "treat" "as" SequenceType )?  
'TreatExpr'              -> 'CastableExpr' 'treat' 'as' 'SequenceType' : {'treat_as', '$1', '$4'}.
'TreatExpr'              -> 'CastableExpr' : '$1'.
% [94]     CastableExpr      ::=      CastExpr ( "castable" "as" SingleType )?  
'CastableExpr'           -> 'CastExpr' 'castable' 'as' 'SingleType' : {'castable_as', '$1', '$4'}.
'CastableExpr'           -> 'CastExpr' : '$1'.
% [95]     CastExpr    ::=      ArrowExpr ( "cast" "as" SingleType )?  
'CastExpr'               -> 'ArrowExpr' 'cast' 'as' 'SingleType' : {'cast_as', '$1', '$4'}.
'CastExpr'               -> 'ArrowExpr' : '$1'.
% [96]     ArrowExpr      ::=      UnaryExpr ( "=>" ArrowFunctionSpecifier ArgumentList )*  
'ArrowExpr'              -> 'ArrowExpr' '=>' 'ArrowFunctionSpecifier' 'ArgumentList' : case '$3' of
                                                                                          #qname{} ->
                                                                                             {'function-call','$3',length(['$1'|'$4']),['$1'|'$4']};
                                                                                          _ ->
                                                                                             {'postfix', next_id(), '$3',[{arguments,['$1'|'$4']}] }
                                                                                       end.
'ArrowExpr'              -> 'TransformWithExpr' : '$1'.

% [97] UPD TransformWithExpr     ::=      UnaryExpr ( "transform" "with" "{" Expr? "}" )?
'TransformWithExpr' -> 'UnaryExpr' 'transform' 'with' '{' '}' : 
   Id = next_id(),
   B = list_to_binary(["~", integer_to_list(Id)]),
   Nm = #qname{namespace = 'no-namespace', prefix = <<>>, local_name = B},
   {update, modify, next_id(), [#xqVar{id = Id, name = Nm, 'expr' = '$1', anno = line('$2')}], 
      #xqVarRef{name = Nm}, 
      #xqVarRef{name = Nm}}.
'TransformWithExpr' -> 'UnaryExpr' 'transform' 'with' '{' 'Expr' '}' :
   Id = next_id(),
   B = list_to_binary(["~", integer_to_list(Id)]),
   Nm = #qname{namespace = 'no-namespace', prefix = <<>>, local_name = B},
   {update, modify, next_id(), [#xqVar{id = Id, name = Nm, 'expr' = '$1', anno = line('$2')}], 
      {'simple-map', next_id(), #xqVarRef{name = Nm}, '$5'}, 
      #xqVarRef{name = Nm}}.
'TransformWithExpr' -> 'UnaryExpr' : '$1'.

% [97]     UnaryExpr      ::=      ("-" | "+")* ValueExpr  
'UnaryExpr'              -> 'uminus' : '$1'.
'UnaryExpr'              -> 'uplus' : '$1'.
'UnaryExpr'              -> 'ValueExpr' : '$1'.

'uminus'                 -> '-' 'ValueExpr' : {'unary', '-', '$2'}.
'uminus'                 -> '-' 'uminus' : {'unary', '-', '$2'}.
'uminus'                 -> '-' 'uplus'  : {'unary', '-', '$2'}.

'uplus'                  -> '+' 'ValueExpr' : {'unary', '+', '$2'}.
'uplus'                  -> '+' 'uminus' : {'unary', '+', '$2'}.
'uplus'                  -> '+' 'uplus'  : {'unary', '+', '$2'}.
% [98]     ValueExpr      ::=      ValidateExpr | ExtensionExpr | SimpleMapExpr 
'ValueExpr'              -> 'ValidateExpr'   : ?err('XQST0075'). %TODO Schema Aware Feature
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
'ValidateExpr'           -> 'validate' 'ValidationMode'  '{' 'Expr' '}' : {validate, {'mode', '$2'}, '$4'}.
'ValidateExpr'           -> 'validate' 'type' 'TypeName' '{' 'Expr' '}' : {validate, {'type', '$3'}, '$5'}. 
'ValidateExpr'           -> 'validate'                   '{' 'Expr' '}' : {validate, [], '$3'}.
% [103]    ValidationMode    ::=      "lax" | "strict"
'ValidationMode'         -> 'lax'    : 'lax'.
'ValidationMode'         -> 'strict' : 'strict'.
% [104]    ExtensionExpr     ::=      Pragma+ "{" Expr? "}"
'ExtensionExpr'          -> 'Pragmas' '{' 'Expr' '}' : {pragma, '$1', '$3'}.
'ExtensionExpr'          -> 'Pragmas' '{' '}' : {pragma, '$1', []}.
% [105]    Pragma            ::=      "(#" S? EQName (S PragmaContents)? "#)"   /* ws: explicit */
'Pragma'                 -> '(#' 'S' 'EQName' 'S' 'PragmaContents' '#)' : {qname(var,'$3'), bin_value_of('$5')}.
'Pragma'                 -> '(#'     'EQName' 'S' 'PragmaContents' '#)' : {qname(var,'$2'), bin_value_of('$4')}.
'Pragma'                 -> '(#' 'S' 'EQName' '#)' : {qname(var,'$3'), []}.
'Pragma'                 -> '(#'     'EQName' '#)' : {qname(var,'$2'), []}.

'Pragmas'                -> 'Pragma' 'Pragmas' : ['$1'|'$2'].
'Pragmas'                -> 'Pragma' : ['$1'].
% [106]    PragmaContents    ::=      (Char* - (Char* '#)' Char*))
%% done in scanner  
% [107]    SimpleMapExpr     ::=      PathExpr ("!" PathExpr)*
'SimpleMapExpr'          -> 'PathExpr' '!' 'SimpleMapExpr' : 
case '$3' of
   {'simple-map', I, P, S} ->
      {'simple-map', I, {'simple-map', next_id(), '$1', P}, S};
   _ ->
      {'simple-map', next_id(), '$1', '$3'}
end.
'SimpleMapExpr'          -> 'PathExpr' : '$1'.

% [108]    PathExpr    ::=      ("/" RelativePathExpr?)| ("//" RelativePathExpr)| RelativePathExpr   /* xgc: leading-lone-slash */
'PathExpr'               -> '/' 'RelativePathExpr'  : {path_expr, next_id(), ['root' | '$2']}.            %/* xgs: leading-lone-slash */
'PathExpr'               -> '//' 'RelativePathExpr' : {path_expr, next_id(), ['any-root',#xqAxisStep{id = next_id(),axis = 'descendant-or-self', anno = line('$1')}|'$2']}.
'PathExpr'               -> 'RelativePathExpr'     : 
   case '$1' of 
      ['root'] = V -> {path_expr, next_id(), V};
      [#xqAxisStep{}] = V -> {path_expr, next_id(), V};
      [V] -> V; 
      V -> {path_expr, next_id(), V} 
   end.
'RelativePathExpr'       -> 'StepExpr' '/'  'RelativePathExpr' : ['$1' | '$3'].
'RelativePathExpr'       -> 'StepExpr' '//' 'RelativePathExpr' : 
 case '$3' of 
   [#xqAxisStep{axis = child, predicates = []} = H|T] -> 
      ['$1',H#xqAxisStep{axis = descendant}|T];
   _ -> ['$1',#xqAxisStep{id = next_id(),axis = 'descendant-or-self',anno = line('$2')} | '$3'] 
 end.
'RelativePathExpr'       -> 'StepExpr' :  ['$1'].

% [110]    StepExpr    ::=      PostfixExpr | AxisStep  
'StepExpr'               -> 'PostfixExpr' : '$1'.
'StepExpr'               -> 'AxisStep'   : '$1'.
'StepExpr'               -> 'lone-slash'   : 'root'.

% [111]    AxisStep    ::=      (ReverseStep | ForwardStep) PredicateList 
'AxisStep'               -> 'ReverseStep' 'PredicateList' : #xqAxisStep{id = next_id(),direction = reverse, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = '$2', anno = element(3,'$1')}.
'AxisStep'               -> 'ReverseStep'                 : #xqAxisStep{id = next_id(),direction = reverse, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = [], anno = element(3,'$1')}.
'AxisStep'               -> 'ForwardStep' 'PredicateList' : #xqAxisStep{id = next_id(),direction = forward, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = '$2', anno = element(3,'$1')}.
'AxisStep'               -> 'ForwardStep'                 : #xqAxisStep{id = next_id(),direction = forward, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = [], anno = element(3,'$1')}.

% [112]    ForwardStep    ::=      (ForwardAxis NodeTest) | AbbrevForwardStep   
'ForwardStep'            -> 'ForwardAxis' 'NodeTest' : 
   erlang:append_element(
      name_to_kind_test({element(1, '$1'), '$2'}), 
      element(2, '$1')).
'ForwardStep'            -> 'AbbrevForwardStep'      : 
   erlang:append_element(name_to_kind_test('$1'), -1).
% [113]    ForwardAxis    ::=      ("child" "::")| ("descendant" "::")| ("attribute" "::")| ("self" "::")| 
%                                  ("descendant-or-self" "::")| ("following-sibling" "::")| ("following" "::") 
'ForwardAxis'            -> 'child' '::'              : {'child', line('$1')}.
'ForwardAxis'            -> 'descendant' '::'         : {'descendant', line('$1')}.
'ForwardAxis'            -> 'attribute' '::'          : {'attribute', line('$1')}.
'ForwardAxis'            -> 'self' '::'               : {'self', line('$1')}.
'ForwardAxis'            -> 'descendant-or-self' '::' : {'descendant-or-self', line('$1')}.
'ForwardAxis'            -> 'following-sibling' '::'  : {'following-sibling', line('$1')}.
'ForwardAxis'            -> 'following' '::'          : {'following', line('$1')}.
% [114]    AbbrevForwardStep    ::=      "@"? NodeTest  
'AbbrevForwardStep'      -> '@' 'NodeTest' : {'attribute', '$2', line('$1')}.
'AbbrevForwardStep'      -> 'NodeTest'     : case ('$1') of
                                                #xqKindTest{kind = 'attribute'} ->
                                                  {'attribute', '$1'};
                                                #xqKindTest{kind = 'namespace'} ->
                                                  ?err('XQST0134'); % no abbrev namespace allowed
                                                _ ->
                                                  {'child', '$1'}
                                             end.
% [115]    ReverseStep    ::=      (ReverseAxis NodeTest) | AbbrevReverseStep   
'ReverseStep' -> 'ReverseAxis' 'NodeTest' : 
   erlang:append_element(
      name_to_kind_test({element(1, '$1'), '$2'}), 
      element(2, '$1')).
'ReverseStep' -> 'AbbrevReverseStep'      : 
   {element(1, '$1'), #xqKindTest{kind = 'node'}, element(2, '$1')}.
% [116]    ReverseAxis    ::=      ("parent" "::") | ("ancestor" "::")| ("preceding-sibling" "::")| ("preceding" "::")| ("ancestor-or-self" "::")   
'ReverseAxis' -> 'parent' '::'            : {'parent', line('$1')}.
'ReverseAxis' -> 'ancestor' '::'          : {'ancestor', line('$1')}.
'ReverseAxis' -> 'preceding-sibling' '::' : {'preceding-sibling', line('$1')}.
'ReverseAxis' -> 'preceding' '::'         : {'preceding', line('$1')}.
'ReverseAxis' -> 'ancestor-or-self' '::'  : {'ancestor-or-self', line('$1')}.
% [117]    AbbrevReverseStep    ::=      ".."
'AbbrevReverseStep'      -> '..' : {'parent', line('$1')}.
% [118]    NodeTest    ::=      KindTest | NameTest  
'NodeTest'               -> 'KindTest' : '$1'.
'NodeTest'               -> 'NameTest' : '$1'.
% [119]    NameTest    ::=      EQName | Wildcard 
'NameTest'               -> 'EQName'   : #xqNameTest{name = qname(nametest,'$1')}.
'NameTest'               -> 'Wildcard' : #xqNameTest{name = qname(wildcard,'$1')}.
% [120]    Wildcard    ::=      "*" | (NCName ":*") | ("*:" NCName) | (BracedURILiteral "*")   /* ws: explicit */
'Wildcard'               -> '*'           : #'qname'{prefix = <<"*">>, local_name = <<"*">>}. 
'Wildcard'               -> 'NCName' ':*' : #'qname'{prefix = bin_value_of('$1'), local_name = <<"*">>}.
'Wildcard'               -> '*:' 'NCName' : #'qname'{prefix = <<"*">>, local_name = bin_value_of('$2')}.
'Wildcard'               -> '*' ':*' : #'qname'{prefix = <<"*">>, local_name = <<"*">>}.
'Wildcard'               -> '*:' '*' : #'qname'{prefix = <<"*">>, local_name = <<"*">>}.
'Wildcard'               -> 'BracedURILiteral' '*'  : #'qname'{namespace = '$1', local_name = <<"*">>}.
% [121]    PostfixExpr    ::=      PrimaryExpr (Predicate | ArgumentList | Lookup)*   
'PostfixExpr'            -> 'PrimaryExpr' 'PostFixes'  : case is_partial_impl('$2') of
                                                            true ->
                                                               {partial_postfix, next_id(), '$1', '$2'};
                                                            _ ->
                                                               {postfix, next_id(), '$1', '$2'}
                                                         end.
'PostfixExpr'            -> 'PrimaryExpr'              : '$1'.
'PostFixes'              -> 'Predicate'    : [{'predicate', '$1'}].
'PostFixes'              -> 'ArgumentList' : [{'arguments', '$1'}].
'PostFixes'              -> 'Lookup'       : [{'lookup', '$1'}].
'PostFixes'              -> 'Predicate'    'PostFixes' : [{'predicate', '$1'}|'$2'].
'PostFixes'              -> 'ArgumentList' 'PostFixes' : [{'arguments', '$1'}|'$2'].
'PostFixes'              -> 'Lookup'       'PostFixes' : [{'lookup', '$1'}|'$2'].
% [122]    ArgumentList      ::=      "(" (Argument ("," Argument)*)? ")"
'ArgumentList'           -> '(' ')' : [].
'ArgumentList'           -> '(' 'Arguments' ')' : '$2'.

'Arguments'              -> 'Argument' : as_list('$1').
'Arguments'              -> 'Argument' ',' 'Arguments': as_list('$1') ++ '$3'.
% [123]    PredicateList     ::=      Predicate*  
'PredicateList'          -> 'Predicate' 'PredicateList' : as_list({'predicate', '$1'}) ++ '$2'.  
'PredicateList'          -> 'Predicate' : as_list({'predicate', '$1'}).
% [124]    Predicate      ::=      "[" Expr "]"   
'Predicate'              -> '[' 'Expr' ']' : '$2'.
% [125]    Lookup      ::=      "?" KeySpecifier
'Lookup'                 -> '?' 'KeySpecifier' : '$2'.
% [126]    KeySpecifier      ::=      NCName | IntegerLiteral | ParenthesizedExpr | "*"
'KeySpecifier'           -> 'NCName'         : xqAtomicValue('xs:NCName', bin_value_of('$1')).
'KeySpecifier'           -> 'IntegerLiteral' : xqAtomicValue('xs:integer', value_of('$1')).
'KeySpecifier'           -> 'ParenthesizedExpr' : '$1'.
'KeySpecifier'           -> '*'        : 'wildcard'.
'KeySpecifier'           -> 'wildcard' : 'wildcard'.
% [127]    ArrowFunctionSpecifier     ::=      EQName | VarRef | ParenthesizedExpr
'ArrowFunctionSpecifier' -> 'EQName' : qname(func, '$1').
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

%% -record(xqAtomicValue,
%%         {
%%          type  = undefined :: atom(),
%%          value = undefined :: term() 
%%         }).
'Literal'                -> 'NumericLiteral' : '$1'.
'Literal'                -> 'StringLiteral'  : xqAtomicValue('xs:string',bin_value_of('$1')).
% [130]    NumericLiteral    ::=      IntegerLiteral | DecimalLiteral | DoubleLiteral 
%'NumericLiteral'         -> 'IntegerLiteral' : value_of('$1').
'NumericLiteral'         -> 'IntegerLiteral' : xqAtomicValue('xs:integer',value_of('$1')).
'NumericLiteral'         -> 'DecimalLiteral' : xqAtomicValue('xs:decimal',value_of('$1')).
'NumericLiteral'         -> 'DoubleLiteral'  : xqAtomicValue('xs:double',value_of('$1')).
% [131]    VarRef      ::=      "$" VarName 
'VarRef'                 -> '$' 'VarName' : #xqVarRef{name = '$2'}.
% [132]    VarName     ::=      EQName   
'VarName'                -> 'EQName' : qname(var, '$1').
% [133]    ParenthesizedExpr    ::=      "(" Expr? ")"  
'ParenthesizedExpr'      -> '(' ')' : 'empty-sequence'.
'ParenthesizedExpr'      -> '(' 'Expr' ')' : {'sequence', '$2'}.
% [134]    ContextItemExpr      ::=      "."   
'ContextItemExpr'        -> '.' : 'context-item'.
% [135]    OrderedExpr    ::=      "ordered" EnclosedExpr  
'OrderedExpr'            -> 'ordered' 'EnclosedExpr' : {'ordered-expr', '$2'}.
% [136]    UnorderedExpr     ::=      "unordered" EnclosedExpr
'UnorderedExpr'          -> 'unordered' 'EnclosedExpr' : {'unordered-expr', '$2'}.
% [137]    FunctionCall      ::=      EQName ArgumentList  /* xgc: reserved-function-names *//* gn: parens */
'FunctionCall'           -> 'EQName' 'ArgumentList' : 
         case lists:any(fun({'?',_}) -> true; (_) -> false end, '$2') of
            true ->
               {'partial-function', qname(func, '$1'),length('$2'),  '$2'};
            _ ->
               {'function-call', qname(func, '$1'),length('$2'), '$2'}
         end.
'FunctionCall'           -> 'return' 'ArgumentList' : % functions named 'return' can screw things up 
         case lists:any(fun({'?',_}) -> true; (_) -> false end, '$2') of
            true ->
               {'partial-function', qname(func, {qname,default,<<>>,<<"return">>}),length('$2'),  '$2'};
            _ ->
               {'function-call', qname(func, {qname,default,<<>>,<<"return">>}),length('$2'), '$2'}
         end.
'FunctionCall'           -> 'in' 'ArgumentList' : % functions named 'in' can screw things up 
         case lists:any(fun({'?',_}) -> true; (_) -> false end, '$2') of
            true ->
               {'partial-function', qname(func, {qname,default,<<>>,<<"in">>}),length('$2'),  '$2'};
            _ ->
               {'function-call', qname(func, {qname,default,<<>>,<<"in">>}),length('$2'), '$2'}
         end.
% [138]    Argument    ::=      ExprSingle | ArgumentPlaceholder 
'Argument'               -> 'ExprSingle' : '$1'.
'Argument'               -> 'ArgumentPlaceholder' : '$1'.
% [139]    ArgumentPlaceholder     ::=      "?"
'ArgumentPlaceholder'    -> '?' : {value_of('$1'), next_id()}.
% [140]    NodeConstructor      ::=      DirectConstructor | ComputedConstructor   
'NodeConstructor'        -> 'DirectConstructor'   : {direct_cons, '$1'}.
'NodeConstructor'        -> 'ComputedConstructor' : {comp_cons, '$1'}.
% [141]    DirectConstructor    ::=      DirElemConstructor | DirCommentConstructor | DirPIConstructor   
'DirectConstructor'      -> 'DirElemConstructor'    : '$1'.
'DirectConstructor'      -> 'DirCommentConstructor' : '$1'.
'DirectConstructor'      -> 'DirPIConstructor'      : '$1'.
% [142]    DirElemConstructor      ::=      "<" QName DirAttributeList ("/>" | (">" DirElemContent* "</" QName S? ">"))   /* ws: explicit */
'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '/>' 
                              : #xqElementNode{identity = next_id(), attributes = '$3', name = qname(other,'$2')}.
'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' 'DirElemContents' '</' 'EQName' '>' 
                              : if '$2' == '$7' ->
                                 #xqElementNode{identity = next_id(), attributes = '$3', name = qname(other,'$2'), content = '$5'};
                                 true -> ?err('XQST0118')
                                end. 
'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' 'DirElemContents' '</' 'EQName' 'S' '>' 
                              : if '$2' == '$7' ->
                                 #xqElementNode{identity = next_id(), attributes = '$3', name = qname(other,'$2'), content = '$5'};
                                 true -> ?err('XQST0118')
                                end. 
'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' '</' 'EQName' '>' 
                              : if '$2' == '$6' ->
                                 #xqElementNode{identity = next_id(), attributes = '$3', name = qname(other,'$2')};
                                 true -> ?err('XQST0118')
                                end.  
'DirElemConstructor'     -> '<' 'EQName' 'DirAttributeList' '>' '</' 'EQName' 'S' '>' 
                              : if '$2' == '$6' ->
                                 #xqElementNode{identity = next_id(), attributes = '$3', name = qname(other,'$2')};
                                 true -> ?err('XQST0118')
                                end.  
'DirElemConstructor'     -> '<' 'EQName' '/>' 
                              : #xqElementNode{identity = next_id(), name = qname(other,'$2')}.
'DirElemConstructor'     -> '<' 'EQName' '>' 'DirElemContents' '</' 'EQName' '>' 
                              : #xqElementNode{identity = next_id(), name = qname(other,'$2'), content = '$4'}. 
'DirElemConstructor'     -> '<' 'EQName' '>' 'DirElemContents' '</' 'EQName' 'S' '>' 
                              : #xqElementNode{identity = next_id(), name = qname(other,'$2'), content = '$4'}. 
'DirElemConstructor'     -> '<' 'EQName' '>' '</' 'EQName' '>' 
                              : if '$2' == '$5' ->
                                 #xqElementNode{identity = next_id(), name = qname(other,'$2')};
                                 true -> ?err('XQST0118')
                                end.  
'DirElemConstructor'     -> '<' 'EQName' '>' '</' 'EQName' 'S' '>' 
                              : if '$2' == '$5' ->
                                 #xqElementNode{identity = next_id(), name = qname(other,'$2')};
                                 true -> ?err('XQST0118')
                                end.  
% [143]    DirAttributeList     ::=      (S (QName S? "=" S? DirAttributeValue)?)* /* ws: explicit */
'DirAttributeList'       -> 'DirAttribute' 'DirAttributeList' : case '$1' of
                                                                  #xqNamespaceNode{} ->
                                                                     ['$1' | '$2'];
                                                                  _ ->
                                                                      '$2' ++ ['$1']
                                                               end.
'DirAttributeList'       -> 'DirAttribute' : ['$1'].

'DirAttribute'           -> 'S' 'QName'     '='     'DirAttributeValue' : dir_att('$2', '$4').
'DirAttribute'           -> 'S' 'QName' 'S' '='     'DirAttributeValue' : dir_att('$2', '$5').
'DirAttribute'           -> 'S' 'QName' 'S' '=' 'S' 'DirAttributeValue' : dir_att('$2', '$6').
'DirAttribute'           -> 'S' 'QName'     '=' 'S' 'DirAttributeValue' : dir_att('$2', '$5').
'DirAttribute'           -> 'S' : [].
% [144]    DirAttributeValue    ::=      ('"' (EscapeQuot | QuotAttrValueContent)* '"') | ("'" (EscapeApos | AposAttrValueContent)* "'")   /* ws: explicit */
'DirAttributeValuesQuot' -> 'QuotAttrValueContent' 'DirAttributeValuesQuot' : ['$1' | '$2'].
'DirAttributeValuesQuot' -> 'EscapeQuot'           'DirAttributeValuesQuot' : [{entity_ref,<<"\"">>} | '$2'].
'DirAttributeValuesQuot' -> 'QuotAttrValueContent' : ['$1'].
'DirAttributeValuesQuot' -> 'EscapeQuot'           : [{entity_ref,<<"\"">>}].

'DirAttributeValuesApos' -> 'AposAttrValueContent' 'DirAttributeValuesApos' : ['$1' | '$2'].
'DirAttributeValuesApos' -> 'EscapeApos'           'DirAttributeValuesApos' : [{entity_ref,<<"'">>} | '$2'].
'DirAttributeValuesApos' -> 'AposAttrValueContent' : ['$1'].
'DirAttributeValuesApos' -> 'EscapeApos'           : [{entity_ref,<<"'">>}].

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
'DirElemContent'         -> 'ElementContentChars' : xqAtomicValue('xs:string', '$1').

'ElementContentChars'    -> 'ElementContentChar' 'ElementContentChars' : <<(bin_value_of('$1'))/binary , ('$2')/binary>>.
'ElementContentChars'    -> 'S'                  'ElementContentChars' : <<(bin_value_of('$1'))/binary , ('$2')/binary>>.
'ElementContentChars'    -> 'ElementContentChar' : bin_value_of('$1').
'ElementContentChars'    -> 'S'                  : bin_value_of('$1').
% [148]    CommonContent     ::=      PredefinedEntityRef | CharRef | "{{" | "}}" | EnclosedExpr  
'CommonContent'          -> 'PredefinedEntityRef' : {entity_ref, bin_value_of('$1')}.
'CommonContent'          -> 'CharRef'             : {char_ref, bin_value_of('$1')}.
'CommonContent'          -> '{{'                  : xqAtomicValue('xs:string', <<"{">>).
'CommonContent'          -> '}}'                  : xqAtomicValue('xs:string', <<"}">>).
'CommonContent'          -> 'EnclosedExpr' : {content_expr, '$1'}.
% [149]    DirCommentConstructor      ::=      "<!--" DirCommentContents "-->"  /* ws: explicit */
'DirCommentConstructor'  -> '<!--' 'DirCommentContents' '-->' : 
   #xqCommentNode{identity = next_id(), string_value = '$2'}.
% [150]    DirCommentContents      ::=      ((Char - '-') | ('-' (Char - '-')))*
%% done in scanner
'DirCommentContents'     -> 'comment-text' : xqAtomicValue('xs:string', bin_value_of('$1')).
% [151]    DirPIConstructor     ::=      "<?" PITarget (S DirPIContents)? "?>"  /* ws: explicit */
'DirPIConstructor'       -> '<?' 'PITarget' '?>'                 : 
   #xqProcessingInstructionNode{identity = next_id(), name = qname(pi,bin_value_of('$2'))}.
'DirPIConstructor'       -> '<?' 'PITarget' 'DirPIContents' '?>' : 
   #xqProcessingInstructionNode{identity = next_id(), name = qname(pi,bin_value_of('$2')),
   string_value = xqAtomicValue('xs:string', bin_value_of('$3'))}.
% [152]    DirPIContents     ::=      (Char* - (Char* '?>' Char*))  /* ws: explicit */
%% done in scanner
% [153]    CDataSection      ::=      "<![CDATA[" CDataSectionContents "]]>" /* ws: explicit */
'CDataSection'           -> '<![CDATA[' 'CDataSectionContents' ']]>' : 
   if '$2' == [] ->
         #xqTextNode{identity = next_id(), cdata = true, string_value = []};
      true ->
         #xqTextNode{identity = next_id(), cdata = true, 
            string_value = xqAtomicValue('xs:string', '$2')}
   end.
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
   #xqDocumentNode{identity = next_id(), content = {content_expr, '$2'}}.
% [157]    CompElemConstructor     ::=      "element" (EQName | ("{" Expr "}")) EnclosedContentExpr  
'CompElemConstructor'    -> 'element'    'return'    'EnclosedContentExpr' : 
   #xqElementNode{identity = next_id(), name = qname(other,to_NCName('$2')), content = '$3'}. 
'CompElemConstructor'    -> 'element'    'EQName'    'EnclosedContentExpr' : 
   #xqElementNode{identity = next_id(), name = qname(other,'$2'), content = '$3'}. 
'CompElemConstructor'    -> 'element' '{' 'Expr' '}' 'EnclosedContentExpr' : 
   #xqElementNode{identity = next_id(), name = '$3', content = '$5'}.
% [158]    EnclosedContentExpr     ::=      EnclosedExpr
'EnclosedContentExpr'    -> 'EnclosedExpr' : {content_expr, '$1'}.
% [159]    CompAttrConstructor     ::=      "attribute" (EQName | ("{" Expr "}")) EnclosedExpr 
'CompAttrConstructor'    -> 'attribute'    'return'    'EnclosedExpr' : 
   #xqAttributeNode{identity = next_id(), name = qname(other,to_NCName('$2')), string_value = {content_expr, '$3'}}.
'CompAttrConstructor'    -> 'attribute'    'EQName'    'EnclosedExpr' : 
   #xqAttributeNode{identity = next_id(), name = qname(other,'$2'), string_value = {content_expr, '$3'}}.
'CompAttrConstructor'    -> 'attribute' '{' 'Expr' '}' 'EnclosedExpr' : 
   #xqAttributeNode{identity = next_id(), name = '$3', string_value = {content_expr, '$5'}}.
% [160]    CompNamespaceConstructor      ::=      "namespace" (Prefix | EnclosedPrefixExpr) EnclosedURIExpr
'CompNamespaceConstructor'-> 'namespace' 'NCName'             'EnclosedURIExpr' : 
   #xqNamespaceNode{identity = next_id(), uri = '$3', prefix = bin_value_of('$2')}.
'CompNamespaceConstructor'-> 'namespace' 'EnclosedPrefixExpr' 'EnclosedURIExpr' : 
   #xqNamespaceNode{identity = next_id(), uri = '$3', prefix = '$2'}.
% [161]    Prefix      ::=      NCName
% block due to conflict with LocalPart 'Prefix'                 -> 'NCName' : value_of('$1').
% [162]    EnclosedPrefixExpr      ::=      EnclosedExpr
'EnclosedPrefixExpr'     -> 'EnclosedExpr' : {expr, '$1'}.
%'EnclosedPrefixExpr'     -> 'EnclosedExpr' : {prefix_expr, '$1'}.
% [163]    EnclosedURIExpr      ::=      EnclosedExpr   
'EnclosedURIExpr'        -> 'EnclosedExpr' : {expr, '$1'}.
%'EnclosedURIExpr'        -> 'EnclosedExpr' : {uri_expr, '$1'}.
% [164]    CompTextConstructor     ::=      "text" EnclosedExpr  
'CompTextConstructor'    -> 'text' 'EnclosedExpr' : 
   #xqTextNode{identity = next_id(), string_value = {content_expr, '$2'}}.
% [165]    CompCommentConstructor     ::=      "comment" EnclosedExpr  
'CompCommentConstructor' -> 'comment' 'EnclosedExpr' : 
   #xqCommentNode{identity = next_id(), string_value = {content_expr, '$2'}}.
% [166]    CompPIConstructor    ::=      "processing-instruction" (NCName | ("{" Expr "}")) EnclosedExpr   
'CompPIConstructor'      -> 'processing-instruction'    'NCName'    'EnclosedExpr' : 
   #xqProcessingInstructionNode{identity = next_id(), name = qname(pi,bin_value_of('$2')), string_value = {content_expr, '$3'}}.
'CompPIConstructor'      -> 'processing-instruction' '{' 'Expr' '}' 'EnclosedExpr' : 
   #xqProcessingInstructionNode{identity = next_id(), name = '$3',                     string_value = {content_expr, '$5'}}.
% [167]    FunctionItemExpr     ::=      NamedFunctionRef | InlineFunctionExpr
'FunctionItemExpr'       -> 'NamedFunctionRef' : '$1'.
'FunctionItemExpr'       -> 'InlineFunctionExpr' : '$1'.
% [168]    NamedFunctionRef     ::=      EQName "#" IntegerLiteral  /* xgc: reserved-function-names */
'NamedFunctionRef'       -> 'EQName' '#' 'IntegerLiteral' : {'function-ref', qname(func, '$1'), value_of('$3')}.
% [169]    InlineFunctionExpr      ::=      Annotation* "function" "(" ParamList? ")" ("as" SequenceType)? FunctionBody   
'InlineFunctionExpr'     -> 'AnnotationList' 'function' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), annotations = '$1',name = undefined, arity = length('$4'), params = '$4', type = '$7', body = '$8'}.
'InlineFunctionExpr'     ->                  'function' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), annotations = []  ,name = undefined, arity = length('$3'), params = '$3', type = '$6', body = '$7'}.
'InlineFunctionExpr'     -> 'AnnotationList' 'function' '('             ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), annotations = '$1',name = undefined,                                      type = '$6', body = '$7'}.
'InlineFunctionExpr'     ->                  'function' '('             ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), annotations = []  ,name = undefined,                                      type = '$5', body = '$6'}.
'InlineFunctionExpr'     -> 'AnnotationList' 'function' '(' 'ParamList' ')'                     'FunctionBody' : #xqFunction{id = next_id(), annotations = '$1',name = undefined, arity = length('$4'), params = '$4',              body = '$6'}.
'InlineFunctionExpr'     ->                  'function' '(' 'ParamList' ')'                     'FunctionBody' : #xqFunction{id = next_id(), annotations = []  ,name = undefined, arity = length('$3'), params = '$3',              body = '$5'}.
'InlineFunctionExpr'     -> 'AnnotationList' 'function' '('             ')'                     'FunctionBody' : #xqFunction{id = next_id(), annotations = '$1',name = undefined,                                                   body = '$5'}.
'InlineFunctionExpr'     ->                  'function' '('             ')'                     'FunctionBody' : #xqFunction{id = next_id(), annotations = []  ,name = undefined,                                                   body = '$4'}.

% [170]    MapConstructor    ::=      "map" "{" (MapConstructorEntry ("," MapConstructorEntry)*)? "}"
'MapConstructor'         -> 'map' '{' 'MapConstructorEntries' '}' : {'map', '$3'}.
'MapConstructor'         -> 'map' '{' '}' : {'map', []}.
% [171]    MapConstructorEntry     ::=      MapKeyExpr ":" MapValueExpr   
%% % special case {*:*}
%% 'MapConstructorEntry'    -> 'Wildcard' : Q = qname(wildcard,#'qname'{prefix = <<"*">>, local_name = <<"*">>}), {'map-key-val', Q, Q}.
'MapConstructorEntry'    -> 'MapKeyExpr' ':'  'MapValueExpr' : {'map-key-val', '$1', '$3'}.
'MapConstructorEntry'    -> 'MapKeyExpr' ' :' 'MapValueExpr' : {'map-key-val', '$1', '$3'}.
'MapConstructorEntry'    -> 'MapKeyExpr' ': ' 'MapValueExpr' : {'map-key-val', '$1', '$3'}.
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
'SquareArrayConstructor' -> '[' ']' : {'array', []}.
'SquareArrayConstructor' -> '[' 'ExprSingleList' ']' : {'array', '$2'}.

'ExprSingleList'         -> 'ExprSingle' : ['$1'].
'ExprSingleList'         -> 'ExprSingle' ',' 'ExprSingleList' : ['$1'|'$3']. 
% [176]    CurlyArrayConstructor      ::=      "array" EnclosedExpr 
'CurlyArrayConstructor'  -> 'array' 'EnclosedExpr' : {'array', {content_expr, '$2'}}.
% [177]    StringConstructor    ::=      "``[" StringConstructorContent "]``"   /* ws: explicit */
'StringConstructor'      -> '``[' 'StringConstructorContent' ']``' : {'string-constructor', '$2'}.
% [178]    StringConstructorContent      ::=      StringConstructorChars (StringConstructorInterpolation StringConstructorChars)*  /* ws: explicit */
'StringConstructorContent'-> 'StringConstructorChars'                                 : [xqAtomicValue('xs:string', bin_value_of('$1'))].
'StringConstructorContent'-> 'StringConstructorChars'        'StringConstContents'    : [xqAtomicValue('xs:string', bin_value_of('$1'))|'$2'].
'StringConstContents'    -> 'StringConstructorInterpolation' 'StringConstructorChars' : '$1' ++ [xqAtomicValue('xs:string', bin_value_of('$2'))].
'StringConstContents'    -> 'StringConstructorInterpolation' 'StringConstructorChars' 'StringConstContents': '$1'++[xqAtomicValue('xs:string', bin_value_of('$2'))|'$3'].
% [179]    StringConstructorChars     ::=      (Char* - (Char* ('`{' | ']``') Char*)) /* ws: explicit */
%% done in scanner
% [180]    StringConstructorInterpolation      ::=      "`{" Expr? "}`"   
'StringConstructorInterpolation' -> '`{' 'Expr' '}`' : '$2'.
'StringConstructorInterpolation' -> '`{' '}`' : [].
% [181]    UnaryLookup    ::=      "?" KeySpecifier  
'UnaryLookup'            -> '?' 'KeySpecifier' : {lookup, '$2'}.
% [182]    SingleType     ::=      SimpleTypeName "?"?  
'SingleType'             -> 'SimpleTypeName' '?' : #xqSeqType{type = '$1', occur = 'zero_or_one'}.
'SingleType'             -> 'SimpleTypeName'     : #xqSeqType{type = '$1', occur = 'one'}.
% [183]    TypeDeclaration      ::=      "as" SequenceType 
'TypeDeclaration'        -> 'as' 'SequenceType' : '$2'.
% [184]    SequenceType      ::=      ("empty-sequence" "(" ")")| (ItemType OccurrenceIndicator?)   
'SequenceType'           -> 'empty-sequence' '(' ')'         : #xqSeqType{type = 'empty-sequence', occur = 'zero'}.
'SequenceType'           -> 'ItemType' 'OccurrenceIndicator' : #xqSeqType{type = '$1', occur = '$2'}.
'SequenceType'           -> 'ItemType'                       : #xqSeqType{type = '$1', occur = 'one'}.
% [185]    OccurrenceIndicator     ::=      "?" | "*" | "+"   /* xgc: occurrence-indicators */ 
'OccurrenceIndicator'    -> '?'           : 'zero_or_one'.
%'OccurrenceIndicator'    -> 'wildcard'    : 'zero_or_many'.
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
'AtomicOrUnionType'      -> 'EQName' : case qname(type,'$1') of
                                          #qname{namespace = _, prefix = <<"xs">>, local_name = <<"*">>} = Q ->
                                             Q;
                                          #qname{namespace = _, prefix = <<"xs">>, local_name = _} = Q ->
                                             qname_to_atom(Q);
                                          #qname{namespace = default, prefix = default, local_name = _} = Q ->
                                             qname(wildcard,Q#qname{prefix = <<>>});
                                          Q ->
                                             Q
                                       end.
%% 'AtomicOrUnionType'      -> 'EQName' : qname_to_atom(qname(type,'$1')).
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
'AnyKindTest'            -> 'node' '(' ')' : #xqKindTest{kind = 'node'}.
% [190]    DocumentTest      ::=      "document-node" "(" (ElementTest | SchemaElementTest)? ")"
'DocumentTest'           -> 'document-node' '(' 'ElementTest' ')'       : ('$3')#xqKindTest{kind = 'document-node'}.
'DocumentTest'           -> 'document-node' '(' 'SchemaElementTest' ')' : ?err('XPST0008').
%'DocumentTest'           -> 'document-node' '(' 'SchemaElementTest' ')' : ('$3')#xqKindTest{kind = 'document-node'}.
'DocumentTest'           -> 'document-node' '(' ')'                     : #xqKindTest{kind = 'document-node'}.
% [191]    TextTest    ::=      "text" "(" ")" 
'TextTest'               -> 'text' '(' ')' : #xqKindTest{kind = 'text'}.
% [192]    CommentTest    ::=      "comment" "(" ")" 
'CommentTest'            -> 'comment' '(' ')' : #xqKindTest{kind = 'comment'}.
% [193]    NamespaceNodeTest    ::=      "namespace-node" "(" ")"   
'NamespaceNodeTest'      -> 'namespace-node' '(' ')' : #xqKindTest{kind = 'namespace'}.
% [194]    PITest      ::=      "processing-instruction" "(" (NCName | StringLiteral)? ")"  
'PITest'                 -> 'processing-instruction' '(' 'NCName' ')' : #xqKindTest{kind = 'processing-instruction', name = qname(pi,bin_value_of('$3'))}.
'PITest'                 -> 'processing-instruction' '(' 'StringLiteral' ')' : #xqKindTest{kind = 'processing-instruction', name = qname(pi,bin_value_of('$3'))}.
'PITest'                 -> 'processing-instruction' '(' ')' : #xqKindTest{kind = 'processing-instruction'}.
% [195]    AttributeTest     ::=      "attribute" "(" (AttribNameOrWildcard ("," TypeName)?)? ")" 
'AttributeTest'          -> 'attribute' '(' 'AttribNameOrWildcard' ',' 'TypeName' ')' : #xqKindTest{kind = 'attribute', name = '$3', type = #xqSeqType{type = '$5', occur = one}}.
'AttributeTest'          -> 'attribute' '(' 'AttribNameOrWildcard' ')' : #xqKindTest{kind = 'attribute', name = '$3'}.
'AttributeTest'          -> 'attribute' '(' ')' : #xqKindTest{kind = 'attribute'}.
% [196]    AttribNameOrWildcard    ::=      AttributeName | "*"  
'AttribNameOrWildcard'   -> 'AttributeName' : qname(attwildcard,'$1').
'AttribNameOrWildcard'   -> '*' : {qname,<<"*">>,<<"*">>,<<"*">>}.
% [197]    SchemaAttributeTest     ::=      "schema-attribute" "(" AttributeDeclaration ")" 
'SchemaAttributeTest'    -> 'schema-attribute' '(' 'AttributeDeclaration' ')' : #xqKindTest{kind = 'schema-attribute', name = qname(wildcard,'$3')}.
% [198]    AttributeDeclaration    ::=      AttributeName  
'AttributeDeclaration'   -> 'AttributeName' : '$1'.
% [199]    ElementTest    ::=      "element" "(" (ElementNameOrWildcard ("," TypeName "?"?)?)? ")"   
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ',' 'TypeName' '?' ')' : #xqKindTest{kind = 'element', name = '$3', type = #xqSeqType{type = '$5', occur = zero_or_one}}.
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ',' 'TypeName' ')' : #xqKindTest{kind = 'element', name = '$3', type = #xqSeqType{type = '$5', occur = one}}.
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ')' : #xqKindTest{kind = 'element', name = '$3'}.
'ElementTest'            -> 'element' '(' ')' : #xqKindTest{kind = 'element'}.
% [200]    ElementNameOrWildcard      ::=      ElementName | "*" 
'ElementNameOrWildcard'  -> '*' : {qname,<<"*">>,<<"*">>,<<"*">>}.
'ElementNameOrWildcard'  -> 'ElementName' : qname(nametest,'$1').
% [201]    SchemaElementTest    ::=      "schema-element" "(" ElementDeclaration ")"  
'SchemaElementTest'      -> 'schema-element' '(' 'ElementDeclaration' ')' : #xqKindTest{kind = 'schema-element', name = qname(wildcard,'$3')}.
% [202]    ElementDeclaration      ::=      ElementName 
'ElementDeclaration'     -> 'ElementName' : '$1'.
% [203]    AttributeName     ::=      EQName   
'AttributeName'          -> 'EQName' : '$1'.
% [204]    ElementName    ::=      EQName   
'ElementName'            -> 'EQName' : '$1'.
% [205]    SimpleTypeName    ::=      TypeName
'SimpleTypeName'         -> 'TypeName' : '$1'.
% [206]    TypeName    ::=      EQName   
'TypeName'               -> 'EQName' : qname(type,'$1').
% [207]    FunctionTest      ::=      Annotation* (AnyFunctionTest | TypedFunctionTest)
%% -record(xqFunTest, {
%%    kind   = function :: function | map,
%%    annotations = [] :: [ #annotation{} ],
%%    name   :: #qname{},
%%    params = [] :: [#xqSeqType{}],
%%    type   = #xqSeqType{} :: #xqSeqType{}
%% }).
'FunctionTest'            -> 'AnnotationList' 'AnyFunctionTest':   #xqFunTest{kind = function, annotations = '$1', params = any, type = any} .
'FunctionTest'            -> 'AnnotationList' 'TypedFunctionTest': #xqFunTest{kind = function, annotations = '$1', params = element(2,'$2'), type = element(1,'$2')} .
'FunctionTest'            -> 'AnyFunctionTest':                    #xqFunTest{kind = function, annotations = [], params = any, type = any} .
'FunctionTest'            -> 'TypedFunctionTest':                  #xqFunTest{kind = function, annotations = [], params = element(2,'$1'), type = element(1,'$1')} .
% [208]    AnyFunctionTest      ::=      "function" "(" "*" ")"  
'AnyFunctionTest'         -> 'function' '(' '*' ')' : '*'.
% [209]    TypedFunctionTest    ::=      "function" "(" (SequenceType ("," SequenceType)*)? ")" "as" SequenceType   
'TypedFunctionTest'       -> 'function' '(' 'SequenceTypeList' ')' 'as' 'SequenceType' : {'$6', '$3'}.
'TypedFunctionTest'       -> 'function' '(' ')' 'as' 'SequenceType' : {'$5', []}.

'SequenceTypeList'        -> 'SequenceType' : ['$1'].
'SequenceTypeList'        -> 'SequenceType' ',' 'SequenceTypeList' : ['$1'|'$3'].
% [210]    MapTest     ::=      AnyMapTest | TypedMapTest  
'MapTest'                 -> 'AnyMapTest' : '$1'.
'MapTest'                 -> 'TypedMapTest' : '$1'.
% [211]    AnyMapTest     ::=      "map" "(" "*" ")" 
'AnyMapTest'              -> 'map' '(' '*' ')' : #xqFunTest{kind = map, annotations = [], params = any, type = any} .
% [212]    TypedMapTest      ::=      "map" "(" AtomicOrUnionType "," SequenceType ")"   
'TypedMapTest'            -> 'map' '(' 'AtomicOrUnionType' ',' 'SequenceType' ')' : #xqFunTest{kind = map, annotations = [], params = [#xqSeqType{type = '$3', occur = one}], type = '$5'} .
% [213]    ArrayTest      ::=      AnyArrayTest | TypedArrayTest 
'ArrayTest'               -> 'AnyArrayTest' : '$1'.
'ArrayTest'               -> 'TypedArrayTest' : '$1'.
% [214]    AnyArrayTest      ::=      "array" "(" "*" ")"  
'AnyArrayTest'            -> 'array' '(' '*' ')' : #xqFunTest{kind = array, annotations = [], params = any, type = any} .
% [215]    TypedArrayTest    ::=      "array" "(" SequenceType ")"
'TypedArrayTest'          -> 'array' '(' 'SequenceType' ')' : #xqFunTest{kind = array, annotations = [], params = any, type = '$3'} .
% [216]    ParenthesizedItemType      ::=      "(" ItemType ")"  
'ParenthesizedItemType'  -> '(' 'ItemType' ')' : '$2'.
% [217]    URILiteral     ::=      StringLiteral  
'URILiteral'             -> 'StringLiteral' : 
   BV = bin_value_of('$1'),
   case xqerl_lib:check_uri_string(BV) of
      {error,_} when BV == <<>> ->
         ?err('FORG0001');
      {error,_} ->
         BV;
%         ?err('XQST0046');
      Val ->
         Val
   end.
%'URILiteral'             -> 'StringLiteral' : xqerl_lib:pct_encode3(string:trim(xqerl_lib:shrink_spaces(value_of('$1')))).
%'URILiteral'             -> 'StringLiteral' : [{bin_element,?L,{string,?L,value_of('$1')},default,default}].
% [218]    EQName      ::=      QName | URIQualifiedName
'EQName'                 -> 'PrefixedName' : '$1'.
'EQName'                 -> 'UnprefixedName' : '$1'.
'EQName'                 -> 'URIQualifiedName' : '$1'.

'QName'                  -> 'PrefixedName'   : '$1'.
'QName'                  -> 'UnprefixedName' : '$1'.
%'PrefixedName'           -> '*'      ':' 'NCName'    : #'qname'{prefix = "*", local_name = value_of('$3')}.
%'PrefixedName'           -> 'NCName' ':' '*'         : #'qname'{prefix = value_of('$1'), local_name = "*"}.
'PrefixedName'           -> 'NCName' ':' 'NCName'    : #'qname'{prefix = bin_value_of('$1'), local_name = bin_value_of('$3')}.
'UnprefixedName'         -> 'NCName'                 : #'qname'{namespace = 'default', prefix = 'default', local_name = bin_value_of('$1')}.
%'LocalPart'              -> 'NCName' : value_of('$1').
%'LocalPart'              -> 'Prefix' : '$1'.


'URIQualifiedName'       -> 'BracedURILiteral' 'NCName' : if '$1' == <<"http://www.w3.org/2000/xmlns/">> -> ?err('XQST0070');
                                                             true -> #'qname'{namespace = '$1', local_name = bin_value_of('$2')}
                                                          end.
'BracedURILiteral'       -> 'Q' '{' 'URILiteral' '}'    : '$3'.
'BracedURILiteral'       -> 'Q' '{' '}'    : 'no-namespace'.


%% 'ElementContentChar'     -> 'Char' : value_of('$1'). % Char - [{}<&]
%% 'QuotAttrContentChar'    -> 'Char' : value_of('$1'). % Char - ["{}<&]
%% 'AposAttrContentChar'    -> 'Char' : value_of('$1'). % Char - ['{}<&]

%% Here keywords from the scanner can fallback to NCName.
%% Not all keywords are eligible to fallback, only the ones here.
'NCName' -> 'maybeNCName' : '$1'.
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

-include("xqerl.hrl").
-include("xqerl_parser.hrl").

-compile([{hipe,[{regalloc,linear_scan}]}]).

-dialyzer(no_return).

to_NCName({A,B,C}) ->
%?dbg("Token to NCName", C),
   {A,B,erlang:atom_to_list(C)}.

value_of(Token) ->
   element(3, Token).

line(Token) ->
   element(2, Token).

bin_value_of(Token) ->
   Str = element(3, Token),
   if is_list(Str) ->
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

qname_to_atom(Q) ->
   L = get_qname_local_name(Q),
   P = get_qname_prefix(Q),
   binary_to_atom(<<P/binary,":",L/binary>>,utf8).

xqAtomicValue('xs:string', Value) -> Value;
xqAtomicValue('xs:integer', Value) -> Value;
xqAtomicValue('xs:double', Value) -> Value;
xqAtomicValue(Type,Value) ->
   #xqAtomicValue{type = Type, value = Value}.

qname(func, {qname,Ns,undefined,Ln}) -> % may be known in static namespaces
   try
      Px = xqerl_context:get_statically_known_prefix_from_namespace(parser,Ns),
      {qname,Ns,Px,Ln}
   catch _:_ ->
      {qname,Ns,undefined,Ln}
   end;
qname(func, {qname,undefined,Px,Ln}) -> % may be known in static namespaces
   try
      Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser,Px),
      {qname,Ns,Px,Ln}
   catch _:_ ->
      {qname,undefined,Px,Ln}
   end;
% reserved function names
qname(func, {qname,default,_,<<"array">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"attribute">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"comment">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"document-node">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"element">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"empty-sequence">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"function">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"if">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"item">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"map">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"namespace-node">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"node">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"processing-instruction">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"schema-attribute">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"schema-element">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"switch">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"text">>}) -> ?err('XPST0003');
qname(func, {qname,default,_,<<"typeswitch">>}) -> ?err('XPST0003');
% default
qname(func, {qname,default,_Px,Ln}) ->
   {qname,xqerl_context:get_default_function_namespace(parser),<<>>,Ln};
qname(func, {qname,<<>>,Px,Ln}) ->
   {qname,'no-namespace',Px,Ln};
qname(func, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(pi, Ln) ->
   <<H,Str/binary>> = Name = string:trim(Ln),
   case xqerl_lib:is_xsncname_start_char(H) of
      true ->
         lists:foreach(fun($:) -> ?err('XPTY0004');
                          (C) ->
                           case xqerl_lib:is_xsname_char(C) of
                              false ->
                                 ?dbg("C",C),
                                 ?err('XPTY0004');
                              _ -> ok
                           end
                        end, unicode:characters_to_list(Str));
      _ ->
         ?err('XPTY0004')
   end,
   % allow "xml" here
   {qname,'no-namespace',<<>>,Name};
qname(type, Q) -> Q;

qname(var, {qname,<<>>,_,Ln}) ->
   qname(var, {qname,'no-namespace',<<>>,Ln});
qname(var, {qname,default,default,Ln}) ->
   qname(var, {qname,'no-namespace',<<>>,Ln});
qname(var, {qname,default,<<>>,Ln}) ->
   qname(var, {qname,'no-namespace',<<>>,Ln});
qname(var, {qname,_,<<"err">>,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xqt-errors">>,<<"err">>,Ln};
qname(var, {qname,undefined,Px,Ln}) when Px =/= <<>> -> % may be known in static namespaces
   try
      xqerl_context:get_statically_known_namespace_from_prefix(parser,Px)
   of
      <<>> ->
         ?err('XPST0081');
      Ns ->
         {qname,Ns,Px,Ln}
   catch _:_ ->
      {qname,undefined,Px,Ln}
   end;
qname(var, {qname,undefined,Px,Ln}) -> % may be known in static namespaces
   try
      Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser,Px),
      {qname,Ns,Px,Ln}
   catch _:_ ->
      {qname,undefined,Px,Ln}
   end;
qname(var, {qname,Ns,undefined,Ln}) -> % may be known in static namespaces
   try
      Px = xqerl_context:get_statically_known_prefix_from_namespace(parser,Ns),
      {qname,Ns,Px,Ln}
   catch _:_ ->
      {qname,Ns,undefined,Ln}
   end;
qname(var, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(anno, {qname,undefined,Px,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser,Px),
   {qname,Ns,Px,Ln};
qname(anno, {qname,default,_,Ln}) ->
   Ns  = <<"http://www.w3.org/2012/xquery">>,
   {qname,Ns,<<>>,Ln};
qname(anno, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(opt, {qname,undefined,Px,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser,Px),
   {qname,Ns,Px,Ln};
qname(opt, {qname,default,_,Ln}) ->
   Ns  = <<"http://www.w3.org/2012/xquery">>,
   {qname,Ns,<<>>,Ln};
qname(opt, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(attwildcard, {qname,default,default,Ln}) ->
   Ns = 'no-namespace',
   {qname,Ns,<<>>,Ln};
qname(attwildcard, Q) ->
   qname(wildcard, Q);

qname(nametest, {qname,default,default,Ln}) ->
   Ns = xqerl_context:get_default_element_type_namespace(parser),
%?dbg("Ns",Ns),
   {qname,Ns,<<>>,Ln};
qname(nametest, Q) ->
   qname(wildcard, Q);
qname(wildcard, {qname,default,default,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, <<>>),
   {qname,Ns,<<>>,Ln};
qname(wildcard, {qname,default,_Px,Ln}) ->
   {qname,'no-namespace',<<>>,Ln};
qname(wildcard, {qname,undefined,<<"*">>,Ln}) ->
   {qname,<<"*">>,<<"*">>,Ln};
qname(wildcard, {qname,undefined,Px,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser, Px),
   {qname,Ns,Px,Ln};
qname(wildcard, {qname,Ns,default,Ln}) ->
   {qname,Ns,<<"*">>,Ln};
qname(wildcard, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};


qname(other, {qname,_,<<"err">>,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xqt-errors">>,<<"err">>,Ln};
qname(other, {qname,<<"http://www.w3.org/2005/xqt-errors">>,_,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xqt-errors">>,<<"err">>,Ln};
qname(other, {qname,_,undefined,_} = Q) ->
   qname(func, Q);
qname(other, {qname,_,<<"*">>,<<"*">>}) ->
   {qname,<<"*">>,<<"*">>,<<"*">>};
qname(other, {qname,_,<<"*">>,Ln}) ->
   {qname,<<"*">>,<<"*">>,Ln};
qname(other, {qname,undefined,Px,<<"*">>}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser,Px),
   {qname,Ns,Px,<<"*">>};
qname(other, {qname,_,<<"fn">>,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xpath-functions">>,<<"fn">>,Ln};
qname(other, {qname,_,<<"xsi">>,Ln}) ->
   {qname,<<"http://www.w3.org/2001/XMLSchema-instance">>,<<"xsi">>,Ln};
qname(other, {qname,_,<<"xml">>,Ln}) ->
   {qname,<<"http://www.w3.org/XML/1998/namespace">>,<<"xml">>,Ln};
qname(other, {qname,_,<<"xs">>,Ln}) ->
   {qname,<<"http://www.w3.org/2001/XMLSchema">>,<<"xs">>,Ln};
qname(other, {qname,_,<<"math">>,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xpath-functions/math">>,<<"math">>,Ln};
qname(other, {qname,_,<<"map">>,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xpath-functions/map">>,<<"map">>,Ln};
qname(other, {qname,_,<<"array">>,Ln}) ->
   {qname,<<"http://www.w3.org/2005/xpath-functions/array">>,<<"array">>,Ln};
qname(other, {qname,_,default,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(parser,<<>>),
   {qname,Ns,<<>>,Ln};
qname(other, {qname,Ns,Px,Ln}) ->
   try xqerl_context:get_statically_known_namespace_from_prefix(parser,Px) of
      Ns1 -> {qname,Ns1,Px,Ln}
   catch _:_ -> 
      {qname,Ns,Px,Ln}
   end.

get_qname_local_name({qname,_,_,Nm}) ->
  Nm.
get_qname_prefix({qname,_,Px,_}) ->
  Px.

at_value([]) ->
   [];
at_value([#xqAtomicValue{value = At}]) ->
   At;
at_value(A) when is_list(A) ->
   try
      L = lists:map( fun(V) when is_binary(V) ->
                            V;
                        (#xqAtomicValue{value = V}) ->
                            V;
                        ({expr,E}) ->
                            at_value(E);
                        ({entity_ref,E}) ->
                            E;
                        ({char_ref,E}) ->
                            E
                     end, A),
      list_to_binary(L)
   catch _:E ->
      ?dbg("XQST0022",E),
      ?dbg("XQST0022",A),
      ?err('XQST0022')
   end;
at_value(#xqAtomicValue{value = V}) ->
   V;
at_value({expr,A}) ->
   at_value(A);
at_value(A) ->
   ?dbg("XQST0022",A),
   ?err('XQST0022').

ns_value([]) ->
   [];
ns_value([At]) when is_binary(At) ->
   %?dbg("1705",At),
   xqerl_lib:normalize_spaces(At);
   %xqerl_lib:pct_encode3(string:trim(xqerl_lib:shrink_spaces(element(3,At))));
ns_value([{expr,A}]) ->
   ?dbg("XQST0022",A),
   ?err('XQST0022');
ns_value(A) when is_list(A) ->
   %?dbg("1708",A),
   try
      L = lists:map( fun(V) when is_binary(V) ->
                            V;
                        ({expr,_E}) ->
                            ?err('XQST0022');
                        ({entity_ref,E}) ->
                            E;
                        ({char_ref,E}) ->
                            E
                     end, A),
      xqerl_lib:normalize_spaces(list_to_binary(L))
      %xqerl_lib:pct_encode3(string:trim(xqerl_lib:shrink_spaces(L)))
   catch _:_ ->
      ?dbg("XQST0022",A),
      ?err('XQST0022')
   end;
ns_value(A) ->
   ?dbg("XQST0022",A),
   ?err('XQST0022').


as_list(L) ->
   if is_list(L) -> L;
      true -> [L]
   end.

dir_att(QName, Value) ->
%?dbg("{QName, Value}",{QName, Value}),
   if QName#qname.prefix == <<"xmlns">>  ->
         xqerl_context:add_statically_known_namespace(parser,ns_value(Value),QName#qname.local_name),
         #xqNamespaceNode{uri = ns_value(Value), prefix = QName#qname.local_name};
      QName#qname.local_name == <<"xmlns">> andalso QName#qname.prefix == default ->
         case at_value(Value) of 
            [] ->
               xqerl_context:add_statically_known_namespace(parser,'no-namespace',<<>>),
               #xqNamespaceNode{uri = 'no-namespace', prefix = <<>>};
            _ -> 
               xqerl_context:add_statically_known_namespace(parser,ns_value(Value),<<>>),
               #xqNamespaceNode{uri = ns_value(Value), prefix = <<>>} 
         end;
      true ->
         #xqAttributeNode{name = qname(other,QName), 
                          string_value = case Value of
                                    [] -> [xqAtomicValue('xs:string', <<>>)];
                                    undefined -> 
                                       [xqAtomicValue('xs:string', <<>>)];
                                    _ -> normalize_att_content(Value)
                                    end}
   end.
  
normalize_att_content(Content) ->
   lists:map(
      fun(Str) when is_binary(Str) ->
            normalize_whitespace(Str);
         (O) ->
            O
      end, Content).

normalize_whitespace(<<H,T/binary>>) when H == 32;
                                          H == 13;
                                          H == 10;
                                          H == 9 ->
   <<32,(normalize_whitespace(T))/binary>>;
normalize_whitespace(<<H,T/binary>>) ->
   <<H,(normalize_whitespace(T))/binary>>;
normalize_whitespace(<<>>) ->
   <<>>.

is_partial_impl(PostFixes) ->
   lists:any(fun({arguments,Args}) ->
                  lists:any(fun({'?',_}) -> true;
                               (_) -> false
                            end, Args);
                (_) -> false
             end,PostFixes).

sort_grouping(Groups, Id) ->
   Lets = [E || E <- Groups, element(1, E) == 'let'],
   Vars = [E || E <- Groups, element(1, E) == 'xqGroupBy'],
   Lets ++ [{group_by, Id, Vars}].

split_where_statement(#xqLogicalExpr{comp = 'and', lhs = A, rhs = B}) ->
   split_where_statement(A) ++ split_where_statement(B);
split_where_statement(A) ->
   [{'where', next_id(), A}].

check_schema_prefix_namespace(<<"xml">>,<<"http://www.w3.org/XML/1998/namespace">>) -> ok;
check_schema_prefix_namespace(<<"xml">>,_) -> ?err('XQST0070');
check_schema_prefix_namespace(_,<<"http://www.w3.org/XML/1998/namespace">>) -> ?err('XQST0070');
check_schema_prefix_namespace(<<"xmlns">>,_) -> ?err('XQST0070');
check_schema_prefix_namespace(_,<<"http://www.w3.org/2000/xmlns/">>) -> ?err('XQST0070');
check_schema_prefix_namespace(_,<<>>) -> ?err('XQST0057');
check_schema_prefix_namespace(_,_) -> ok.

%check_uri_hints(Hints) -> Hints;
check_uri_hints(Hints) when not is_list(Hints) -> check_uri_hints([Hints]);
check_uri_hints(Hints) ->
   [ case xqerl_lib:check_uri_string(H) of
        {error,_} ->
           ?err('XQST0046');
        _ ->
           ok
     end || H <- Hints],
   Hints.

name_to_kind_test({attribute, #xqNameTest{name = Nm}}) ->
   {attribute, #xqKindTest{kind = attribute, name = Nm}};
name_to_kind_test({attribute, #xqNameTest{name = Nm}, Ln}) ->
   {attribute, #xqKindTest{kind = attribute, name = Nm}, Ln};
name_to_kind_test({Axis, #xqNameTest{name = Nm}}) ->
   {Axis, #xqKindTest{kind = element, name = Nm}};
name_to_kind_test({Axis, #xqNameTest{name = Nm}, Ln}) ->
   {Axis, #xqKindTest{kind = element, name = Nm}, Ln};
name_to_kind_test({Axis, Test}) ->
   {Axis, Test};
name_to_kind_test({Axis, Test, Ln}) ->
   {Axis, Test, Ln}.

%% maybe_atomize_path({path_expr, Id, Exprs}) ->
%%    P1 = case lists:reverse(Exprs) of
%%       [#xqAxisStep{} = H|T] ->
%%          H1 = {'function-call', {qname,<<"http://www.w3.org/2005/xpath-functions">>,<<"fn">>,<<"data">>},0, []},
%%          lists:reverse([H1,H|T]);
%%       _ ->
%%          Exprs
%%    end,
%%    {path_expr, Id, P1};
% do this during static evaluation, can cast as double if needed there.
maybe_atomize_path(Other) -> Other.

