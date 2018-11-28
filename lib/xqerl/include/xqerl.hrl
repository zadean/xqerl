-ifndef(xqerl_hrl).
-define(xqerl_hrl, true).
-include_lib("kernel/include/logger.hrl").

%% The variables available in both XQuery 3.1 and XSLT 3.0 are:
%% - err:code - the error code
%% - err:description - a free-form error description
%% - err:value - an arbitrary value associated with the error
%% - err:module - the URI of the query stylesheet module in which the error occurred
%% - err:line-number - the line number of the instruction where the error occurred
%% - err:column-number - the column number of the instruction where the error occurred
%% An additional variable is available only in XQuery 3.1:
%% - err:additional - further implementation-defined information about the error

-define(put(Key,Val),xqerl_lib:lput(Key,Val)).
-define(put(Tab,Key,Val),xqerl_lib:lput(Tab,Key,Val)).

-define(get(Key),xqerl_lib:lget(Key)).
-define(get(Tab,Key),xqerl_lib:lget(Tab,Key)).


-define(dbg(A,B),?LOG_DEBUG("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(info(A,B),?LOG_INFO("~p: ~p",[A,B], #{domain=>[xqerl]})).
-define(seq, xqerl_seq3).
-define(err(Code),xqerl_error:error(Code)).

-define(node(I), (I=='node' orelse I=='document' orelse I=='document-node' orelse I=='element' orelse I=='attribute' orelse I=='namespace' orelse I=='text' orelse I=='comment' orelse I=='processing-instruction')).

-define(xs_duration(I),(I=='xs:duration' orelse I=='xs:yearMonthDuration' orelse I=='xs:dayTimeDuration')).
-define(xs_numeric(I), 
        (I=='xs:numeric' orelse 
         I=='xs:float' orelse I=='xs:double' orelse 
         ?xs_decimal(I))).
-define(xs_decimal(I), 
        (I=='xs:decimal' orelse 
         ?xs_integer(I))).
-define(xs_integer(I), 
        (I=='xs:integer' orelse
         ?xs_nonPositiveInteger(I) orelse
         ?xs_long(I) orelse
         ?xs_nonNegativeInteger(I))).
-define(xs_nonPositiveInteger(I), 
        (I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger')).
-define(xs_long(I),
        (I=='xs:long' orelse ?xs_int(I))).
-define(xs_int(I),
        (I=='xs:int' orelse ?xs_short(I))).
-define(xs_short(I),   
        (I=='xs:short' orelse I=='xs:byte')).
-define(xs_nonNegativeInteger(I), 
        (I=='xs:nonNegativeInteger' orelse 
         I=='xs:positiveInteger' orelse 
         ?xs_unsignedLong(I))).
-define(xs_unsignedLong(I), 
        (I=='xs:unsignedLong' orelse ?xs_unsignedInt(I))).
-define(xs_unsignedInt(I), 
        (I=='xs:unsignedInt' orelse ?xs_unsignedShort(I))).
-define(xs_unsignedShort(I), 
        (I=='xs:unsignedShort' orelse I=='xs:unsignedByte')).

-define(xs_string(I), 
        (I=='xs:string' orelse ?xs_normalizedString(I))).
-define(xs_normalizedString(I), 
        (I=='xs:normalizedString' orelse ?xs_token(I))).
-define(xs_token(I), 
        (I=='xs:token' orelse 
         I=='xs:language' orelse
         ?xs_Name(I) orelse 
         ?xs_NMTOKEN(I))).
-define(xs_Name(I),  
        (I=='xs:Name' orelse ?xs_NCName(I))).
-define(xs_NCName(I),
        (I=='xs:NCName' orelse I=='xs:ID' orelse 
         ?xs_IDREF(I) orelse ?xs_ENTITY(I))).
-define(xs_IDREF(I),
        (I=='xs:IDREF' orelse I=='xs:IDREFS')).
-define(xs_ENTITY(I),
        (I=='xs:ENTITY' orelse I=='xs:ENTITIES')).
-define(xs_NMTOKEN(I),
        (I=='xs:NMTOKEN' orelse I=='xs:NMTOKENS')).

-define(xs_anyAtomicType(I),
       (I=='xs:anyAtomicType' orelse
        I=='xs:anySimpleType' orelse I=='xs:untypedAtomic' orelse I=='xs:dateTime' orelse I=='xs:dateTimeStamp' orelse I=='xs:time' orelse I=='xs:date' orelse 
        I=='xs:gYearMonth' orelse I=='xs:gYear' orelse I=='xs:gMonthDay' orelse I=='xs:gDay' orelse I=='xs:gMonth' orelse I=='xs:boolean' orelse 
        I=='xs:base64Binary' orelse I=='xs:hexBinary' orelse I=='xs:float' orelse I=='xs:double' orelse I=='xs:anyURI' orelse I=='xs:QName' orelse I=='xs:NOTATION' orelse 
        I=='xs:numeric' orelse 
        I=='xs:decimal' orelse 
        I=='xs:integer' orelse 
        I=='xs:nonPositiveInteger' orelse I=='xs:negativeInteger' orelse 
        I=='xs:long' orelse I=='xs:int' orelse I=='xs:short' orelse I=='xs:byte' orelse 
        I=='xs:nonNegativeInteger' orelse 
        I=='xs:positiveInteger' orelse 
        I=='xs:unsignedLong' orelse I=='xs:unsignedInt' orelse I=='xs:unsignedShort' orelse I=='xs:unsignedByte' orelse 
        I=='xs:string' orelse 
        I=='xs:normalizedString' orelse 
        I=='xs:token' orelse 
        I=='xs:language' orelse I=='xs:Name' orelse I=='xs:NCName' orelse I=='xs:NMTOKEN'  orelse I=='xs:NMTOKENS' orelse 
        I=='xs:ID' orelse I=='xs:IDREF' orelse I=='xs:IDREFS' orelse I=='xs:ENTITY' orelse I=='xs:ENTITIES' orelse 
        I=='xs:duration' orelse I=='xs:yearMonthDuration' orelse I=='xs:dayTimeDuration')
        ).



-record(xqError, {
      name,
      description = [],
      value = [],
      location = {[],[],[]} % {Module, Line, Column}
   }).



%% -define(STATIC_NS, [
%%     #xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/XML/1998/namespace', prefix = "xml"}}
%%    ,#xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/2001/XMLSchema', prefix = "xs"}}
%%    ,#xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/2001/XMLSchema-instance', prefix = "xsi"}}
%%    ,#xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/2005/xpath-functions', prefix = "fn"}}
%%    ,#xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/2005/xquery-local-functions', prefix = "local"}}
%%    % non-standard
%%    ,#xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/2005/xqt-errors', prefix = "err"}}
%% ]).

-define(STATIC_SCHEMA_TYPES, 
[
 % XML Schema standard
 % -------------------
 % Primitive datatypes
    'xs:string'
   ,'xs:boolean'
   ,'xs:decimal'
   ,'xs:float'
   ,'xs:double'
   ,'xs:duration'
   ,'xs:dateTime'
   ,'xs:time'
   ,'xs:date'
   ,'xs:gYearMonth'
   ,'xs:gYear'
   ,'xs:gMonthDay'
   ,'xs:gDay'
   ,'xs:gMonth'
   ,'xs:hexBinary'
   ,'xs:base64Binary'
   ,'xs:anyURI'
   ,'xs:qname'
   ,'xs:NOTATION'
 % Derived datatypes - Derived from
   ,'xs:normalizedString'  % 'xs:string'
   ,'xs:token'             % 'xs:normalizedString'
   ,'xs:language'          % 'xs:token'
   ,'xs:NMTOKEN'           % 'xs:token'
   ,'xs:NMTOKENS'          % 'xs:NMTOKEN'
   ,'xs:Name'              % 'xs:token'
   ,'xs:NCName'            % 'xs:Name'
   ,'xs:ID'                % 'xs:NCName'
   ,'xs:IDREF'             % 'xs:NCName'
   ,'xs:IDREFS'            % 'xs:IDREF'
   ,'xs:ENTITY'            % 'xs:NCName'
   ,'xs:ENTITIES'          % 'xs:ENTITY'
   ,'xs:integer'           % 'xs:decimal'
   ,'xs:nonPositiveInteger'% 'xs:integer'
   ,'xs:negativeInteger'   % 'xs:nonPositiveInteger'
   ,'xs:long'              % 'xs:integer'
   ,'xs:int'               % 'xs:long'
   ,'xs:short'             % 'xs:int'
   ,'xs:byte'              % 'xs:short'
   ,'xs:nonNegativeInteger'% 'xs:integer'
   ,'xs:unsignedLong'      % 'xs:nonNegativeInteger'
   ,'xs:unsignedInt'       % 'xs:unsignedLong'
   ,'xs:unsignedShort'     % 'xs:unsignedInt'
   ,'xs:unsignedByte'      % 'xs:unsignedShort'
   ,'xs:positiveInteger'   % 'xs:nonNegativeInteger'
 % XQuery specific
 % -------------------
   ,'xs:untyped'                              
   ,'xs:untypedAtomic'                              
   ,'xs:dayTimeDuration'                              
   ,'xs:yearMonthDuration'                              
   ,'xs:anyAtomicType'
   ,'xs:error'
   ,'xs:dateTimeStamp'
   ,'xs:numeric'          % union of xs:double, xs:float and xs:decimal
]).

-record(off_set, {sign = '+',
                  hour = 0, 
                  min = 0}).

% integer with scaling-factor
-record(xsDecimal,{int = 0,
                   scf = 0}).

-record(xsDateTime, {
                   sign     = '+',
                   year     = 0,
                   month    = 1,
                   day      = 1,
                   hour     = 0,
                   minute   = 0,
                   second   = #xsDecimal{},
                   offset   = #off_set{},
                   string_value
                   }).

-record(xqSeqType, {
   type  = item :: term(), %:: atom() | #xqKindTest{},
   occur = zero_or_many  :: zero | one | zero_or_one | zero_or_many | one_or_many | none
}).

% 3 types of items
-record(xqAtomicValue,
        {
         type  = undefined :: atom(),
         value = undefined :: term() | []
        }).
%% -record(xqNode, {
%%       doc   :: pid(),
%%       node  :: [integer()] | integer()
%%    }).

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
      desc_count   = 0         :: integer(),
      document_uri = undefined :: term(),
      children     = []        :: [term()],
      string_value = <<>>      :: binary()
   }).

-record(xqDocumentNode, {
      identity     = undefined :: term(),
      desc_count   = 0         :: integer(),
      base_uri     = undefined :: term(),
      children     = []        :: [term()],
      value        = undefined :: term(),
      string_value = <<>>      :: binary(),
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(xqElementNode, {
      identity     = undefined :: term(),
      desc_count   = 0         :: integer(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      children     = []        :: [term()],
      attributes   = []        :: undefined | term() | [term()],
      inscope_ns   = []        ,
      nilled       = false     :: boolean(),
      type         = undefined :: term(),
      base_uri     = <<>>      :: binary() | #xqAtomicValue{},
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(xqAttributeNode, {
      identity     = undefined :: term(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      value        = undefined :: term(),
      string_value = <<>>      :: binary(),
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(xqNamespaceNode, {
      identity     = undefined :: term(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(xqProcessingInstructionNode, {
      identity     = undefined :: term(),
      name         = undefined :: #qname{} | term(),
      parent_node  = undefined :: term(),
      base_uri     = <<>>      :: binary() | #xqAtomicValue{},
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(xqCommentNode, {
      identity     = undefined :: term(),
      parent_node  = undefined :: term(),
      string_value = <<>>      :: binary(),
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(xqTextNode, {
      identity     = undefined :: term(),
      parent_node  = undefined :: term(),
      cdata        = false     :: boolean(),
      path_index   = undefined,% :: [integer()],
      expr         = undefined :: term()
   }).

-record(dec_format, {
   decimal = ".",
   grouping = ",",
   infinity = "Infinity",
   minus = "-",
   nan = "NaN",
   percent = "%",
   per_mille = [16#2030],
   zero = "0",
   digit = "#",
   pattern = ";",
   exponent = "e"
}).

-record(array, {data = []}).


-record(xqNameTest, {
   name :: #qname{}
}).

-record(xqKindTest, {
   kind = node :: node | text | comment | 'namespace-node' | namespace | 'schema-element' | element | 'schema-attribute' | attribute | 'document-node' | document | 'processing-instruction',
   name = undefined :: #qname{} | undefined | term(),
   type
}).

-record(xqFunction, {
   id                = -1 :: integer(),
   annotations       = [] :: [ tuple() ],
   %annotations       = [] :: [ #annotation{} ],
   name              = undefined :: #qname{} | undefined,
   arity             = 0 :: integer(),
   params            = [] :: [#xqSeqType{}] | [term()] | {any(), any()},
   type              = undefined :: undefined | any | #xqSeqType{},
   body              = undefined :: undefined | tuple() | fun(),
   external          = false :: boolean()
   %nonlocal_bindings = undefined %:: [{ #'qname'{}, [#xqItem{}] }]
}).


-record(xqFunTest, {
   kind   = function :: function | map | array,
   annotations = [] :: [ tuple() ],
   %annotations = [] :: [ #annotation{} ],
   name   :: undefined | #qname{},
   params = any :: [#xqSeqType{}] | any,
   type   = any :: #xqSeqType{} | #xqKindTest{} | any
}).

% {xqFunTest,function,[],undefined,any,any}

%% range statement 
-record(xqRange, {min :: integer(),
                  max :: integer(),
                  cnt :: non_neg_integer()
}).

%% Expression Context - The expression context for a given expression consists of all the information that can affect the result of the expression.

%% Static Context - 
%%  [Definition: The static context of an expression is the information that is available during 
%%  static analysis of the expression, prior to its evaluation.] This information can be used to decide 
%%  whether the expression contains a static error. If analysis of an expression relies on some component 
%%  of the static context that has not been assigned a value, a static error is raised [err:XPST0001].

%% In-scope schema definitions - 
%%  This is a generic term for all the element declarations, attribute declarations, and schema type definitions 
%%  that are in scope during processing of an expression.
%% -record(inscope_schema_def, {
%%    schema_types      = ?STATIC_SCHEMA_TYPES, % static plus all declared
%%    element_decls     :: [#'qname'{}],
%%    attribute_decls   :: [#'qname'{}]
%% }).


%% -record(context, {
%%    %% static context items
%%    xpath1compat               = false,
%%    known_namespaces           = ?STATIC_NS, % static plus all declared
%%    default_element_namespace  :: term(), %#xqNode{type = namespace, name = #'qname'{namespace = 'none', prefix = ""}}, % type too
%%    default_function_namespace :: term(), %#xqNode{type = namespace, name = #'qname'{namespace = 'http://www.w3.org/2005/xpath-functions', prefix = "fn"}},
%%    inscope_schema_defs        = [] :: #inscope_schema_def{},
%%    inscope_variables          = [] :: [#xqVar{}], 
%%    context_item_type          = undefined :: atom(), % type of the context item
%%    function_signatures        = [] ,
%%    known_collations           = [{uca, "http://www.w3.org/2005/xpath-functions/collation/codepoint"}],
%%    default_collation          = {uca, "http://www.w3.org/2005/xpath-functions/collation/codepoint"},
%%    construction_mode          = preserve :: preserve | strip,    % keep typing or remove it
%%    ordering_mode              = ordered :: ordered | unordered,
%%    empty_seq_order            = least :: greatest | least,
%%    boundry_whitespace         = strip :: preserve | strip,
%%    namespace_copy             :: {'preserve', 'inherit'}    | {'preserve', 'no-inherit'} | 
%%                                  {'no-preserve', 'inherit'} | {'no-preserve', 'no-inherit'},
%%    base_uri                   :: string(),   % absolute URI
%%    known_documents            = [] :: [ #typed_uri{} ],
%%    known_collections          = [] :: [ #typed_uri{} ],
%%    known_def_coll_type        = {node, zero_or_more},
%%    %
%%    modules                    = [] :: list(),
%%    functions                  = [] :: list(),
%%    %% dynamic context items 
%%    context_item            :: term(),
%%    context_position        :: pos_integer(),
%%    context_size            :: pos_integer(),
%%    variable_values         = [] ,
%%    named_functions         = [] ,
%%    current_datetime        :: string(),
%%    implicit_timezone       = "Z",
%%    available_documents     = [] :: [ term() ],
%%    available_collections   = [] :: [ #xqCollection{} ],
%%    default_collection      :: #xqCollection{} 
%% }).

-endif. % -ifdef(xqerl_hrl).
