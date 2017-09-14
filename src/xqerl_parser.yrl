Nonterminals 
% 
'uplus' 'uminus'
%
'ElementContentChars'
'AposAttrContentChars'
'QuotAttrContentChars'
% QName
'PrefixedName'
'UnprefixedName'
'LocalPart'
'BracedURILiteral'
% 3.1
'AllowingEmpty'
'AnnotatedDecl'
'Annotation'
'AnnotationList'
'AnyArrayTest'
'AnyFunctionTest'
'AnyMapTest'
'Argument'
'ArgumentList'
'ArgumentPlaceholder'
'ArrayConstructor'
'ArrayTest'
'ArrowExpr'
'ArrowFunctionSpecifier'
'AtomicOrUnionType'
'AttributeDeclaration'
'CatchClause'
'CatchClauses'
'CatchErrorList'
'CompNamespaceConstructor'
'ContextItemDecl'
'CountClause'
'CurlyArrayConstructor'
'CurrentItem'
'DFPropertyName'
'DecimalFormatDecl'
'DFPropertyNameList'
'EQName'
'ElementDeclaration'
'EnclosedContentExpr'
'EnclosedPrefixExpr'
'EnclosedTryTargetExpr'
'EnclosedURIExpr'
'ExprSingleList'
'ExtensionExpr'
'ForBinding'
'ForBindingList'
'FunctionBody'
'FunctionItemExpr'
'FunctionTest'
'GroupByClause'
'GroupingSpec'
'GroupingSpecList'
'GroupingVariable'
'InitialClause'
'InlineFunctionExpr'
'IntermediateClause'
'IntermediateClauseList'
'KeySpecifier'
'LetBinding'
'LetBindingList'
'Lookup'
'MapConstructor'
'MapConstructorEntries'
'MapConstructorEntry'
'MapKeyExpr'
'MapTest'
'MapValueExpr'
'NamedFunctionRef'
'NamespaceNodeTest'
'NextItem'
'NodeConstructor'
'ParenthesizedItemType'
'PostfixExpr'
'PostFixes'
'Pragma'
'Pragmas'
'Prefix'
'PreviousItem'
'ReturnClause'
'SchemaAttributeTest'
'SchemaElementTest'
'SequenceTypeList'
'SequenceTypeUnion'
'SimpleMapExpr'
'SimpleTypeName'
'SlidingWindowClause'
'SquareArrayConstructor'
'StringConcatExpr'
'StringConstContents'
'StringConstructor'
'StringConstructorContent'
'StringConstructorInterpolation'
'SwitchCase'
'SwitchCaseClause'
'SwitchCaseClauses'
'SwitchCaseOperand'
'SwitchExpr'
'TryCatchExpr'
'TryClause'
'TumblingWindowClause'
'TypeName'
'TypedArrayTest'
'TypedFunctionTest'
'TypedMapTest'
'URIQualifiedName'
'UnaryLookup'
'ValidateExpr'
'ValidationMode'
'VarDefaultValue'
'VarValue'
'WindowClause'
'WindowEndCondition'
'WindowStartCondition'
'WindowVars'
%
'AbbrevForwardStep'
'AbbrevReverseStep'
'AdditiveExpr'
%'AdditiveExprs'
'AndExpr'
'AndExprs'
'AnyKindTest'
'AposAttrValueContent'
'Arguments'
'AttribNameOrWildcard'
'AttributeName'
'AttributeTest'
'AxisStep'
'BaseURIDecl'
'BoundarySpaceDecl'
'CDataSection'
'CDataSectionContents'
'CaseClause'
'CaseClauses'
'CastExpr'
'CastableExpr'
'CommentTest'
'CommonContent'
'CompAttrConstructor'
'CompCommentConstructor'
'CompDocConstructor'
'CompElemConstructor'
'CompPIConstructor'
'CompTextConstructor'
'ComparisonExpr'
'ComputedConstructor'
'ConstructionDecl'
'ContextItemExpr'
'CopyNamespacesDecl'
'DefaultCollationDecl'
'DefaultNamespaceDecl'
'DirAttribute'
'DirAttributeList'
'DirAttributeValue'
'DirAttributeValuesApos'
'DirAttributeValuesQuot'
'DirCommentConstructor'
'DirCommentContents'
'DirElemConstructor'
'DirElemContent'
'DirElemContents'
'DirPIConstructor'
'DirectConstructor'
'DocumentTest'
'ElementName'
'ElementNameOrWildcard'
'ElementTest'
'EmptyOrderDecl'
'EnclosedExpr'
'Expr'
'ExprSingle'
'FLWORExpr'
'ForClause'
'ForwardAxis'
'ForwardStep'
'FunctionCall'
'FunctionDecl'
'GeneralComp'
'IfExpr'
'Import'
'InStatement'
'InStatements'
'InheritMode'
'InstanceofExpr'
'IntersectExceptExpr'
'IntersectExceptExprs'
'ItemType'
'KindTest'
'LetClause'
'LibraryModule'
'Literal'
'LiteralList'
'MainModule'
'Module'
'ModuleDecl'
'ModuleImport'
'MultiplicativeExpr'
%'MultiplicativeExprs'
'NameTest'
'NamespaceDecl'
'NodeComp'
'NodeTest'
'NumericLiteral'
'OccurrenceIndicator'
'OptionDecl'
'OrExpr'
'OrExprs'
'OrderByClause'
'OrderModifier'
'OrderSpec'
'OrderSpecList'
'OrderedExpr'
'OrderingModeDecl'
'PITest'
'Param'
'ParamList'
'ParenthesizedExpr'
'PathExpr'
'PositionalVar'
'Predicate'
'PredicateList'
'PreserveMode'
'PrimaryExpr'
'Prolog'
'Prolog1'
'Prolog1s'
'QName'
'QuantifiedExpr'
'QueryBody'
'QuotAttrValueContent'
'RangeExpr'
'RelativePathExpr'
%'RelativePathExprs'
'ReverseAxis'
'ReverseStep'
'SchemaImport'
'SchemaPrefix'
'Separator'
'SequenceType'
'Setter'
'SingleType'
'StepExpr'
'TextTest'
'TreatExpr'
'TypeDeclaration'
'TypeswitchExpr'
'URILiteral'
'URILiteralList'
'UnaryExpr'
'UnionExpr'
'UnionExprs'
'UnorderedExpr'
'ValueComp'
'ValueExpr'
'VarDecl'
'VarName'
'VarRef'
'VersionDecl'
'WhereClause'
'Wildcard'
%
.

Terminals 
% terminating
'S' % whitespace
'#)' '(#'
'!=' 'StringLiteral' '$' '(' ')'
'*' '+' ',' '-' '-->' '.' '..' '/' '//' '/>'
':' '::' ':=' ';' '<' '<!--' '<![CDATA[' '</'
'<<' '<=' '<?' '=' '>' '>=' '>>' '?' '?>' '@'
'[' ']' ']]>' '{' '|' '}'
% non-terminating
'ancestor' 'ancestor-or-self' 'and' 
'as' 'ascending' 'at' 'attribute' 
'base-uri' 'boundary-space' 'by' 
'case' 'cast' 'castable' 'child' 
'collation' 'comment' 'construction' 
'copy-namespaces' 'declare' 'default' 
'descendant' 'descendant-or-self' 
'descending' 'div' 'document' 
'document-node' 'element' 'else' 
'empty' 'empty-sequence' 'encoding' 
'eq' 'every' 'except' 'external' 
'following' 'following-sibling' 
'for' 'function' 'ge' 'greatest' 
'gt' 'idiv' 'if' 'import' 'in' 'inherit' 
'instance' 'intersect' 'is' 'item'  
'le' 'least' 'let' 'lt' 'mod' 'module' 
'namespace' 'ne' 'no-inherit' 'no-preserve' 
'node' 'of' 'option' 'or' 'order' 'ordered' 
'ordering' 'parent' 'preceding' 'preceding-sibling' 
'preserve' 'processing-instruction' 'return' 
'satisfies' 
'self' 'some' 'stable' 
'strip' 'text' 'then' 'to' 'treat' 
'typeswitch' 'union' 'unordered' 
'variable' 'version' 'where' 'xquery'
%
'schema' 
'schema-attribute' 
'schema-element' 

'lax' 
'strict' 
'validate' 

% ADDED
'quot' 'apos'
'cdata-contents' 'PITarget' 'DirPIContents' 'comment-text'
'IntegerLiteral' 'NCName' 'DecimalLiteral' 'DoubleLiteral' 
%'QName'
'wildcard'
'lone-slash'
'PredefinedEntityRef' 'CharRef' '{{' '}}'
'EscapeQuot'
'EscapeApos'
'QuotAttrContentChar'
'ElementContentChar'
'AposAttrContentChar'
%3.1
'decimal-format'
'decimal-separator' 
'grouping-separator'
'infinity'          
'minus-sign'        
'NaN'               
'percent'           
'per-mille'         
'zero-digit'        
'digit'             
'pattern-separator' 
'exponent-separator'
'context'
'%'
allowing
'tumbling' 
'sliding'
'window'
'start'
'when'
'only'
'end'
'previous'
'next'
'count'
'group'
'switch'
'catch'
'try'
'||'
'=>'
'type'
'!'
'#'
'map'
'array'
'namespace-node'
'``['
']``'
'`{'
'}`'
'*:'
':*'
'PragmaContents'
'StringConstructorChars'
'Q'
.

Rootsymbol 'Module'.

Endsymbol '$end'.

Left  100   ','.
Left 101 'Expr'.
Left 102 'ExprSingle'.
Right 200   ':='.
Left  200   'for' 'some' 'every' 'switch' 'typeswitch' 'try' 'if'.
Left  300   'or'.
Left  400   'and'.
Left  500   'eq' 'ne' 'lt' 'le' 'gt' 'ge' '=' '!=' '<' '<=' '>' '>=' 'is' '<<' '>>'.
Left  600   '||'.
Left  700   'to'.
Left  800   '+' '-'.
Left  900   '*' 'div' 'idiv' 'mod'.
Left  1000  'union' '|'.
Left  1100  'intersect' 'except'.
Left  1200  'instance'.
Left  1300  'treat'.
Left  1400  'castable'.
Left  1500  'cast'.
Left 1600  '=>'.
Right 1700  'uminus' 'uplus'.
Left  1800  '!'.
Left  1900  'lone-slash' '/' '//'.
Left  2000  '[' ']' '?'.

