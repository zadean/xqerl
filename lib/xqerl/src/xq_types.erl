-module(xq_types).

-include("xqerl.hrl").

-export_type([sequence/1,
              xq_item/0,
              context/0]).

-export_type([xml_node/0,
              xml_attribute/0,
              xml_comment/0,
              xml_document/0,
              xml_element/0,
              xml_namespace/0,
              xml_pi/0,
              xml_text/0]).

-export_type([xs_anyType/0,
              xs_anySimpleType/0,
              xs_anyAtomicType/0,
              xs_unsignedInt/0,        
              xs_string/0,             
              xs_boolean/0,            
              xs_decimal/0,            
              xs_float/0,              
              xs_double/0,             
              xs_duration/0,           
              xs_dateTime/0,           
              xs_time/0,               
              xs_date/0,               
              xs_gYearMonth/0,         
              xs_gYear/0,              
              xs_gMonthDay/0,          
              xs_gDay/0,               
              xs_gMonth/0,             
              xs_hexBinary/0,          
              xs_base64Binary/0,       
              xs_anyURI/0,             
              xs_QName/0,    
              xs_NOTATION/0,          
              xs_normalizedString/0,   
              xs_token/0,              
              xs_language/0,           
              xs_NMTOKEN/0,            
              xs_Name/0,               
              xs_NCName/0,             
              xs_ID/0,                 
              xs_IDREF/0,              
              xs_ENTITY/0,             
              xs_integer/0,            
              xs_nonPositiveInteger/0, 
              xs_negativeInteger/0,    
              xs_long/0,               
              xs_int/0,                
              xs_short/0,              
              xs_byte/0,               
              xs_nonNegativeInteger/0, 
              xs_unsignedLong/0,       
              xs_unsignedShort/0,      
              xs_unsignedByte/0,       
              xs_positiveInteger/0,    
              xs_yearMonthDuration/0,  
              xs_dayTimeDuration/0,    
              xs_untypedAtomic/0,      
              xs_dateTimeStamp/0,      
              xs_NMTOKENS/0,           
              xs_ENTITIES/0,           
              xs_IDREFS/0,
              %
              xs_error/0,
              xs_numeric/0]).

-export_type([xq_function/0,
              xq_array/0,
              xq_map/0,
              xq_map/2
             ]).

% Context map
-type context() :: [] | map().

-type sequence(L) :: list(L) | L.

-type xq_item() :: xs_anyAtomicType() | xml_node() | xq_function().

-type xml_node() :: #xqNode{} |
        xml_attribute() | xml_comment() | xml_document() | 
        xml_element() | xml_namespace() | xml_pi() | xml_text().

-type xml_attribute() :: #xqAttributeNode{} | #xqNode{}.
-type xml_comment() :: #xqCommentNode{} | #xqNode{}.
-type xml_document() :: #xqDocumentNode{} | #xqNode{}.
-type xml_element() :: #xqElementNode{} | #xqNode{}.
-type xml_namespace() :: #xqNamespaceNode{} | #xqNode{}.
-type xml_pi() :: #xqProcessingInstructionNode{} | #xqNode{}.
-type xml_text() :: #xqTextNode{} | #xqNode{}.



-type xs_error() :: no_return().  

-type xs_anyType() :: xs_anySimpleType() | xs_complexType().

-type xs_anySimpleType() :: xs_anyAtomicType() | xs_listType() | xs_unionType().


-type xs_listType() :: xs_NMTOKENS() | xs_ENTITIES() | xs_IDREFS().
-type xs_NMTOKENS() :: 
        #xqAtomicValue{type :: 'xs:NMTOKENS',
                       value :: list(xml_char())}.  
-type xs_ENTITIES() :: 
        #xqAtomicValue{type :: 'xs:ENTITIES',
                       value :: list(xml_char())}.  
-type xs_IDREFS() :: 
        #xqAtomicValue{type :: 'xs:IDREFS',
                       value :: list(xml_char())}.  

-type xs_unionType() :: xs_numeric().
-type xs_numeric() :: xs_decimal() | xs_float() | xs_double().

-type xs_complexType() :: xs_untyped().
-type xs_untyped() :: any().

