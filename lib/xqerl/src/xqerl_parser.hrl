-record(xqModule, {
   version = {"3.1", 'utf-8'},
   type    :: library | main,
   declaration :: term(),
   prolog :: term(),
   body   :: term()                 
}).

-record(xqAxisStep, {
   id         :: pos_integer(),
   direction  = forward :: forward | reverse,
   axis       = child :: child | descendant | attribute | self | 
                 'descendant-or-self' | 'following-sibling' | following | namespace | 
                 parent | ancestor | 'preceding-sibling' | preceding | 'ancestor-or-self',
   node_test  = #xqKindTest{},
   predicates = []
}).

-record(xqPostfixStep, {
   predicates = []
}).

-record(xqPosVar,
        {
         id = -1 :: integer(),
         name = undefined :: #'qname'{}
        }).

-record(xqQuery, {query :: list()}).

-record(xqVar, 
        {
         id = -1 :: integer(),
         annotations = []  :: [ #annotation{} ], 
         name :: #'qname'{},
         type = undefined :: undefined | #xqSeqType{},
         %type = #xqSeqType{},
         value = undefined :: term(),
         expr  = undefined :: term(),
         external = false :: boolean(),
         default = undefined :: term(),
         position = undefined :: undefined | #xqPosVar{},
         empty = false :: boolean()
        }).

-record(xqVarRef, 
        {
         name :: #'qname'{}
        }).

-record(xqFlwor, 
        {
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

-record(xqGroupBy, {
   grp_variable :: #xqVarRef{} | {variable, atom()},
   collation
}).

-record(xqSwitch, {
   id      :: integer(),
   operand :: any(),
   clauses :: [any()],
   default :: any()
}).

-record(xqSwitchClause, {
   operands :: [any()],
   expr     :: any()
}).

-record(xqOrderModifier,{
   direction = ascending :: ascending | descending,
   empty     = default   :: default | least | greatest,
   collation = default   :: default | binary()
}).

-record(xqOrderSpec, {
   expr     :: any(),
   modifier :: #xqOrderModifier{}
}).

-record(xqTypeswitchCase, {
   types    = default :: [any()] | default,
   variable = undefined :: #xqVar{} | undefined,
   expr     :: any()
}).

-record(xqTypeswitch, {
   id      :: integer(),
   input   :: any(),
   cases   :: [#xqTypeswitchCase{}],
   default :: #xqTypeswitchCase{}
}).

-record(xqTryCatch, {
   id      :: integer(),
   expr    :: any(),
   catches :: [any()]
}).