'Module'                 -> 'VersionDecl' 'MainModule'   : erlang:put(var_id, 1), #xqModule{version = '$1',            type = main,    declaration = [],               prolog = element(2, '$2'), body = element(3, '$2')}.
'Module'                 -> 'VersionDecl' 'LibraryModule': erlang:put(var_id, 1), #xqModule{version = '$1',            type = library, declaration = element(1, '$2'), prolog = element(2, '$2'), body = []}.
'Module'                 -> 'MainModule'                 : erlang:put(var_id, 1), #xqModule{version = {"3.1","UTF-8"}, type = main,    declaration = [],               prolog = element(2, '$1'), body = element(3, '$1')}.
'Module'                 -> 'LibraryModule'              : erlang:put(var_id, 1), #xqModule{version = {"3.1","UTF-8"}, type = library, declaration = element(1, '$1'), prolog = element(2, '$1'), body = []}.

'VersionDecl'            -> 'xquery' 'version' 'StringLiteral' 'encoding' 'StringLiteral' 'Separator' 
                              : {value_of('$3'), value_of('$5')}.
'VersionDecl'            -> 'xquery' 'encoding' 'StringLiteral' 'Separator' 
                              : {"3.1", value_of('$3')}.
'VersionDecl'            -> 'xquery' 'version' 'StringLiteral' 'Separator' 
                              : {value_of('$3'),"UTF-8"}.

'MainModule'             -> 'Prolog' 'QueryBody' : {undefined, '$1', '$2'}. %% TODO local functions and variables, multiple namespaces!
'MainModule'             ->          'QueryBody' : {undefined, [], '$1'}.

'LibraryModule'          -> 'ModuleDecl' 'Prolog' : {'$1', '$2', undefined}.
'LibraryModule'          -> 'ModuleDecl'          : {'$1', [], undefined}.

'ModuleDecl'             -> 'module' 'namespace' 'NCName' '=' 'URILiteral' 'Separator' 
                           : xqerl_context:add_statically_known_namespace('$5', value_of('$3')), 
                           {'module-namespace', {'$5', value_of('$3')}}.

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

'BoundarySpaceDecl'      -> 'declare' 'boundary-space' 'preserve' : {'boundary-space', 'preserve'}.
'BoundarySpaceDecl'      -> 'declare' 'boundary-space' 'strip'    : {'boundary-space', 'strip'}.

'DefaultCollationDecl'   -> 'declare' 'default' 'collation' 'URILiteral' : {'default-collation', {'$4',[]}}. 

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

%% ignore this for a while TODO
'DecimalFormatDecl'      -> 'declare' 'decimal-format' 'EQName'  'DFPropertyNameList' : {'decimal-format', '$3', '$4'}.
'DecimalFormatDecl'      -> 'declare' 'default' 'decimal-format' 'DFPropertyNameList' : {'decimal-format', [], '$4'}.

'DFPropertyNameList'     -> 'DFPropertyName' '=' 'StringLiteral'  : [{'$1', value_of('$3')}].
'DFPropertyNameList'     -> 'DFPropertyName' '=' 'StringLiteral' 'DFPropertyNameList' : [{'$1', value_of('$3')}|'$4'].

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

'Import'                 -> 'SchemaImport' : xqerl_error:error('XQST0009').
'Import'                 -> 'ModuleImport' : {'module-import', '$1'}.

%list of URILiteral
'URILiteralList'         -> 'URILiteral' : '$1'.
'URILiteralList'         -> 'URILiteral' ',' 'URILiteralList' : ['$1'|'$3'].

'SchemaImport'           -> 'import' 'schema' 'SchemaPrefix' 'URILiteral' 'at' 'URILiteralList' : {schema, {'$3', '$4'}, '$6'}.
'SchemaImport'           -> 'import' 'schema'                'URILiteral' 'at' 'URILiteralList' : {schema, {[], '$3'}, '$5'}.
'SchemaImport'           -> 'import' 'schema' 'SchemaPrefix' 'URILiteral'                       : {schema, {'$3', '$4'}}.
'SchemaImport'           -> 'import' 'schema'                'URILiteral'                       : {schema, {[], '$3'}}.

'SchemaPrefix'           -> 'namespace' 'NCName' '=' : value_of('$2').
'SchemaPrefix'           -> 'default' 'element' 'namespace' : 'default-element-namespace'.

'ModuleImport'           -> 'import' 'module' 'URILiteral'
                           : if '$3' == [] ->
                                    xqerl_error:error('XQST0088');
                                 true ->
                                    xqerl_context:add_statically_known_namespace('$3', []),
                                    {'$3', []}
                              end.
'ModuleImport'           -> 'import' 'module' 'namespace' 'NCName' '=' 'URILiteral' 
                           : if '$6' == [] ->
                                    xqerl_error:error('XQST0088');
                                 true ->
                                    xqerl_context:add_statically_known_namespace('$6', value_of('$4')),
                                    {'$6', value_of('$4')}
                              end.
%%% ignoring the "at" portion, everything must be pre-compiled before use TODO?
%'ModuleImport'           -> 'import' 'module' 'URILiteral' 'at' 'URILiteralList' : {'module-import', '$3', undefined, '$5'}.
'ModuleImport'           -> 'import' 'module' 'namespace' 'NCName' '=' 'URILiteral' 'at' 'URILiteralList' 
                           : if '$6' == [] ->
                                    xqerl_error:error('XQST0088');
                                 true ->
                                    xqerl_context:add_statically_known_namespace('$6', value_of('$4')),
                                    {'$6', value_of('$4')}
                              end.

'NamespaceDecl'          -> 'declare' 'namespace' 'NCName' '=' 'URILiteral' 
                           : xqerl_context:add_statically_known_namespace('$5', value_of('$3')),
                             {namespace, {'$5', value_of('$3')}}.

'DefaultNamespaceDecl'   -> 'declare' 'default' 'element'  'namespace' 'URILiteral' 
                           : xqerl_context:add_statically_known_namespace('$5', ""),
                             xqerl_context:set_default_element_type_namespace('$5'),
                             {'element-namespace', '$5'}.
'DefaultNamespaceDecl'   -> 'declare' 'default' 'function' 'namespace' 'URILiteral' : xqerl_error:error('XQST0066'). % NOPE

% ignoring annotations for now TODO
'AnnotatedDecl'          -> 'declare' 'AnnotationList' 'VarDecl'      : ('$3')#xqVar{annotations = '$2'}.
'AnnotatedDecl'          -> 'declare' 'AnnotationList' 'FunctionDecl' : ('$3')#xqFunction{annotations = '$2'}.
'AnnotatedDecl'          -> 'declare' 'VarDecl'                       : '$2'.
'AnnotatedDecl'          -> 'declare' 'FunctionDecl'                  : '$2'.
 
'AnnotationList'         -> 'Annotation' 'AnnotationList' : ['$1' | '$2'].
'AnnotationList'         -> 'Annotation' : ['$1'].

'LiteralList'            -> 'Literal' ',' 'LiteralList' : ['$1' | '$3'].
'LiteralList'            -> 'Literal' : ['$1'].

'Annotation'             -> '%' 'EQName' '(' 'LiteralList' ')' : {annotation, {qname(anno, '$2'), '$4'}}.
'Annotation'             -> '%' 'EQName'                       : {annotation, {qname(anno, '$2'), []}}.

%% 
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' 'external' ':=' 'VarDefaultValue'  : #xqVar{id = next_id(), 'name' = '$3', 'type' = '$4', 'external' = true, 'value' = '$7'}.
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' 'external'                         : #xqVar{id = next_id(), 'name' = '$3', 'type' = '$4', 'external' = true}.
'VarDecl'                -> 'variable' '$' 'VarName' 'TypeDeclaration' ':=' 'VarValue'                    : #xqVar{id = next_id(), 'name' = '$3', 'type' = '$4', 'value' = '$6'}.
'VarDecl'                -> 'variable' '$' 'VarName' 'external' ':=' 'VarDefaultValue'  : #xqVar{id = next_id(), 'name' = '$3', 'external' = true, 'value' = '$6'}.
'VarDecl'                -> 'variable' '$' 'VarName' 'external'                         : #xqVar{id = next_id(), 'name' = '$3', 'external' = true}.
'VarDecl'                -> 'variable' '$' 'VarName' ':=' 'VarValue'                    : #xqVar{id = next_id(), 'name' = '$3', 'value' = '$5'}.

'VarValue'               -> 'ExprSingle' : '$1'.
'VarDefaultValue'        -> 'ExprSingle' : '$1'.