-type xs_anyAtomicType() ::
        xs_untypedAtomic() |
        xs_dateTime() |
        xs_duration() |
        xs_time() |
        xs_date() |
        xs_decimal() |
        xs_string() | 
        xs_float() |
        xs_double() |
        xs_gYearMonth() |
        xs_gYear() |
        xs_gMonthDay() |
        xs_gMonth() |
        xs_gDay() |
        xs_boolean() |
        xs_base64Binary() |
        xs_hexBinary() |
        xs_anyURI() |
        xs_QName() |
        xs_NOTATION().
-type xs_untypedAtomic() :: 
        #xqAtomicValue{type :: 'xs:untypedAtomic',
                       value :: list(xml_char())}.  
-type xs_decimal() :: 
        #xqAtomicValue{type :: 'xs:decimal',
                       value :: #xsDecimal{}} |
        xs_integer().  
-type xs_float() :: 
        #xqAtomicValue{type :: 'xs:float',
                       value :: float() | nan | neg_zero | 
                         infinity | neg_infinity }.  
-type xs_double() :: 
        #xqAtomicValue{type :: 'xs:double',
                       value :: float() | nan | neg_zero | 
                         infinity | neg_infinity }.  

-type xs_time() :: 
        #xqAtomicValue{type :: 'xs:time',
                       value :: #xsDateTime{year :: 0,
                                            month :: 0,
                                            day :: 0}}.  
-type xs_date() :: 
        #xqAtomicValue{type :: 'xs:date',
                       value :: #xsDateTime{hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gYearMonth() :: 
        #xqAtomicValue{type :: 'xs:gYearMonth',
                       value :: #xsDateTime{day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gYear() :: 
        #xqAtomicValue{type :: 'xs:gYear',
                       value :: #xsDateTime{month :: 0,
                                            day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gMonthDay() :: 
        #xqAtomicValue{type :: 'xs:gMonthDay',
                       value :: #xsDateTime{year :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gMonth() :: 
        #xqAtomicValue{type :: 'xs:gMonth',
                       value :: #xsDateTime{year :: 0,
                                            day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_gDay() :: 
        #xqAtomicValue{type :: 'xs:gDay',
                       value :: #xsDateTime{year :: 0,
                                            month :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_boolean() :: 
        #xqAtomicValue{type :: 'xs:boolean',
                       value :: boolean()}.
-type xs_base64Binary() :: 
        #xqAtomicValue{type :: 'xs:base64Binary',
                       value :: binary()}.  
-type xs_hexBinary() :: 
        #xqAtomicValue{type :: 'xs:hexBinary',
                       value :: binary()}.  
-type xs_anyURI() :: 
        #xqAtomicValue{type :: 'xs:anyURI',
                       value :: list(xml_char())}.  
-type xs_QName() :: 
        #xqAtomicValue{type :: 'xs:QName',
                       value :: #qname{}}.  
-type xs_NOTATION() :: 
        #xqAtomicValue{type :: 'xs:NOTATION',
                       value :: #qname{}}.  

-type xs_dateTime() :: 
        #xqAtomicValue{type :: 'xs:dateTime',
                       value :: #xsDateTime{}} |
        xs_dateTimeStamp().  
-type xs_dateTimeStamp() :: % .*(Z|(\+|-)[0-9][0-9]:[0-9][0-9])
        #xqAtomicValue{type :: 'xs:dateTimeStamp',
                       value :: #xsDateTime{}}.  

-type xs_duration() :: 
        #xqAtomicValue{type :: 'xs:duration',
                       value :: #xsDateTime{}} |
        xs_yearMonthDuration() | xs_dayTimeDuration().  
-type xs_yearMonthDuration() :: 
        #xqAtomicValue{type :: 'xs:yearMonthDuration',
                       value :: #xsDateTime{day :: 0,
                                            hour :: 0,
                                            minute :: 0,
                                            second :: #xsDecimal{int :: 0,
                                                                 scf :: 0}}}.  
-type xs_dayTimeDuration() :: 
        #xqAtomicValue{type :: 'xs:dayTimeDuration',
                       value :: #xsDateTime{year :: 0, month :: 0}}.  