%% no externals for now TODO
'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' ':=' 'VarValue'                   : {'context-item', {'$5', 'undefined', '$7'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item'                 ':=' 'VarValue'                   : {'context-item', {'item', 'undefined', '$5'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' 'external' ':=' 'VarDefaultValue' : {'context-item', {'$5', 'external', '$8'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item'                 'external' ':=' 'VarDefaultValue' : {'context-item', {'item', 'external', '$6'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item' 'as' 'ItemType' 'external'                        : {'context-item', {'$5', 'external', 'undefined'}}.
'ContextItemDecl'        -> 'declare' 'context' 'item'                 'external'                        : {'context-item', {'item', 'external', 'undefined'}}.

%% -record(xqFunction, {
%%    annotations       = undefined :: [ #annotation{} ],
%%    name              = undefined :: #'qname'{},
%%    arity             = 0 :: integer(),
%%    params            = undefined :: [#xqFuncParam{}],
%%    type              = undefined :: atom(),
%%    body              = undefined :: term(),
%%    nonlocal_bindings = undefined %:: [{ #'qname'{}, [#xqItem{}] }]
%% no externals for now TODO
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4', type = '$7', body = '$8'}.
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')' 'as' 'SequenceType' 'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4', type = '$7'             }.
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')'                     'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4',              body = '$6'}.
'FunctionDecl'           -> 'function' 'EQName' '(' 'ParamList' ')'                     'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'), arity = length('$4'), params = '$4'                          }.
'FunctionDecl'           -> 'function' 'EQName' '('             ')' 'as' 'SequenceType' 'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'),                                      type = '$6', body = '$7'}.
'FunctionDecl'           -> 'function' 'EQName' '('             ')' 'as' 'SequenceType' 'external'     : #xqFunction{id = next_id(), name = qname(func, '$2'),                                      type = '$6'             }.
'FunctionDecl'           -> 'function' 'EQName' '('             ')'                     'FunctionBody' : #xqFunction{id = next_id(), name = qname(func, '$2'),                                                   body = '$5'}.
'FunctionDecl'           -> 'function' 'EQName' '('             ')'                     'external'     : #xqFunction{id = next_id(), name = qname(func, '$2')                                                               }.

'ParamList'              -> 'Param' ',' 'ParamList' : ['$1' | '$3'].
'ParamList'              -> 'Param' : ['$1'].

'Param'                  -> '$' 'EQName' 'TypeDeclaration' : #xqVar{id = next_id(), name = qname(var, '$2'), 'type' = '$3'}.
'Param'                  -> '$' 'EQName'                   : #xqVar{id = next_id(), name = qname(var, '$2'), 'type' = #xqSeqType{}}.

'FunctionBody'           -> 'EnclosedExpr' : '$1'.

'EnclosedExpr'           -> '{' 'Expr' '}' : {'expr', '$2'}.
'EnclosedExpr'           -> '{' '}' : 'empty-expr'.

'OptionDecl'             -> 'declare' 'option' 'EQName' 'StringLiteral' : {'option', {qname(opt, '$3'), value_of('$4')}}.

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
'ExprSingle'             -> 'OrExpr' : '$1'.
% [41]
'FLWORExpr'              -> 'InitialClause' 'IntermediateClauseList' 'ReturnClause' : #xqFlwor{loop = xqerl_flwor:split_clauses('$1'++'$2'), return = '$3'}.
'FLWORExpr'              -> 'InitialClause' 'ReturnClause' : #xqFlwor{loop = xqerl_flwor:split_clauses('$1'), return = '$2'}.
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
'ForBindingList'         -> 'ForBinding' ',' 'ForBindingList' : [{'for', '$1'}] ++ '$3' .
'ForBindingList'         -> 'ForBinding' : [{'for', '$1'}] .

'ForBinding'             -> '$' 'VarName' 'TypeDeclaration' 'AllowingEmpty' 'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'empty' = true, position = '$5', expr = '$7'}.
'ForBinding'             -> '$' 'VarName'                   'AllowingEmpty' 'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                'empty' = true, position = '$4', expr = '$6'}.
'ForBinding'             -> '$' 'VarName' 'TypeDeclaration'                 'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3',                 position = '$4', expr = '$6'}.
'ForBinding'             -> '$' 'VarName'                                   'PositionalVar' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                                position = '$3', expr = '$5'}.
'ForBinding'             -> '$' 'VarName' 'TypeDeclaration' 'AllowingEmpty'                 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'empty' = true,                  expr = '$6'}.
'ForBinding'             -> '$' 'VarName'                   'AllowingEmpty'                 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                'empty' = true,                  expr = '$5'}.
'ForBinding'             -> '$' 'VarName' 'TypeDeclaration'                                 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3',                                  expr = '$5'}.
'ForBinding'             -> '$' 'VarName'                                                   'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                                                 expr = '$4'}.
% [46]
'AllowingEmpty'          -> 'allowing' 'empty'.
% [47]
'PositionalVar'          -> 'at' '$' 'VarName' : #xqPosVar{id = next_id(), name = '$3'} .
% [48]
'LetClause'              -> 'let' 'LetBindingList' : '$2'. 
% [49]
'LetBindingList'         -> 'LetBinding' ',' 'LetBindingList' : [{'let', '$1'}] ++ '$3' .
'LetBindingList'         -> 'LetBinding' : [{'let', '$1'}] .

'LetBinding'             -> '$' 'VarName' 'TypeDeclaration' ':=' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'expr' = '$5'}.
'LetBinding'             -> '$' 'VarName'                   ':=' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2',                'expr' = '$4'}.

% [50]
'WindowClause'           -> 'for' 'TumblingWindowClause' : ['$2'].
'WindowClause'           -> 'for' 'SlidingWindowClause'  : ['$2'].
% [51]
'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', 'type' = '$5', expr = '$7'},
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
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', expr = '$6'},
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
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', 'type' = '$5', expr = '$7'},
                                     start_expr = element(5, '$8'),
                                     s          = element(1, '$8'),
                                     spos       = element(2, '$8'),
                                     sprev      = element(3, '$8'),
                                     snext      = element(4, '$8')
                                    }.
'TumblingWindowClause'   -> 'tumbling' 'window' '$' 'VarName'                   'in' 'ExprSingle' 'WindowStartCondition'                      : 
                           #xqWindow{type = tumbling, 
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', expr = '$6'},
                                     start_expr = element(5, '$7'),
                                     s          = element(1, '$7'),
                                     spos       = element(2, '$7'),
                                     sprev      = element(3, '$7'),
                                     snext      = element(4, '$7')
                                    }.