-type xs_integer() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:integer',
                       value :: integer()} |
        xs_nonPositiveInteger() | xs_long() | xs_nonNegativeInteger().  
-type xs_nonPositiveInteger() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:nonPositiveInteger', 
                       value :: 0 | neg_integer()} |
        xs_negativeInteger().  
-type xs_negativeInteger() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:negativeInteger',
                       value :: neg_integer()}.  
-type xs_long() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:long',
                       value :: -9223372036854775808..9223372036854775807} |
        xs_int().  
-type xs_int() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:int',
                       value :: -2147483648..2147483647} |
        xs_short().  
-type xs_short() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:short',
                       value :: -32768..32767} |
        xs_byte().  
-type xs_byte() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:byte',
                       value :: -128..127}.  
-type xs_nonNegativeInteger() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:nonNegativeInteger', 
                       value :: non_neg_integer()} |
        xs_unsignedLong() | xs_positiveInteger().  
-type xs_unsignedLong() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:unsignedLong',
                       value :: 0..18446744073709551615} |
        xs_unsignedInt().  
-type xs_unsignedInt() :: % [\-+]?[0-9]+ 
        #xqAtomicValue{type :: 'xs:unsignedInt',
                       value :: 0..4294967295} |
        xs_unsignedShort().  
-type xs_unsignedShort() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:unsignedShort',
                       value :: 0..65535} |
        xs_unsignedByte().  
-type xs_unsignedByte() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:unsignedByte',
                       value :: 0..255}.  
-type xs_positiveInteger() :: % [\-+]?[0-9]+
        #xqAtomicValue{type :: 'xs:positiveInteger',
                       value :: pos_integer()}.  


-type xs_string() :: 
        #xqAtomicValue{type :: 'xs:string',
                       value :: list(xml_char())} |
        xs_normalizedString().  
-type xs_normalizedString() :: 
        #xqAtomicValue{type :: 'xs:normalizedString',
                       value :: list(xml_char())} |
        xs_token().  
-type xs_token() :: 
        #xqAtomicValue{type :: 'xs:token', 
                       value :: list(xml_char())} |
        xs_language() | xs_NMTOKEN() | xs_Name().  
-type xs_language() :: % [a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*
        #xqAtomicValue{type :: 'xs:language',
                       value :: list(xml_char())}.  
-type xs_NMTOKEN() :: % \c+
        #xqAtomicValue{type :: 'xs:NMTOKEN',
                       value :: list(xml_char())}.  
-type xs_Name() :: % \i\c*
        #xqAtomicValue{type :: 'xs:Name',
                       value :: list(xml_char())} | 
        xs_NCName().  
-type xs_NCName() :: % \i\c* ∩ [\i-[:]][\c-[:]]*
        #xqAtomicValue{type :: 'xs:NCName',
                       value :: list(xml_char())} |
        xs_ID() | xs_IDREF() | xs_ENTITY() .  
-type xs_ID() :: % \i\c* ∩ [\i-[:]][\c-[:]]*
        #xqAtomicValue{type :: 'xs:ID',
                       value :: list(xml_char())}.  
-type xs_IDREF() :: % \i\c* ∩ [\i-[:]][\c-[:]]* 
        #xqAtomicValue{type :: 'xs:IDREF',
                       value :: list(xml_char())}.  
-type xs_ENTITY() :: % \i\c* ∩ [\i-[:]][\c-[:]]*
        #xqAtomicValue{type :: 'xs:ENTITY',
                       value :: list(xml_char())}.  


-type xq_function() :: function() | #xqFunction{} | xq_array() | xq_map().
-type xq_array() :: {array, [xq_item()]}.
-type xq_map() :: #{ map_key() => {xs_anyAtomicType(), xq_item()} }.
-type xq_map(K,V) :: #{ map_key() => {K, V} }.

-type xml_char() :: 16#1..16#D7FF | 16#E000..16#FFFD | 16#10000..16#10FFFF.

-type map_key() :: 
        string() | {number, #xsDecimal{}} | {number, atom()} |
        {duration, #xsDateTime{}} | {time, #xsDateTime{}} | 
        {string(), string()} | {atom(), any()}.


 