% [52]
'SlidingWindowClause'    -> 'sliding' 'window' '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' 'WindowStartCondition' 'WindowEndCondition' : 
                           #xqWindow{type = sliding, 
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', 'type' = '$5', expr = '$7'},
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
                                     win_variable = #xqVar{id = next_id(), 'name' = '$4', expr = '$6'},
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
'CountClause'            -> 'count' '$' 'VarName' : [{'count', #xqVar{id = next_id(), 'name' = qname(var, '$3')}}].
% [60]
'WhereClause'            -> 'where' 'ExprSingle' : [{'where', '$2'}].
% [61]
'GroupByClause'          ->  'group' 'by' 'GroupingSpecList' : xqerl_flwor:sort_grouping('$3').
% [62]
'GroupingSpecList'       ->  'GroupingSpec' ',' 'GroupingSpecList' : '$1' ++ '$3'.
'GroupingSpecList'       ->  'GroupingSpec' : '$1'.
% [63]
%% -record(xqGroupBy, {
%%    grp_variable :: #xqVarRef{},
%%    collation
'GroupingSpec'           ->  'GroupingVariable' 'TypeDeclaration' ':=' 'ExprSingle' 'collation' 'URILiteral' : [{'let', #xqVar{id = next_id(), 'name' = '$1', 'type' = '$2', 'expr' = '$4'} },
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = '$6'}] .
'GroupingSpec'           ->  'GroupingVariable' 'TypeDeclaration' ':=' 'ExprSingle'                          : [{'let', #xqVar{id = next_id(), 'name' = '$1', 'type' = '$2', 'expr' = '$4'} },
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = 'default'}] .
'GroupingSpec'           ->  'GroupingVariable'                   ':=' 'ExprSingle' 'collation' 'URILiteral' : [{'let', #xqVar{id = next_id(), 'name' = '$1', 'type' = 'undefined', 'expr' = '$3'} },
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = '$5'}] .
'GroupingSpec'           ->  'GroupingVariable'                   ':=' 'ExprSingle'                          : [{'let', #xqVar{id = next_id(), 'name' = '$1', 'type' = 'undefined', 'expr' = '$3'} },
                                                                                                                #xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = 'default'}] .
'GroupingSpec'           ->  'GroupingVariable'                                     'collation' 'URILiteral' : [#xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = '$3'}].
'GroupingSpec'           ->  'GroupingVariable'                                                              : [#xqGroupBy{grp_variable = #xqVarRef{name = '$1'},collation = 'default'}].
% [64]
'GroupingVariable'       ->  '$' 'VarName' : '$2'.
% [65]
'OrderByClause'          -> 'order' 'by' 'OrderSpecList'          : '$3'.
'OrderByClause'          -> 'stable' 'order' 'by' 'OrderSpecList' : '$4'. % always stable
% [66]
'OrderSpecList'          -> 'OrderSpec' ',' 'OrderSpecList' : '$1' ++ '$3'.
'OrderSpecList'          -> 'OrderSpec' : '$1'.
% [67]
'OrderSpec'              -> 'ExprSingle' 'OrderModifier' : [{'order', {'expr', '$1'}, '$2'}].
'OrderSpec'              -> 'ExprSingle'                 : [{'order', {'expr', '$1'}, {'modifier', {'direction', 'ascending'}, {'empty', 'default'}, {'collation', 'default'}}}].
% [68]
'OrderModifier'          -> 'ascending'  'empty' 'greatest' 'collation' 'URILiteral' 
                              : {'modifier', {'direction', 'ascending'}, {'empty', value_of('$3')}, {'collation', '$5'}}.
'OrderModifier'          -> 'descending' 'empty' 'greatest' 'collation' 'URILiteral'
                              : {'modifier', {'direction', 'descending'}, {'empty', value_of('$3')}, {'collation', '$5'}}.
'OrderModifier'          ->              'empty' 'greatest' 'collation' 'URILiteral'
                              : {'modifier', {'direction', ascending}, {'empty', value_of('$2')}, {'collation', '$4'}}.
'OrderModifier'          -> 'ascending'  'empty' 'least'    'collation' 'URILiteral'
                              : {'modifier', {'direction', 'ascending'}, {'empty', value_of('$3')}, {'collation', '$5'}}.
'OrderModifier'          -> 'descending' 'empty' 'least'    'collation' 'URILiteral'
                              : {'modifier', {'direction', 'descending'}, {'empty', value_of('$3')}, {'collation', '$5'}}.
'OrderModifier'          ->              'empty' 'least'    'collation' 'URILiteral'
                              : {'modifier', {'direction', ascending}, {'empty', value_of('$2')}, {'collation', '$4'}}.
'OrderModifier'          -> 'ascending'                     'collation' 'URILiteral'
                              : {'modifier', {'direction', 'ascending'}, {'empty', default}, {'collation', '$3'}}.
'OrderModifier'          -> 'descending'                    'collation' 'URILiteral'
                              : {'modifier', {'direction', 'descending'}, {'empty', default}, {'collation', '$3'}}.
'OrderModifier'          ->                                 'collation' 'URILiteral'
                              : {'modifier', {'direction', ascending}, {'empty', default}, {'collation', '$2'}}.
'OrderModifier'          -> 'ascending'  'empty' 'greatest' 
                              : {'modifier', {'direction', 'ascending'}, {'empty', value_of('$3')}, {'collation', default}}.
'OrderModifier'          -> 'descending' 'empty' 'greatest' 
                              : {'modifier', {'direction', 'descending'}, {'empty', value_of('$3')}, {'collation', default}}.
'OrderModifier'          ->              'empty' 'greatest' 
                              : {'modifier', {'direction', ascending}, {'empty', value_of('$2')}, {'collation', default}}.
'OrderModifier'          -> 'ascending'  'empty' 'least'    
                              : {'modifier', {'direction', 'ascending'}, {'empty', value_of('$3')}, {'collation', default}}.
'OrderModifier'          -> 'descending' 'empty' 'least'    
                              : {'modifier', {'direction', 'descending'}, {'empty', value_of('$3')}, {'collation', default}}.
'OrderModifier'          ->              'empty' 'least'    
                              : {'modifier', {'direction', ascending}, {'empty', value_of('$2')}, {'collation', default}}.
'OrderModifier'          -> 'ascending'                     
                              : {'modifier', {'direction', 'ascending'}, {'empty', default}, {'collation', default}}.
'OrderModifier'          -> 'descending'                    
                              : {'modifier', {'direction', 'descending'}, {'empty', default}, {'collation', default}}.
% [69]
'ReturnClause'           -> 'return' 'ExprSingle' : '$2'.
% [70]
'QuantifiedExpr'         -> 'some'  'InStatements' 'satisfies' 'ExprSingle' : {'some' , '$2', '$4'}.
'QuantifiedExpr'         -> 'every' 'InStatements' 'satisfies' 'ExprSingle' : {'every', '$2', '$4'}.

'InStatement'            -> '$' 'VarName' 'TypeDeclaration' 'in' 'ExprSingle' : #xqVar{id = next_id(), 'name' = '$2', 'type' = '$3', 'expr' = '$5'}.
'InStatement'            -> '$' 'VarName' 'in' 'ExprSingle'                   : #xqVar{id = next_id(), 'name' = '$2',                'expr' = '$4'}.

'InStatements'           -> 'InStatement' ',' 'InStatements': ['$1' | '$3'].
'InStatements'           -> 'InStatement' : ['$1'].
% [71]
'SwitchExpr'             ->  'switch' '(' 'Expr' ')' 'SwitchCaseClauses' 'default' 'return' 'ExprSingle' : {'switch', '$3', ['$5', {'default', '$8'}]}.
% [72]
'SwitchCaseClause'       -> 'SwitchCase' 'return' 'ExprSingle' : {'$1', {return, '$3'}} .

'SwitchCaseClauses'      -> 'SwitchCaseClause' 'SwitchCaseClauses' : ['$1'|'$2'].
'SwitchCaseClauses'      -> 'SwitchCaseClause' : ['$1'].
'SwitchCase'             -> 'case' 'SwitchCaseOperand' : ['$2'] .
'SwitchCase'             -> 'case' 'SwitchCaseOperand' 'SwitchCase' : ['$2'|'$3'] .
% [73]
'SwitchCaseOperand'      -> 'ExprSingle' : '$1'  .
% [74]
'TypeswitchExpr'         -> 'typeswitch' '(' 'Expr' ')' 'CaseClauses' 'default' '$' 'VarName' 'return' 'ExprSingle' : {'typeswitch', '$3', '$5' ++ [{'def-var'  , #xqVar{id = next_id(), 'name' = '$8',expr = '$10'}}]}.  
'TypeswitchExpr'         -> 'typeswitch' '(' 'Expr' ')' 'CaseClauses' 'default'               'return' 'ExprSingle' : {'typeswitch', '$3', '$5' ++ [{'def-novar', {'return', '$8'}}]}.
% [75]
'CaseClause'             -> 'case' '$' 'VarName' 'as' 'SequenceTypeUnion' 'return' 'ExprSingle' : {'case-var'  , {'types', '$5'},#xqVar{id = next_id(), 'name' = '$3',expr = '$7'} }.
'CaseClause'             -> 'case'                    'SequenceTypeUnion' 'return' 'ExprSingle' : {'case-novar', {'types', '$2'},{'return', '$4'} }.  

'CaseClauses'            -> 'CaseClause' 'CaseClauses' : ['$1'|'$2'].
'CaseClauses'            -> 'CaseClause' : ['$1'].
% [76]
'SequenceTypeUnion'      -> 'SequenceType' '|' 'SequenceTypeUnion' : ['$1'|'$3']. 
'SequenceTypeUnion'      -> 'SequenceType' : ['$1'].
% [77]
'IfExpr'                 -> 'if' '(' 'Expr' ')' 'then' 'ExprSingle' 'else' 'ExprSingle' : {'if-then-else', '$3', '$6', '$8'}.
% [78]
'TryCatchExpr'           -> 'TryClause' 'CatchClauses' : {'try', '$1', {'catch', '$2'}}  .
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
'OrExprs'                -> 'AndExpr' 'or' 'OrExprs' : {'or', '$1', '$3'}.
'OrExprs'                -> 'AndExpr' : '$1'.
'OrExpr'                 -> 'OrExprs' : '$1'.
% [84]  
'AndExprs'               -> 'ComparisonExpr' : '$1'.
'AndExprs'               -> 'ComparisonExpr' 'and' 'AndExprs' : {'and', '$1', '$3'}.
'AndExpr'                -> 'AndExprs' : '$1'.
% [85]  
'ComparisonExpr'         -> 'StringConcatExpr' 'ValueComp'   'StringConcatExpr' : {'$2', '$1', '$3'}.
'ComparisonExpr'         -> 'StringConcatExpr' 'GeneralComp' 'StringConcatExpr' : {'$2', '$1', '$3'}.
'ComparisonExpr'         -> 'StringConcatExpr' 'NodeComp'    'StringConcatExpr' : {'$2', '$1', '$3'}.
'ComparisonExpr'         -> 'StringConcatExpr' : '$1'.
% [86]
'StringConcatExpr'       -> 'RangeExpr' '||' 'StringConcatExpr' : {'function-call', {name, #qname{namespace = "http://www.w3.org/2005/xpath-functions", local_name="concat"}},{arity, 2}, {args, ['$1', '$3']}}.
%% {'concat', ['$1', '$3']}.
'StringConcatExpr'       -> 'RangeExpr' : '$1'.
% [87] 
'RangeExpr'              -> 'AdditiveExpr' 'to' 'AdditiveExpr' : {'range', '$1', '$3'}.
'RangeExpr'              -> 'AdditiveExpr' : '$1'.
% [88]   
'AdditiveExpr'          -> 'AdditiveExpr' '+' 'MultiplicativeExpr' : {'add', '$1', '$3'}.
'AdditiveExpr'          -> 'AdditiveExpr' '-' 'MultiplicativeExpr' : {'subtract', '$1', '$3'}.
'AdditiveExpr'          -> 'MultiplicativeExpr' : '$1'.
% [89]  
'MultiplicativeExpr'    -> 'MultiplicativeExpr' '*'    'UnionExpr' : {'multiply', '$1', '$3'}.
'MultiplicativeExpr'    -> 'MultiplicativeExpr' 'div'  'UnionExpr' : {'divide', '$1', '$3'}.
'MultiplicativeExpr'    -> 'MultiplicativeExpr' 'idiv' 'UnionExpr' : {'integer-divide', '$1', '$3'}.
'MultiplicativeExpr'    -> 'MultiplicativeExpr' 'mod'  'UnionExpr' : {'modulo', '$1', '$3'}.
'MultiplicativeExpr'    -> 'UnionExpr'  : '$1'.
% [90]   
'UnionExprs'             -> 'IntersectExceptExpr' 'union' 'UnionExprs' : {'union', '$1', '$3'}.
'UnionExprs'             -> 'IntersectExceptExpr' '|' 'UnionExprs' : {'union', '$1', '$3'}.
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
'ArrowExpr'              -> 'ArrowExpr' '=>' 'ArrowFunctionSpecifier' 'ArgumentList' : {'function-call', {'name',  qname(func, '$3')},{arity, length(['$1'|'$4'])}, {args, ['$1'|'$4']}}.
'ArrowExpr'              -> 'UnaryExpr' : '$1'.


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
'ValueExpr'              -> 'ValidateExpr'   : xqerl_error:error('XQST0075'). %TODO Schema Aware Feature
'ValueExpr'              -> 'ExtensionExpr'  : '$1'.
'ValueExpr'              -> 'SimpleMapExpr'  : '$1'.
% [99]     GeneralComp    ::=      "=" | "!=" | "<" | "<=" | ">" | ">="   
'GeneralComp'            -> '='  : value_of('$1').
'GeneralComp'            -> '!=' : value_of('$1').
'GeneralComp'            -> '<'  : value_of('$1').
'GeneralComp'            -> '<=' : value_of('$1').
'GeneralComp'            -> '>'  : value_of('$1').
'GeneralComp'            -> '>=' : value_of('$1').
% [100]    ValueComp      ::=      "eq" | "ne" | "lt" | "le" | "gt" | "ge"   
'ValueComp'              -> 'eq' : value_of('$1'). 
'ValueComp'              -> 'ne' : value_of('$1').
'ValueComp'              -> 'lt' : value_of('$1').
'ValueComp'              -> 'le' : value_of('$1').
'ValueComp'              -> 'gt' : value_of('$1').
'ValueComp'              -> 'ge' : value_of('$1').
% [101]    NodeComp    ::=      "is" | "<<" | ">>"   
'NodeComp'               -> 'is' : value_of('$1').
'NodeComp'               -> '<<' : value_of('$1').
'NodeComp'               -> '>>' : value_of('$1').
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
'Pragma'                 -> '(#' 'S' 'EQName' 'S' 'PragmaContents' '#)' : {'$3', '$5'}.
'Pragma'                 -> '(#'     'EQName' 'S' 'PragmaContents' '#)' : {'$2', '$4'}.
'Pragma'                 -> '(#' 'S' 'EQName' '#)' : {'$3', []}.
'Pragma'                 -> '(#'     'EQName' '#)' : {'$2', []}.

'Pragmas'                -> 'Pragma' 'Pragmas' : ['$1'|'$2'].
'Pragmas'                -> 'Pragma' : ['$1'].
% [106]    PragmaContents    ::=      (Char* - (Char* '#)' Char*))
%% done in scanner  
% [107]    SimpleMapExpr     ::=      PathExpr ("!" PathExpr)*
'SimpleMapExpr'          -> 'PathExpr' '!' 'SimpleMapExpr' : {'simple-map', '$1', '$3'}.
'SimpleMapExpr'          -> 'PathExpr' : '$1'.

% [108]    PathExpr    ::=      ("/" RelativePathExpr?)| ("//" RelativePathExpr)| RelativePathExpr   /* xgc: leading-lone-slash */
%% 'PathExpr'               -> 'lone-slash' 'RelativePathExpr'  : ?dbg("1017",'$2'),{step, {'root', '$2'}}.            %/* xgs: leading-lone-slash */
%% 'PathExpr'               -> 'lone-slash'           : {step, {'root'}}.              %/* xgs: leading-lone-slash */
%'PathExpr'               -> '/'                    : {step, {'root'}}.              %/* xgs: leading-lone-slash */
'PathExpr'               -> '/' 'RelativePathExpr'  : {step, {'root', '$2'}}.            %/* xgs: leading-lone-slash */
%% 'PathExpr'               -> 'lone-slash' 'RelativePathExpr'  : {step, {'root', '$2'}}.            %/* xgs: leading-lone-slash */
'PathExpr'               -> '//' 'RelativePathExpr' : {step, {'any-root', 
                                                             {step, #xqAxisStep{axis = 'descendant-or-self'},
                                                                    '$2'}}}.
'PathExpr'               -> 'RelativePathExpr'     : '$1'.
%% 
%% 'PathExpr'               -> 'lone-slash' '/'  'RelativePathExpr' : ?dbg("1021",{step, {'root', '$3'}}),{step, {'root', '$3'}}.            %/* xgs: leading-lone-slash */
%% 'PathExpr'               -> 'lone-slash' '//' 'RelativePathExpr' : ?dbg("1022",'$3'),{step, {'root', 
%%                                                              {step, #xqAxisStep{axis = 'descendant-or-self'},
%%                                                                     '$3'}}}.
%% 
%% 'PathExpr'               -> 'RelativePathExpr' '/'  'lone-slash'  : {step, {'root'}}.
%% 'PathExpr'               -> 'RelativePathExpr' '//' 'lone-slash'  : {step, {'root'}}.
% [109]    RelativePathExpr     ::=      StepExpr (("/" | "//") StepExpr)*   
%% 'RelativePathExpr'      -> '/'  'RelativePathExpr' : {step, '$2'}.
%% 'RelativePathExpr'      -> 'lone-slash'  'RelativePathExpr' : {step, '$2'}.
%% 'RelativePathExpr'      -> '//' 'RelativePathExpr' : {step, #xqAxisStep{axis = 'descendant-or-self'},'$2'}.
%% 'RelativePathExpr'       -> 'StepExpr' 'RelativePathExpr' : {step, '$1', '$2'}.
'RelativePathExpr'       -> 'StepExpr' '/'  'RelativePathExpr' : {step, '$1', '$3'}.
'RelativePathExpr'       -> 'StepExpr' '//' 'RelativePathExpr' : {step, '$1', 
                                                                        {step, #xqAxisStep{axis = 'descendant-or-self'},
                                                                                '$3'}}.
'RelativePathExpr'       -> 'StepExpr' :  case '$1' of 
                                             #xqAxisStep{} ->
                                                {step, '$1'};
                                             #xqPostfixStep{} ->
                                                {step, '$1'};
                                             _ ->
                                                '$1'
                                          end.

% [110]    StepExpr    ::=      PostfixExpr | AxisStep  
'StepExpr'               -> 'PostfixExpr' : '$1'.
'StepExpr'               -> 'AxisStep'   : '$1'.
'StepExpr'               -> 'lone-slash'   : {step, {'root'}}.
%% -record(xqPostfixStep, {
%%    predicates :: []
%% }).
%% -record(xqNameTest, {
%%    name = #qname{prefix = "*", local_name = "*"} :: #qname{}
%% }).
%% -record(xqKindTest, {
%%    kind = node :: node | text | comment | 'namespace-node' | element | attribute | 'document-node' | 'processing-instruction',
%%    name = #qname{prefix = "*", local_name = "*"} :: #qname{},
%%    type,
%%    test
%% }).
%% -record(xqAxisStep, {
%%    direction  = forward :: forward | reverse,
%%    axis       = child :: child | descendant | attribute | self | 
%%                  'descendant-or-self' | 'following-sibling' | following | namespace | 
%%                  parent | ancestor | 'preceding-sibling' | preceding | 'ancestor-or-self',
%%    node_test  = #xqKindTest{} :: #xqNameTest{} | #xqKindTest{},
%%    predicates :: [],
%%    next       :: #xqAxisStep{}
%% }).
% [111]    AxisStep    ::=      (ReverseStep | ForwardStep) PredicateList 
'AxisStep'               -> 'ReverseStep' 'PredicateList' : #xqAxisStep{direction = reverse, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = '$2'}.
'AxisStep'               -> 'ReverseStep'                 : #xqAxisStep{direction = reverse, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = []}.
'AxisStep'               -> 'ForwardStep' 'PredicateList' : #xqAxisStep{direction = forward, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = '$2'}.
'AxisStep'               -> 'ForwardStep'                 : #xqAxisStep{direction = forward, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = []}.
%%                                                             case element(1,'$1') of
%%                                                                forward ->
%%                                                                   #xqAxisStep{direction = forward, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = []};
%%                                                                reverse ->
%%                                                                   #xqAxisStep{direction = forward, axis = element(1,'$1'), node_test = element(2,'$1'), predicates = []};
%%                                                                _ ->
%%                                                                   '$1'
%%                                                             end.
% [112]    ForwardStep    ::=      (ForwardAxis NodeTest) | AbbrevForwardStep   
'ForwardStep'            -> 'ForwardAxis' 'NodeTest' : {'$1', '$2'}.
'ForwardStep'            -> 'AbbrevForwardStep'      : '$1'.
% [113]    ForwardAxis    ::=      ("child" "::")| ("descendant" "::")| ("attribute" "::")| ("self" "::")| 
%                                  ("descendant-or-self" "::")| ("following-sibling" "::")| ("following" "::") 
'ForwardAxis'            -> 'child' '::'              : 'child'.
'ForwardAxis'            -> 'descendant' '::'         : 'descendant'.
'ForwardAxis'            -> 'attribute' '::'          : 'attribute'.
'ForwardAxis'            -> 'self' '::'               : 'self'.
'ForwardAxis'            -> 'descendant-or-self' '::' : 'descendant-or-self'.
'ForwardAxis'            -> 'following-sibling' '::'  : 'following-sibling'.
'ForwardAxis'            -> 'following' '::'          : 'following'.
% [114]    AbbrevForwardStep    ::=      "@"? NodeTest  
'AbbrevForwardStep'      -> '@' 'NodeTest' : {'attribute', '$2'}.
'AbbrevForwardStep'      -> 'NodeTest'     : {'child', '$1'}.
% [115]    ReverseStep    ::=      (ReverseAxis NodeTest) | AbbrevReverseStep   
'ReverseStep'            -> 'ReverseAxis' 'NodeTest' : {'$1', '$2'}.
'ReverseStep'            -> 'AbbrevReverseStep'      : {'$1', #xqKindTest{kind = 'node'}}.
% [116]    ReverseAxis    ::=      ("parent" "::") | ("ancestor" "::")| ("preceding-sibling" "::")| ("preceding" "::")| ("ancestor-or-self" "::")   
'ReverseAxis'            -> 'parent' '::'            : 'parent'.
'ReverseAxis'            -> 'ancestor' '::'          : 'ancestor'.
'ReverseAxis'            -> 'preceding-sibling' '::' : 'preceding-sibling'.
'ReverseAxis'            -> 'preceding' '::'         : 'preceding'.
'ReverseAxis'            -> 'ancestor-or-self' '::'  : 'ancestor-or-self'.
% [117]    AbbrevReverseStep    ::=      ".."
'AbbrevReverseStep'      -> '..' : 'parent'.
% [118]    NodeTest    ::=      KindTest | NameTest  
'NodeTest'               -> 'KindTest' : '$1'.
'NodeTest'               -> 'NameTest' : '$1'.
% [119]    NameTest    ::=      EQName | Wildcard 
'NameTest'               -> 'EQName'   : #xqNameTest{name = qname(other,'$1')}.
'NameTest'               -> 'Wildcard' : #xqNameTest{name = qname(other,'$1')}.
% [120]    Wildcard    ::=      "*" | (NCName ":*") | ("*:" NCName) | (BracedURILiteral "*")   /* ws: explicit */
'Wildcard'               -> '*'           : #'qname'{prefix = "*", local_name = "*"}. 
'Wildcard'               -> 'NCName' ':*' : #'qname'{prefix = value_of('$1'), local_name = "*"}.
'Wildcard'               -> '*:' 'NCName' : #'qname'{prefix = "*", local_name = value_of('$2')}.
'Wildcard'               -> 'BracedURILiteral' '*'  : #'qname'{namespace = '$1', local_name = "*"}.
% [121]    PostfixExpr    ::=      PrimaryExpr (Predicate | ArgumentList | Lookup)*   
'PostfixExpr'            -> 'PrimaryExpr' 'PostFixes'  : {postfix, '$1', #xqPostfixStep{predicates = '$2'}}.
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
'Lookup'                 -> '?' 'KeySpecifier' : {'lookup', '$2'}.
% [126]    KeySpecifier      ::=      NCName | IntegerLiteral | ParenthesizedExpr | "*"
'KeySpecifier'           -> 'NCName' : value_of('$1').
'KeySpecifier'           -> 'IntegerLiteral' : value_of('$1').
'KeySpecifier'           -> 'ParenthesizedExpr' : '$1'.
'KeySpecifier'           -> '*'        : 'wildcard'.
'KeySpecifier'           -> 'wildcard' : 'wildcard'.
% [127]    ArrowFunctionSpecifier     ::=      EQName | VarRef | ParenthesizedExpr
'ArrowFunctionSpecifier' -> 'EQName' : '$1'.
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
'PrimaryExpr'            -> 'NodeConstructor' : {'node-cons', '$1'}.
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
'Literal'                -> 'StringLiteral'  : xqAtomicValue('xs:string',value_of('$1')).
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
'ParenthesizedExpr'      -> '(' 'Expr' ')' : {'expr', '$2'}.
% [134]    ContextItemExpr      ::=      "."   
'ContextItemExpr'        -> '.' : 'context-item'.
% [135]    OrderedExpr    ::=      "ordered" EnclosedExpr  
'OrderedExpr'            -> 'ordered' 'EnclosedExpr' : {'ordered-expr', '$2'}.
% [136]    UnorderedExpr     ::=      "unordered" EnclosedExpr
'UnorderedExpr'          -> 'unordered' 'EnclosedExpr' : {'unordered-expr', '$2'}.
% [137]    FunctionCall      ::=      EQName ArgumentList  /* xgc: reserved-function-names *//* gn: parens */
'FunctionCall'           -> 'EQName' 'ArgumentList' : 
         case lists:any(fun(A) -> A == '?' end, '$2') of
            true ->
               {'partial-function-call', {name, qname(func, '$1')},{arity, length('$2')}, {args, '$2'}};
            _ ->
               {'function-call', {name, qname(func, '$1')},{arity, length('$2')}, {args, '$2'}}
         end.
% [138]    Argument    ::=      ExprSingle | ArgumentPlaceholder 
'Argument'               -> 'ExprSingle' : '$1'.
'Argument'               -> 'ArgumentPlaceholder' : '$1'.
% [139]    ArgumentPlaceholder     ::=      "?"
'ArgumentPlaceholder'    -> '?' : value_of('$1').
% [140]    NodeConstructor      ::=      DirectConstructor | ComputedConstructor   
'NodeConstructor'        -> 'DirectConstructor'   : '$1'.
'NodeConstructor'        -> 'ComputedConstructor' : '$1'.
% [141]    DirectConstructor    ::=      DirElemConstructor | DirCommentConstructor | DirPIConstructor   
'DirectConstructor'      -> 'DirElemConstructor'    : '$1'.
'DirectConstructor'      -> 'DirCommentConstructor' : '$1'.
'DirectConstructor'      -> 'DirPIConstructor'      : '$1'.
% [142]    DirElemConstructor      ::=      "<" QName DirAttributeList ("/>" | (">" DirElemContent* "</" QName S? ">"))   /* ws: explicit */
'DirElemConstructor'     -> '<' 'QName' 'DirAttributeList' '/>' 
                              : #xqElementNode{identity = next_node_id(), name = qname(other,'$2'), expr = '$3'}.
'DirElemConstructor'     -> '<' 'QName' 'DirAttributeList' '>' 'DirElemContents' '</' 'QName' '>' 
                              : if '$2' == '$7' ->
                                 #xqElementNode{identity = next_node_id(), name = qname(other,'$2'), expr = '$3' ++ '$5'};
                                 true -> xqerl_error:error('XQST0118')
                                end. 
'DirElemConstructor'     -> '<' 'QName' 'DirAttributeList' '>' '</' 'QName' '>' 
                              : if '$2' == '$6' ->
                                 #xqElementNode{identity = next_node_id(), name = qname(other,'$2'), expr = '$3'};
                                 true -> xqerl_error:error('XQST0118')
                                end.  
'DirElemConstructor'     -> '<' 'QName' '/>' 
                              : #xqElementNode{identity = next_node_id(), name = qname(other,'$2')}.
'DirElemConstructor'     -> '<' 'QName' '>' 'DirElemContents' '</' 'QName' '>' 
                              : #xqElementNode{identity = next_node_id(), name = qname(other,'$2'), expr = '$4'}. 
'DirElemConstructor'     -> '<' 'QName' '>' '</' 'QName' '>' 
                              : if '$2' == '$5' ->
                                 #xqElementNode{identity = next_node_id(), name = qname(other,'$2')};
                                 true -> xqerl_error:error('XQST0118')
                                end.  
% [143]    DirAttributeList     ::=      (S (QName S? "=" S? DirAttributeValue)?)* /* ws: explicit */
'DirAttributeList'       -> 'DirAttribute' 'DirAttributeList' : case '$1' of
                                                                  #xqNamespaceNode{} ->
                                                                     ['$1' | '$2'];
                                                                  _ ->
                                                                      '$2' ++ ['$1']
                                                               end.
'DirAttributeList'       -> 'DirAttribute' : ['$1'].

'DirAttribute'           -> 'S' 'QName' '=' 'DirAttributeValue' : 
                              if ('$2')#qname.prefix == "xmlns"  ->
                                 #xqNamespaceNode{name = #qname{namespace = ns_value('$4'), prefix = ('$2')#qname.local_name}};
                              ('$2')#qname.local_name == "xmlns" andalso ('$2')#qname.prefix == default ->
                                 case at_value('$4') of 
                                    "" -> #xqNamespaceNode{name = #qname{namespace = 'no-namespace', prefix = []}};
                                    _ -> #xqNamespaceNode{name = #qname{namespace = ns_value('$4'), prefix = []}} 
                                 end;
                              true ->
                                 #xqAttributeNode{identity = next_node_id(), 
                                                  name = qname(other,'$2'), 
                                                  expr = case '$4' of
                                                            [] -> [#xqAtomicValue{type = 'xs:string', value = ""}];
                                                            _ -> '$4'
                                                         end}
                           end.
'DirAttribute'           -> 'S' : [].
% [144]    DirAttributeValue    ::=      ('"' (EscapeQuot | QuotAttrValueContent)* '"') | ("'" (EscapeApos | AposAttrValueContent)* "'")   /* ws: explicit */
'DirAttributeValuesQuot' -> 'QuotAttrValueContent' 'DirAttributeValuesQuot' : ['$1' | '$2'].
'DirAttributeValuesQuot' -> 'EscapeQuot'           'DirAttributeValuesQuot' : [#xqAtomicValue{type = 'xs:string', value = value_of('$1')} | '$2'].
'DirAttributeValuesQuot' -> 'QuotAttrValueContent' : ['$1'].
'DirAttributeValuesQuot' -> 'EscapeQuot'           : [#xqAtomicValue{type = 'xs:string', value = value_of('$1')}].

'DirAttributeValuesApos' -> 'AposAttrValueContent' 'DirAttributeValuesApos' : ['$1' | '$2'].
'DirAttributeValuesApos' -> 'EscapeApos'           'DirAttributeValuesApos' : [#xqAtomicValue{type = 'xs:string', value = value_of('$1')} | '$2'].
'DirAttributeValuesApos' -> 'AposAttrValueContent' : ['$1'].
'DirAttributeValuesApos' -> 'EscapeApos'           : [#xqAtomicValue{type = 'xs:string', value = value_of('$1')}].

'DirAttributeValue'      -> 'quot' 'DirAttributeValuesQuot' 'quot' : '$2'.
'DirAttributeValue'      -> 'quot'                          'quot' : [].
'DirAttributeValue'      -> 'apos' 'DirAttributeValuesApos' 'apos' : '$2'.
'DirAttributeValue'      -> 'apos'                          'apos' : [].
% [145]    QuotAttrValueContent    ::=      QuotAttrContentChar | CommonContent   
'QuotAttrValueContent'   -> 'QuotAttrContentChars' : #xqAtomicValue{type = 'xs:string', value = '$1'}.
'QuotAttrValueContent'   -> 'CommonContent' : '$1'.

'QuotAttrContentChars'   -> 'QuotAttrContentChar' : [value_of('$1')].
'QuotAttrContentChars'   -> 'QuotAttrContentChar' 'QuotAttrContentChars' : [value_of('$1') | '$2'].
% [146]    AposAttrValueContent    ::=      AposAttrContentChar | CommonContent   
'AposAttrValueContent'   -> 'AposAttrContentChars' : #xqAtomicValue{type = 'xs:string', value = '$1'}.
'AposAttrValueContent'   -> 'CommonContent' : '$1'.

'AposAttrContentChars'   -> 'AposAttrContentChar' 'AposAttrContentChars' : [value_of('$1') | '$2'].
'AposAttrContentChars'   -> 'AposAttrContentChar' : [value_of('$1')].
% [147]    DirElemContent    ::=      DirectConstructor | CDataSection | CommonContent | ElementContentChar 
'DirElemContents'        -> 'DirElemContent' 'DirElemContents' : ['$1' | '$2'].
'DirElemContents'        -> 'DirElemContent' : ['$1'].

'DirElemContent'         -> 'DirectConstructor'   : '$1'.
'DirElemContent'         -> 'CDataSection'        : '$1'.
'DirElemContent'         -> 'CommonContent'       : '$1'.
'DirElemContent'         -> 'ElementContentChars' : #xqTextNode{expr = #xqAtomicValue{type = 'xs:string', value = '$1'}}.

'ElementContentChars'    -> 'ElementContentChar' 'ElementContentChars' : [value_of('$1') | '$2'].
'ElementContentChars'    -> 'ElementContentChar' : [value_of('$1')].
% [148]    CommonContent     ::=      PredefinedEntityRef | CharRef | "{{" | "}}" | EnclosedExpr  
'CommonContent'          -> 'PredefinedEntityRef' : #xqTextNode{expr = #xqAtomicValue{type = 'xs:string', value = value_of('$1')}}.
'CommonContent'          -> 'CharRef'             : #xqAtomicValue{type = 'xs:string', value = [value_of('$1')]}.
'CommonContent'          -> '{{'                  : #xqTextNode{expr = #xqAtomicValue{type = 'xs:string', value = "{"}}.
'CommonContent'          -> '}}'                  : #xqTextNode{expr = #xqAtomicValue{type = 'xs:string', value = "}"}}.
'CommonContent'          -> 'EnclosedExpr' : '$1'.
% [149]    DirCommentConstructor      ::=      "<!--" DirCommentContents "-->"  /* ws: explicit */
'DirCommentConstructor'  -> '<!--' 'DirCommentContents' '-->' : #xqCommentNode{identity = next_node_id(), expr = '$2'}.
% [150]    DirCommentContents      ::=      ((Char - '-') | ('-' (Char - '-')))*
%% done in scanner
'DirCommentContents'     -> 'comment-text' : #xqAtomicValue{type = 'xs:string', value = value_of('$1')}.
% [151]    DirPIConstructor     ::=      "<?" PITarget (S DirPIContents)? "?>"  /* ws: explicit */
'DirPIConstructor'       -> '<?' 'PITarget' '?>'                 : #xqProcessingInstructionNode{identity = next_node_id(), name = qname(pi,value_of('$2'))}.
'DirPIConstructor'       -> '<?' 'PITarget' 'DirPIContents' '?>' : #xqProcessingInstructionNode{identity = next_node_id(), name = qname(pi,value_of('$2')), 
                                                                                                expr = [#xqAtomicValue{type = 'xs:string', value = value_of('$3')}]}.
% [152]    DirPIContents     ::=      (Char* - (Char* '?>' Char*))  /* ws: explicit */
%% done in scanner
% [153]    CDataSection      ::=      "<![CDATA[" CDataSectionContents "]]>" /* ws: explicit */
'CDataSection'           -> '<![CDATA[' 'CDataSectionContents' ']]>' : #xqTextNode{identity = next_node_id(), expr = [#xqAtomicValue{type = 'xs:string', value = '$2'}]}.
% [154]    CDataSectionContents    ::=      (Char* - (Char* ']]>' Char*)) /* ws: explicit */
%% done in scanner
'CDataSectionContents'   -> 'cdata-contents' : value_of('$1').
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
'CompDocConstructor'     -> 'document' 'EnclosedExpr' : #xqDocumentNode{identity = next_node_id(), expr = '$2'}.
% [157]    CompElemConstructor     ::=      "element" (EQName | ("{" Expr "}")) EnclosedContentExpr  
'CompElemConstructor'    -> 'element'    'EQName'    'EnclosedContentExpr' : #xqElementNode{identity = next_node_id(), name = '$2', expr = '$3'}. 
'CompElemConstructor'    -> 'element' '{' 'Expr' '}' 'EnclosedContentExpr' : #xqElementNode{identity = next_node_id(), name = '$3', expr = '$5'}.
% [158]    EnclosedContentExpr     ::=      EnclosedExpr
'EnclosedContentExpr'    -> 'EnclosedExpr' : '$1'.
% [159]    CompAttrConstructor     ::=      "attribute" (EQName | ("{" Expr "}")) EnclosedExpr 
'CompAttrConstructor'    -> 'attribute'    'EQName'    'EnclosedExpr' : #xqAttributeNode{identity = next_node_id(), name = '$2', expr = '$3'}.
'CompAttrConstructor'    -> 'attribute' '{' 'Expr' '}' 'EnclosedExpr' : #xqAttributeNode{identity = next_node_id(), name = '$3', expr = '$5'}.
% [160]    CompNamespaceConstructor      ::=      "namespace" (Prefix | EnclosedPrefixExpr) EnclosedURIExpr
'CompNamespaceConstructor'-> 'namespace' 'Prefix'             'EnclosedURIExpr' : #xqNamespaceNode{identity = next_node_id(), name = #'qname'{namespace = '$3', prefix = '$2'}}.
'CompNamespaceConstructor'-> 'namespace' 'EnclosedPrefixExpr' 'EnclosedURIExpr' : #xqNamespaceNode{identity = next_node_id(), name = #'qname'{namespace = '$3', prefix = '$2'}}.
% [161]    Prefix      ::=      NCName
'Prefix'                 -> 'NCName' : value_of('$1').
% [162]    EnclosedPrefixExpr      ::=      EnclosedExpr
'EnclosedPrefixExpr'     -> 'EnclosedExpr' : '$1'.
% [163]    EnclosedURIExpr      ::=      EnclosedExpr   
'EnclosedURIExpr'        -> 'EnclosedExpr' : '$1'.
% [164]    CompTextConstructor     ::=      "text" EnclosedExpr  
'CompTextConstructor'    -> 'text' 'EnclosedExpr' : #xqTextNode{expr = '$2'}.
% [165]    CompCommentConstructor     ::=      "comment" EnclosedExpr  
'CompCommentConstructor' -> 'comment' 'EnclosedExpr' : #xqCommentNode{expr = '$2'}.
% [166]    CompPIConstructor    ::=      "processing-instruction" (NCName | ("{" Expr "}")) EnclosedExpr   
'CompPIConstructor'      -> 'processing-instruction'    'NCName'    'EnclosedExpr' : #xqProcessingInstructionNode{identity = next_node_id(), name = qname(pi,value_of('$2')), expr = '$3'}.
'CompPIConstructor'      -> 'processing-instruction' '{' 'Expr' '}' 'EnclosedExpr' : #xqProcessingInstructionNode{identity = next_node_id(), name = '$3',                     expr = '$5'}.
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
'MapConstructorEntry'    -> 'MapKeyExpr' ':' 'MapValueExpr' : {'map-key-val', '$1', '$3'}.
'MapConstructorEntries'  -> 'MapConstructorEntry' : ['$1'].
'MapConstructorEntries'  -> 'MapConstructorEntry' ',' 'MapConstructorEntries' : ['$1'|'$3'].
% [172]    MapKeyExpr     ::=      ExprSingle  
'MapKeyExpr'             -> 'ExprSingle' : '$1'.
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
'CurlyArrayConstructor'  -> 'array' 'EnclosedExpr' : {'array', '$2'}.
% [177]    StringConstructor    ::=      "``[" StringConstructorContent "]``"   /* ws: explicit */
'StringConstructor'      -> '``[' 'StringConstructorContent' ']``' : {'string-constructor', '$2'}.
% [178]    StringConstructorContent      ::=      StringConstructorChars (StringConstructorInterpolation StringConstructorChars)*  /* ws: explicit */
'StringConstructorContent'-> 'StringConstructorChars' : value_of('$1').
'StringConstructorContent'-> 'StringConstructorChars' 'StringConstContents' : {value_of('$1'), '$2'}.
'StringConstContents'    -> 'StringConstructorInterpolation' 'StringConstructorChars' : {'$1', value_of('$2')}.
'StringConstContents'    -> 'StringConstructorInterpolation' 'StringConstructorChars' 'StringConstContents': [{'$1', value_of('$2')}|'$3'].
% [179]    StringConstructorChars     ::=      (Char* - (Char* ('`{' | ']``') Char*)) /* ws: explicit */
%% done in scanner
% [180]    StringConstructorInterpolation      ::=      "`{" Expr? "}`"   
'StringConstructorInterpolation' -> '`{' 'Expr' '}`' : '$2'.
'StringConstructorInterpolation' -> '`{' '}`' : [].
% [181]    UnaryLookup    ::=      "?" KeySpecifier  
'UnaryLookup'            -> '?' 'KeySpecifier' : {ulookup, '$2'}.
% [182]    SingleType     ::=      SimpleTypeName "?"?  
'SingleType'             -> 'SimpleTypeName' '?' : #xqSeqType{type = '$1', occur = 'zero_or_one'}.
'SingleType'             -> 'SimpleTypeName'     : #xqSeqType{type = '$1', occur = 'one'}.
% [183]    TypeDeclaration      ::=      "as" SequenceType 
'TypeDeclaration'        -> 'as' 'SequenceType' : '$2'.
% [184]    SequenceType      ::=      ("empty-sequence" "(" ")")| (ItemType OccurrenceIndicator?)   
'SequenceType'           -> 'empty-sequence' '(' ')'         : #xqSeqType{type = 'empty-sequence', occur = 'one'}.
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
                                          #qname{namespace = _, prefix = "xs", local_name = "*"} = Q ->
                                             Q;
                                          #qname{namespace = _, prefix = "xs", local_name = _} = Q ->
                                             qname_to_atom(Q);
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
'DocumentTest'           -> 'document-node' '(' 'ElementTest' ')'       : #xqKindTest{kind = 'document-node', test = '$3'}.
'DocumentTest'           -> 'document-node' '(' 'SchemaElementTest' ')' : #xqKindTest{kind = 'document-node', test = '$3'}.
'DocumentTest'           -> 'document-node' '(' ')'                     : #xqKindTest{kind = 'document-node'}.
% [191]    TextTest    ::=      "text" "(" ")" 
'TextTest'               -> 'text' '(' ')' : #xqKindTest{kind = 'text'}.
% [192]    CommentTest    ::=      "comment" "(" ")" 
'CommentTest'            -> 'comment' '(' ')' : #xqKindTest{kind = 'comment'}.
% [193]    NamespaceNodeTest    ::=      "namespace-node" "(" ")"   
'NamespaceNodeTest'      -> 'namespace-node' '(' ')' : #xqKindTest{kind = 'namespace'}.
% [194]    PITest      ::=      "processing-instruction" "(" (NCName | StringLiteral)? ")"  
'PITest'                 -> 'processing-instruction' '(' 'NCName' ')' : #xqKindTest{kind = 'processing-instruction', name = qname(pi,value_of('$3'))}.
'PITest'                 -> 'processing-instruction' '(' 'StringLiteral' ')' : #xqKindTest{kind = 'processing-instruction', test = value_of('$3')}.
'PITest'                 -> 'processing-instruction' '(' ')' : #xqKindTest{kind = 'processing-instruction'}.
% [195]    AttributeTest     ::=      "attribute" "(" (AttribNameOrWildcard ("," TypeName)?)? ")" 
'AttributeTest'          -> 'attribute' '(' 'AttribNameOrWildcard' ',' 'TypeName' ')' : #xqKindTest{kind = 'attribute', name = '$3', type = '$5'}.
'AttributeTest'          -> 'attribute' '(' 'AttribNameOrWildcard' ')' : #xqKindTest{kind = 'attribute', name = '$3'}.
'AttributeTest'          -> 'attribute' '(' ')' : #xqKindTest{kind = 'attribute'}.
% [196]    AttribNameOrWildcard    ::=      AttributeName | "*"  
'AttribNameOrWildcard'   -> 'AttributeName' : '$1'.
'AttribNameOrWildcard'   -> '*' : {qname,"*","*","*"}.
% [197]    SchemaAttributeTest     ::=      "schema-attribute" "(" AttributeDeclaration ")" 
'SchemaAttributeTest'    -> 'schema-attribute' '(' 'AttributeDeclaration' ')' : {'ignore', '$3'}.
% [198]    AttributeDeclaration    ::=      AttributeName  
'AttributeDeclaration'   -> 'AttributeName' : '$1'.
% [199]    ElementTest    ::=      "element" "(" (ElementNameOrWildcard ("," TypeName "?"?)?)? ")"   
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ',' 'TypeName' '?' ')' : #xqKindTest{kind = 'element', name = '$3', type = #xqSeqType{type = '$5', occur = zero_or_one}}.
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ',' 'TypeName' ')' : #xqKindTest{kind = 'element', name = '$3', type = #xqSeqType{type = '$5', occur = one}}.
'ElementTest'            -> 'element' '(' 'ElementNameOrWildcard' ')' : #xqKindTest{kind = 'element', name = '$3'}.
'ElementTest'            -> 'element' '(' ')' : #xqKindTest{kind = 'element'}.
% [200]    ElementNameOrWildcard      ::=      ElementName | "*" 
'ElementNameOrWildcard'  -> '*' : {qname,"*","*","*"}.
'ElementNameOrWildcard'  -> 'ElementName' : '$1'.
% [201]    SchemaElementTest    ::=      "schema-element" "(" ElementDeclaration ")"  
'SchemaElementTest'      -> 'schema-element' '(' 'ElementDeclaration' ')' : {'ignore', '$3'}.
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
'TypedMapTest'            -> 'map' '(' 'AtomicOrUnionType' ',' 'SequenceType' ')' : #xqFunTest{kind = map, annotations = [], params = '$3', type = '$5'} .
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
'URILiteral'             -> 'StringLiteral' : value_of('$1').
%'URILiteral'             -> 'StringLiteral' : [{bin_element,?L,{string,?L,value_of('$1')},default,default}].
% [218]    EQName      ::=      QName | URIQualifiedName
'EQName'                 -> 'PrefixedName' : '$1'.
'EQName'                 -> 'UnprefixedName' : '$1'.
'EQName'                 -> 'URIQualifiedName' : '$1'.

'QName'                  -> 'PrefixedName'   : '$1'.
'QName'                  -> 'UnprefixedName' : '$1'.
'PrefixedName'           -> '*' ':' 'LocalPart'      : #'qname'{prefix = "*", local_name = '$3'}.
'PrefixedName'           -> 'Prefix' ':' '*'         : #'qname'{prefix = '$1', local_name = "*"}.
'PrefixedName'           -> 'Prefix' ':' 'LocalPart' : #'qname'{prefix = '$1', local_name = '$3'}.
'UnprefixedName'         -> 'LocalPart'              : #'qname'{namespace = 'default', prefix = 'default', local_name = '$1'}.
'LocalPart'              -> 'Prefix' : '$1'.


'URIQualifiedName'       -> 'BracedURILiteral' 'NCName' : #'qname'{namespace = '$1', local_name = value_of('$2')}.
'BracedURILiteral'       -> 'Q' '{' 'URILiteral' '}'    : '$3'.
'BracedURILiteral'       -> 'Q' '{' '}'    : 'no-namespace'.


%% 'ElementContentChar'     -> 'Char' : value_of('$1'). % Char - [{}<&]
%% 'QuotAttrContentChar'    -> 'Char' : value_of('$1'). % Char - ["{}<&]
%% 'AposAttrContentChar'    -> 'Char' : value_of('$1'). % Char - ['{}<&]

 Erlang code.

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

%% @doc Parser for the XQuery 3.1 Grammar.

-include("xqerl.hrl").

-define(L,1).

value_of(Token) ->
    element(3, Token).

%% merge_xqvariable_annotation(#xqVar{annotations = A},#xqVar{} = R2) ->
%%    R2#xqVar{annotations = A}.
%% merge_xqfunction_annotation(#xqFunction{annotations = A},#xqFunction{} = R2) ->
%%    R2#xqFunction{annotations = A}.

qname_to_atom(Q) ->
   L = get_qname_local_name(Q),
   P = get_qname_prefix(Q),
   list_to_atom(lists:concat([P,":",L])).

xqAtomicValue(Type,Value) ->
   {xqAtomicValue, Type,Value}.

qname(func, {qname,"http://www.w3.org/2005/xpath-functions",_,Ln}) ->
   Ns = "http://www.w3.org/2005/xpath-functions",
   {qname,Ns,"fn",Ln};
qname(func, {qname,"http://www.w3.org/2001/XMLSchema",_,Ln}) ->
   Ns = "xqerl_xs",
   {qname,Ns,"xs",Ln};
qname(func, {qname,"http://www.w3.org/2005/xpath-functions/math",_,Ln}) ->
   Ns = "xqerl_math",
   {qname,Ns,"math",Ln};
qname(func, {qname,"http://www.w3.org/2005/xpath-functions/map",_,Ln}) ->
   Ns = "xqerl_map",
   {qname,Ns,"map",Ln};
qname(func, {qname,"http://www.w3.org/2005/xpath-functions/array",_,Ln}) ->
   Ns = "xqerl_array",
   {qname,Ns,"array",Ln};
qname(func, {qname,"http://www.w3.org/2005/xqt-errors",_,Ln}) ->
   Ns = "xqerl_error",
   {qname,Ns,"err",Ln};
qname(func, {qname,undefined,"xs",Ln}) ->
   Ns = "xqerl_xs",
   {qname,Ns,"xs",Ln};
qname(func, {qname,undefined,Px,Ln}) -> % must be known
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(Px),
   {qname,Ns,Px,Ln};
% reserved function names
qname(func, {qname,default,_,"array"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"attribute"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"comment"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"document-node"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"element"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"empty-sequence"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"function"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"if"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"item"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"map"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"namespace-node"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"node"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"processing-instruction"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"schema-attribute"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"schema-element"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"switch"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"text"}) -> xqerl_error:error('XPST0003');
qname(func, {qname,default,_,"typeswitch"}) -> xqerl_error:error('XPST0003');
% default
qname(func, {qname,default,_Px,Ln}) ->
   {qname,"http://www.w3.org/2005/xpath-functions","fn",Ln};
qname(func, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(pi, Ln) ->
   {qname,'no-namespace',[],Ln};

qname(type, {qname,_,"xs",Ln}) ->
   Ns = "xqerl_xs",
   {qname,Ns,"xs",Ln};
qname(type, {qname,default,_,Ln}) ->
   {qname,"xqerl_xs","xs",Ln};
qname(type, Q) ->
   Q;

qname(var, {qname,default,default,Ln}) ->
   qname(var, {qname,'no-namespace',"",Ln});
qname(var, {qname,default,"",Ln}) ->
   qname(var, {qname,'no-namespace',"",Ln});
qname(var, {qname,_,"err",Ln}) ->
   {qname,"http://www.w3.org/2005/xqt-errors","err",Ln};
%% qname(var, {qname,undefined,Px,Ln}) ->
%%    %?dbg("qname(var", {Px,Ln}),
%%    Ns = xqerl_context:get_statically_known_namespace_from_prefix(Px),
%%    qname(var, {qname,Ns,Px,Ln});
qname(var, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(anno, {qname,undefined,Px,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(Px),
   {qname,Ns,Px,Ln};
qname(anno, {qname,default,_,Ln}) ->
   Ns  = "http://www.w3.org/2012/xquery",
   {qname,Ns,"",Ln};
qname(anno, {qname,Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(opt, {qname,undefined,Px,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix(Px),
   {qname,Ns,Px,Ln};
qname(opt, {qname,default,_,Ln}) ->
   Ns  = "http://www.w3.org/2012/xquery",
   {qname,Ns,"",Ln};
qname(opt, {Ns,Px,Ln}) ->
   {qname,Ns,Px,Ln};

qname(other, {qname,_,"err",Ln}) ->
   {qname,"http://www.w3.org/2005/xqt-errors","err",Ln};
qname(other, {qname,"http://www.w3.org/2005/xqt-errors",_,Ln}) ->
   {qname,"http://www.w3.org/2005/xqt-errors","err",Ln};
qname(other, {qname,_,undefined,_} = Q) ->
   qname(func, Q);
qname(other, {qname,_,"*","*"}) ->
   {qname,"*","*","*"};
qname(other, {qname,_,"*",Ln}) ->
   {qname,"*","*",Ln};
qname(other, {qname,_,Px,"*"}) ->
   %Ns = xqerl_context:get_statically_known_namespace_from_prefix(Px),
   {qname,undefined,Px,"*"};
qname(other, {qname,_,"local",Ln}) ->
   {qname,"http://www.w3.org/2005/xquery-local-functions","local",Ln};
qname(other, {qname,_,"fn",Ln}) ->
   {qname,"http://www.w3.org/2005/xpath-functions","fn",Ln};
qname(other, {qname,_,"xsi",Ln}) ->
   {qname,"http://www.w3.org/2001/XMLSchema-instance","xsi",Ln};
qname(other, {qname,_,"xml",Ln}) ->
   {qname,"http://www.w3.org/XML/1998/namespace","xml",Ln};
qname(other, {qname,_,"xs",Ln}) ->
   {qname,"http://www.w3.org/2001/XMLSchema","xs",Ln};
qname(other, {qname,_,"math",Ln}) ->
   {qname,"http://www.w3.org/2005/xpath-functions/math","math",Ln};
qname(other, {qname,_,"map",Ln}) ->
   {qname,"http://www.w3.org/2005/xpath-functions/map","map",Ln};
qname(other, {qname,_,"array",Ln}) ->
   {qname,"http://www.w3.org/2005/xpath-functions/array","array",Ln};
qname(other, {qname,_,default,Ln}) ->
   Ns = xqerl_context:get_statically_known_namespace_from_prefix([]),
   {qname,Ns,[],Ln};
qname(other, {qname,Ns,Px,Ln}) ->
   %Ns = xqerl_context:get_statically_known_namespace_from_prefix(Px),
   {qname,Ns,Px,Ln}.

get_qname_local_name({qname,_,_,Nm}) ->
  Nm.
get_qname_prefix({qname,_,Px,_}) ->
  Px.

next_id() ->
   case erlang:get(var_id) of
      undefined ->
         erlang:put(var_id, 1),
         0;
      Id ->
         erlang:put(var_id, Id + 1),
         Id
   end.

next_node_id() ->
   case erlang:get(node_id) of
      undefined ->
         erlang:put(node_id, 1),
         0;
      Id ->
         erlang:put(node_id, Id + 1),
         Id
   end.

at_value([]) ->
   [];
at_value([#xqAtomicValue{} = At]) ->
   %?dbg("1705",At),
   element(3,At);
at_value(A) when is_list(A) ->
   %?dbg("1708",A),
   try
      lists:flatmap( fun(#xqAtomicValue{value = V}) ->
                            V;
                        ({expr,E}) ->
                            at_value(E)
                     end, A)
   catch _:_ ->
      ?dbg("XQST0022",A),
      xqerl_error:error('XQST0022')
   end;
at_value({expr,A}) ->
   at_value(A);
at_value(A) ->
   ?dbg("XQST0022",A),
   xqerl_error:error('XQST0022').

ns_value([]) ->
   [];
ns_value([#xqAtomicValue{} = At]) ->
   %?dbg("1705",At),
   element(3,At);
ns_value([{expr,A}]) ->
   ?dbg("XQST0022",A),
   xqerl_error:error('XQST0022');
ns_value(A) when is_list(A) ->
   %?dbg("1708",A),
   try
      lists:flatmap( fun(#xqAtomicValue{value = V}) ->
                            V;
                        ({expr,_E}) ->
                            xqerl_error:error('XQST0022')
                     end, A)
   catch _:_ ->
      ?dbg("XQST0022",A),
      xqerl_error:error('XQST0022')
   end;
ns_value(A) ->
   ?dbg("XQST0022",A),
   xqerl_error:error('XQST0022').


as_list(L) ->
   if is_list(L) -> L;
      true -> [L]
   end.

  
